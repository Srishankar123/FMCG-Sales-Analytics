# FMCG Sales Performance & Forecasting Analysis (2022-2024)

### [View the Interactive Dashboard](dashboard/dashboard_overview.png) | [View the Full Analysis Notebook](notebooks/FMCG_Analysis_and_Forecasting.ipynb) | [View the SQL Queries](sql/fmcg_analysis.sql)

---

## 📖 Project Overview

This end-to-end data analytics project provides a comprehensive analysis of a synthetic FMCG (Fast-Moving Consumer Goods) sales dataset covering a three-year period. The primary objective was to leverage a multi-tool workflow—combining **SQL** for data integrity, **Python** for in-depth analysis and machine learning, and **Power BI** for interactive visualization—to extract actionable business insights.

The project moves from foundational data cleaning and exploratory analysis to advanced techniques, including time-series forecasting and predictive modeling, culminating in a professional, interactive business intelligence dashboard.

---

## 🛠️ Tech Stack & Skills

* **Database Management:** **MySQL** (Data storage, integrity checks, and complex queries)
* **Data Analysis & Manipulation:** **Python (Pandas)**
* **Data Visualization:** **Python (Matplotlib, Seaborn)**, **Power BI**
* **Time-Series Forecasting:** **Python (Prophet)**
* **Machine Learning:** **Python (Scikit-learn, XGBoost)**
* **Version Control:** **Git & GitHub**

---

## 📈 Project Workflow & Key Questions

The project was structured in a multi-phase workflow to move from raw data to actionable insights.

### 1. **Data Cleaning & Preprocessing (SQL)**
The raw CSV was loaded into a MySQL database where initial checks for duplicates, null values, and inconsistencies were performed to ensure a reliable foundation for analysis.

### 2. **Exploratory Data Analysis (Python)**
Using Python, the project answered foundational business questions:
* What is the overall sales trend over time?
* Which product categories and brands are the top performers?
* How do sales channels and regions compare in performance?
* What is the impact of promotions on sales volume?

### 3. **Interactive Dashboard (Power BI)**
The cleaned data was used to build a dynamic, interactive dashboard in Power BI. The dashboard serves as a central hub for monitoring key performance indicators (KPIs) and allows for filtering data by year, region, and category.

### 4. **Advanced Analytics (Python)**
* **Forecasting:** A Prophet time-series model was built to answer: **"What will our sales revenue be for the next 90 days?"**
* **Predictive Modeling:** An XGBoost classification model was developed to answer: **"What are the key drivers of a high-volume sale?"**

---

## 📊 Key Findings & Business Insights

### 1. **Strong, Predictable Growth**
The business demonstrates a consistent upward trend in monthly revenue. The Prophet forecast predicts this growth will continue and successfully identified key seasonal patterns, including sales peaks on weekends and during the spring (March-April).

### 2. **Price & Promotions are Key Sales Drivers**
The XGBoost predictive model (68% accuracy) identified **Price** as the most significant factor in predicting a high-volume sale. **Promotions** were the second most important driver. This provides quantitative evidence that pricing and marketing strategies are the most effective levers for influencing sales.

### 3. **Promotions Boost Sales Volume by ~60%**
On average, transactions with a promotion sold **~32 units**, while non-promotional transactions sold **~20 units**. This confirms that promotional campaigns are highly effective at increasing the number of units sold per transaction.

### 4. **Inventory Risks Identified**
The stockout analysis pinpointed a list of top-offending SKUs that frequently have zero stock available, representing direct lost revenue and a poor customer experience. **SKU `YO-029`** was identified as a key product needing immediate inventory management review.

---

##  dashboards Preview

The final deliverable is an interactive Power BI dashboard that summarizes the key findings of the project.

![Final Dashboard](dashboard/dashboard_overview.png)

---

## How to Use This Repository

1.  **Database Setup:** The queries to create and populate the database are in the `sql/` folder.
2.  **Jupyter Notebooks:** The full Python analysis, including EDA and machine learning models, is in the `notebooks/` folder.
3.  **Dashboard:** Screenshots of the final dashboard are available in the `dashboard/` folder.
