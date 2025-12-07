# Healthcare Readmission Analysis (Excel)

**Author:** Karan Sharma

This repository contains an Excel-based analysis of hospital patient readmissions using the *diabetic patient dataset*.
The project focuses on understanding how patient demographics and medical activity influence hospital readmission rates.

---

## 📂 Repository Contents

* **Healthcare Readmission Analysis.xlsx**
  Contains:

  * Statistical summary of key medical features
  * Pivot tables for grouped analysis
  * Charts visualizing patient demographics & readmission patterns
  * Insights based on exploratory data analysis

---

## 🔍 Analysis Performed in Excel

### **1. Statistical Summary (Descriptive Statistics)**

Using **Excel Data Analysis ToolPak → Descriptive Statistics**, a summary was generated for key numerical features:

* `num_lab_procedures`
* `num_procedures`
* `num_medications`
* `number_diagnoses`

The output includes:

* Mean, Median
* Min & Max
* Standard Deviation
* Variance
* Count

This provides a clear overview of the medical activity associated with each patient.

---

### **2. Readmissions by Gender and Age Group**

A **PivotTable** was built to analyze readmission counts segmented by gender and age groups.

* **Rows:** `gender`
* **Columns:** `age`
* **Values:** `COUNT(readmitted)`

This helps identify which gender and age segments experience higher readmission occurrences.

---

### **3. Race Distribution**

A PivotTable on `race` was created and visualized using a **bar or pie chart**.

This chart shows:

* The distribution of patients by race
* Representation of demographic groups within the dataset
* Potential data imbalance (e.g., majority Caucasian)

---

### **4. Readmission Category Breakdown**

A PivotTable summarizing counts for each readmission category:

* `<30`  → readmitted within 30 days
* `>30`  → readmitted after 30 days
* `NO`   → no readmission

Displayed using a **bar chart** to compare category frequencies.

---

## 🧠 Key Insights (Summary)

* Most patients in the dataset were **not readmitted**.
* Among those readmitted, the **>30 days** category tends to be higher than the `<30 days` category.
* Certain age groups—especially **middle-aged to older adults**—show higher readmission counts.
* Race distribution indicates overrepresentation of certain demographics (e.g., Caucasian), which can influence overall patterns.
* Higher numbers of diagnoses and medications often correlate with readmission likelihood.

---

## 🛠 Tools Used

* **Microsoft Excel**

  * PivotTables
  * Data Analysis ToolPak
  * Bar Charts / Pie Charts
  * Descriptive Statistics

---

## 📌 About the Author

**Karan Sharma**
Aspiring Data Analyst with experience in Business Analytics, Excel, SQL, Power BI, and data-driven problem solving. This project demonstrates Excel-based exploratory analysis and data storytelling for healthcare datasets.

---

Feel free to explore the Excel file to see pivot tables, charts, and all analysis details.
