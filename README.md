# Provide-Insights-to-Chief-of-operations-in-Transportation-Domain
![image](https://github.com/user-attachments/assets/9842ac4d-c02c-4e5e-8bdc-109b598ac1d8)


## Transpotation and Mobility Problem Statement

Goodcabs, a cab service company established two years ago, has gained a strong foothold in the Indian market by focusing on tier-2 cities. Unlike other cab service providers, Goodcabs is committed to supporting local drivers,
helping them make a sustainable living in their hometowns while ensuring excellent service to passengers. With operations in ten tier-2 cities across India, Goodcabs has set ambitious performance targets for 2024 to drive growth 
and improve passenger satisfaction. As part of this initiative, the Goodcabs management team aims to assess the company's performance across key metrics, including trip volume, passenger satisfaction, repeat passenger rate, trip distribution, 
and the balance between new and repeat passengers.

**OBJECTIVE:**
 
This project was developed to provide actionable insights to the Chief of Operations in the transportation domain. It combines Power BI and SQL to analyze operational data, enabling key stakeholders to make data-driven decisions. The project features ad hoc analysis and an interactive Power BI dashboard designed to track and analyze transportation metrics effectively.

**Technologies Used:**

- **Power BI** for data visualization and dashboard creation  
- **SQL** for data querying and processing  
- **Data Sources**: Transportation-related datasets, including trip data, city data, and passenger data






## AD-HOC BUSINESS REQUESTS

**1.City-level fare and trip Summary Report**

Generate a report that displays the total trips, average fare per km, average fare per trip, and the percentage contribution of each city's trips to the overall trips. This report will help in assessing trip volume, pricing efficiency, and each city's contribution to the overall trip count.



![AD-HOC 1](https://github.com/user-attachments/assets/02ca361c-310a-4d81-a610-d0260a512164)


**2.Monthly City_level Trips Target Performance Report**

Generate a report that displays the total trips, average fare per km, average fare per trip, and the percentage contribution of each city's trips to the overall trips. This report will help in assessing trip volume, pricing efficiency, and each city's contribution to the overall trip count.
If actual trips are greater than target trips, mark it as "Above Target".
 If actual trips are less than or equal to target trips, mark it as "Below Target".
Additionally, calculate the % difference between actual and target trips to quantify the performance gap.



![image](https://github.com/user-attachments/assets/5e9a425a-9849-4ba4-af58-adc2d316164f)

**3.City-level Repeat Passenger trip frequency report**

Generate a report that shows the percentage distribution of repeat passengers by the number of trips they have taken in each city. Calculate the percentage of repeat passengers who took 2 trips, 3 trips, and so on, up to 10 trips.
Each column should represent a trip count category, displaying the percentage of repeat passengers who fall into that category out of the total repeat passengers for that city.
This report will help identify cities with high repeat trip frequency, which can indicate strong customer loyalty or frequent usage patterns.




![image](https://github.com/user-attachments/assets/ea59799c-3f81-43fe-921d-ea030890da3b)

**4.Identify cities with highest and lowest total new passengers**

Generate a report that calculates the total new passengers for each city and ranks them based on this value. Identify the top 3 cities with the highest number of new passengers as well as the bottom 3 cities with the lowest number of new passengers, categorising them as "Top 3" or "Bottom 3" accordingly.

![image](https://github.com/user-attachments/assets/11be4b8a-8c0e-4224-9389-26cf0871bdfb)

**5.Identify month with highest revenue for each city**

Generate a report that identifies the month with the highest revenue for each city. For each city, display the month_name, the revenue amount for that month, and the percentage contribution of that month's revenue to the city's total revenue.

![image](https://github.com/user-attachments/assets/c443c215-9d6b-43cc-be1c-91bdc3a62ec3)

**6.Repeat passenger rate analysis**

Generate a report that calculates two metrics:
1.	Monthly Repeat Passenger Rate: Calculate the repeat passenger rate for each city and month by comparing the number of repeat passengers to the total passengers.
2.	City-wide Repeat Passenger Rate: Calculate the overall repeat passenger rate for each city, considering all passengers across months.


![image](https://github.com/user-attachments/assets/861dafe8-d013-409f-b965-a8beffed782b)

## DASHBOARD REPORT AND ANALYSIS

![cabs dashboard collage](https://github.com/user-attachments/assets/e72ad8ca-8d50-4dcd-9421-d51795551a02)




[DASHBOARD REPORT LINK TO VIEW ANALYSIS](https://app.powerbi.com/view?r=eyJrIjoiOTY5NzZlOWQtZWE4YS00NjU1LWJhYWItYzY1YzYxN2FjMzk4IiwidCI6IjViOGEyNGIxLTA5MjgtNDdmZC04MzhmLTgwYTMxNTVhM2NhZiJ9&pageName=a7a29957abb9802996ed)


**Dashboard Hghlights**:
  
**Trips Report**: Focuses on trip details such as fare, distance, and city information, providing insights into operational efficiency.

**City Report**: Analyzes transportation performance across various cities, offering city-specific insights into service levels, coverage, and demand.

**Passenger Report**: Presents analytics on passenger data, such as repeat passengers rate, seasonal demands, and customer satisfaction metrics.




### Key Insights:

1. **Seasonal & operational Optimization**:
   - Identified opperational performance for passenger demand across different cities, allowing for better resource allocation.
   - identified peak seasonal demands as well as percentage contribtion of the each city to understand demands across the various cities and months 

2. **City-Specific Performance Metrics**:
   - Analyzed  city wise ditribution of trips, performance metrics across multiple cities, revealing cities with higher demand.
   - Analyzed performance of cities such has top-3 cities and bottom-3 cities 
     
3. **Passenger Demographics and Satisfaction**:
   - Discovered trends in passenger demographics, such as  frequent travel times, enabling targeted marketing and service enhancements.
   

4. **Trip Efficiency & Cost Reduction**:
   - Analyzed trip_fares,averages distances,fare trip per km , distance, and  highlight inefficiencies in current cities.
   
5. **Growth and Demand Trends**:
   - Identified trends in passenger growth across different regions, highlighting areas with growing demand that require expanded service.
   - Evaluated the difference between the target and actual outcomes to have clear view on the operational performance to analyze whether the target are met or not.
 











