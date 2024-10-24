# Exploratory Data Analysis: Layoff Insights

## Introduction

This project focuses on performing **Exploratory Data Analysis (EDA)** on a dataset related to layoffs in various companies across industries and locations. The analysis aims to extract insights regarding the **total number of employees laid off** per company, the **year** in which the layoffs occurred, **funds raised by companies**, **industries ranking based on layoffs**, and **rolling layoff data** to uncover meaningful trends.

### Dataset Overview

The dataset contains the following key fields used for the analysis:
- **Company**: The name of the company where layoffs occurred.
- **Location**: The geographic location of the company.
- **Industry**: The business sector to which the company belongs.
- **Total Laid Off**: The total number of employees laid off by each company.
- **Percentage Laid Off**: The percentage of the company's workforce affected by the layoffs.
- **Year**: The year in which the layoffs took place.
- **Funds Raised (Millions)**: The total amount of funding raised by each company, in millions.


### Project Goals

The objective of this EDA project is to uncover patterns, trends, and key insights from the data. Specifically, this project aims to:
- Identify the companies with the highest number of layoffs.
- Analyze the distribution of layoffs across years.
- Rank industries based on layoffs.
- Examine the relationship between the funds raised and layoffs.
- Perform a rolling analysis to visualize the trend of layoffs over time.
- analyse the distribution of layoff for each country with respect to year,industry,stages and company.

### Tools and Techniques

This analysis is carried out using the following tools:
- **Tableau**: For data manipulation, analysis, and visualization.
- **MySQL**: For querying and transforming the dataset, leveraging SQL queries for operations like aggregation, ranking, and filtering.
  
### Insights

#### 1. Companies with the Most Layoffs

The following table shows the **top 5 companies** with the highest layoffs for each year from **2020 to 2023**. The companies are ranked based on the total number of employees laid off.

#### Layoff Rankings in 2020
| Rank | Company       | Total Laid Off | Year |
|------|---------------|----------------|------|
| 1    | Uber          | 7,525          | 2020 |
| 2    | Booking.com   | 4,375          | 2020 |
| 3    | Groupon       | 2,800          | 2020 |
| 4    | Swiggy        | 2,250          | 2020 |
| 5    | Airbnb        | 1,900          | 2020 |

#### Layoff Rankings in 2021
| Rank | Company       | Total Laid Off | Year |
|------|---------------|----------------|------|
| 1    | Bytedance     | 3,600          | 2021 |
| 2    | Katerra       | 2,434          | 2021 |
| 3    | Zillow        | 2,000          | 2021 |
| 4    | Instacart     | 1,877          | 2021 |
| 5    | WhiteHat Jr   | 1,800          | 2021 |

#### Layoff Rankings in 2022
| Rank | Company       | Total Laid Off | Year |
|------|---------------|----------------|------|
| 1    | Meta          | 11,000         | 2022 |
| 2    | Amazon        | 10,150         | 2022 |
| 3    | Cisco         | 4,100          | 2022 |
| 4    | Peloton       | 4,084          | 2022 |
| 5    | Carvana       | 4,000          | 2022 |
| 5    | Philips       | 4,000          | 2022 |

#### Layoff Rankings in 2023
| Rank | Company       | Total Laid Off | Year |
|------|---------------|----------------|------|
| 1    | Google        | 12,000         | 2023 |
| 2    | Microsoft     | 10,000         | 2023 |
| 3    | Ericsson      | 8,500          | 2023 |
| 4    | Amazon        | 8,000          | 2023 |
| 4    | Salesforce    | 8,000          | 2023 |
| 5    | Dell          | 6,650          | 2023 |

### Visualizations

You can view the visualizations below for the rankings and layoff insights.

1. **Layoffs by Company in 2020**  
   ![2020 Layoffs Chart](link_to_2020_image.png)
   
2. **Layoffs by Company in 2021**  
   ![2021 Layoffs Chart](link_to_2021_image.png)
   
3. **Layoffs by Company in 2022**  
   ![2022 Layoffs Chart](link_to_2022_image.png)
   
4. **Layoffs by Company in 2023**  
   ![2023 Layoffs Chart](link_to_2023_image.png)

> **Graph Placeholder**: Bar chart or table displaying the total layoffs by company, ranked by year.

---

This table outlines the top layoffs in companies across industries between 2020 and 2023, with **Uber** leading the layoffs in 2020, **Bytedance** in 2021, **Meta** in 2022, and **Google** in 2023. Each ranking highlights the companies that have undergone major workforce reductions in their respective years.

> **Graph Placeholder**: Bar chart of companies by total layoffs.

#### 2. Layoffs by Year

The layoffs have been distributed across several years. Here is a breakdown of the total layoffs for key years:

| Year  | Total Laid Off |
|-------|----------------|
| 2020  | 36,706       |
| 2021  | 10.005        |
| 2022  | 80,356         |
| 2023  | 65,800         |

> **Graph Placeholder**: Line plot for total layoffs by year.

#### 3. Funds Raised by top 5 countries

This section analyzes the top 5 countries which raised maximum fund through lay off  across all the industries and companies. 

| Company        | Funds Raised (Millions) | Total Laid Off |
|----------------|-------------------------|----------------|
| Company A      | 500                     | 10,000         |
| Company B      | 400                     | 8,500          |
| Company C      | 300                     | 7,200          |
![2023 Layoffs Chart](link_to_2023_image.png)

> **Graph Placeholder**: Scatter plot showing funds raised vs layoffs.

> **Link to SQL Query**: [Funds Raised vs Layoffs Query](#)

#### 4. Industries Ranking Based on Layoffs

Industries are ranked based on the total number of layoffs across all companies in each industry. This provides insight into which sectors have been hit hardest by layoffs.

| Industry       | Total Laid Off |
|----------------|----------------|
| Tech           | 45,000         |
| Finance        | 20,000         |
| Retail         | 15,000         |

> **Graph Placeholder**: Bar chart of industries ranked by total layoffs.

> **Link to SQL Query**: [Industry Ranking Query](#)

#### 5. Rolling Analysis of Layoff Data

This section provides a **rolling window analysis** of layoffs to visualize the trend of layoffs over time. This analysis smooths the data and helps to observe broader patterns and fluctuations in layoffs.

| Year-Month | Rolling Average of Layoffs |
|------------|----------------------------|
| 2020-01    | 500                        |
| 2020-02    | 600                        |
| 2020-03    | 800                        |

> **Graph Placeholder**: Line plot showing rolling layoffs over time.

> **Link to SQL Query**: [Rolling Layoff Data Query](#)

### Project Files

- **Uncleaned Dataset**: [Link to Uncleaned Data](#)
- **Cleaned Dataset**: [Link to Cleaned Data](#)
- **Notebook**: [Link to Jupyter Notebook with EDA](#)
- **SQL Queries**:
  - [Funds Raised vs Layoffs Query](#)
  - [Industry Ranking Query](#)
  - [Rolling Layoff Data Query](#)

### Conclusion

This EDA project provides key insights into the layoff patterns across companies and industries. Through data visualization, ranking, and trend analysis, we gain a deeper understanding of the companies and industries most affected by layoffs, as well as the relationship between company funding and workforce reductions. Further analysis can be done to investigate the factors driving these layoffs and explore sector-specific trends.

---

Feel free to explore the dataset, SQL queries, and the notebook provided to dive deeper into the analysis.
