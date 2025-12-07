# 📊 Tableau Dashboard – Healthcare Readmission Prediction

**Author:** Karan Sharma
**Tool:** Tableau Public (Desktop Public Edition)

---

## 📁 Overview

This folder contains the Tableau visualizations and dashboard created for the **Healthcare Patient Readmission Prediction** project. The visual analysis helps identify patterns in patient encounters, diagnoses, medication usage, and readmission behavior using the `diabetic_data.csv` dataset.

The dashboard is designed to give healthcare providers insights into:

* Readmission trends
* Demographic risks
* Diagnosis and treatment complexity
* Hospital resource utilization

---

## 🛠 Dataset Used

`diabetic_data.csv`
Contains over 100,000 healthcare encounter records with information on:

* Demographics
* Diagnoses
* Lab procedures
* Medications
* Admission & discharge details
* Readmission within 30 days

---

# 📈 Visualizations Included in the Dashboard

---

## **1️⃣ Readmission Count by Number of Diagnoses & Emergency Visits**

**Purpose:**
Identify whether patients with higher diagnosis counts or emergency encounters are more likely to be readmitted.

**Tableau Steps:**

* Drag *Number Diagnoses* → Columns
* Drag *Number Emergency* → Columns
* Drag *Readmitted* → Rows
* Drag *Readmitted* → Label

**Insight:**
Higher diagnosis counts and emergency episodes correlate with increased readmission probability.

---

## **2️⃣ Readmission Rate by Age Buckets**

**Purpose:**
Analyze how age influences readmission behavior.

**Concept:**
Created custom buckets:

```
0–10, 11–20, 21–30, 31–40, 41–50, 51+
```

**Tableau Steps:**

* Create `Age Numeric` using INT([Age])
* Create `Age Bucket` using IF…ELSE logic
* Drag *Age Bucket* → Columns
* Drag *Readmitted* and *Number Inpatient* → Rows
* Convert *Number Inpatient* to COUNT
* Use Color + Label for clarity

**Insight:**
Older patients (41–50 and 51+) show higher readmission frequency.

---

## **3️⃣ Multi-variable Comparison by Readmission Category**

**Variables Compared:**

* Number of Medications
* Number of Procedures
* Number of Diagnoses
* Number of Emergency Visits
* Time in Hospital

**Purpose:**
Understand how treatment intensity impacts readmissions.

**Visualization:**
Stacked bar chart via **Show Me → Stacked Bars**

**Insight:**
Patients with many procedures, diagnoses, and high medication counts show higher readmission risk.

---

## **4️⃣ Bubble Chart – Multivariate Insight**

**Fields Used:**

* X-axis: Num Medications
* Y-axis: Num Lab Procedures
* Bubble Size: Number Diagnoses
* Color: Readmitted

**Purpose:**
Visualize clustering of complex healthcare cases.

**Insight:**
Readmitted patients tend to have:

* More medications
* More lab procedures
* Higher diagnosis counts

---

# 🧩 Dashboard Description

The final Tableau dashboard combines all 4 visuals to help healthcare analysts answer:

### 🔹 Who is most likely to be readmitted?

### 🔹 How do age and diagnoses affect readmission?

### 🔹 What patterns exist in medication or emergency visits?

### 🔹 How do hospital procedures correlate with outcomes?

This interactive dashboard supports decision-making for:

* Hospital administrators
* Healthcare analysts
* Clinical quality teams
* Predictive modeling workflows

---

# 🏁 Final Notes

This Tableau dashboard is an essential part of the project, complementing the analysis done in Excel, SQL, and Python. It provides a visually interactive way to understand patient readmission behavior and supports predictive model development.

