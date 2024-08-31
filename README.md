# QuantileREG

This repository relates to the research that quantifies the efficiency of a transportation start-up (UberX) in Fortaleza towards discussing socioeconomic inequality and logistic transportation costs in the north of Brazil (as a study case). Nine thousand travel records were obtained during two weeks, between August-September of 2021. The figure below shows as black diagonal dots the 15 fixed locations chosen to simulate the transport pricing among poor-medium-rich neighborhood displacement, and in red intensity the number of jobs around the city in 2019.

![Alt text](https://github.com/ProfNascimento/QuantileREG/blob/main/MAP.png "Fortaleza’s geolocation, followed by the number of jobs around the city in 2019 (used as a reference) and its density draw in red intensity.")

After clustering the city in three areas (poor-middle-rich zone), the router poor-rich transport travel pricing registers were higher than 75% when compared to other data records. In a more decentralized scenario of a financial center, low-income users could have their commuting prices reduced by about 43.07%. This reduction would represent a monthly saving of around 18.82% of their Average Personal Income, with an impact of 6.71% of gain on their Average Personal Income. Regardless of the origin or destination, the flux from or to the poor- and rich-class is evidently noticeable, classes (\#3) POOR -> RICH \& (\#7) RICH -> POOR. The 3rd Quantile (75\%) price is R\$ 20.7, represented by the dashed red line, which shows that classes \#3 \& \#7 are always above other direction types. The 3rd Quantile (75%) price is R$ 20.7, represented by the dashed red line, which shows that classes #3 & #7 are always above other direction types.

| ORIGIN POOR areas | MIDDLE areas         | RICH areas         |
|-------------------|----------------------|--------------------|
|(1) POOR -> POOR   | (4) MIDDLE -> POOR   | (7) RICH -> POOR   |
|(2) POOR -> MIDDLE | (5) MIDDLE -> MIDDLE | (8) RICH -> MIDDLE |
|(3) POOR -> RICH   | (6) MIDDLE -> RICH   | (9) RICH -> RICH   | 

![Alt text](https://github.com/ProfNascimento/QuantileREG/blob/main/PRICE_DIRECTION2.png "The price distribution per period of the day versus weekday, according to the nine direction types (ORIGIN to DESTINATION).")

# Inequality economy analysis
Considering the results of UberX, the impact on the main routes (poor-rich classes) was measured based on their Average Monthly Income. Moreover, the socioeconomic data from 2010, adjusted to the inflation using the IPCA index to 2021, brought the following results:

- Average Personal Income for rich neighborhoods: R\$ 3,089.31 (2021);
- Average Personal Income for middle-class neighborhoods: R\$ 1,221.43 (2021);
- Average Personal Income for poor neighborhoods: R\$ 792.86 (2021).

A survey carried out in 2019 by the Brazilian Institute of Geography and Statistics (IBGE) analyzed more than 500 urban and metropolitan bus companies throughout Brazil, showing that transport by apps attracts more people who usually use only public transport than people who frequently use their cars \cite{transportediario, das2021impact}. According to the surveys, more than 60\% of app users came from public transport. The survey focused on ten Brazilian capitals (including Fortaleza). The study was carried out through electronic interviews, using questionnaires on social networks. 1,410 questionnaires were analyzed from October 16 to November 22, 2019. It was observed that most respondents (52\%) use transport by apps 2 to 4 times a week, which represents an average of 3 rides per week. The survey showed that work is the main reason passengers use this service every day. Sporadic or weekly users use the service mainly for leisure.

Taking into account that a significant number of residents in the city of Fortaleza must commute to the financial hub, especially from the peripheral (poor) neighborhoods, it's important to note that these rides are predominantly motivated by education and work-related factors. Also, an average number of 3 rides per week was adopted for people who live in a low-income neighborhood (peripheral) and for people who live in a high-income neighborhood (close to the shopping center). Considering that most months of the year have four weeks, the amount of monthly rides would be 12 times on average.

Transportation by Uber app in Fortaleza city showed an average price of rides around the low-income (poor) neighborhoods of R\$ 13.54, which is a lower price when compared to the average price of rides around the poor to middle-class neighborhoods, R\$16.57, and from poor to rich neighborhoods, on average of R\$28.88.

As the identified disparity centered around the position of the financial hub, we conducted simulations involving the relocation of this hub for Uber rides. This repositioning has the potential to mitigate the logistical cost impact on impoverished neighborhoods. This implies a redistribution of the city's business activity towards the middle and low-income neighborhoods, given the current considerable concentration of commercial establishments across the city's North and Northeast regions. From this vantage point, it becomes evident that the commercial center gravitates toward affluent neighborhoods.

![Alt text](https://github.com/ProfNascimento/QuantileREG/blob/main/Income.png)

On the other hand, users from rich neighborhoods spend, on average, R\$ 8.56 per ride to the commercial center, a region that concentrates most of its territory within these same neighborhoods. Considering an average number of 12 trips monthly, it would get to a total cost of R\$ 102.72. This corresponds to about 3.32\% of the average personal income of a person in a high-income neighborhood. This means that users in poor neighborhoods spend about three times more on Uber rides in Fortaleza than those who live in wealthy neighborhoods when the destination is the city's commercial center.

![Alt text](https://github.com/ProfNascimento/QuantileREG/blob/main/cost.png)

In addition, users from poor neighborhoods spend an average of R\$ 16.57 on journeys to middle-class neighborhoods. This would result, per month, considering 12 trips, in a value of R\$ 146.28, which corresponds to 18.82\% of the average personal income of a low-income person, a cost reduction of 43.07\% compared to the poor-rich route. Users from wealthy neighborhoods spend an average of R\$17.28 per ride to middle-class neighborhoods. This means an increase of R\$ 8.72 (101.87\%) on the average price of rides from middle-class to rich areas. This would result, per month, considering the same number of trips of 12, in a value of R\$ 207.36. The cost would increase of rich-middle path, however, this value would correspond to 6.71\% of the income of people that lives in these neighborhoods.

Individuals from poor neighborhoods who ride to middle-class areas would incur an expense amounting to 18.82\% of their income. This indicates that, despite the reduction in costs for people who live in poor neighborhoods, there is still a significant financial burden. Taking into account the proportion of the population, this situation would remain approximately three times larger than the population who lives in middle-class neighborhoods, yet its impact would be considerably more pronounced among those with lower incomes. In other words, in comparison to the contrast between the ride from poor to rich areas, which constituted nearly half of the average personal income (43.71\%). Figure below depicts the percentage impact across the centralized/current scenario versus the decentralized one.

![Alt text](https://github.com/ProfNascimento/QuantileREG/blob/main/impact.png)

If the commercial/shopping center were decentralized by being closer to, at least, the middle-class neighborhoods, there could be a travel cost reduction for users in poor neighborhoods of at least 43.07\%. That would represent a saving of around R\$149.28 per month, or R\$1,791.36 per year. As for users who live in wealthy neighborhoods, the decentralization of commerce would increase ride costs. For poor neighborhoods, this monthly saving would represent 18.82\% of the average monthly personal income, whereas the increase would represent 6.71\% of the average monthly personal income for wealthy neighborhoods. This means that the impact of price increases for users in wealthy neighborhoods would continue to be smaller than that for poor neighborhoods. However, for the poorest neighborhoods, there would be more significant savings compared to the current location of the commercial center, and the income of the richest ones would be affected by less than 7\%.

Considering the comparison of scenarios, a possibility for decision-making would be for the Brazilian Federal government, in general, to develop public policies to promote commercial trade closer to the poorer regions. In this sense, for the city of Fortaleza, tax breaks could be offered to entrepreneurs in low- and middle-income regions, promoting economic stimulus in these regions and suggesting a reduction in ride costs for transport apps.

Nevertheless, the State government could work along with policies promoted by the Federal government to increase the practical efficiency of these incentive measures. Thus, the financial impacts could be more likely to materialize, reducing expenses on the average monthly personal income of low-income residents and enabling an improvement in the economic aspect in the context of social inequalities.
