# Superstore Sales Analysis

End-to-end analysis of the Sample Superstore retail dataset using **SQL (MySQL)** and an interactive **Power BI** dashboard, focused on understanding what drives profit and where losses come from.

## 📌 Overview
The goal of this project is to evaluate sales performance across categories, regions, and customer segments, and to identify the factors behind loss-making orders, in order to support better pricing and discount decisions.

## 🎯 Objectives
- Clean and validate the dataset
- Analyze sales and profit by category, sub-category, region, and customer segment
- Identify loss-making products and their causes
- Measure the impact of discounts on profitability
- Present the findings in an interactive dashboard

## 🧹 Data Cleaning
- Original dataset: **9,994 rows**
- Removed **17 duplicate records** → **9,977 clean rows**
- Investigated rows with negative profit (**1,863 rows, 18.7% of all orders**) to understand loss drivers

## 📊 Key Findings

**Overall performance**
- Total sales: **$2,296,349** | Total profit: **$286,194** | Profit margin: **12.5%**
- Average discount: **15.6%**

**By category**
- **Technology** generated the highest profit ($145,429), followed by **Office Supplies** ($122,350).
- **Furniture** had the weakest profit ($18,415) despite sales of $741,313, a margin of only ~2.5%.

**Loss-making sub-categories**
- **Tables** (-$17,733), **Bookcases** (-$3,479) and **Supplies** (-$1,187) lose money overall.
- Tables and Bookcases both carry high average discounts (26% and 21%).

**By region and segment**
- **West** (+$108,299) and **East** (+$91,505) are the most profitable regions; **Central** is the weakest ($39,669) relative to its sales ($500,798).
- **Consumer** is the largest segment (5,183 orders, $134,002 profit), while **Corporate** and **Home Office** are smaller but profitable.

**Discount impact (the main insight)**
- Orders with **no discount**: average profit of **+$67.0** per order.
- Orders with **discounts above 40%**: average **loss of -$106.8** per order.
- **98.9%** of all loss-making orders had a discount of **20% or more**.
- **Recommendation:** cap discounts at around 20%, especially on Tables, Bookcases and Binders.

## 🖼️ Dashboard Preview
![Dashboard](dashboard/dashboard.png)

## 🛠️ Tools
**SQL (MySQL)** · **Power BI** · **Excel**

## 📁 Repository Structure
```
sql/          SQL queries used in the analysis
dashboard/    Power BI dashboard (.pbix) and screenshots
data/         Cleaned dataset (public Sample Superstore data)
```

## 📚 Data Source
Sample Superstore dataset (publicly available).

## 👤 Author
**Mahmoud Alghoul**
Data Analyst | Humanitarian & Health Data
[LinkedIn](https://www.linkedin.com/in/mahmoud-algoul-0306b2249/) · [Behance](https://www.behance.net/mahmoudalgoul)

## ⚖️ License
© 2026 Mahmoud Alghoul. All rights reserved. For portfolio viewing only.
