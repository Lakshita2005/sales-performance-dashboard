# 📊 Sales Analytics & KPI Monitoring Dashboard

## 🔍 Project Overview
This project focuses on building an end-to-end **Sales Performance Analytics solution** using **MySQL, Python, and Power BI**.  
The objective is to enable business stakeholders to track KPIs, analyze trends, and gain actionable insights from sales transaction data.

---

## 🛠️ Tools & Technologies
- **Python (Pandas)** – Data cleaning and preprocessing  
- **MySQL** – Data storage, KPI queries, and views  
- **Power BI** – Data modeling, visualization, and dashboarding  

---

## 📂 Dataset
- ~10,000+ sales transaction records  
- Key attributes include:
  - Order Date  
  - Region  
  - Category & Sub-Category  
  - Sales, Quantity, Discount, Profit  

---

## ⚙️ Project Workflow

### 1️⃣ Data Cleaning (Python)
- Converted date columns to proper datetime format  
- Verified missing and duplicate records  
- Exported cleaned data for database ingestion  

### 2️⃣ Database Design (MySQL)
- Created structured tables for sales data  
- Built SQL **views** for KPIs:
  - Overall business KPIs  
  - Monthly sales & profit trends  
  - Region-wise performance  
  - Category & sub-category analysis  

### 3️⃣ KPI Development
- Total Sales, Total Profit, Total Orders, Quantity  
- Profit Margin (%)  
- Time-based trends (monthly)  
- Regional and category-wise revenue contribution  

### 4️⃣ Dashboard Development (Power BI)
- Connected Power BI directly to MySQL KPI views  
- Designed an interactive dashboard including:
  - KPI cards  
  - Monthly trend line charts  
  - Region & category bar/column charts  
  - Detailed sub-category performance table  
- Implemented slicers for time and region-based analysis  

---

## 📈 Key Insights
- Identified top-performing regions and categories  
- Analyzed monthly revenue and profit trends  
- Highlighted high and low-performing sub-categories  
- Enabled quick executive-level performance monitoring  

---

## 🖼️ Dashboard Preview

### 🔹 Overall Dashboard View
<img width="1308" height="734" alt="dashboard_overview" src="https://github.com/user-attachments/assets/96f3ce8f-cf64-4ba4-9793-9d4ab4673df4" />


### 🔹 Filtered View (Using Slicers)
<img width="1308" height="730" alt="dashboard_filtered" src="https://github.com/user-attachments/assets/b0ab94d7-a9a0-4ab5-aea1-b7f47b3ead7e" />

---

## 🚀 Business Value
This dashboard enables:
- Faster decision-making through centralized KPIs  
- Performance tracking across regions and product categories  
- Clear visibility into sales and profitability trends  

---

## 📌 Future Enhancements
- Add sales forecasting models  
- Automate data refresh pipelines  
- Extend analysis to customer-level insights  
