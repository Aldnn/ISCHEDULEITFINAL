-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 05, 2024 at 05:07 AM
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
-- Database: `cetsub`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminlist`
--

CREATE TABLE `adminlist` (
  `AdminID` varchar(150) NOT NULL,
  `Password` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminlist`
--

INSERT INTO `adminlist` (`AdminID`, `Password`) VALUES
('CETADMIN', 'CPCCET'),
('CASEADMIN', 'CPCCASE'),
('CBMAADMIN', 'CPCCBMA'),
('CHTMADMIN', 'CPCCHTM'),
('CRIMADMIN', 'CPCCRIM'),
('LAWADMIN', 'CPCLAW'),
('MARINEADMIN', 'CPCMARINE');

-- --------------------------------------------------------

--
-- Table structure for table `casesched`
--

CREATE TABLE `casesched` (
  `Teacher` varchar(150) NOT NULL,
  `Subject` varchar(150) NOT NULL,
  `Time` varchar(150) NOT NULL,
  `Day` varchar(150) NOT NULL,
  `Room` varchar(150) NOT NULL,
  `Course` varchar(150) NOT NULL,
  `schedule_id` int(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `casesched`
--

INSERT INTO `casesched` (`Teacher`, `Subject`, `Time`, `Day`, `Room`, `Course`, `schedule_id`) VALUES
('Ms. Sharme Mayabason', 'Science, Technology, and Society', '5:30-7:30', 'Monday', '222', 'BSIT-4', 2),
('Engr. Resty Glenn Duran', 'Mathematics in the Modern World', '7:30:7-35', 'Monday', '222', 'BSIT-3', 3),
('Engr. Niel Jason Rosero', 'Mathematics in the Modern World', '2:30', 'Thursday', '109', '2:45', 4),
('Mrs. Judy Ann Andaya', 'Science, Technology, and Society', '2:30PM-3:30PM', 'Saturday', '225', 'BSIT-4', 5),
('Mrs. Judy Ann Andaya', 'Science, Technology, and Society', '3:30PM-4:30PM', 'Saturday', '225', 'BSIT-4', 6),
('Engr. Resty Glenn Duran', 'Science, Technology, and Society', '2:30PM-2:35PM', 'Monday', '322', 'BSIT-4', 7);

-- --------------------------------------------------------

--
-- Table structure for table `cbmasched`
--

CREATE TABLE `cbmasched` (
  `Teacher` varchar(150) NOT NULL,
  `Subject` varchar(150) NOT NULL,
  `Time` varchar(150) NOT NULL,
  `Day` varchar(150) NOT NULL,
  `Room` varchar(150) NOT NULL,
  `Course` varchar(150) NOT NULL,
  `id` int(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cetitsched`
--

CREATE TABLE `cetitsched` (
  `Teacher` varchar(100) NOT NULL,
  `Subject` varchar(150) NOT NULL,
  `Day` varchar(30) NOT NULL,
  `Time` varchar(30) NOT NULL,
  `Room` varchar(40) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cetitsched`
--

INSERT INTO `cetitsched` (`Teacher`, `Subject`, `Day`, `Time`, `Room`, `id`) VALUES
('Prof. Samson Begas', 'IT Elective 1', 'Wednesday', '4:30-4:45', '313', 10),
('Yob D. Dayao', 'Digital Signal Processing', 'Friday', '5:30-5:45', '317', 11),
('Mr. Michael Francese Besorio', 'Engineering Management', 'Monday', '7:30AM-5:30PM', '225', 12),
('Ms. Gwyneth Gorriceta', 'ROTC-ARMY/LTS', 'Thursday', '5:50-5:55', '217', 13),
('Engr. Eduardo Arroyo', 'Differential Equations', 'Wednesday', '7:30-7:33', '224', 14),
('Engr. Niel Jason Rosero', 'Differential Equations', 'Saturday', '1:30-1:33', '222', 15);

-- --------------------------------------------------------

--
-- Table structure for table `cetsched`
--

CREATE TABLE `cetsched` (
  `Teacher` varchar(150) NOT NULL,
  `Subject` varchar(150) NOT NULL,
  `Day` varchar(150) NOT NULL,
  `Time` varchar(150) NOT NULL,
  `Room` varchar(150) NOT NULL,
  `Course` varchar(150) NOT NULL,
  `id` int(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chtmsched`
--

CREATE TABLE `chtmsched` (
  `Teacher` varchar(150) NOT NULL,
  `Subject` varchar(150) NOT NULL,
  `Time` varchar(150) NOT NULL,
  `Day` varchar(150) NOT NULL,
  `Room` varchar(150) NOT NULL,
  `Course` varchar(150) NOT NULL,
  `id` int(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crimsched`
--

CREATE TABLE `crimsched` (
  `Teacher` varchar(150) NOT NULL,
  `Subject` varchar(150) NOT NULL,
  `Time` varchar(150) NOT NULL,
  `Day` varchar(150) NOT NULL,
  `Room` varchar(150) NOT NULL,
  `Course` varchar(150) NOT NULL,
  `id` int(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lawsched`
--

CREATE TABLE `lawsched` (
  `Teacher` varchar(150) NOT NULL,
  `Subject` varchar(150) NOT NULL,
  `Time` varchar(150) NOT NULL,
  `Day` varchar(150) NOT NULL,
  `Room` varchar(150) NOT NULL,
  `Course` varchar(150) NOT NULL,
  `id` int(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `marinesched`
--

CREATE TABLE `marinesched` (
  `Teacher` varchar(150) NOT NULL,
  `Subject` varchar(150) NOT NULL,
  `Time` varchar(150) NOT NULL,
  `Day` varchar(150) NOT NULL,
  `Room` varchar(150) NOT NULL,
  `Course` varchar(150) NOT NULL,
  `id` int(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roomlist`
--

CREATE TABLE `roomlist` (
  `Room` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roomlist`
--

INSERT INTO `roomlist` (`Room`) VALUES
('225'),
('217'),
('222'),
('322'),
('131'),
('224'),
('226'),
('109'),
('231'),
('151'),
('232'),
('223'),
('Lab A'),
('Lab B'),
('Lab C'),
('Lab D'),
('317'),
('319'),
('106'),
('321'),
('313'),
('108'),
('304'),
('311'),
('MSR'),
('310'),
('308'),
('204'),
('206'),
('312'),
('ERS'),
('A. LAB'),
('225'),
('217'),
('222'),
('322'),
('131'),
('224'),
('226'),
('109'),
('231'),
('151'),
('232'),
('223'),
('317'),
('319'),
('106'),
('321'),
('313'),
('108'),
('304'),
('311'),
('MSR'),
('310'),
('308'),
('204'),
('206'),
('312'),
('ERS'),
('A. Lab'),
('103'),
('105'),
('107'),
('106'),
('125'),
('126'),
('PSYCH Lab.'),
('110'),
('127'),
('324');

-- --------------------------------------------------------

--
-- Table structure for table `subjectlist`
--

CREATE TABLE `subjectlist` (
  `Subject_Code` varchar(35) NOT NULL,
  `Subject_Description` varchar(130) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subjectlist`
--

INSERT INTO `subjectlist` (`Subject_Code`, `Subject_Description`) VALUES
('PATHFIT1', 'Physical Activities Towards Health and Fitness 1:Movement and Competency Training'),
('GEC4 ', 'Mathematics in the Modern World'),
('GEC7', 'Science, Technology, and Society'),
('GEC2', 'Readings in Philippine History'),
('CE111', 'Civil Engineering Orientation'),
('Theo 1', 'Faith and Prayers'),
('Chem 111', 'Chemistry for Engineers'),
('Math 111', 'Calculus 1'),
('NSTP 1-L', 'ROTC-ARMY/LTS'),
('Math 213', 'Differential Equations'),
('Econ 211', 'Engineering Economics'),
('Mngt 211', 'Engineering Management'),
('GEC 5 ', 'Purposive Communication'),
('PATHFIT 3', 'Physical Activities Towards Health and Fitness 3: Dance/Sports'),
('Theo 3', 'Moral Teachings of the Church'),
('CAD 211', 'Computer-Aided Drafting'),
('Mech 211', 'Static of Rigid Bodies'),
('Surv 211', 'Fundamentals of Surveying'),
('CE 311', 'Structural Theory'),
('GEC 8', 'Ethics'),
('CE 312', 'Highway and Railroad Engineering'),
('CE 313', 'Engineering Utilities'),
('Filipino 1', 'Komunikasyon sa Akademikong Filipino'),
('Math 315', 'Numerical Solutions to CE Problems'),
('CE 314', 'Engineering Utilities 2'),
('CE 411', 'Geotechnical Engineering (Soil Mechanics)'),
('SPC 411', 'Reinforced Concrete Design'),
('CE 412', 'Principles of Transport Engineering'),
('SPC 412', 'Design of Steel Structures'),
('Filipino 3', 'Panitikan ng Pilipinas'),
('CE 413', 'CE Project (W/Field Trip)'),
('SPC 413', 'Prestressed Concrete Design'),
('ITE 101', 'Introduction to Computing'),
('ITE103', 'Computer Programming 1'),
('ITE 108', 'Event Driven Programming'),
('ITE 201', 'Information Assurance and Security 1'),
('ITE 109', 'Advance Database Systems'),
('ITE 200', 'Social and Professional Issues'),
('ITE 207', 'Networking 2'),
('ITE 305', 'App. Development & Emerging Technologies'),
('ITE 205', 'Platform Technologies'),
('ITE 300', 'IT Elective 1'),
('ITE 307 ', 'Integrative Programming and Technologies'),
('ITE 403', 'Quantitative Methods'),
('ITE 303', 'IT Elective 4'),
('ITE 402', 'Capstone Project 2'),
('ITE 305', 'IT Elective 6'),
('ITE 304', 'IT Elective 5'),
('CpE 221', 'Data Structures and Algorithm'),
('CpE 211', 'Fundamental of Electrical Circuits'),
('CpE 421', 'Computer Architecture and Organization'),
('CpE 423', 'Embedded Systems'),
('Design 1', 'CpE Practice and Design 1'),
('CpE 422', 'Digital Signal Processing'),
('CpE Elec 3', 'Software Development 3'),
('CpE 423', 'Emerging Technologies in CPE3'),
('MC', 'Life and Works of Rizal'),
('Theo 2 ', 'Liturgy and Sacraments'),
('PATHFIT 2', 'Physical Activities: Towards Health and Fitness 2: Exercise-Based Fitness Activities'),
('Phys 121', 'Physics for Engineers (Calculus Based)'),
('GEC 3', 'Contemporary World'),
('GEC 1', 'Understanding the Self'),
('Math 122', 'Calculus 2'),
('Comp 121', 'Computer Fundamentals and Programming'),
('Draw 121', 'Engineering Drawing Plans'),
('NSTP 2-L', 'ROTC-ARMY/LTS'),
('Mech 221', 'Dynamics of Rigid Bodies'),
('Math 224', 'Engineering Data Analysis'),
('GEC 6', 'Art Appreciation'),
('Mech 222', 'Mechanic of Deformable Bodies'),
('PATHFIT 4', 'Physical Activities Towards Health and Fitness 4: Sports'),
('CE 211', 'Geology for Civil Engineers'),
('CE 222', 'Construction Materials & Testing'),
('CE 223', 'Building System Design'),
('CE 323', 'CE Law, Ethics and Contracts'),
('CE 326', 'Principles of Steel Design'),
('Filipino 2', 'Pagbasa at Pagsulat sa Iba\'t ibang Disiplina'),
('Techno 101', 'Technopreneurship 101'),
('CE 322', 'Building System Design'),
('CE 327', 'Principles of reinforced/Prestressed Concrete'),
('CE 325', 'Hydraulics'),
('CE 324', 'Hydrology'),
('SPC 422', 'Earthquake Engineering (Professional Course-Specialized 5)'),
('CE 423', 'Civil Engineering Review Class'),
('SPC 421', 'Foundation and Retaining Wall (Professional Course-Specialized 4)'),
('CE 421 ', 'CE Project 2'),
('CE 422', 'Construction Methods and Project Management'),
('SURV 421', 'Quantity Surveying'),
('ITE 105 ', 'Data Structure and Algorithm'),
('ITE 104', 'Computer Programming 2'),
('ITE 107', 'Information Management'),
('ITE 203', 'Object Oriented Programming'),
('ITE 206', 'Networking 1'),
('ITE 106', 'Discrete Mathematics'),
('ITE 202', 'Information Assurance and Security 2'),
('ITE 204 ', 'Web Systems and Technologies'),
('ITE 309', 'System Administration and Maintenance'),
('ITE 401', 'Capstone Project and Research 1'),
('ITE 310', 'Human Computer Interaction'),
('ITE 302', 'IT Elective 3'),
('ITE 311', 'System Integration and Architecture'),
('ITE 301 ', 'IT Elective 2'),
('ITE 501', 'Practicum with Seminar and Field Trip'),
('ITE 205 ', 'Platform Technologies'),
('PrElect 3', 'Principles and Methods of Teaching Accounting'),
('AE 15', 'Intermediate Accounting I'),
('AE 11', 'Statistical Analysis with Software Application'),
('AE 5', 'Regulatory Framework and Legal Issues in Business'),
('AE 1', 'Law on Obligation and Contracts'),
('PrE 2', 'Auditing and Assurance: Concepts and Application I'),
('PrE 3', 'Auditing and Assurance: Concepts and Applications II'),
('AE 21', 'IT Application Tools in Business'),
('Pr-Elect 1', 'Valuation Concepts and Methods'),
('FMgt 1 ', 'Financial Management'),
('ELEC 3', 'Risk Management'),
('CBME 1', 'Operation Management and TQM'),
('AE 14', 'Conceptual Framework and Accounting Standards'),
('AE 15', 'Intermediate Accounting I'),
('BA 1', 'Basic Microeconomics'),
('BA 3', 'Taxation'),
('AE II', 'Managerial Economics'),
('FMgt 4', 'Monetary Policy and Central Banking'),
('FMgt 5', 'Investment and Portfolio Management'),
('MMgt 5', 'Retail Management'),
('AE 13', 'Financial Accounting and Reporting'),
('PrE 5', 'Auditing in a CIS Environment'),
('PrE 7', 'Accounting for Business Combinations'),
('AE 25', 'Strategic Cost Management'),
('PrE 4', 'Auditing and Assurance: Specialized Industries'),
('AE 22', 'Cost Accounting and Control'),
('MMgt 4', 'Advertising'),
('BA 6', 'International Business and Trade Agreements'),
('AE 7', 'International Business and Trade'),
('AE 12', 'Governance, Business Ethics, Risk Management and Internal Control'),
('ELEC 1', 'Franchising'),
('MMgt 6', 'Marketing Research'),
('BA 5', 'Human Resource Management'),
('MMgt 1', 'Marketing Management'),
('Pr-Elect 2', 'Operations Auditions'),
('Pr E 1 ', 'Auditing Assurance Principles'),
('AE 26', 'Strategic Business Analysis'),
('Pr E 8', 'Accounting for Governmental and Not-for-Profit Organization'),
('AE 19', 'Intermediate Accounting III'),
('CBME2', 'Strategic Management'),
('ELEC 3', 'E-Commerce and Internet Marketing'),
('HPC 4', 'Supply Chain Management'),
('TMPE 2', 'Heritage Tourism'),
('THC 8', 'Legal Aspects in Tourism & Hospitality'),
('HMPE 2', 'Bar and Beverage Management'),
('HMPE 1', 'Culinary Fundamentals'),
('THC 9', 'Multicultural Diversity in Workplace for Tourism Professional'),
('HMPE 6', 'Specialty Cuisine'),
('THC 6', 'Professional Development and Applied Ethics'),
('HPC 5', 'Foreign Language 1'),
('HPC 3', 'Applied Business Tools & Technologies'),
('HMPE 7', 'Crowd and Crisis Management'),
('THC 2', 'Risk Management as Applied to Safety, Security and Sanitation'),
('HMPE 5', 'Bread and Pastry'),
('HPC 10', 'Research in Hospitality Industry'),
('HPC 10/TPC', 'Research in Hospitality/Industry Research in Tourism'),
('TPC 10', 'Applied Bus. Tools and Technologies'),
('THC 1', 'Macro Perspective of Tourism & Hospitality'),
('THC 7', 'Tourism and Hospitality Marketing'),
('TMPE 7', 'Travel Writing and Photography with Seminar/Training'),
('TPC 2', 'Tour and Travel Management'),
('TMPE 3', 'Sustainable Tourism Destination Marketing'),
('CBME 1', 'Operations Management'),
('', ''),
('HPC 4', 'Supply Chain Management'),
('TMPE 2', 'Heritage Tourism'),
('THC 8', 'Legal Aspects in Tourism & Hospitality'),
('HMPE 2', 'Bar and Beverage Management'),
('HMPE 1', 'Culinary Fundamentals'),
('THC 9', 'Multicultural Diversity in Workplace for Tourism Professional'),
('HMPE 6', 'Specialty Cuisine'),
('THC 6', 'Professional Development and Applied Ethics'),
('HPC 5', 'Foreign Language 1'),
('HPC 3', 'Applied Business Tools & Technologies'),
('HMPE 7', 'Crowd and Crisis Management'),
('THC 2', 'Risk Management as Applied to Safety, Security and Sanitation'),
('HMPE 5', 'Bread and Pastry'),
('HPC 10', 'Research in Hospitality Industry'),
('HPC 10/TPC', 'Research in Hospitality/Industry Research in Tourism'),
('TPC 10', 'Applied Bus. Tools and Technologies'),
('THC 1', 'Macro Perspective of Tourism & Hospitality'),
('THC 7', 'Tourism and Hospitality Marketing'),
('TMPE 7', 'Travel Writing and Photography with Seminar/Training'),
('TPC 2', 'Tour and Travel Management'),
('TMPE 3', 'Sustainable Tourism Destination Marketing'),
('CBME 1', 'Operations Management'),
('', ''),
('PATHFit1', 'Fundamentals of Martial Arts'),
('GEL 1', 'Living in the IT Era & People and the Earth\'s Ecosystem'),
('Criminology 1', 'Introduction to Criminology'),
('NSTP 1-R', 'ROTC-Army'),
('PATHFit 3', 'First Aid and Water Safety'),
('LEA 2', 'Comparative Models in Policing'),
('Criminology 2', 'Theories of Crime Causation'),
('GEL 3', 'Philippine Pop Culture and Reading Visual Arts'),
('LEA 1', 'Law Enforcement Organization and Administration'),
('GEL 2', 'Gender, Society and the Entrepreneurial Mind'),
('CDI 1', 'Fundamentals of Investigation and Intelligence'),
('CDI 3', 'Specialized Crime Investigation '),
('LEA 4', 'Law Enforcement Operations and Planning with Crime Mapping'),
('Criminology 4', 'Professional Conduct and Ethical Standards'),
('CFLM 2', 'Character Formation with Leadership, Decision Making Management and Administration'),
('CLJ 2', 'Human Rights Education'),
('Forensic 3', 'Forensic Chemistry and Toxicology'),
('CDI 4', 'Traffic Management and Accident Investigation with Driving'),
('CLJ 3', 'Criminal Law (Book 1)'),
('Crim 6', 'Dispute Resolution and Crises/Incident Management'),
('CA 3', 'Therapeutic Modalities'),
('CDI 7', 'Vice and Drug Education and Control'),
('Criminology Practicu', 'Internship (On-the-Job Training 1)'),
('Crim 7', 'Criminological Research 1'),
('HPC 4', 'Supply Chain Management'),
('TMPE 2', 'Heritage Tourism'),
('THC 8', 'Legal Aspects in Tourism & Hospitality'),
('HMPE 2', 'Bar and Beverage Management'),
('HMPE 1', 'Culinary Fundamentals'),
('THC 9', 'Multicultural Diversity in Workplace for Tourism Professional'),
('HMPE 6', 'Specialty Cuisine'),
('THC 6', 'Professional Development and Applied Ethics'),
('HPC 5', 'Foreign Language 1'),
('HPC 3', 'Applied Business Tools & Technologies'),
('HMPE 7', 'Crowd and Crisis Management'),
('THC 2', 'Risk Management as Applied to Safety, Security and Sanitation'),
('HMPE 5', 'Bread and Pastry'),
('HPC 10', 'Research in Hospitality Industry'),
('HPC 10/TPC9', 'Research in Hospitality/Industry Research in Tourism'),
('TPC 10', 'Applied Bus. Tools and Technologies'),
('THC 1', 'Macro Perspective of Tourism & Hospitality'),
('THC 7', 'Tourism and Hospitality Marketing'),
('TMPE 7', 'Travel Writing and Photography with Seminar/Training'),
('TPC 2', 'Tour and Travel Management'),
('TMPE 3', 'Sustainable Tourism Destination Marketing'),
('CBME 1', 'Operations Management'),
('', ''),
('MACH 1', 'MACH 1'),
('AUX MACH 1', 'AUX MACH 1'),
('EWATCH', 'EWATCH'),
('ELECTRO 1', 'ELECTRO 1'),
('NGEC 9', 'NGEC 9'),
('MACH 2+ ', 'MACH 2+'),
('AUTO 1', 'AUTO 1'),
('PASGT', 'PASGT'),
('MACH 3', 'MACH 3'),
('ELECTRO 3', 'ELECTRO 3'),
('REMP', 'REMP '),
('EMAT', 'EMAT'),
('MGMT', 'MGMT'),
('PPS', 'PPS'),
('PPD', ''),
('GEC 1', 'GEC 1'),
('PEC 1', 'PEC 1'),
('PEC 6', 'PEC 6'),
('PEC 4', 'PEC 4'),
('VED 5', 'VED 5'),
('SCI 1', 'SCI 1'),
('MATH 1', 'MATH 1'),
('GEL 2', 'GEL 2'),
('ENRICH', 'ENRICH'),
('BPED 12', 'BPED 12'),
('VED 6', 'VED 6'),
('VED 1', 'VED 1'),
('VED 4', 'VED 4'),
('MF 11', 'MF 11'),
('MF 15', 'MF 15'),
('BPED 17', 'BPED 17'),
('BPED 14', 'BPED 14'),
('BPED 6', 'BPED 6'),
('BPED 1', 'BPED 1'),
('PEC 7', 'PEC 7'),
('TTL 1', 'TTL 1'),
('MF 16', 'MF 16'),
('PEC 11', 'PEC 11'),
('PEC 12', 'PEC 12'),
('MF 6', 'MF 4/ FL. 1'),
('MF 14', 'F1'),
('LIT 4', 'LIT 4'),
('LIT 2', 'LIT 2'),
('LIT 5', 'LIT 5'),
('ELT 1 ', 'ELT 1'),
('ENG 1', 'ENG 1'),
('ELT 2', 'ELT 2'),
('ALLIED 1', 'ENG ELECT 1'),
('PSYCH 1', 'PSYCH 1'),
('PSYCH 2', 'PSYCH 2'),
('PSYCH 11', 'PSYCH 11'),
('PSYCH 5', 'PSYCH 5'),
('PSYCH 10', 'PSYCH 10'),
('PSYCH 8', 'PSYCH 8'),
('BPED 16', 'BPED 16'),
('PSYCH 16-A', 'PSYCH 16-A'),
('PSYCH 19', 'PSYCH 19'),
('PSYCH 9', 'PSYCH 9'),
('PSYCH 18', 'PSYCH 18'),
('PSYCH 1', 'PSYCH 1'),
('PSYCH 20', 'PSYCH 20'),
('PSYCH 6', 'PSYCH 6'),
('PSYCH 17', 'PSYCH 17'),
('NAT. SCI', 'NAT. SCI'),
('3/BPED 2', '3/BPED 2'),
('Pol. Sci 1', 'Pol. Sci 1'),
('PSE 2', 'PSE 2'),
('Practicum', 'Practicum'),
('POL. SCI. 4', 'POL. SCI. 4'),
('POL. SCI. 6', 'POL. SCI. 6'),
('LAW 5', 'LAW 5'),
('LAW 1', 'LAW 1'),
('POL. SCI. 9', 'POL. SCI. 9'),
('POL. SCI. 7', 'POL. SCI. 7'),
('MF 5', 'MF 5'),
('MF 1', 'MF 1'),
('MF 12', 'MF 12'),
('MF 13', 'MF 13'),
('BPED 13', 'BPED 13');

-- --------------------------------------------------------

--
-- Table structure for table `teacherlist`
--

CREATE TABLE `teacherlist` (
  `Teacher` varchar(50) NOT NULL,
  `TeacherUsername` varchar(30) NOT NULL,
  `TeacherPassword` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teacherlist`
--

INSERT INTO `teacherlist` (`Teacher`, `TeacherUsername`, `TeacherPassword`) VALUES
('Mrs. Judy Ann Andaya', 'JudyAndaya', 'CPCANDAYA'),
('Engr. Resty Glenn Duran', 'RestyDuran', 'CPCDURAN'),
('Ms. Sharme Mayabason', 'SharmeMayabason', 'CPCMAYABASON'),
('Ms. Gwyneth Gorriceta', 'GwynethGorriceta', 'CPCGORRICETA'),
('Engr. Niel Jason Rosero', 'NielRosero', 'CPCROSERO'),
('Mrs. Sofia Buenaventura', 'SofiaBuenaventura', 'CPCBUENAVENTURA'),
('Engr. Evelyn Bilan', 'EvelynBilan', 'CPCBILAN'),
('Engr. Fernando Arce', 'FernandoArce', 'CPCARCE'),
('1Lt. Romeo Dela Cruz', 'RomeoDelaCruz', 'CPCDELACRUZ'),
('Engr Hernando Borbon Jr.', 'HernandoBorbonJr', 'CPCBORBONJR'),
('Engr. Eduardo Arroyo', 'EduardoArroyo', 'CPCARROYO'),
('Ms. Simplicia Pacifico', 'SimpliciaPacifico', 'CPCPACIFICO'),
('Mr. Michael Francese Besorio', 'MichaelBesorio', 'CPCBESORIO'),
('Engr. Jacob Begas', 'JacobBegas', 'CPCBEGAS'),
('Engr Joel Villaruz', 'JoelVillaruz', 'CPCJVILLARUZ'),
('Engr. Fred Borbon', 'FredBorbon', 'CPCBORBON'),
('Rev. Fr. Von Ryan Relos', 'VonRelos', 'CPCRELOS'),
('Ms Angelica Joy Buenvenida', 'AngelicaBuenvenida', 'CPCBUENVENIDA'),
('Engr. Marlon Scott Nery Campos', 'MarlonCampos', 'CPCCAMPOS'),
('Engr. Vanessa Deamboy', 'VanessaDeamboy', 'CPCDEAMBOY'),
('Mrs. Vivian Clores', 'VivianClores', 'CPCCLORES'),
('Mr. Martin Alisasis', 'MartinAlisasis', 'CPCALISASIS'),
('Mr. Joannou Fegarido', 'JoannouFegarido', 'CPCFEGARIDO'),
('Mr. Michael Corcino', 'MichaelCorcino', 'CPCCORCINO'),
('Ms Gylle Casugbo', 'GylleCasugbo', 'CPCCASUGBO'),
('Mr. Menard Anoche', 'MenardAnoche', 'CPCANOCHE'),
('Ms. Gizelle Vacaro', 'GizelleVacaro', 'CPCVACARO'),
('Mr. Jorge Cosgayon', 'JorgeCosgayon', 'CPCCOSGAYON'),
('Rev. Fr. Michael Vasquez', 'MichaelVasquez', 'CPCVASQUEZ'),
('Dr. Monecita Villaruz', 'Monecita Villaruz', 'CPCVILLARUZ'),
('Engr. Mella Alarik Balasbas', 'MellaBalasbas', 'CPCBALASBAS'),
('Sr. Ma. Gracia Almera', 'GraciaAlmera', 'CPCALMERA'),
('Mr. Bernardo Paloma Jr', 'BernardoPalomaJr', 'CPCPALOMA'),
('Mr. Joshua Toledo', 'JoshuaToledo', 'CPCTOLEDO'),
('Engr. Leo Bactol', 'LeoBactol', 'CPCBACTOL'),
('Engr. Maria Princess Palete', 'MariaPalete', 'CPCPALETE'),
('Engr. John Carlo Llano', 'JohnLlano', 'CPCLLANO'),
('Engr. Janet Aguilar', 'JanetAguilar', 'CPCAGUILAR'),
('Engr. Christian Paul Andrada', 'ChristianAndrada', 'CPCANDRADA'),
('Prof. Samson Begas', 'SamsonBegas', 'CPCSBEGAS'),
('Prof. Wenie Gorriceta', 'WenieGorriceta', 'CPCWGORRICETA'),
('Engr. Anabelle Santillan', 'AnabelleSantillan', 'CPCSANTILLAN'),
('Rev. Fr. Dale Orda', 'DaleOrda', 'CPCORDA'),
('Engr. Roshel Thane Clarys Flores', 'RoshelFlores', 'CPCFLORES'),
('Engr. Elmer Jimenez', 'ElmerJimenez', 'CPCJIMENEZ'),
('Prof. Bryan Deither Luza', 'BryanLuza', 'CPCLUZA'),
('Prof. Regina Jocelyn Alba', 'ReginaAlba', 'CPCALBA'),
('Engr. Ma. Princess Palete', 'PrincessPalete', 'CPCPALETE'),
('Engr. Roel Bryan Alsagon', 'RoelAlsagon', 'CPCALSAGON'),
('Engr. Allan Clarito', 'AllanClarito', 'CPCCLARITO'),
('Salvio E. Llanera', 'SalvioLlanera', 'CPCLLANERA'),
('Vincent B. Bunda', 'VincentBunda', 'CPCBUNDA'),
('Yob D. Dayao', 'YobDayao', 'CPCDAYAO'),
('Marevic R. Andeo', 'MarevicAndeo', 'CPCANDEO'),
('Atty. Faith Beatrix T. Arcenas', 'FaithArcenas', 'CPCARCENAS'),
('Alberth Justine D. Balgos', 'AlberthBalgos', 'CPCBALGOS'),
('Richard B. Baarde', 'RichardBaarde', 'CPCBAARDE'),
('Vhon Charles G. Barrio', 'VhonBarrio', 'CPCBARRIO'),
('Alberto A. Biclar Jr.', 'AlbertoBiclar', 'CPCBICLAR'),
('Alejandro B. Bitamor Jr.', 'AlejandroBitamor', 'CPCBITAMOR'),
('Vincent B. Bunda', 'VincentBunda', 'CPCBUNDA'),
('May Evan O. Dela Cruz', 'MayDelaCruz', 'CPCMDELACRUZ'),
('Rev. Fr. Noel G. Gerapusco', 'NoelGerapusco', 'CPCGERAPUSCO'),
('Bebydi Maria Gloria', 'BebydiGloria', 'CPCGLORIA'),
('John Khevin V. Limpoco', 'JohnLimpoco', 'CPCLIMPOCO'),
('Denmark I. Llanera', 'DenmarkLlanera', 'CPCDLLANERA'),
('Salvio Llanera', 'SalvioLlanera', 'CPCSLLANERA'),
('Ivy. A Lopez', 'IvyLopez', 'CPCLOPEZ'),
('Josephine O. Morines', 'JosephineMorines', 'CPCMORINES'),
('Mark Anthony G. Ortiz', 'MarkOrtiz', 'CPCORTIZ'),
('Pia Paula B. Samillano', 'PiaSamillano', 'CPCSAMILLANO'),
('Donnel San Antonio', 'DonnelSanAntonio', 'CPCSANANTONIO'),
('Danilo Valenzuela', 'Danilo Valenzuela', 'CPCVALENZUELA'),
('Marilou Villar', 'MarilouVillar', 'CPCVILLAR'),
('Yves A. Villaruz', 'YvesVillaruz', 'CPCYVILLARUZ'),
('Jessica Ordas', 'JessicaOrdas', 'CPCORDAS'),
('Edna Nava', 'EdnaNava', 'CPCNAVA'),
('Mark Salvador', 'MarkSalvador', 'CPCSALVADOR'),
('Ms. Angelica Dayalo', 'AngelicaDayalo', 'CPCDAYALO'),
('Johnlee Abagay', 'JohnleeAbagay', 'CPCABAGAY'),
('Michelle Miramis', 'MichelleMiramis', 'CPCMIRAMIS'),
('Placido Bereber', 'PlacidoBereber', 'CPCBEREBER'),
('John Lester B. Cadeliña', 'JohnCadeliña', 'CPCCADELIÑA'),
('Emil Caldeo', 'EmilCaldeo', 'CPCCALDEO'),
('Lea Fae Laurilla', 'LeaLaurilla', 'CPCLAURILLA'),
('Atty. Toche Vic Doce', 'TocheDoce', 'CPCDOCE'),
('Ma. Rozelyn Baby Araza', 'RozelynAraza', 'CPCARAZA'),
('Mark Salvador', 'MarkSalvador', 'CPCSALVADOR'),
('Josue Ajera Sr.', 'JosueAjera', 'CPCAJERA'),
('Andrew I. Arches', 'AndrewArches', 'CPCARCHES'),
('Anastacio Arda', 'AnastacioArda', 'CPCARDA'),
('Chester R. Arnaldo', 'ChesterArnaldo', 'CPCARNALDO'),
('Leo B. Baes', 'LeoBaes', 'CPCBAES'),
('Gani V. Baido', 'GaniBaido', 'CPCBAIDO'),
('Hernan C. Berug', 'HernanBerug', 'CPCBERUG'),
('Aaron Carl D. Borlado', 'AaronBorlado', 'CPCBORLADO'),
('Dominador Cabantug', 'DominadorCabantug', 'CPCCABANTUG'),
('Allan D. Clarito Jr.', 'AllanClarito', 'ClaritoCPC'),
('Hermina Gomez', 'HerminaGomez', 'CPCGOMEZ'),
('Ian Rafael Japsay', 'IanJapsay', 'CPCJAPSAY'),
('Jane Frances V. Luces', 'JaneLuces', 'CPCLUCES'),
('Ramon Martinez Jr.', 'RamonMartinez', 'CPCMARTINEZ'),
('Rodolfo D. Ramos', 'RodolfoRamos', 'CPCRAMOS'),
('Lawrence Oliver Sales', 'LawrenceSales', 'CPCSALES'),
('Nelson D. Sararaña ', 'NelsonSararaña', 'CPCSARARAÑA'),
('Conie Arcaño', 'ConieArcaño', 'CPCARCAÑO'),
('Angelita Chiuco', 'AngelitaChiuco', 'CPCCHIUCO'),
('Sr. Ma. Minda D. Derilo', 'MindaDerilo', 'CPCDERILO'),
('Ma. Flodeliz Dela Cruz', 'FlodelizDelaCruz', 'CPCFDELACRUZ'),
('Ivy Gorriceta', 'IvyGorriceta', 'CPCIGORRICETA'),
('Anita Laserna', 'AnitaLaserna', 'CPCLASERNA'),
('Fe Villaruz', 'FeVillaruz', 'CPCFVILLARUZ'),
('Irah Faith Celino', 'IrahCelino', 'CPCCELINO'),
('Engel Cerilo', 'EngelCerilo', 'CPCCERILO'),
('Fr. John Paul Escalada', 'JohnEscalada', 'CPCESCALADA'),
('Rev. Fr. Martin Lex Gevero', 'MartinGevero', 'CPCGEVERO'),
('Laurence Mae Hilata', 'LaurenceHilata', 'CPCHILATA'),
('Rosemarie Late', 'Rosemarie Late', 'CPCLATE'),
('Ergil Romualdo', 'ErgilRomualdo', 'CPCROMUALDO'),
('Rev. Fr. Philip Andrada', 'PhilipAndrada', 'CPCPANDRADA'),
('Mr. Joseph Manajero', 'JosephManajero', 'CPCMANAJERO'),
('Gelie Ann Antion', 'GelieAntion', 'CPCANTION'),
('Atty. Matthew Espiritu', 'MatthewEspiritu', 'CPCESPIRITU'),
('Ma. Mavel Aller', 'MavelAller', 'CPCALLER'),
('Mary Gold Alovera', 'MaryAlovera', 'CPCALOVERA'),
('Aira Joy Azoro', 'AiraAzoro', 'CPCAZORO'),
('Cheryl Balgos', 'CherylBalgos', 'CPCBALGOS'),
('Catherine Denoya', 'CatherineDenoya', 'CPCDENOYA'),
('Crystal Vi-An Bellete', 'CrystalBellete', 'CPCBELLETE'),
('Jason Binondo', 'JasonBinondo', 'CPCBINONDO'),
('Evelyn Botea', 'Evelyn Botea', 'CPCBOTEA'),
('Bhea Lyn Burio', 'BheaBurio', 'CPCBURIO'),
('CETADMIN', 'CETADMIN', 'CPCCET'),
('CASEADMIN', 'CASEADMIN', 'CPCCASE'),
('CHTMADMIN', 'CHTMADMIN', 'CPCCHTM'),
('CBMAADMIN', 'CBMAADMIN', 'CPCCBMA'),
('CRIMADMIN', 'CRIMADMIN', 'CPCCRIM'),
('MARINEADMIN', 'MARINEADMIN', 'CPCMARINE'),
('LAWADMIN', 'LAWADMIN', 'CPCLAW');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `casesched`
--
ALTER TABLE `casesched`
  ADD PRIMARY KEY (`schedule_id`);

--
-- Indexes for table `cbmasched`
--
ALTER TABLE `cbmasched`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cetitsched`
--
ALTER TABLE `cetitsched`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cetsched`
--
ALTER TABLE `cetsched`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chtmsched`
--
ALTER TABLE `chtmsched`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crimsched`
--
ALTER TABLE `crimsched`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lawsched`
--
ALTER TABLE `lawsched`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marinesched`
--
ALTER TABLE `marinesched`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `casesched`
--
ALTER TABLE `casesched`
  MODIFY `schedule_id` int(150) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `cetitsched`
--
ALTER TABLE `cetitsched`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
