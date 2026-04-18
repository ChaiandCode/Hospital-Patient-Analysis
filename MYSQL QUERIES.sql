CREATE DATABASE hospital_db;
USE hospital_db;
CREATE TABLE patients (
    patient_id INTEGER,
    age INTEGER,
    gender TEXT,
    disease TEXT,
    doctor TEXT,
    treatment_cost INTEGER
);
INSERT INTO patients VALUES
(1,45,'Male','Diabetes','Dr Shah',5000),
(2,30,'Female','Fever','Dr Patil',2000),
(3,55,'Male','Heart Disease','Dr Shah',20000),
(4,22,'Female','Flu','Dr Kulkarni',1500),
(5,40,'Male','Diabetes','Dr Shah',4500);
SELECT * FROM patients;

SELECT * FROM patients;
SELECT disease, COUNT(*) AS patient_count
FROM patients
GROUP BY disease;

SELECT AVG(treatment_cost) AS avg_cost
FROM patients;

SELECT doctor, COUNT(*) AS total_patients
FROM patients
GROUP BY doctor
ORDER BY total_patients DESC;