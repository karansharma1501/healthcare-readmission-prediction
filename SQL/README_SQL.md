# SQL Module – Healthcare Management: Patient Readmission Prediction

This folder contains the SQL scripts used to explore and analyze the **diabetic patient readmission dataset** in MySQL.

All queries assume:

- **Schema:** `healthcare`
- **Table:** `diabetic_data`

The table is created and populated from `diabetic_data.csv` before running these queries.

---

## 📄 File: `analysis_queries.sql`

This script contains all the analysis queries, grouped by business question.

### 1️⃣ Total Number of Patient Encounters

**Query goal:**  
Find out how many total patient encounters (rows) exist in the dataset.

**Why it matters:**  
Gives a sense of dataset size and coverage.

---

### 2️⃣ Top 10 Most Frequent Diagnoses

**Query goal:**  
Identify the most common diagnoses across all encounters.

**How it works:**

- Combines the three diagnosis columns: `diag_1`, `diag_2`, `diag_3`
- Counts how often each diagnosis code appears
- Returns the top 10 by frequency

**Why it matters:**  
Highlights the most frequent medical conditions handled by the healthcare facility.

---

### 3️⃣ Average Length of Hospital Stay by Admission Type

**Query goal:**  
Calculate the average `time_in_hospital` for each `admission_type_id`.

**Why it matters:**  
Shows which types of admissions are associated with longer or shorter hospital stays.

---

### 4️⃣ Readmitted Patients – Count and Percentage

**Query goal:**  
Determine:

- How many encounters resulted in readmission (`<30` or `>30`)  
- What percentage of total encounters that represents

**Logic:**

- `readmitted = 'NO'` → no readmission  
- `readmitted = '<30' or '>30'` → considered readmitted  

**Why it matters:**  
Provides a high-level metric of readmission rate in the hospital.

---

### 5️⃣ Age Distribution of Patients

**Query goal:**  
Show how many patients fall into each age bucket (e.g. `[0-10)`, `[10-20)`, etc.).

**Why it matters:**  
Helps understand which age groups are most represented in the dataset.

---

### 6️⃣ Most Common Procedures Performed

**Query goal:**  
Find which values of `num_procedures` appear most often.

**Note:**  
The dataset does not always store detailed procedure codes, but it does store the **number of procedures** (`num_procedures`).  
So this query tells us, for example, how common it is for patients to undergo 0, 1, 2, etc. procedures.

**Why it matters:**  
Gives a high-level view of how intensive typical encounters are.

---

### 7️⃣ Average Number of Medications by Age Group

**Query goal:**  
For each `age` range, calculate the average `num_medications`.

**Why it matters:**  
Shows how medication load changes with age. Older age groups may have more prescriptions on average.

---

### 8️⃣ Readmission Rates by Payer Code

**Query goal:**  
Compute readmission rates across different `payer_code` values.

**How it works:**

- Groups by `payer_code`
- Calculates:
  - Total encounters
  - Number of readmitted encounters (`readmitted <> 'NO'`)
  - Readmission rate as a percentage

**Why it matters:**  
Helps analyze whether certain payer categories are associated with higher or lower readmission rates.  
This can be useful for cost analysis and payer-based strategy planning.

---

## 🛠 How to Use These SQL Files

1. Create the schema and load data (via MySQL Workbench or scripts).
2. Open `analysis_queries.sql` in MySQL Workbench.
3. Make sure you run:

   ```sql
   USE healthcare;
