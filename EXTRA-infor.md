## Supplementary Background

We recover the importance of transport travel apps in the logistic dynamics and financial development of an economy. In order to do so, we chose a city from South America that represents the continental problem of explosive growth and unplanned infrastructure leading to a challenge of people displacement. Subtopic Socioeconomy explains the socioeconomic data of Fortaleza, and the reason why it is an important city in the northeast of Brazil; then, subtopic Related Works concerns the chosen location related to its transport travel dynamics and pricing.

# Transportation Apps
According to Van Den Heuve et al. (2020), transport by apps - also known as taxi by app and paid ride - refers to digital passenger transport services, transport of meals, and delivery of various items. The participation of people in this market motivated by receiving an extra income or even finding a more profitable job is a worldwide phenomenon. Some companies in this niche are Uber, InDriver, Lyft, 99, Cabify, Rappi, and iFood.

In this context, some factors can influence the supply and demand of transport by applications, such as urban and demographic characteristics, income, competition, availability of other means of transport, and tourist flow particular to each city, among others (Turon, 2022). In this perspective, recent research has sought to find relations between the logistic characteristics and some aspects of ``sharing economies'' (Cohen, 2014). These aspects are accessibility, waiting time, neighborhood quality of life indicators, livability indicators for cities and neighborhoods, and urban planning.

From this perspective, this study analyzed prices, considering socioeconomic data from the city of Fortaleza, in Brazil, in order to show that users who live in financially poorer neighborhoods and use Uber's travel service end up paying a higher price than residents of wealthier neighborhoods when the destination is the commercial center. Thus, it would be possible to propose a discussion towards the decentralization of these financial centers, to soften the expenses of the income of the poorest users without affecting in a very significant way the users of wealthier regions.

We chose the city of Fortaleza because of the ease of finding socioeconomic data at the neighborhood level and because it belongs to the Northeast region of Brazil, with socioeconomic characteristics similar to other capitals in this region: heavy traffic, predominantly hot climate, and income inequality (Pinto et al., 2023, Farias \& Teixeira, 2022). The next subsection shows elements of the socioeconomic data of Fortaleza city.

# Socioeconomic Information

For this study, it was taken into account the Human Development Index (HDI) and the average personal income dimensions, in order to obtain relations between travel prices and per capita income.

The city of Fortaleza, the capital of the state of Ceará, is located on the shores of the Atlantic Ocean and in the Northeast region of Brazil, in a tropical climate zone marked by high humidity. The local economy is relatively diversified, with significant secondary and tertiary activities. Its territory attracts a lot of tourists due to the presence of beautiful beaches and the rich local culture (Governo Ceara, 2022).

Brazilian Institute of Geography and Statistics (IBGE) data reveals that, in 2010, the income item - one of the three main items of the Human Development Index (HDI) - and the average value \textit{per capita} (in Brazilian currency, R\$) of Fortaleza increased by 85.18\% compared to the previous two decades, from R\$457.04, in 1991, to R\$610.48, in 2000, and R\$846.36, in 2010. This index is here referred to as HDI-Income and represents the average monthly income \textit{per capita} by neighborhood. Extreme poverty (measured as the proportion of people with a \textit{per capita} household income of less than R\$70.00) decreased from 15.25\%, in 1991, to 9.02\%, in 2000, to 3.36\%, in 2010.

According to IBGE (Farias \& Teixeira, 2022), the HDI-Income is considered as an indicator of the average potential of residents of a neighborhood to obtain goods and services. It is used as an indicator of people's ability to secure a standard of living that can meet their basic needs. Table \ref{tab:tabela1} displays five neighborhoods of each income class (rich, poor, and middle) for the city of Fortaleza in terms of HDI in 2010. The values refer to people aged ten years old or more. Additionally, the distance regarding the financial center was calculated by adopting the center point of each neighborhood referring to Ferreira Square (in portugues, Praça do Ferreira).

\begin{table}[h!]
\resizebox{\columnwidth}{!}{%
\begin{tabular}{|r|cccc}
\hline
\textbf{} & \multicolumn{1}{l|}{\textbf{\begin{tabular}[c]{@{}c@{}} DOWNTOWN \\ DIST. (km)\end{tabular}}} &
  \multicolumn{1}{l|}{\textbf{\begin{tabular}[c]{@{}c@{}} HDI \\ GENERAL\end{tabular}}} &
  \multicolumn{1}{c|}{\textbf{\begin{tabular}[c]{@{}c@{}} PERSONAL AVERAGE \\ HDI-INCOME (R\$)\end{tabular}}} &
  \multicolumn{1}{c|}{\textbf{\begin{tabular}[c]{@{}c@{}} NEIGHBORHOOD \\ AVERAGE INCOME (R\$)\end{tabular}}} \\ \hline
%-----------------------------------------------------------------------------------------------%
\textbf{Rich Neighborhood}                    & \multicolumn{1}{l}{}       &
\multicolumn{1}{l}{}       & \multicolumn{1}{l}{}          & \multicolumn{1}{l}{}                            \\ \hline
\cellcolor[HTML]{C6E0B4}Meireles                   &   5.60
%% DIST
& \multicolumn{1}{|c|}{0.953} & \multicolumn{1}{c|}{3,659.54} & \multicolumn{1}{c|}{}                           \\ \cline{1-4}
\cellcolor[HTML]{C6E0B4}Aldeota                    &   5.58 %% DIST
& \multicolumn{1}{|c|}{0.778} & \multicolumn{1}{c|}{2,901.57} & \multicolumn{1}{c|}{}                           \\ \cline{1-4}
\cellcolor[HTML]{C6E0B4}Dionísio   Torres          &   5.91 %% DIST
& \multicolumn{1}{|c|}{0.722} & \multicolumn{1}{c|}{2,707.35} & \multicolumn{1}{c|}{}                           \\ \cline{1-4}
\cellcolor[HTML]{C6E0B4}Mucuripe                   &   5.11 %% DIST
& \multicolumn{1}{|c|}{0.732} & \multicolumn{1}{c|}{2,742.25} & \multicolumn{1}{c|}{}                           \\ \cline{1-4}
\cellcolor[HTML]{C6E0B4}Guararapes                 &   3.42 %% DIST
& \multicolumn{1}{|c|}{0.95}  & \multicolumn{1}{c|}{3,488.25} & \multicolumn{1}{c|}{\multirow{-5}{*}{3,099.72}} \\ \hline
%-----------------------------------------------------------------------------------------------%
\textbf{Middle Neighborhood}                    & \multicolumn{1}{l}{} & \multicolumn{1}{l}{}       & \multicolumn{1}{l}{}          & \multicolumn{1}{l}{}                            \\ \hline
\cellcolor[HTML]{FFE699}Autran   Nunes             &  5.69 %% DIST
& \multicolumn{1}{|c|}{0.032} & \multicolumn{1}{c|}{349.74}   & \multicolumn{1}{c|}{}                           \\ \cline{1-4}
\cellcolor[HTML]{FFE699}Dendê                      &   7.91 %% DIST
& \multicolumn{1}{|c|}{0.115} & \multicolumn{1}{c|}{633.44}   & \multicolumn{1}{c|}{}                           \\ \cline{1-4}
\cellcolor[HTML]{FFE699}Parque   Dois Irmãos       &   9.04 %% DIST
& \multicolumn{1}{|c|}{0.093} & \multicolumn{1}{c|}{557.84}   & \multicolumn{1}{c|}{}                           \\ \cline{1-4}
\cellcolor[HTML]{FFE699}Cajazeiras                 &   9.95 %% DIST
& \multicolumn{1}{|c|}{0.155} & \multicolumn{1}{c|}{768.93}   & \multicolumn{1}{c|}{}                           \\ \cline{1-4}
\cellcolor[HTML]{FFE699}Messejana                  &  12.26 %% DIST
& \multicolumn{1}{|c|}{0.12}  & \multicolumn{1}{c|}{648.89}   & \multicolumn{1}{c|}{\multirow{-5}{*}{591.76}}   \\ \hline
%-----------------------------------------------------------------------------------------------%
\textbf{Poor Neighborhood}                      & \multicolumn{1}{l}{} & \multicolumn{1}{l}{}       & \multicolumn{1}{l}{}          & \multicolumn{1}{l}{}                            \\ \hline
\cellcolor[HTML]{F4B084}Conjunto   Palmeiras       &   13.49 %% DIST
& \multicolumn{1}{|c|}{0.01}  & \multicolumn{1}{c|}{239.25}   & \multicolumn{1}{c|}{}                           \\ \cline{1-4}
\cellcolor[HTML]{F4B084}Parque   Presidente Vargas &   12.10 %% DIST
& \multicolumn{1}{|c|}{0.014} & \multicolumn{1}{c|}{287.92}   & \multicolumn{1}{c|}{}                           \\ \cline{1-4}
\cellcolor[HTML]{F4B084}Canindezinho               &  11.54 %% DIST
& \multicolumn{1}{|c|}{0.025} & \multicolumn{1}{c|}{325.47}   & \multicolumn{1}{c|}{}                           \\ \cline{1-4}
\cellcolor[HTML]{F4B084}Genibaú                    &  7.58 %% DIST
& \multicolumn{1}{|c|}{0.027} & \multicolumn{1}{c|}{329.98}   & \multicolumn{1}{c|}{}                           \\ \cline{1-4}
\cellcolor[HTML]{F4B084}Siqueira                   &  12.44 %% DIST
& \multicolumn{1}{|c|}{0.026} & \multicolumn{1}{c|}{326.8}    & \multicolumn{1}{c|}{\multirow{-5}{*}{301.88}}   \\ \hline
\end{tabular}
}
\caption{HDI of five neighborhoods of each income class in Fortaleza (adapted from the Municipal Secretariat for Economic Development of Fortaleza, based on data from the 2010 Demographic Census).}
\label{tab:tabela1}
\end{table}

The Fortaleza's neighborhoods in the worst situation when it comes to HDI–Income are: Conjunto Palmeiras, Parque Presidente Vargas, Canindezinho, Siqueira, and Genibaú. One factor contributing to their numbers was the rising unemployment in recent years. This rate was considered to be the seventh-highest among other metropolitan regions in the country in the same period. According to IBGE data in 2019, the city concentrated about 10.8\% of the country's unemployed population. In 2021, this number of unemployed people reached 14.4\%, a percentage that is higher than the historical record of the first quarter of 2019.

According to data obtained by the IBGE in 2021 \cite{ibge}, the unemployment rate in the State reflects the deterioration of the labor market amid the new Coronavirus Pandemic (Bega et al., 2021). The Covid-19 Pandemic reversed the recovery trend in economic activities, resulting in a significant drop in the growth rate in 2020 (Sanhueza, 2021). Additionally, a general HDI was also adopted per neighborhood, which considered wider dimensions, such as life expectancy, education, and \textit{per capita} income indicators (HDI-General).

# Related Studies

According to Wang et al. (2018), studies have used the travel time as a comparative measure, in Atlanta/USA, to understand the transport travel pricing between employment and housing among other features such as predominant ethnic, economic, and gender disparities in urban areas. The authors delineated their research based on two elements: the waiting time as a (intermediate) proxy for measuring accessibility in Uber's travel service; and, by considering Uber a virtual transport infrastructure, it raises the question of whether the company is related to socio-spatial polarization in a neighborhood or to more equitable access, regardless of socioeconomic profiles.

The results obtained (Wang, 2018) indicated that, for UberX pricing, the estimated average waiting time is around 3 to 10 minutes, with a standard deviation of around 1 to 3 minutes. For UberBlack, the estimated average waiting time is around 3 to 13 minutes, with a standard deviation of around 1 to 3 minutes. The authors point out that, for UberX, the fact that the average has a more concentrated distribution with a lower average value than the other service is not surprising, as UberX is a more popular and cost-effective service, which presumably results in more services of this type in the market. In addition, UberBlack presented a cost of at least three times more per minute when compared to the UberX service, and four times more in cost per mile. The authors also showed that neither the \textit{per capita} income value nor the minority rate significantly impacted Uber's affordability. In other words, there is no evidence that Uber's travel service is associated with worsening socio-spatial polarization worse in Atlanta neighborhoods. On the contrary, it generally offers equitable access to all neighborhoods, regardless of socioeconomic profiles (exemplified by \textit{per capita} income and race).

conducted a preliminary study wherein they investigated the use of estimated arrival time data from Uber ride requests as a straightforward indicator of urban habitual patterns, in Natal/Brazil. Due to its nature, scale, and coverage, Uber provides objective data on the interaction between a city's inhabitants and its infrastructure, mainly transport infrastructure. Thus, it is possible to compare data at multiple levels, such as cities and neighborhoods, but also to obtain context-sensitive data, which provides insights into the impact of other factors that affect Uber drivers and trips, including traffic incidents, weather, and other events. In this perspective, the authors (Bezerra et al., 2019) analyzed the possibility of using Uber data to provide a simple, fast, low-cost, time- and context-sensitive indicator of urban livability. To do so, the authors considered the Uber Ride Request (URR) API for the Brazilian city of Natal.

Previously, the hypothesis concerning the pricing of Uber's travel services in Natal, located in the North of Brazil, was associated with the socioeconomic characteristics of the areas where these trips originate, (De et al., 2023). Moreover, this study collected data on ride prices for the Uber service type throughout one year, from February 2018 to May 2019.

Therefore, previous studies (Bezerra, 2019 \& Sabouri, 2020) sought to highlight relations between information about Uber rides and socioeconomic characteristics in specific locations. These relations covered aspects of price and distance behavior when analyzed with social factors that could indicate an influence on the supply and demand of Uber's travel services. The findings of these researches indicated that some socioeconomic characteristics of places could influence the conception of prices.

In the face of this conjuncture, it is possible to analyze the behavior of such prices when considering travel routes among regions with different financial incomes, when the destination of these travel requests is the financial center of some regions. In this perspective, the present study seeks to find elements to verify whether a non-concentration of financial centers may contribute to reducing the costs of Uber's travel prices for users who live in economically poorer regions. Analyzing other regions with other economic contexts could indicate that a concentration of commercial activities could influence Uber's ride-pricing process.

# Supplementary Fortaleza Characteristics

In this section, further information regarding the geolocation of the central point is considered for each neighborhood, as well as the financial hub (Table \ref{tab:coordinates}). Also, Table \ref{tab:distances_below_diagonal_vertical} shows the distance (km) across the observed neighborhoods.

\begin{table}
\centering
\caption{Coordinates (decimal degrees) of the central points of the neighborhoods and the financial hub.}
\begin{tabular}{l|c|c}
\hline
\textbf{Name}              & \textbf{Latitude}    & \textbf{Longitude}   \\
\hline
Meireles               & -3.727639   & -38.511538  \\ \hline
Aldeota                & -3.737476   & -38.512701  \\ \hline
Dionísio Torres        & -3.747471   & -38.512542  \\ \hline
Mucuripe               & -3.739444   & -38.517468  \\ \hline
Guararapes             & -3.753677   & -38.545598  \\ \hline  \hline
Autran Nunes           & -3.754470   & -38.605746  \\ \hline
Dendê                  & -3.798712   & -38.566867  \\ \hline
Parque Dois Irmãos     & -3.808729   & -38.568251  \\ \hline
Cajazeiras             & -3.800364   & -38.527327  \\ \hline
Messejana              & -3.826771   & -38.513630  \\ \hline  \hline
Conjunto Palmeiras     & -3.848458   & -38.550542  \\ \hline
Parque Presidente Vargas & -3.825350  & -38.610181  \\ \hline
Canindezinho           & -3.810824   & -38.624300  \\ \hline
Genibaú                & -3.757509   & -38.623485  \\ \hline
Siqueira               & -3.807380   & -38.640715  \\
 \hline \hline
 Praça do Ferreira     & -3.7276526  & -38.530154 \\ \hline
\end{tabular}
\label{tab:coordinates}
\end{table}


\begin{sidewaystable}
\centering
\caption{Distances (km) between neighborhoods.}
\begin{tabular}{|l*{15}{@{}|c|}}
\hline
 & Ald. & D. Tor. & Muc. & Guar. & A. Nun. & Dendê & P. D. I. & Cjz. & Mess. & C. Palm. & P. Pres. V. & Can. & Gen. & Siqueira \\
\hline
Meireles                & 1.10      & 2.21            & 1.47     & 4.76       & 10.87         & 10.01 & 10.99                & 8.27      & 11.03                & 14.11                      & 15.42                          & 15.56         & 12.86      & 16.85      \\ \hline
Ald.                    &           & 1.11            & 0.57     & 4.07       & 10.50         & 9.08  & 10.04                & 7.18      & 9.93                 & 13.04                      & 14.58                          & 14.83         & 12.49      & 16.19      \\ \hline
D. Tor.                 &           &                 & 1.05     & 3.73       & 10.37         & 8.29  & 9.20                 & 6.11      & 8.82                 & 11.99                      & 13.87                          & 14.26         & 12.36      & 15.70      \\ \hline
Muc.                    &           &                 &          & 3.50       & 9.94          & 8.57  & 9.54                 & 6.86      & 9.72                 & 12.67                      & 14.04                          & 14.27         & 11.93      & 15.62      \\ \hline
Guar.                   &           &                 &          &            & 6.67          & 5.54  & 6.62                 & 5.57      & 8.87                 & 10.55                      & 10.72                          & 10.80         & 8.65       & 12.13      \\ \hline
A. Nun.                 &           &                 &          &            &               & 6.54  & 7.33                 & 10.09     & 13.00                & 12.11                      & 7.90                           & 6.60          & 2.00       & 7.05       \\ \hline
Dendê                   &           &                 &          &            &               &       & 1.12                 & 4.39      & 6.68                 & 5.82                       & 5.65                           & 6.51          & 7.78       & 8.04       \\ \hline
P. D. I.                &           &                 &          &            &               &       &                      & 4.63      & 6.38                 & 4.83                       & 5.01                           & 6.22          & 8.37       & 8.25       \\ \hline
Cjz.                    &           &                 &          &            &               &       &                      &           & 3.31                 & 5.94                       & 9.60                           & 10.82         & 11.68      & 12.60      \\ \hline
Mess.                   &           &                 &          &            &               &       &                      &           &                      & 4.75                       & 10.71                          & 12.41         & 14.42      & 14.26      \\ \hline
C. Palm.                &           &                 &          &            &               &       &                      &           &                      &                            & 7.10                           & 9.19          & 12.95      & 10.99      \\ \hline
P. Pres. V.             &           &                 &          &            &               &       &                      &           &                      &                            &                                & 2.25          & 7.69       & 3.93       \\ \hline
Can.                    &           &                 &          &            &               &       &                      &           &                      &                            &                                &               & 5.93       & 1.86       \\ \hline
Gen.                    &           &                 &          &            &               &       &                      &           &                      &                            &                                &               &            & 5.87       \\

\hline
\end{tabular}
\label{tab:distances_below_diagonal_vertical}
\end{sidewaystable}
