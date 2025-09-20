# 🛒 FMCG Sales Performance & Forecasting Analysis (2022–2024)

### 🔗 Quick Links  
📊 [Interactive Dashboard (Power BI)]<img width="1166" height="651" alt="image" src="https://github.com/user-attachments/assets/eec3fb4d-a229-4903-a2f0-db0c020e127d" /> | 📓 [Full Jupyter Notebook]([notebooks/FMCG_Analysis_and_Forecasting.ipynb](https://github.com/Srishankar123/FMCG-Sales-Analytics/blob/main/FMCG-Sales-Analytics/notebooks/FMCG%20Analysis%20and%20Forecasting.ipynb)) | 🗄️ [SQL Queries]([sql/fmcg_analysis.sql](https://github.com/Srishankar123/FMCG-Sales-Analytics/blob/main/FMCG-Sales-Analytics/sql/FCMG.sql))

---

## 📖 Project Overview

This **end-to-end analytics project** explores **3 years (2022–2024)** of synthetic FMCG (Fast-Moving Consumer Goods) sales data.  

Using a **multi-tool workflow** — **SQL** for data validation, **Python** for analysis & forecasting, and **Power BI** for dashboarding — the project extracts **actionable insights** into sales performance, promotions, and inventory risks.  

The pipeline moves from **data cleaning & EDA → forecasting → predictive modeling → interactive BI dashboard**, mirroring how analytics projects are executed in real-world businesses.

---

## 🛠️ Tech Stack & Skills Demonstrated

- 🗄️ **Database Management:** MySQL (data cleaning, aggregations, KPIs)  
- 🐍 **Data Analysis & Manipulation:** Python (Pandas, Numpy)  
- 📊 **Visualization:** Python (Matplotlib, Seaborn), Power BI  
- ⏳ **Forecasting:** Prophet (time-series forecasting)  
- 🤖 **Machine Learning:** Scikit-learn, XGBoost (predictive modeling)  
- 🔧 **Version Control:** Git & GitHub  

---

## 📈 Workflow & Business Questions

### 1️⃣ Data Cleaning & Preprocessing (SQL)  
✔️ Loaded raw CSV into MySQL  
✔️ Checked for duplicates, nulls, and inconsistent values  
✔️ Standardized product hierarchy (SKU → Brand → Segment → Category)  

### 2️⃣ Exploratory Data Analysis (Python)  
Key questions answered:  
- 📅 What is the **overall sales trend** over 3 years?  
- 🏆 Which **categories & brands** are top performers?  
- 🌍 How do **regions & sales channels** compare?  
- 💸 What is the **impact of promotions** on sales?  

### 3️⃣ Interactive Dashboard (Power BI)  
Dynamic filters & KPIs:  
- Total revenue, sales growth (YoY/MoM)  
- Top brands & categories  
- Sales by region & channel  
- Promotion uplift analysis  
- Stockout tracking  

### 4️⃣ Advanced Analytics (Python)  
- 🔮 **Forecasting:** Prophet model predicting **90-day revenue**  
- 🤖 **Predictive Modeling:** XGBoost classifier → identified **key sales drivers** (Price, Promotion)  

---

## 💡 Key Insights & Findings

📌 **1. Strong, Predictable Growth**  
- Consistent upward revenue trend (2022 → 2024).  
- Seasonal peaks in **spring (March–April)** and **weekends**.  

📌 **2. Price & Promotions Drive Sales**  
- XGBoost (68% accuracy) ranked **Price** as the #1 driver of high-volume sales.  
- Promotions ranked #2.  

📌 **3. Promotions Increase Units Sold by ~60%**  
- Avg. units sold per transaction:  
  - 🔹 With promotion → **32 units**  
  - 🔹 Without promotion → **20 units**  

📌 **4. Inventory Risks Detected**  
- Frequent stockouts in several SKUs.  
- Example: **SKU `YO-029`** consistently understocked → **lost revenue risk**.  

---

## 📊 Dashboard Preview

The final interactive dashboard (built in Power BI):  

![Final Dashboard](<img width="1166" height="651" alt="image" src="https://github.com/user-attachments/assets/958eb0ee-70ca-44ae-a258-33cdeb988765" />)

---

## 📂 Repository Structure

```
FMCG-Sales-Analytics/
│── data/                # Raw & cleaned datasets
│── sql/                 # SQL scripts (schema + queries)
│── notebooks/           # Jupyter Notebook (EDA, forecasting, ML)
│── dashboard/           # Power BI file + screenshots
│── README.md            # Project documentation
```

---

## 🚀 How to Use

1. **Database Setup** → Run `sql/fmcg_analysis.sql` in MySQL to create schema & tables.  
2. **Python Analysis** → Open `notebooks/FMCG_Analysis_and_Forecasting.ipynb` for full EDA + forecasting.  
3. **Dashboard** → Open `dashboard/FMCG Retail Analytics Dashboard.pbix` in Power BI (or view screenshots).  

---

✨ This project demonstrates **end-to-end analytics: SQL + Python + Dashboarding + Forecasting** — making it **portfolio & interview ready**.  
