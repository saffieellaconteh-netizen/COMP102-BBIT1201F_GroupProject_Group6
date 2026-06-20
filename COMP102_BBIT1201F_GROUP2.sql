-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2026 at 09:28 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `public_health_clinic_record_system`
--
CREATE DATABASE IF NOT EXISTS `public_health_clinic_record_system` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `public_health_clinic_record_system`;

-- --------------------------------------------------------

--
-- Table structure for table `clinic_visit`
--

CREATE TABLE `clinic_visit` (
  `Visit_ID` int(11) NOT NULL,
  `Patient_ID` int(11) DEFAULT NULL,
  `Visit_Date` date DEFAULT NULL,
  `Reason_For_Visit` varchar(200) DEFAULT NULL,
  `Health_Worker_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clinic_visit`
--

INSERT INTO `clinic_visit` (`Visit_ID`, `Patient_ID`, `Visit_Date`, `Reason_For_Visit`, `Health_Worker_ID`) VALUES
(1, 1, '2026-01-10', 'Fever and headache', 1),
(2, 2, '2026-01-15', 'Chest pain and difficulty breathing', 1),
(3, 3, '2026-02-03', 'Prenatal checkup', 2),
(4, 4, '2026-02-10', 'Persistent cough', 1),
(5, 5, '2026-02-20', 'Abdominal pain', 4),
(6, 6, '2026-03-05', 'Childhood vaccination', 3),
(7, 7, '2026-03-12', 'Malaria symptoms', 1),
(8, 8, '2026-03-18', 'Wound assessment', 5),
(9, 1, '2026-04-01', 'Follow-up consultation', 1),
(10, 3, '2026-04-15', 'Postnatal checkup', 2),
(11, 9, '2026-04-18', 'High blood pressure complaint', 7),
(12, 10, '2026-04-22', 'Skin rash and itching', 13),
(13, 11, '2026-04-25', 'Joint pain and swelling', 9),
(14, 12, '2026-05-02', 'Eye irritation and blurred vision', 15),
(15, 13, '2026-05-05', 'Severe headache and vomiting', 7),
(16, 14, '2026-05-08', 'Urinary tract infection symptoms', 8),
(17, 15, '2026-05-10', 'Child with persistent diarrhoea', 3),
(18, 16, '2026-05-13', 'Chest tightness and wheezing', 7),
(19, 17, '2026-05-15', 'Lower back pain', 9),
(20, 18, '2026-05-18', 'Prenatal checkup – third trimester', 4);

-- --------------------------------------------------------

--
-- Table structure for table `diagnosis`
--

CREATE TABLE `diagnosis` (
  `Diagnosis_ID` int(11) NOT NULL,
  `Visit_ID` int(11) DEFAULT NULL,
  `Diagnosis_Name` varchar(100) DEFAULT NULL,
  `Symptoms` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `diagnosis`
--

INSERT INTO `diagnosis` (`Diagnosis_ID`, `Visit_ID`, `Diagnosis_Name`, `Symptoms`) VALUES
(1, 1, 'Malaria', 'Fever, headache, chills, sweating'),
(2, 2, 'Pneumonia', 'Chest pain, shortness of breath, cough'),
(3, 3, 'Healthy Pregnancy', 'No complications, routine checkup'),
(4, 4, 'Tuberculosis', 'Persistent cough, weight loss, night sweats'),
(5, 5, 'Appendicitis', 'Severe abdominal pain, nausea, vomiting'),
(6, 6, 'Routine Vaccination', 'No symptoms – preventive care'),
(7, 7, 'Malaria', 'High fever, body aches, fatigue'),
(8, 8, 'Infected Wound', 'Swelling, redness, discharge at wound site'),
(9, 9, 'Mild Anaemia', 'Fatigue, dizziness, pale complexion'),
(10, 10, 'Postnatal Recovery', 'Normal postnatal recovery, no complications'),
(11, 11, 'Hypertension', 'Elevated blood pressure, dizziness, headache'),
(12, 12, 'Eczema', 'Dry, itchy, inflamed skin patches on arms and legs'),
(13, 13, 'Rheumatoid Arthritis', 'Swollen painful joints, morning stiffness, fatigue'),
(14, 14, 'Conjunctivitis', 'Redness, discharge, and irritation in both eyes'),
(15, 15, 'Meningitis', 'Severe headache, stiff neck, high fever, vomiting'),
(16, 16, 'Urinary Tract Infection', 'Burning urination, frequent urge to urinate, lower pelvic pain'),
(17, 17, 'Gastroenteritis', 'Diarrhoea, stomach cramps, dehydration, vomiting'),
(18, 18, 'Asthma', 'Chest tightness, wheezing, shortness of breath'),
(19, 19, 'Lumbar Strain', 'Lower back pain worsening with movement'),
(20, 20, 'Healthy Pregnancy', 'Third trimester, normal fetal development, no complications');

-- --------------------------------------------------------

--
-- Table structure for table `health_worker`
--

CREATE TABLE `health_worker` (
  `Health_Worker_ID` int(11) NOT NULL,
  `Full_Name` varchar(100) NOT NULL,
  `Role` varchar(50) DEFAULT NULL,
  `Department` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `health_worker`
--

INSERT INTO `health_worker` (`Health_Worker_ID`, `Full_Name`, `Role`, `Department`) VALUES
(1, 'Dr. Ella Conteh', 'Medical Doctor', 'General Medicine'),
(2, 'Nurse Francess Jones', 'Nurse', 'Maternity'),
(3, 'Dr. Joshua Samura', 'Paediatrician', 'Paediatrics'),
(4, 'Nurse John Fofana', 'Nurse', 'Emergency'),
(5, 'Dr. Sorie Kamara', 'Surgeon', 'Surgery'),
(6, 'Nurse Kadiatu Bah', 'Nurse', 'General Medicine'),
(7, 'Dr. Ibrahim Sesay', 'Medical Doctor', 'Internal Medicine'),
(8, 'Nurse Mariama Cole', 'Nurse', 'Paediatrics'),
(9, 'Dr. Fatmata Turay', 'Gynaecologist', 'Obstetrics & Gynaecology'),
(10, 'Nurse Samuel Kanu', 'Nurse', 'Surgery'),
(11, 'Dr. Alieu Bangura', 'Medical Doctor', 'Emergency'),
(12, 'Nurse Aminata Jah', 'Nurse', 'General Medicine'),
(13, 'Dr. Brima Koroma', 'Orthopaedic Surgeon', 'Surgery'),
(14, 'Nurse Isatu Conteh', 'Nurse', 'Maternity'),
(15, 'Dr. Joseph Kamara', 'Medical Doctor', 'General Medicine'),
(16, 'Nurse Hawa Dumbuya', 'Nurse', 'Emergency'),
(17, 'Dr. Adama Fofanah', 'Dermatologist', 'Dermatology'),
(18, 'Nurse Tenneh Kargbo', 'Nurse', 'Internal Medicine'),
(19, 'Dr. Sulaiman Sesay', 'Ophthalmologist', 'Eye Clinic'),
(20, 'Nurse Zainab Koroma', 'Nurse', 'Paediatrics');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `Patient_ID` int(11) NOT NULL,
  `First_Name` varchar(50) NOT NULL,
  `Last_Name` varchar(50) NOT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `Date_of_Birth` date DEFAULT NULL,
  `Phone_Number` varchar(15) DEFAULT NULL,
  `Address` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`Patient_ID`, `First_Name`, `Last_Name`, `Gender`, `Date_of_Birth`, `Phone_Number`, `Address`) VALUES
(1, 'Aminata', 'Kamara', 'Female', '1990-03-15', '076123456', 'Freetown, Sierra Leone'),
(2, 'Mohamed', 'Sesay', 'Male', '1985-07-22', '077234567', 'Bo, Sierra Leone'),
(3, 'Fatmata', 'Conteh', 'Female', '2000-11-05', '078345678', 'Kenema, Sierra Leone'),
(4, 'Ibrahim', 'Bangura', 'Male', '1978-01-30', '079456789', 'Makeni, Sierra Leone'),
(5, 'Isatu', 'Turay', 'Female', '1995-09-12', '076567890', 'Freetown, Sierra Leone'),
(6, 'Abdul', 'Koroma', 'Male', '2003-06-18', '077678901', 'Lunsar, Sierra Leone'),
(7, 'Mariama', 'Jalloh', 'Female', '1988-04-25', '078789012', 'Port Loko, Sierra Leone'),
(8, 'Samuel', 'Fofanah', 'Male', '1972-12-10', '079890123', 'Kailahun, Sierra Leone'),
(9, 'Hawa', 'Bah', 'Female', '1993-05-20', '076111222', 'Freetown, Sierra Leone'),
(10, 'Alhaji', 'Kamara', 'Male', '1980-08-14', '077222333', 'Bo, Sierra Leone'),
(11, 'Tenneh', 'Massaquoi', 'Female', '2001-03-07', '078333444', 'Pujehun, Sierra Leone'),
(12, 'Brima', 'Koroma', 'Male', '1969-11-25', '079444555', 'Makeni, Sierra Leone'),
(13, 'Kadiatu', 'Sesay', 'Female', '1998-07-19', '076555666', 'Kenema, Sierra Leone'),
(14, 'Foday', 'Conteh', 'Male', '1975-02-28', '077666777', 'Lunsar, Sierra Leone'),
(15, 'Memunatu', 'Bangura', 'Female', '2005-09-03', '078777888', 'Freetown, Sierra Leone'),
(16, 'Sullay', 'Turay', 'Male', '1991-12-16', '079888999', 'Port Loko, Sierra Leone'),
(17, 'Adama', 'Jalloh', 'Female', '1987-06-30', '076999111', 'Waterloo, Sierra Leone'),
(18, 'Lansana', 'Koroma', 'Male', '2002-04-11', '077111333', 'Kailahun, Sierra Leone'),
(19, 'Sia', 'Fofanah', 'Female', '1996-10-22', '078222444', 'Bo, Sierra Leone'),
(20, 'Amadu', 'Mansaray', 'Male', '1983-01-05', '079333555', 'Freetown, Sierra Leone');

-- --------------------------------------------------------

--
-- Table structure for table `treatment`
--

CREATE TABLE `treatment` (
  `Treatment_ID` int(11) NOT NULL,
  `Diagnosis_ID` int(11) DEFAULT NULL,
  `Medication` varchar(100) DEFAULT NULL,
  `Dosage` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `treatment`
--

INSERT INTO `treatment` (`Treatment_ID`, `Diagnosis_ID`, `Medication`, `Dosage`) VALUES
(1, 1, 'Artemether-Lumefantrine', 'Two tablets twice daily for 3 days'),
(2, 2, 'Amoxicillin', '500mg three times daily for 7 days'),
(3, 3, 'Folic Acid', '5mg once daily'),
(4, 4, 'Rifampicin + Isoniazid', 'Daily for 6 months under DOTS programme'),
(5, 5, 'Metronidazole', '400mg three times daily post-surgery'),
(6, 6, 'MMR Vaccine', 'Single intramuscular dose'),
(7, 7, 'Artemether-Lumefantrine', 'Two tablets twice daily for 3 days'),
(8, 8, 'Flucloxacillin', '250mg four times daily for 5 days'),
(9, 9, 'Ferrous Sulphate', '200mg twice daily for 4 weeks'),
(10, 10, 'Vitamin C', '500mg once daily for general recovery'),
(11, 11, 'Amlodipine', '5mg once daily, monitor blood pressure weekly'),
(12, 12, 'Hydrocortisone Cream', 'Apply thinly to affected area twice daily for 2 we'),
(13, 13, 'Ibuprofen', '400mg three times daily with food for 7 days'),
(14, 14, 'Chloramphenicol Eye Drops', '2 drops in each eye four times daily for 5 days'),
(15, 15, 'Ceftriaxone', '2g IV once daily for 10 days under hospital admiss'),
(16, 16, 'Nitrofurantoin', '100mg twice daily for 5 days'),
(17, 17, 'Oral Rehydration Salts', 'Dissolve one sachet in 1 litre water, drink after '),
(18, 18, 'Salbutamol Inhaler', '2 puffs every 4–6 hours as needed'),
(19, 19, 'Diclofenac', '50mg twice daily with meals for 5 days, plus physi'),
(20, 20, 'Folic Acid + Iron', '5mg folic acid and 200mg ferrous sulphate once dai');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clinic_visit`
--
ALTER TABLE `clinic_visit`
  ADD PRIMARY KEY (`Visit_ID`),
  ADD KEY `Patient_ID` (`Patient_ID`),
  ADD KEY `Health_Worker_ID` (`Health_Worker_ID`);

--
-- Indexes for table `diagnosis`
--
ALTER TABLE `diagnosis`
  ADD PRIMARY KEY (`Diagnosis_ID`),
  ADD KEY `Visit_ID` (`Visit_ID`);

--
-- Indexes for table `health_worker`
--
ALTER TABLE `health_worker`
  ADD PRIMARY KEY (`Health_Worker_ID`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`Patient_ID`);

--
-- Indexes for table `treatment`
--
ALTER TABLE `treatment`
  ADD PRIMARY KEY (`Treatment_ID`),
  ADD KEY `Diagnosis_ID` (`Diagnosis_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clinic_visit`
--
ALTER TABLE `clinic_visit`
  MODIFY `Visit_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `diagnosis`
--
ALTER TABLE `diagnosis`
  MODIFY `Diagnosis_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `health_worker`
--
ALTER TABLE `health_worker`
  MODIFY `Health_Worker_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `Patient_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `treatment`
--
ALTER TABLE `treatment`
  MODIFY `Treatment_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `clinic_visit`
--
ALTER TABLE `clinic_visit`
  ADD CONSTRAINT `clinic_visit_ibfk_1` FOREIGN KEY (`Patient_ID`) REFERENCES `patient` (`Patient_ID`),
  ADD CONSTRAINT `clinic_visit_ibfk_2` FOREIGN KEY (`Health_Worker_ID`) REFERENCES `health_worker` (`Health_Worker_ID`);

--
-- Constraints for table `diagnosis`
--
ALTER TABLE `diagnosis`
  ADD CONSTRAINT `diagnosis_ibfk_1` FOREIGN KEY (`Visit_ID`) REFERENCES `clinic_visit` (`Visit_ID`);

--
-- Constraints for table `treatment`
--
ALTER TABLE `treatment`
  ADD CONSTRAINT `treatment_ibfk_1` FOREIGN KEY (`Diagnosis_ID`) REFERENCES `diagnosis` (`Diagnosis_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
