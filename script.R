require(rstan)
require(brms)
require(tidyverse)

rstan_options(auto_write = TRUE)
options(mc.cores = parallel::detectCores())

######################################
forta <- read.csv("https://raw.githubusercontent.com/ProfNascimento/QuantileREG/main/FOR_DEMOGRAPHIC.csv", sep=";")
forta$INDEX=as.factor(forta$INDEX)

forta <- forta %>% 
  mutate(
    value = case_when(
      INDEX == "GENERAL" ~ -value,
      TRUE ~ value
    ),
    id = as_factor(id)
  )

ggplot(forta,
       aes(x = value,
           y = id,
           fill = INDEX)) +
  geom_col() + ylab("FORTALEZA AREA")+
  labs(fill="HDI INDEX")+
  theme(text = element_text(size = 14))

######################################
DB=read.csv("https://raw.githubusercontent.com/ProfNascimento/QuantileREG/main/FOR_trips.csv", sep=";")
head(DB)
summary(DB)
colnames(DB)[4]="WD"
DB$WD=as.factor(DB$WD)
DB$TYPE=as.factor(DB$TYPE)
DB$FROM=as.factor(DB$FROM)
DB$TO=as.factor(DB$TO)

# labels for the breaks
timep <- strptime(DB$HOUR, tz = "" , format = "%H") %>% format("%H:%M:%S")
DB$PERIOD=cut(chron::times(timep) , breaks = (1/24) * c(0,6,12,19,24), 
              labels = c("dawm", "morning", "afternoon", "evening")) %>% replace_na("evening")

ggplot(DB,aes(y=PRICE,x=TYPE))+geom_violin()+ylab("PRICE (R$)")

ggplot(DB[DB$TYPE==3 | DB$TYPE==7,],
       aes(y=PRICE,x=as.factor(HOUR),color=TYPE))+geom_boxplot()

ggplot(DB,aes(y=PRICE,x=as.factor(HOUR),color=TYPE))+geom_boxplot()

## VISUALYZING THE IMPORTANCE ACROSS THE FLUX POOR-RICH areas versus ANOTHER FLUX
DB %>% ggplot(aes(x=TYPE,y=PRICE))+geom_boxplot()+
  geom_hline(yintercept=20.7, linetype="dashed", color = "red")+
  #  geom_rect(aes(xmin = 2.5, xmax = 3.5, ymin = 0, ymax = 40), 
  #            fill = "blue", alpha = 0.009)+
  #  geom_rect(aes(xmin = 6.5, xmax = 7.5, ymin = 0, ymax = 40), 
  #            fill = "blue", alpha = 0.009) +
  facet_grid(WD~PERIOD) + xlab("DIRECTION TYPE") + ylab("PRICE (R$)")

## CREATING DUMMY
DB = DB %>% mutate(RS=ifelse(TYPE==3 | TYPE==7,1,0))
DB$RS=as.factor(DB$RS)

# VIZUALYZING
ggplot(DB, aes(x=as.factor(RS),y=PRICE))+geom_boxplot()+
  facet_grid(WD~PERIOD)+xlab("INFLUX POOR <-> RICH (Binary)")+ylab("PRICE (R$)")

## MODELING
qr.mdl <- brm(bf(PRICE ~ 0 + WD*HOUR + RS + (1|TYPE), quantile = 0.9), 
              data = DB, family = asym_laplace(),
              chain = 4, iter = 2000, seed = 123456)

summary(qr.mdl)
plot(qr.mdl)
plot(conditional_effects(qr.mdl), ask = FALSE)

pp_check(qr.mdl)
LOO(qr.mdl)

fitted(qr.mdl,dpar="mu")
boxplot(DB$PRICE-fitted(qr.mdl,dpar="mu")[,1])
plot(DB$PRICE-fitted(qr.mdl,dpar="mu")[,1])

DB$Y90=fitted(qr.mdl,dpar="mu")[,1]
DB %>% group_by(WD,RS) %>% summarise(mean=mean(Y90),sd=sd(Y90),
                                     median=median(Y90),IQR=IQR(Y90))

## WEEKLY DINAMIC PER HOUR
ggplot(DB,aes(x=HOUR,y=Y90,color=WD))+
  geom_smooth(se=FALSE)

# Equality of slopes
KhmaladzeTest(PRICE ~ 0 + WD*HOUR + RS + (1|TYPE), data = DB, 
              tau = seq(.1, .9, by = 0.05))


## OLS
OLS.mdl <- brm(bf(PRICE ~ 0 + WD*HOUR + RS + (1|TYPE)), 
               data = DB, family = gaussian(),
               chain = 4, iter = 2000, seed = 123456)

summary(OLS.mdl)
conditional_effects(OLS.mdl) #prob=0.01

DB$YhatOLS=fitted(OLS.mdl)[,1]
DB %>% group_by(WD,RS) %>% summarise(mean=mean(YhatOLS),sd=sd(YhatOLS),
                                     median=median(YhatOLS),IQR=IQR(YhatOLS))


## MEDIAN
q5r.mdl <- brm(bf(PRICE ~ 0 + WD*HOUR + RS + (1|TYPE), quantile = 0.5), 
               data = DB, family = asym_laplace(),
               chain = 4, iter = 2000, seed = 123456)
summary(q5r.mdl)
conditional_effects(q5r.mdl) #prob=0.01

DB %>% group_by(WD,RS) %>% summarise(mean=mean(Y90),sd=sd(Y90),
                                     median=median(Y90),IQR=IQR(Y90))


DB$YhatMED=fitted(q5r.mdl,dpar="mu")[,1]
DB %>% group_by(WD,RS) %>% summarise(mean=mean(YhatMED),sd=sd(YhatMED),
                                     median=median(YhatMED),IQR=IQR(YhatMED))

ggplot(DB,aes(x=as.factor(RS),y=Y90,fill=as.factor(RS) ))+geom_violin()+
  facet_wrap(~WD)+xlab("Trajeto POBRE-RICO (Binário)")
ggplot(DB,aes(x=as.factor(RS),y=YhatMED,fill=as.factor(RS) ))+geom_violin()+
  facet_wrap(~WD)+xlab("Trajeto POBRE-RICO (Binário)")

## COWPLOT
PG=ggplot(DB,aes(x=HOUR,y=Yhat,color=WD))+theme(legend.position='top')+ guides(colour = guide_legend(nrow = 1)) + labs(color ="WEEK DAY")+
  geom_smooth(se=FALSE)+ylab("MEDIAN PRICE (R$)")+xlab("HOUR OF THE DAY")

p1=ggplot(DB[DB$WD=="1",])+geom_smooth(aes(x=HOUR,y=YhatOLS),method="lm",col = "black")+
  geom_smooth(aes(x=HOUR,y=YhatMED,col="orange"),method="loess")+ylim(c(16,20))+
  geom_smooth(aes(x=HOUR,y=Y90),linetype = "dashed")+
  ylab("PRICE (R$)")+xlab("MONDAY HOUR")+ theme(legend.position="none")
p2=ggplot(DB[DB$WD=="2",])+geom_smooth(aes(x=HOUR,y=YhatOLS),method="lm",col = "black")+
  geom_smooth(aes(x=HOUR,y=YhatMED,col="orange"),method="loess")+ ylim(c(16,20))+
  geom_smooth(aes(x=HOUR,y=Y90),linetype = "dashed")+
  ylab("PRICE (R$)")+xlab("TUESDAY HOUR")+ theme(legend.position="none")
p3=ggplot(DB[DB$WD=="3",])+geom_smooth(aes(x=HOUR,y=YhatOLS),method="lm",col = "black")+
  geom_smooth(aes(x=HOUR,y=YhatMED,col="orange"),method="loess")+ylim(c(16,20))+
  geom_smooth(aes(x=HOUR,y=Y90),linetype = "dashed")+
  ylab("PRICE (R$)")+xlab("WEDNESDAY HOUR")+ theme(legend.position="none")
p4=ggplot(DB[DB$WD=="4",])+geom_smooth(aes(x=HOUR,y=YhatOLS),method="lm",col = "black")+
  geom_smooth(aes(x=HOUR,y=YhatMED,col="orange"),method="loess")+ylim(c(16,20))+
  geom_smooth(aes(x=HOUR,y=Y90),linetype = "dashed")+
  ylab("PRICE (R$)")+xlab("THURSDAY HOUR")+ theme(legend.position="none")
p5=ggplot(DB[DB$WD=="5",])+geom_smooth(aes(x=HOUR,y=YhatOLS),method="lm",col = "black")+
  geom_smooth(aes(x=HOUR,y=YhatMED,col="orange"),method="loess")+ylim(c(16,20))+
  geom_smooth(aes(x=HOUR,y=Y90),linetype = "dashed")+
  ylab("PRICE (R$)")+xlab("FRIDAY HOUR")+ theme(legend.position="none")
p6=ggplot(DB[DB$WD=="6",])+geom_smooth(aes(x=HOUR,y=YhatOLS),method="lm",col = "black")+
  geom_smooth(aes(x=HOUR,y=YhatMED,col="orange"),method="loess")+ylim(c(16,20))+
  geom_smooth(aes(x=HOUR,y=Y90),linetype = "dashed")+
  ylab("PRICE (R$)")+xlab("SATURDAY HOUR")+ theme(legend.position="none")
p7=ggplot(DB[DB$WD=="7",])+geom_smooth(aes(x=HOUR,y=YhatOLS),method="lm",col = "black")+
  geom_smooth(aes(x=HOUR,y=YhatMED,col="orange"),method="loess")+ylim(c(16,20))+
  geom_smooth(aes(x=HOUR,y=Y90),linetype = "dashed")+
  ylab("PRICE (R$)")+xlab("SUNDAY HOUR")+ theme(legend.position="none")

require(cowplot)
PP2=plot_grid(p4,p5,p6,p7,nrow=1)
PP3=plot_grid(p1, p2, p3, nrow = 3) # allocates the plots over 2 rows
PP1=plot_grid(PG,PP3,nrow = 1,rel_widths = c(2.9,0.97))
plot_grid(PP1,PP2,nrow = 2,rel_heights=c(2,0.7))

conditional_effects(qr.mdl)

################################################################
## Q3 (75%)
q75r.mdl <- brm(bf(PRICE ~ 0 + WD*HOUR + RS + (1|TYPE), quantile = 0.75), 
                data = DB, family = asym_laplace(),
                chain = 4, iter = 2000, seed = 123456)
summary(q75r.mdl)
conditional_effects(q75r.mdl) #prob=0.01
