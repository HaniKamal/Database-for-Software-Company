-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2022 at 10:35 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `software_company`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `all_reports`
-- (See below for the actual view)
--
CREATE TABLE `all_reports` (
`ID` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `external_report`
--

CREATE TABLE `external_report` (
  `ID` int(11) NOT NULL,
  `Report_date` date NOT NULL,
  `Problem_description` varchar(200) NOT NULL,
  `Report_status` set('with maintenance','') NOT NULL,
  `External_name` varchar(30) NOT NULL,
  `Product_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `external_report`
--

INSERT INTO `external_report` (`ID`, `Report_date`, `Problem_description`, `Report_status`, `External_name`, `Product_ID`) VALUES
(8010, '2022-01-11', 'Windows Displaying Blue Screen', 'with maintenance', 'Michell', 9941),
(8011, '2022-02-20', 'Slow Downloading and Uploading', 'with maintenance', 'Dewitt', 9982),
(8012, '2022-05-13', 'Lack of a plan', '', 'Evan', 9982),
(8013, '2022-05-02', 'Incomplete documentation ', '', 'Corrinne', 9911),
(8014, '2022-03-15', 'Malware Attack', 'with maintenance', 'Lura', 9997),
(8015, '2022-04-30', 'Incorrect calculations', '', 'Charlesetta', 9941);

-- --------------------------------------------------------

--
-- Table structure for table `external_user`
--

CREATE TABLE `external_user` (
  `ID` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Age` int(2) NOT NULL,
  `Phone` varchar(11) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Address` varchar(30) NOT NULL,
  `Company` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `external_user`
--

INSERT INTO `external_user` (`ID`, `Name`, `Age`, `Phone`, `Email`, `Address`, `Company`) VALUES
(10042, 'Lura', 33, '01907538509', 'Lura@localhost.com', 'South Gloucestershire', 'Bizerba Usa Inc'),
(10102, 'Ulysses', 62, '01912771311', 'Ulysses@localhost.com', 'Lincolnshire', 'Mcmahan'),
(10181, 'Aleshia', 27, '01835703597', 'Aleshia@localhost.com', 'Kent', 'Alan D Rosenburg Cpa Pc'),
(10188, 'Edgar', 47, '01326532337', 'Edgar@localhost.com', 'Hampshire', 'Crowan'),
(10198, 'France', 32, '01347368222', 'France@localhost.com', 'Bournemouth', 'Elliott'),
(10260, 'Corrinne', 54, '01625932209', 'Corrinne@localhost.com', 'Dumfries and Galloway', 'Sound Vision Corp'),
(10411, 'Yuette', 43, '01903649460', 'Yuette@localhost.com', 'Derbyshire', 'Max Video'),
(10430, 'Michell', 61, '01967580851', 'Michell@localhost.com', 'West Midlands', 'Weiss Spirt & Guyer'),
(10432, 'Rueben', 25, '01976755279', 'Rueben@localhost.com', 'North Somerset', 'Industrial Engineering Assocs'),
(10526, 'Laquita', 36, '01746394243', 'Laquita@localhost.com', 'Tyne & Wear', 'In Communications Inc'),
(10536, 'Marg', 34, '01865582516', 'Marg@localhost.com', 'Southampton', 'Wrangle Hill Auto Auct & Slvg'),
(10562, 'Dewitt', 30, '01253528327', 'Dewitt@localhost.com', 'Devon', 'Rittenhouse Motor Co'),
(10588, 'Charlesetta', 46, '01276816806', 'Charlesetta@localhost.com', 'Derbyshire', 'Cain'),
(10593, 'Evan', 20, '01937864715', 'Evan@localhost.com', 'West Midlands', 'Cap Gemini America'),
(10803, 'Fernanda', 49, '01630202053', 'Fernanda@localhost.com', 'Kent', 'K & R Associates Inc'),
(10849, 'Charisse', 53, '01719831436', 'Charisse@localhost.com', 'Tyne & Wear', 'Modern Plastics Corp'),
(10879, 'Niesha', 50, '01874856950', 'Niesha@localhost.com', 'West Lothian', 'Rowley/hansell Petetin'),
(10884, 'Tyisha', 58, '01547429341', 'Tyisha@localhost.com', 'West Midlands', 'Champagne Room'),
(10929, 'Eric', 59, '01969886290', 'Eric@localhost.com', 'Northamptonshire', 'Thompson');

-- --------------------------------------------------------

--
-- Table structure for table `internal_reports`
--

CREATE TABLE `internal_reports` (
  `ID` int(11) NOT NULL,
  `Report_Date` date NOT NULL,
  `Problem_Description` varchar(200) NOT NULL,
  `Report_Status` set('with maintenance','') NOT NULL,
  `Internal_name` varchar(30) NOT NULL,
  `Product_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `internal_reports`
--

INSERT INTO `internal_reports` (`ID`, `Report_Date`, `Problem_Description`, `Report_Status`, `Internal_name`, `Product_ID`) VALUES
(7010, '2022-02-11', 'Corrupt Drivers', 'with maintenance', 'Peter', 9941),
(7011, '2022-02-17', 'Inability to Access Email', 'with maintenance', 'Octavio', 9947),
(7012, '2022-04-02', 'New Applications Don\'t Install', '', 'Martha', 9919),
(7013, '2022-03-02', 'Outdated systems', 'with maintenance', 'mee', 9947),
(7014, '2022-05-15', 'Full understanding of requirements', '', 'Peter', 9919);

-- --------------------------------------------------------

--
-- Table structure for table `internal_user`
--

CREATE TABLE `internal_user` (
  `ID` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Age` int(2) NOT NULL,
  `Phone` varchar(11) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Address` varchar(30) NOT NULL,
  `Department` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `internal_user`
--

INSERT INTO `internal_user` (`ID`, `Name`, `Age`, `Phone`, `Email`, `Address`, `Department`) VALUES
(20070, 'Vernice', 24, '01822563044', 'Vernice@localhost.com', 'Western Isles', 'Quality AC'),
(20076, 'Ciara', 52, '01235647932', 'Ciara@localhost.com', 'Surrey', 'Quality AC'),
(20205, 'Milly', 22, '01702725589', 'Milly@localhost.com', 'Western Isles', 'Maintenance'),
(20245, 'Martha', 45, '01677684257', 'Martha@localhost.com', 'Surrey', 'Management'),
(20250, 'Margurite', 31, '01407866759', 'Margurite@localhost.com', 'Wiltshire', 'Quality AC'),
(20277, 'Svetlana', 55, '01781827317', 'Svetlana@localhost.com', 'North Eart Lincolnshire', 'Maintenance'),
(20362, 'Leonard', 39, '01230623547', 'Leonard@localhost.com', 'Western Isles', 'Maintenance'),
(20442, 'Octavio', 48, '01552709248', 'Octavio@localhost.com', 'West Midlands', 'Management'),
(20508, 'Tamesha', 23, '01217342071', 'Tamesha@localhost.com', 'Isle of Wight', 'Maintenance'),
(20530, 'Hani', 41, '01400269033', 'Hani@localhost.com', 'Birmingham', 'Maintenance'),
(20549, 'Peter', 40, '01842767201', 'Peter@localhost.com', 'Denbighshire', 'Management'),
(20555, 'Tess', 42, '01473229124', 'Tess@localhost.com', 'West Sussex', 'Maintenance'),
(20608, 'Karma', 26, '01857864722', 'Karma@localhost.com', 'West Midlands', 'Maintenance'),
(20628, 'Luis', 65, '01462648669', 'Luis@localhost.com', 'Shropshire', 'Maintenance'),
(20662, 'Augustine', 28, '01541802635', 'Augustine@localhost.com', 'Berkshire', 'Maintenance'),
(20862, 'Mee', 21, '01578287816', 'Mee@localhost.com', 'Surrey', 'Management'),
(20872, 'Reed', 63, '01243678286', 'Reed@localhost.com', 'Surrey', 'Maintenance'),
(20939, 'Alethea', 44, '01662114247', 'Alethea@localhost.com', 'West Sussex', 'Quality AC'),
(20958, 'Vicente', 60, '01327770774', 'Vicente@localhost.com', 'West Midlands', 'Quality AC'),
(20972, 'Pok', 64, '01866248660', 'Pok@localhost.com', 'Birmingham', 'Maintenance');

-- --------------------------------------------------------

--
-- Table structure for table `maintenance teams`
--

CREATE TABLE `maintenance teams` (
  `Team_name` varchar(30) NOT NULL,
  `Team_leader` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `maintenance teams`
--

INSERT INTO `maintenance teams` (`Team_name`, `Team_leader`) VALUES
('Black Horses', 'Hani'),
('Black Owls', 'Luis'),
(' Black Cats', 'Peter');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `ID` int(11) NOT NULL,
  `Software_Name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`ID`, `Software_Name`) VALUES
(9910, 'Zamit'),
(9911, 'Toughjoyfax'),
(9914, 'Cookley'),
(9916, 'Otcom'),
(9919, 'Namfix'),
(9941, 'Voyatouch'),
(9947, 'Hatity'),
(9960, 'Stringtough'),
(9982, 'Regrant'),
(9997, 'Telsko');

-- --------------------------------------------------------

--
-- Table structure for table `reports_maintenance_external`
--

CREATE TABLE `reports_maintenance_external` (
  `Report_ID` int(11) NOT NULL,
  `Team_name` varchar(30) NOT NULL,
  `Report_Status` set('fixed','in progress','not a problem') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `reports_maintenance_internal`
--

CREATE TABLE `reports_maintenance_internal` (
  `Report_ID` int(11) NOT NULL,
  `Team_name` varchar(30) NOT NULL,
  `Report_Status` set('fixed','in progress','not a problem') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reports_maintenance_internal`
--

INSERT INTO `reports_maintenance_internal` (`Report_ID`, `Team_name`, `Report_Status`) VALUES
(7010, ' Black Cats', 'in progress'),
(7011, 'Black Owls', 'not a problem'),
(7013, 'Black Owls', 'fixed');

-- --------------------------------------------------------

--
-- Table structure for table `sold_products`
--

CREATE TABLE `sold_products` (
  `Product_ID` int(11) NOT NULL,
  `customer_name` varchar(30) NOT NULL,
  `Registration_number` varchar(30) NOT NULL,
  `Date_registration` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sold_products`
--

INSERT INTO `sold_products` (`Product_ID`, `customer_name`, `Registration_number`, `Date_registration`) VALUES
(9947, 'Eric', '02-823-6206', '2022-01-24'),
(9941, 'Ulysses', '05-217-5545', '2022-02-08'),
(9941, 'Eric', '06-298-8957', '2021-12-28'),
(9960, 'Dewitt', '09-255-8151', '2022-03-13'),
(9910, 'Evan', '10-266-1682', '2021-06-11'),
(9916, 'Aleshia', '13-511-0673', '2021-08-06'),
(9982, 'Yuette', '20-328-4356', '2021-12-17'),
(9941, 'Rueben', '23-444-7053', '2021-09-14'),
(9941, 'Lura', '23-904-5999', '2021-07-26'),
(9910, 'Aleshia', '27-807-1912', '2021-07-28'),
(9941, 'Fernanda', '28-526-5526', '2022-02-04'),
(9919, 'Dewitt', '29-717-3188', '2022-05-06'),
(9911, 'Aleshia', '30-561-0809', '2021-01-08'),
(9910, 'Dewitt', '31-917-7145', '2022-05-15'),
(9941, 'Dewitt', '34-902-5106', '2021-01-08'),
(9982, 'Michell', '35-133-8489', '2022-04-04'),
(9910, 'Dewitt', '35-804-7089', '2022-03-09'),
(9941, 'Corrinne', '36-445-7038', '2021-03-30'),
(9916, 'Charlesetta', '47-342-8170', '2021-09-22'),
(9997, 'Lura', '49-037-9200', '2021-09-23'),
(9911, 'Corrinne', '61-462-5268', '2021-12-31'),
(9960, 'Niesha', '63-458-1766', '2021-08-05'),
(9911, 'Corrinne', '63-889-6446', '2021-09-22'),
(9941, 'France', '64-739-0817', '2022-02-24'),
(9960, 'Edgar', '64-950-6353', '2022-02-24'),
(9914, 'Evan', '64-970-7752', '2021-05-20'),
(9941, 'Charisse', '72-087-5553', '2021-06-19'),
(9941, 'Charisse', '72-904-9680', '2022-04-11'),
(9916, 'Michell', '73-186-2277', '2021-10-27'),
(9916, 'Aleshia', '76-590-8110', '2021-09-22'),
(9960, 'France', '77-997-8138', '2021-07-05'),
(9960, 'Niesha', '81-971-1529', '2022-02-19'),
(9941, 'Marg', '83-986-6911', '2021-08-14'),
(9910, 'Laquita', '84-496-5920', '2021-07-11'),
(9911, 'France', '84-672-3984', '2022-03-07'),
(9960, 'Yuette', '87-819-2878', '2022-01-05'),
(9941, 'Charlesetta', '92-105-4188', '2022-05-05'),
(9914, 'Aleshia', '97-348-2369', '2021-06-19'),
(9910, 'Tyisha', '99-282-3315', '2022-02-02');

-- --------------------------------------------------------

--
-- Table structure for table `submissions`
--

CREATE TABLE `submissions` (
  `Name` varchar(30) NOT NULL,
  `Problem_Description` varchar(200) NOT NULL,
  `Product_ID` int(11) NOT NULL,
  `Version` varchar(30) NOT NULL,
  `Submit_Date` date NOT NULL,
  `Company_Department` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `submissions`
--

INSERT INTO `submissions` (`Name`, `Problem_Description`, `Product_ID`, `Version`, `Submit_Date`, `Company_Department`) VALUES
('Michell', 'Windows Displaying Blue Screen', 9916, '0.3', '2022-01-11', 'Weiss Spirt & Guyer'),
('Dewitt', 'Slow Downloading and Uploading', 9910, '2.3', '2022-02-20', 'Rittenhouse Motor Co'),
('Evan', 'Lack of a plan', 9910, '2.3', '2022-05-13', 'Cap Gemini America'),
('Corrinne', 'Incomplete documentation ', 9911, '3.1', '2022-05-02', 'Sound Vision Corp'),
('Lura', 'Malware Attack', 9997, '2.8', '2022-03-15', 'Bizerba Usa Inc'),
('Charlesetta', 'Incorrect calculations', 9941, '0.4', '2022-04-30', 'Cain'),
('Peter', 'Corrupt Drivers', 9941, '0.4', '2022-02-11', 'Management'),
('Octavio', 'Inability to Access Email', 9947, '1.3', '2022-02-17', 'Management'),
('Martha', 'New Applications Don\'t Install', 9919, '7.8', '2022-04-02', 'Management'),
('mee', 'Outdated systems', 9947, '1.3', '2022-03-02', 'Management'),
('Peter', 'Full understanding of requirements', 9919, '7.8', '2022-05-15', 'Management');

-- --------------------------------------------------------

--
-- Stand-in structure for view `user_orders`
-- (See below for the actual view)
--
CREATE TABLE `user_orders` (
`customer_name` varchar(30)
,`Date_registration` date
,`Software_Name` varchar(30)
);

-- --------------------------------------------------------

--
-- Table structure for table `versions`
--

CREATE TABLE `versions` (
  `Product_ID` int(11) NOT NULL,
  `Version_number` varchar(30) NOT NULL,
  `Status` set('released','under development') NOT NULL,
  `Date_Released` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `versions`
--

INSERT INTO `versions` (`Product_ID`, `Version_number`, `Status`, `Date_Released`) VALUES
(9919, '7.8', 'released', '2022-02-15'),
(9911, '3.7', 'under development', '0000-00-00'),
(9911, '3.1', 'released', '2022-03-22'),
(9997, '2.8', 'released', '2021-11-30'),
(9910, '2.3', 'released', '2021-07-05'),
(9947, '1.7', 'under development', '0000-00-00'),
(9960, '1.5', 'released', '2020-09-21'),
(9947, '1.3', 'released', '2022-02-28'),
(9914, '0.6', 'under development', '0000-00-00'),
(9916, '0.5', 'under development', '0000-00-00'),
(9941, '0.4', 'released', '2019-05-18'),
(9916, '0.3', 'released', '2020-12-01'),
(9914, '0.2', 'released', '2021-10-25'),
(9982, '0.1', 'released', '2021-04-12');

-- --------------------------------------------------------

--
-- Structure for view `all_reports`
--
DROP TABLE IF EXISTS `all_reports`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `all_reports`  AS SELECT `external_report`.`ID` AS `ID` FROM `external_report` ;

-- --------------------------------------------------------

--
-- Structure for view `user_orders`
--
DROP TABLE IF EXISTS `user_orders`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `user_orders`  AS SELECT `sold_products`.`customer_name` AS `customer_name`, `sold_products`.`Date_registration` AS `Date_registration`, `products`.`Software_Name` AS `Software_Name` FROM (`sold_products` join `products`) WHERE `sold_products`.`Product_ID` = `products`.`ID` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `external_report`
--
ALTER TABLE `external_report`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `External_name` (`External_name`,`Product_ID`),
  ADD KEY `Product_ID` (`Product_ID`);

--
-- Indexes for table `external_user`
--
ALTER TABLE `external_user`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ID` (`ID`,`Name`),
  ADD UNIQUE KEY `ID_2` (`ID`),
  ADD UNIQUE KEY `Company` (`Company`),
  ADD KEY `Name` (`Name`),
  ADD KEY `Company_2` (`Company`);

--
-- Indexes for table `internal_reports`
--
ALTER TABLE `internal_reports`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Internal_name` (`Internal_name`),
  ADD KEY `Product_ID` (`Product_ID`);

--
-- Indexes for table `internal_user`
--
ALTER TABLE `internal_user`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Name` (`Name`),
  ADD KEY `Name_2` (`Name`),
  ADD KEY `Department` (`Department`);

--
-- Indexes for table `maintenance teams`
--
ALTER TABLE `maintenance teams`
  ADD PRIMARY KEY (`Team_name`),
  ADD KEY `Team_name` (`Team_name`),
  ADD KEY `Team_leader` (`Team_leader`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `reports_maintenance_external`
--
ALTER TABLE `reports_maintenance_external`
  ADD KEY `Report_ID` (`Report_ID`),
  ADD KEY `Team_name` (`Team_name`);

--
-- Indexes for table `reports_maintenance_internal`
--
ALTER TABLE `reports_maintenance_internal`
  ADD KEY `Report_ID` (`Report_ID`),
  ADD KEY `Team_name` (`Team_name`),
  ADD KEY `Team_name_2` (`Team_name`);

--
-- Indexes for table `sold_products`
--
ALTER TABLE `sold_products`
  ADD PRIMARY KEY (`Registration_number`),
  ADD KEY `customer_name` (`customer_name`),
  ADD KEY `Product_ID` (`Product_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `external_report`
--
ALTER TABLE `external_report`
  ADD CONSTRAINT `external_report_ibfk_1` FOREIGN KEY (`External_name`) REFERENCES `external_user` (`Name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `external_report_ibfk_2` FOREIGN KEY (`Product_ID`) REFERENCES `sold_products` (`Product_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `external_user`
--
ALTER TABLE `external_user`
  ADD CONSTRAINT `external_user_ibfk_1` FOREIGN KEY (`Name`) REFERENCES `sold_products` (`customer_name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `internal_reports`
--
ALTER TABLE `internal_reports`
  ADD CONSTRAINT `internal_reports_ibfk_1` FOREIGN KEY (`Internal_name`) REFERENCES `internal_user` (`Name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `internal_reports_ibfk_2` FOREIGN KEY (`Product_ID`) REFERENCES `products` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `maintenance teams`
--
ALTER TABLE `maintenance teams`
  ADD CONSTRAINT `maintenance teams_ibfk_1` FOREIGN KEY (`Team_leader`) REFERENCES `internal_user` (`Name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `reports_maintenance_external`
--
ALTER TABLE `reports_maintenance_external`
  ADD CONSTRAINT `reports_maintenance_external_ibfk_1` FOREIGN KEY (`Report_ID`) REFERENCES `external_report` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reports_maintenance_external_ibfk_2` FOREIGN KEY (`Team_name`) REFERENCES `maintenance teams` (`Team_name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `reports_maintenance_internal`
--
ALTER TABLE `reports_maintenance_internal`
  ADD CONSTRAINT `reports_maintenance_internal_ibfk_1` FOREIGN KEY (`Team_name`) REFERENCES `maintenance teams` (`Team_name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reports_maintenance_internal_ibfk_2` FOREIGN KEY (`Report_ID`) REFERENCES `internal_reports` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sold_products`
--
ALTER TABLE `sold_products`
  ADD CONSTRAINT `sold_products_ibfk_1` FOREIGN KEY (`Product_ID`) REFERENCES `products` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
