# 🛒 FMCG Sales Performance & Forecasting Analysis (2022–2024)

## 📖 Project Overview  
This end-to-end analytics project explores **3 years (2022–2024)** of synthetic FMCG (Fast-Moving Consumer Goods) sales data.  

Using a **multi-tool workflow** — **SQL** for data validation, **Python** for analysis & forecasting, and **Power BI** for dashboarding — the project extracts actionable insights into **sales performance**, **promotions**, and **inventory risks**.  

The pipeline moves from **data cleaning & EDA → forecasting → predictive modeling → interactive BI dashboard**, mirroring how analytics projects are executed in real-world businesses.

---

## 🛠️ Tech Stack & Skills Demonstrated  

**🗄️ Database Management:** MySQL (data cleaning, aggregations, KPIs)  
**🐍 Data Analysis & Manipulation:** Python (Pandas, NumPy)  
**📊 Visualization:** Python (Matplotlib, Seaborn), Power BI  
**⏳ Forecasting:** Prophet (time-series forecasting)  
**🤖 Machine Learning:** Scikit-learn, XGBoost (predictive modeling)  
**🔧 Version Control:** Git & GitHub  

---

## 📈 Workflow & Business Questions  

### 1️⃣ Data Cleaning & Preprocessing (SQL)  
✔️ Loaded raw CSV into MySQL  
✔️ Checked for duplicates, nulls, and inconsistent values  
✔️ Standardized product hierarchy (SKU → Brand → Segment → Category)  

### 2️⃣ Exploratory Data Analysis (Python)  
**Key questions answered:**  
📅 What is the overall sales trend over 3 years?  
🏆 Which categories & brands are top performers?  
🌍 How do regions & sales channels compare?  
💸 What is the impact of promotions on sales?  

📓 **View Full Jupyter Notebook:**  
🔗 [Click here to open in nbviewer](https://nbviewer.org/github/yourusername/FMCG-Sales-Analytics/blob/main/notebooks/FMCG_Analysis_and_Forecasting.ipynb)  

### 3️⃣ Interactive Dashboard (Power BI)  
**Dynamic filters & KPIs:**  
- Total revenue, sales growth (YoY/MoM)  
- Top brands & categories  
- Sales by region & channel  
- Promotion uplift analysis  
- Stockout tracking  

---

## 🔬 Advanced Analytics (Python)  
🔮 **Forecasting:** Prophet model predicting 90-day revenue  
🤖 **Predictive Modeling:** XGBoost classifier → identified key sales drivers (Price, Promotion)  

---

## 💡 Key Insights & Findings  

📌 **1. Strong, Predictable Growth**  
- Consistent upward revenue trend (2022 → 2024)  
- Seasonal peaks in spring (March–April) and weekends  

📌 **2. Price & Promotions Drive Sales**  
- XGBoost (68% accuracy) ranked **Price** as the #1 driver of high-volume sales  
- **Promotions** ranked #2  

📌 **3. Promotions Increase Units Sold by ~60%**  
Avg. units sold per transaction:  
🔹 With promotion → 32 units  
🔹 Without promotion → 20 units  

📌 **4. Inventory Risks Detected**  
Frequent stockouts in several SKUs.  
Example: SKU **YO-029** consistently understocked → lost revenue risk.  

---

## 📊 Dashboard Preview  
The final interactive dashboard (built in Power BI):  
<img width="1166" height="651" alt="Screenshot 2025-09-20 154312" src="https://github.com/user-attachments/assets/73a9993e-d0b9-41a9-9b38-f357746bdd09" />
  


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
   - Or view directly online via nbviewer: [📓 Notebook Link](https://nbviewer.org/github/Srishankar123/FMCG-Sales-Analytics/blob/main/FMCG-Sales-Analytics/notebooks/FMCG%20Analysis%20and%20Forecasting.ipynb)  
3. **Dashboard** → Open `dashboard/FMCG Retail Analytics Dashboard.pbix` in Power BI (or view screenshots).  

---

## 📈 Results & Business Recommendations

✅ Introduce **dynamic pricing models** during seasonal peaks.  
✅ Increase **inventory buffer** for understocked SKUs (e.g., YO-029).  
✅ Maintain **regular promotions** for price-sensitive segments.  
✅ Deploy **forecast-based inventory planning** to reduce stockouts.  

---

## 🔮 Next Steps  

- Extend forecasting to **product-level granularity**  
- Integrate **real-time sales feed using APIs**  
- Automate report delivery using **Power BI Service**  

---

## 📬 Author  

**👤 Srishankar Lokanath**  
📧 [Email](mailto:srishankarloknath@gmail.com) | 🌐 [LinkedIn](https://www.linkedin.com/in/srishankar-lokanath-99a5b4252/) | 💻 [GitHub](https://github.com/Srishankar123)  

⭐ *If you found this project insightful, don’t forget to star the repo!* ⭐
