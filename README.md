# 🏥 Healthcare Management: Patient Readmission Prediction

### **Project: ReadmitGuard – Predicting 30-Day Patient Readmission**

---

## 📌 **Business Introduction**

Welcome to **ReadmitGuard**, an analytics-driven solution designed for healthcare facilities to forecast the likelihood of patient readmission within **30 days** of discharge.
The goal is to equip healthcare providers with proactive insights so they can intervene early, improve patient outcomes, and reduce avoidable healthcare costs.

---

## 🎯 **Mission Statement**

Our mission is to deliver **accurate, data-driven insights** that help healthcare professionals identify high-risk patients.
By leveraging analytics and predictive modeling, ReadmitGuard aims to support personalized care, reduce readmission rates, and enhance hospital efficiency.

---

## ❗ **Problem Statement**

Healthcare providers struggle to identify which patients are most likely to return within 30 days of discharge.
This project analyzes historical patient encounter data to:

* Predict readmission risk
* Identify key drivers behind readmissions
* Support proactive interventions

---

## 📂 **Dataset Description**

The dataset contains detailed patient encounter records including:

* **Demographics**
* **Admission & discharge details**
* **Medical history & diagnoses**
* **Lab procedures, medications, and treatments**
* **Encounter-level outcomes**

Each row represents one **unique patient encounter**.

---

# 🔍 **1. Excel Tasks – Exploratory Understanding**

### ✔ Data Exploration

* Generate a **statistical summary** for important features (lab procedures, drugs, diagnoses, etc.)
* Create a **readmission summary by gender and age group**
* Visualize **race distribution**
* Plot **count of patients** for each readmission category

---

# 🗄 **2. SQL Tasks – Database Management & Analysis**

### ✔ Data Loading

* Create a schema named **`healthcare`**
* Load data from **`diabetic_data.csv`** into SQL tables

### ✔ Required SQL Analyses

* Calculate **total patient encounters**
* Identify **top 10 most frequent diagnoses**
* Compute **average hospital stay** by admission type
* Determine **readmission count & percentage**
* Analyze **age distribution**
* Identify **most common procedures**
* Calculate **average medications** prescribed across age groups
* Explore **readmission rates by payer code**

---

# 🐍 **3. Python Tasks – Exploratory Data Analysis (EDA)**

### ✔ EDA Requirements

* Descriptive statistical analysis for **numerical features**
* Visualize **categorical features** (race, gender)
* Analyze relationship between **age & readmission**
* Plot correlations between numerical variables
* Analyze **medication changes & totals**
* Explore **diagnoses categories** distribution
* Study **admission type, admission source, discharge disposition**
* Identify & plot **outliers** in key features
* Create a **detailed EDA report** summarizing insights

---

# 📊 **4. Tableau Tasks – Interactive Dashboard Development**

### ✔ Visualizations to Build

1. **Readmission count by diagnoses and emergency cases** (Bar charts)
2. **Age Bucket vs Readmission** using calculated fields
3. **Comparison of medications, procedures, diagnoses, emergencies, hospital time by readmission**
4. **Bubble chart** showing:

   * Num Medications (X-axis)
   * Num Lab Procedures (Y-axis)
   * Number Diagnoses (Bubble size)
   * Readmitted (Color)

### ✔ Dashboard

Combine all worksheets into a **single interactive Tableau dashboard**, containing:

* Readmitted Count Visualization
* Age Bucket Readmission Chart
* Multiple KPI Visuals
* Bubble Chart

---

# 🧠 **Project Workflow**

1. **Dataset Cleaning & Understanding** (Excel, Python)
2. **Database Structuring & Querying** (SQL)
3. **Exploratory Insights & Patterns** (Python EDA)
4. **Visualization & Dashboarding** (Tableau)
5. (Optional) Predictive Modeling for readmission risk

---

# 📁 **Technologies Used**

* **Excel** – Initial data exploration
* **Python** – Pandas, Matplotlib/Seaborn, NumPy for EDA
* **SQL** – Data storage & analytical queries
* **Tableau** – Interactive dashboards
* **GitHub** – Version control and project documentation

---

# 🏁 **Conclusion**

This project provides a complete analytics pipeline—from cleaning and exploration to visualization—to help healthcare providers understand patient readmission behavior.
ReadmitGuard enables data-backed decision-making, supporting better patient care and reduced operational costs.
