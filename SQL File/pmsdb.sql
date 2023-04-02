SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Database: `pmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'test', 'admin', 7898799799, 'tester1@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2019-07-08 04:25:14');

-- --------------------------------------------------------

--
-- Table structure for table `tblcart`
--

CREATE TABLE `tblcart` (
  `id` int(11) NOT NULL,
  `PharmacistId` int(11) DEFAULT NULL,
  `ProductId` int(11) DEFAULT NULL,
  `BillingId` int(11) DEFAULT NULL,
  `ProductQty` int(11) NOT NULL,
  `IsCheckOut` int(11) DEFAULT NULL,
  `CartDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcart`
--

INSERT INTO `tblcart` (`id`, `PharmacistId`, `ProductId`, `BillingId`, `ProductQty`, `IsCheckOut`, `CartDate`) VALUES
(2, 1, 2, 122562633, 1, 1, '2021-12-01 15:16:57'),
(3, 1, 1, 122562633, 1, 1, '2021-12-01 05:29:28'),
(4, 1, 1, 879665702, 5, 1, '2021-12-01 16:33:51'),
(5, 1, 4, 879665702, 7, 1, '2021-12-01 16:34:41'),
(6, 1, 1, 139516461, 3, 1, '2021-12-01 06:13:02'),
(7, 1, 1, 573840547, 1, 1, '2021-12-01 07:03:34'),
(8, 5, 5, 400595648, 5, 1, '2021-12-01 16:19:24'),
(9, 5, 6, 400595648, 10, 1, '2021-12-01 16:19:44');

-- --------------------------------------------------------

--
-- Table structure for table `tblcompany`
--

CREATE TABLE `tblcompany` (
  `ID` int(10) NOT NULL,
  `CompanyName` varchar(120) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcompany`
--

INSERT INTO `tblcompany` (`ID`, `CompanyName`, `CreationDate`) VALUES
(1, 'Johnson & Johnson', '2021-12-02 11:04:38'),
(2, 'Novartis', '2021-12-02 11:04:57'),
(3, 'Roche', '2021-12-02 11:06:06'),
(4, 'Pfizer', '2021-12-02 11:06:29'),
(5, 'Sanofi', '2021-12-02 11:06:40'),
(6, 'Merck', '2021-12-02 11:06:52'),
(7, 'GSK (GlaxoSmithKline)', '2021-12-02 11:07:08'),
(8, 'AstraZeneca', '2021-12-02 11:07:21'),
(9, 'Bayer', '2021-12-02 11:07:35'),
(10, 'Gilead Sciences', '2021-12-02 11:11:14'),
(11, 'Cipla', '2021-12-02 11:11:25'),
(12, 'Abbot', '2021-12-02 11:11:36'),
(13, 'Medtronic', '2021-12-02 11:12:14'),
(14, 'test medicine', '2021-12-02 16:15:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblcustomer`
--

CREATE TABLE `tblcustomer` (
  `ID` int(10) NOT NULL,
  `BillingNumber` varchar(120) DEFAULT NULL,
  `CustomerName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(20) DEFAULT NULL,
  `ModeofPayment` varchar(100) DEFAULT NULL,
  `BillingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcustomer`
--

INSERT INTO `tblcustomer` (`ID`, `BillingNumber`, `CustomerName`, `MobileNumber`, `ModeofPayment`, `BillingDate`) VALUES
(1, '122562633', 'Anuj kumar', 1234567890, 'cash', '2021-12-11 15:40:02'),
(2, '879665702', 'Rohan Chhibber', 8978979799, 'card', '2021-12-11 16:36:16'),
(3, '139516461', 'Yash Jindal', 4464646464, 'cash', '2021-12-11 06:13:44'),
(4, '573840547', 'Test Sample', 7567576575, 'cash', '2021-12-11 07:05:24'),
(5, '400595648', 'Harsh Dhanwani', 1234567890, 'cash', '2021-12-11 16:20:01');

-- --------------------------------------------------------

--
-- Table structure for table `tblmedicine`
--

CREATE TABLE `tblmedicine` (
  `ID` int(10) NOT NULL,
  `MedicineCompany` varchar(120) DEFAULT NULL,
  `MedicineName` varchar(120) DEFAULT NULL,
  `MedicineBatchno` varchar(120) DEFAULT NULL,
  `MgfDate` varchar(120) DEFAULT NULL,
  `ExpiryDate` varchar(120) DEFAULT NULL,
  `Quantity` varchar(120) DEFAULT NULL,
  `Priceperunit` varchar(120) DEFAULT NULL,
  `EntryDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblmedicine`
--

INSERT INTO `tblmedicine` (`ID`, `MedicineCompany`, `MedicineName`, `MedicineBatchno`, `MgfDate`, `ExpiryDate`, `Quantity`, `Priceperunit`, `EntryDate`) VALUES
(1, 'Roche', 'Glucerna for diabetic Health Supplement', 'AEE1555', '2021-12-02', '2022-12-02', '25', '145', '2021-12-02 07:18:33'),
(2, 'Abbot', 'Thyroxine Sodium Tablets I.P. Thyronorm(100 mcg)', 'AEE1555', '2021-12-02', '2022-06-11', '100', '125', '2021-12-02 07:21:11'),
(3, 'Cipla', 'Maxirich Multivitamins and Minerals Softgel capsules', 'BEE1555', '2021-12-02', '2022-03-17', '100', '145.78', '2021-12-02 07:23:51'),
(4, 'Sanofi', 'Seven Seas Cod Liver Oil Capsules (100 Cap) ', 'BEE4567', '2021-12-02', '2022-12-02', '35', '125', '2021-12-02 07:26:56'),
(5, 'Bayer', 'Bayer Tonic 250ml', 'CEE12345', '2021-12-02', '2019-10-24', '25', '141', '2022-12-02 05:29:51'),
(6, 'test medicine', 'Test Medicine', '323746723', '2021-12-02', '2022-12-02', '2000', '25', '2021-12-02 16:15:50');

-- --------------------------------------------------------

--
-- Table structure for table `tblpharmacist`
--

CREATE TABLE `tblpharmacist` (
  `ID` int(10) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(20) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `Gender` enum('Male','Female') DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `JoingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpharmacist`
--

INSERT INTO `tblpharmacist` (`ID`, `FullName`, `MobileNumber`, `UserName`, `Gender`, `Password`, `Email`, `JoingDate`) VALUES
(1, 'Test', 7899797977, 'phgh12340', 'Male', '202cb962ac59075b964b07152d234b70', 'harish@gmail.com', '2021-12-02 09:58:51'),
(2, 'Rohan Chhibber', 5656565656, 'rohanch12', 'Female', '202cb962ac59075b964b07152d234b70', 'chhibber@gmail.com', '2021-12-02 10:09:4'),
(3, 'Yash Jindal', 2356897898, 'jindal', 'Male', '202cb962ac59075b964b07152d234b70', 'yash@gmail.com', '2021-12-02 10:17:2'),
(4, 'Harsh Dhanwani', 4545454545, 'dharsh', 'Male', '202cb962ac59075b964b07152d234b70', 'hdhanwani@gmail.com', '2021-12-02 10:18:5'),
(5, 'Test pharmacist', 1111111112, 'test30', 'Male', 'f925916e2754e5e03f75dd58a5733251', 'test@gmail.com', '2019-07-23 16:16:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcart`
--
ALTER TABLE `tblcart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcompany`
--
ALTER TABLE `tblcompany`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcustomer`
--
ALTER TABLE `tblcustomer`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `BillingNumber` (`BillingNumber`);

--
-- Indexes for table `tblmedicine`
--
ALTER TABLE `tblmedicine`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpharmacist`
--
ALTER TABLE `tblpharmacist`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcart`
--
ALTER TABLE `tblcart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblcompany`
--
ALTER TABLE `tblcompany`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tblcustomer`
--
ALTER TABLE `tblcustomer`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblmedicine`
--
ALTER TABLE `tblmedicine`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblpharmacist`
--
ALTER TABLE `tblpharmacist`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;


