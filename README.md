📊 Sales Analytics & KPI Monitoring Dashboard
🔍 Project Overview

This project focuses on building an end-to-end Sales Performance Analytics solution using MySQL, Python, and Power BI.
The objective is to enable business stakeholders to track KPIs, analyze trends, and gain actionable insights from sales transaction data.

🛠️ Tools & Technologies

Python (Pandas) – Data cleaning and preprocessing

MySQL – Data storage, KPI queries, and views

Power BI – Data modeling, visualization, and dashboarding

📂 Dataset

~10,000+ sales transaction records

Key attributes: Order Date, Region, Category, Sub-Category, Sales, Quantity, Discount, Profit

⚙️ Project Workflow

Data Cleaning (Python)

Converted date columns to proper datetime format

Verified missing and duplicate records

Exported cleaned data for database ingestion

Database Design (MySQL)

Created structured tables for sales data

Built SQL views for KPIs:

Overall business KPIs

Monthly sales & profit trends

Region-wise performance

Category & sub-category analysis

KPI Development

Total Sales, Profit, Orders, Quantity

Profit Margin (%)

Time-based trends (monthly)

Regional and category-wise revenue contribution

Dashboard Development (Power BI)

Connected Power BI directly to MySQL views

Designed an interactive dashboard with:

KPI cards

Trend line charts

Bar & column charts

Detailed sub-category table

Implemented slicers for time and region-based analysis

📈 Key Insights

Identified top-performing regions and categories

Analyzed monthly revenue and profit trends

Highlighted high and low-performing sub-categories

Enabled quick executive-level performance monitoring

🖼️ Dashboard Preview

<img width="1308" height="734" alt="dashboard_overview" src="https://github.com/user-attachments/assets/872d746d-07f3-499b-93fb-9bbd3ef80946" />

Overall Dashboard View

<img width="1308" height="730" alt="dashboard_filtered" src="https://github.com/user-attachments/assets/685f7004-f76c-44d4-998c-58280c4b162e" />

Filtered View using slicers

🚀 Business Value

This dashboard enables:

Faster decision-making through centralized KPIs

Performance tracking across regions and categories

Clear visibility into sales and profitability trends

📌 Future Enhancements

Add forecasting for sales trends

Automate data refresh using scheduled pipelines

Include customer-level analysis
