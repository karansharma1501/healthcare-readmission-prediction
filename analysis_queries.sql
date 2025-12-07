-- =========================================================
-- Healthcare Management: Patient Readmission Prediction
-- SQL Analysis Queries
-- Author: Karan Sharma
-- Schema: healthcare
-- Table: diabetic_data
-- =========================================================

-- Make sure we are using the correct schema
USE healthcare;

-- =========================================================
-- 1. TOTAL NUMBER OF PATIENT ENCOUNTERS
-- ---------------------------------------------------------
-- Business Question:
-- How many total encounters (rows) exist in the dataset?
-- =========================================================

SELECT COUNT(*) AS total_encounters
FROM diabetic_data;


-- =========================================================
-- 2. TOP 10 MOST FREQUENT DIAGNOSES
-- ---------------------------------------------------------
-- Business Question:
-- Which diagnoses appear most frequently across all encounters?
--
-- Approach:
-- - The dataset has three diagnosis columns: diag_1, diag_2, diag_3.
-- - We UNION ALL them into a single column and count occurrences.
-- - We ignore missing values marked as '?'.
-- =========================================================

SELECT diagnosis,
       COUNT(*) AS frequency
FROM (
    SELECT diag_1 AS diagnosis FROM diabetic_data
    UNION ALL
    SELECT diag_2 AS diagnosis FROM diabetic_data
    UNION ALL
    SELECT diag_3 AS diagnosis FROM diabetic_data
) AS all_diags
WHERE diagnosis IS NOT NULL
  AND diagnosis <> '?'
GROUP BY diagnosis
ORDER BY frequency DESC
LIMIT 10;


-- =========================================================
-- 3. AVERAGE LENGTH OF HOSPITAL STAY BY ADMISSION TYPE
-- ---------------------------------------------------------
-- Business Question:
-- For each admission type, what is the average time a patient
-- spends in the hospital?
--
-- Columns used:
-- - admission_type_id
-- - time_in_hospital (in days)
-- =========================================================

SELECT admission_type_id,
       AVG(time_in_hospital) AS avg_length_of_stay
FROM diabetic_data
GROUP BY admission_type_id
ORDER BY admission_type_id;


-- =========================================================
-- 4. READMITTED PATIENTS: COUNT & PERCENTAGE
-- ---------------------------------------------------------
-- Business Question:
-- How many encounters were readmissions (within or after 30 days),
-- and what percentage of total encounters do they represent?
--
-- Logic:
-- - readmitted = 'NO'      -> not readmitted
-- - readmitted = '<30'     -> readmitted within 30 days
-- - readmitted = '>30'     -> readmitted after 30 days
-- - We treat '<30' and '>30' as "readmitted".
-- =========================================================

SELECT
    COUNT(*) AS total_encounters,
    SUM(readmitted <> 'NO') AS readmitted_patients,
    100.0 * SUM(readmitted <> 'NO') / COUNT(*) AS readmitted_percentage
FROM diabetic_data;


-- =========================================================
-- 5. AGE DISTRIBUTION OF PATIENTS
-- ---------------------------------------------------------
-- Business Question:
-- How are patients distributed across different age groups?
--
-- Note:
-- The age column is typically stored as ranges such as:
-- '[0-10)', '[10-20)', '[20-30)', etc.
-- =========================================================

SELECT age,
       COUNT(*) AS patient_count
FROM diabetic_data
GROUP BY age
ORDER BY age;


-- =========================================================
-- 6. MOST COMMON PROCEDURES PERFORMED
-- ---------------------------------------------------------
-- Business Question:
-- What are the most common procedure counts during encounters?
--
-- Note:
-- The dataset provides 'num_procedures' (number of procedures
-- during an encounter), not detailed procedure codes.
-- This query shows how often different procedure counts occur.
-- =========================================================

SELECT num_procedures,
       COUNT(*) AS encounter_count
FROM diabetic_data
GROUP BY num_procedures
ORDER BY encounter_count DESC
LIMIT 10;


-- =========================================================
-- 7. AVERAGE NUMBER OF MEDICATIONS BY AGE GROUP
-- ---------------------------------------------------------
-- Business Question:
-- On average, how many medications are prescribed for patients
-- in each age group?
--
-- Columns used:
-- - age
-- - num_medications
-- =========================================================

SELECT age,
       AVG(num_medications) AS avg_medications
FROM diabetic_data
GROUP BY age
ORDER BY age;


-- =========================================================
-- 8. READMISSION RATES BY PAYER CODE
-- ---------------------------------------------------------
-- Business Question:
-- How do readmission rates differ across payer codes
-- (insurance / payment categories)?
--
-- Logic:
-- - We compute total encounters per payer_code.
-- - We compute readmitted encounters as readmitted <> 'NO'.
-- - We calculate readmission rate as a percentage.
-- - We exclude missing payer codes represented by '?'.
-- =========================================================

SELECT payer_code,
       COUNT(*) AS total_encounters,
       SUM(readmitted <> 'NO') AS readmitted_patients,
       100.0 * SUM(readmitted <> 'NO') / COUNT(*) AS readmission_rate_pct
FROM diabetic_data
WHERE payer_code IS NOT NULL
  AND payer_code <> '?'
GROUP BY payer_code
ORDER BY readmission_rate_pct DESC;
