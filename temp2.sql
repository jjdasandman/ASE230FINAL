-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2023 at 05:11 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `temp2`
--

-- --------------------------------------------------------

--
-- Table structure for table `awards`
--

CREATE TABLE `awards` (
  `awardID` int(10) NOT NULL,
  `Year` int(11) NOT NULL,
  `Award` varchar(255) NOT NULL,
  `Source` varchar(255) DEFAULT NULL,
  `Icon` varchar(255) DEFAULT NULL,
  `UserID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `awards`
--

INSERT INTO `awards` (`awardID`, `Year`, `Award`, `Source`, `Icon`, `UserID`) VALUES
(2, 2022, 'Best Employee', 'Me', '#jason', 1),
(5, 2022, 'Green Innovator of the Year', 'Eco Warrior Digest', 'pe-7s-star', 3),
(6, 2022, 'Increased urban green spaces by 150%', 'Cities like Seattle and Austin', 'pe-7s-sun', 3),
(7, 2021, 'Partnered with UNICEF', 'Areas suffering from water scarcity', 'pe-7s-speaker', 3),
(8, 2020, 'Adopted by 20 major city parks globally', 'Reducing their carbon footprint', 'pe-7s-shopbag', 3);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `ContactID` int(11) NOT NULL,
  `FirstName` varchar(255) DEFAULT NULL,
  `LastName` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `UserID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`ContactID`, `FirstName`, `LastName`, `Email`, `Phone`, `Address`, `UserID`) VALUES
(1, 'Alice', 'Johnson', 'alice@example.com', '555-1234', '123 Main St', 1),
(2, 'Charlie', 'Brown', 'charlie@example.com', '555-5678', '456 Oak St', 2),
(3, 'Eva', 'White', 'eva@example.com', '555-9876', '789 Pine St', 3);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `PageID` int(11) NOT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Content` text DEFAULT NULL,
  `UserID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`PageID`, `Title`, `Content`, `UserID`) VALUES
(1, 'Home', '#home', 1),
(2, 'Mission', '#mission', 2),
(3, 'Contact Us', '#contact', 3),
(4, 'Products', '#products', 1),
(5, 'Our Team', '#team', 1),
(6, 'Home', '#home', 1),
(7, 'Awards', '#awards', 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `ProductID` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Description` text DEFAULT NULL,
  `Applications` varchar(10000) DEFAULT NULL,
  `Icon` varchar(255) NOT NULL,
  `UserID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`ProductID`, `Name`, `Description`, `Applications`, `Icon`, `UserID`) VALUES
(1, 'Laptop', 'High-performance laptop', 'q', 'Na', 1),
(2, 'Smartphone', 'Latest smartphone model', 'a', 'Na', 2),
(3, 'GreenRoof™', 'A modular green roofing system that utilizes smart sensors to regulate water, sunlight, and nutrients, allowing urban spaces to contribute positively to the environment.', 'Smart Irrigation: The system detects soil moisture levels and provides optimal water quantities, reducing wastage and ensuring plant health. Pollinator Patches: Specific sections within the GreenRoof™ are designed to attract and support urban pollinators like bees and butterflies. Air Purification Zones: Incorporates certain plants known to absorb pollutants, promoting cleaner urban air and combating the urban heat island effect.', 'pe-7s-diamond text-primary', NULL),
(4, 'PureStream Filters™', 'Bio-engineered filters that harness the power of specific bacteria and plants to purify water without chemicals, making potable water accessible and sustainable.', 'Microbial Cleansing: Harnesses beneficial bacteria to break down harmful pathogens, ensuring water purity without chemical residues. Floating Gardens: Aesthetically pleasing modules that float on water surfaces, removing heavy metals and other toxins using specific wetland plants. Portable Units: Compact, travel-friendly variants designed for trekkers and campers, ensuring access to clean water even in remote areas', 'pe-7s-refresh text-primary', NULL),
(5, 'TerraCharge™', 'Pathways made with special tiles that convert foot traffic into usable energy, illuminating pathways at night or powering nearby amenities.', 'Energy Storage: Surplus energy from foot traffic during the day is stored in sleek, underground batteries, allowing extended use after dark. Intelligent Lighting: The stored energy powers adaptive lighting systems that adjust based on ambient light and movement, ensuring pathways are well-lit without unnecessary energy consumption. Interactive Displays: Some TerraCharge™ pathways feature interactive elements like ground-projected games or information graphics, all powered by pedestrian movement.', 'pe-7s-diamond text-primary', NULL),
(6, 'EcoLearn Hub™', 'A digital platform offering educational courses on sustainable living, organic farming, and eco-technology innovations', 'DIY Workshops: Practical sessions teaching users how to upcycle waste, create home gardens, or even set up solar panels. Children\'s Series: Tailored courses introducing children to nature conservation, renewable energy, and the importance of biodiversity. Global Webinars: Regular online sessions featuring guest experts in fields like permaculture, green architecture, and sustainable transportation. These webinars foster a community of eco-enthusiasts and offer the latest in green innovations.', 'pe-7s-rocket text-primary\"', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `TeamID` int(11) NOT NULL,
  `MemberName` varchar(255) DEFAULT NULL,
  `Role` varchar(255) DEFAULT NULL,
  `Bio` text DEFAULT NULL,
  `Pic` text DEFAULT NULL,
  `UserID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`TeamID`, `MemberName`, `Role`, `Bio`, `Pic`, `UserID`) VALUES
(1, 'Mark Johnson', 'Developer', 'Experienced software engineer', '2147483647', 1),
(2, 'Sara White', 'Designer', ' ', '10101', 2),
(3, 'Dr. Marcus Greene', 'Founder & CEO', 'Holding a Ph.D. in Environmental Science from Stanford, Dr. Greene has always been a passionate advocate for eco-conscious innovations. His visionary leadership is the bedrock on which NaturaTech stands.\",images/team/img-1.jpg\r\n\"Aisha Kwon\",CTO,\"Aisha, with her background in bio-engineering, is the mastermind behind the cutting-edge technologies at NaturaTech. She believes in harnessing nature\'s wisdom to address modern challenges.', 'images/team/img-2.jpg', NULL),
(4, 'Carlos Mendoza', 'Chief of Design', 'Carlos, an alumnus of Design Academy Eindhoven, combines minimalism with bio-inspired designs, making NaturaTech\'s products not only functional but also aesthetically appealing', 'images/team/img-3.jpg', NULL),
(5, 'Lydia D\'souza', 'VP of Operations', 'Lydia\'s expertise lies in sustainable supply chains. She ensures that every step in NaturaTech\'s operations is ethical, green, and efficient.', 'images/team/img-4.jpg', NULL),
(6, 'Jamal Ahem', 'Head of EcoLearn buh', 'Jamal, a former environmental studies professor from Yale, curates and oversees the rich tapestry of courses offered by EcoLearn, spreading eco-awareness across the globe.', 'images/team/img-1.jpg', NULL),
(7, 'Jason Sand', 'HPT', 'HEad penetration Tester', 'images/team/img-2.jpg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `UserID` int(11) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`UserID`, `Username`, `Email`, `Password`) VALUES
(1, 'JohnDoe', 'john@example.com', 'password123'),
(2, 'JaneSmith', 'jane@example.com', 'securepwd'),
(3, 'BobJohnson', 'bob@example.com', 'pass123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `awards`
--
ALTER TABLE `awards`
  ADD PRIMARY KEY (`awardID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`ContactID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`PageID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ProductID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`TeamID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`UserID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `awards`
--
ALTER TABLE `awards`
  ADD CONSTRAINT `awards_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserID`);

--
-- Constraints for table `contacts`
--
ALTER TABLE `contacts`
  ADD CONSTRAINT `contacts_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserID`);

--
-- Constraints for table `pages`
--
ALTER TABLE `pages`
  ADD CONSTRAINT `pages_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserID`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserID`);

--
-- Constraints for table `team`
--
ALTER TABLE `team`
  ADD CONSTRAINT `team_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
