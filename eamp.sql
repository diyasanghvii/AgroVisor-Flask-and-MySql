-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 31, 2020 at 08:54 AM
-- Server version: 5.7.24
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eamp`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `new_procedure` (`c` INT)  BEGIN
	SELECT *  FROM customer WHERE cid= c;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cid` int(11) NOT NULL,
  `email` varchar(45) NOT NULL,
  `address` varchar(225) DEFAULT NULL,
  `subsidy` tinyint(1) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `phno` bigint(11) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cid`, `email`, `address`, `subsidy`, `name`, `phno`, `password`) VALUES
(1, 'dsanghvi990@gmail.com', 'Annapurna, opp Keshav Apts, Nehru Avenue Road, Lalbagh, Mangalore-575003', 1, 'Diya', 6362009813, '3456'),
(2, 'kairav2003@gmail.com', 'Annapurna, opp Keshav Apts, Nehru Avenue Road, Lalbagh, Mangalore-575003', 1, 'Kairav Sanghvi', 1234567891, '6789'),
(3, 'rssanghvi74@gmail.com', 'Annapurna, opp Keshav Apts, Nehru Avenue Road, Lalbagh, Mangalore-575003', 0, 'Roshan', 9343343929, '1234');

-- --------------------------------------------------------

--
-- Table structure for table `management`
--

CREATE TABLE `management` (
  `uid` int(11) NOT NULL,
  `passwd` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `name` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `management`
--

INSERT INTO `management` (`uid`, `passwd`, `email`, `name`) VALUES
(1, 'diya123', 'dsanghvi990@gmail.com', 'Diya');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `oid` int(11) NOT NULL,
  `cost` int(11) DEFAULT NULL,
  `daddress` varchar(225) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `tcost` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`oid`, `cost`, `daddress`, `cid`, `pid`, `quantity`, `tcost`) VALUES
(38, 330, 'Annapurna, opp Keshav Apts, Nehru Avenue Road, Lalbagh, Mangalore-575003', 1, 2, 5, 1650),
(39, 2200, 'Annapurna, opp Keshav Apts, Nehru Avenue Road, Lalbagh, Mangalore-575003', 1, 7, 3, 6600),
(40, 25000, 'Annapurna, opp Keshav Apts, Nehru Avenue Road, Lalbagh, Mangalore-575003', 1, 11, 3, 75000),
(41, 193, 'Annapurna, opp Keshav Apts, Nehru Avenue Road, Lalbagh, Mangalore-575003', 1, 15, 3, 579),
(42, 25000, 'Annapurna, opp Keshav Apts, Nehru Avenue Road, Lalbagh, Mangalore-575003', 1, 11, 1, 25000),
(43, 330, 'Annapurna, opp Keshav Apts, Nehru Avenue Road, Lalbagh, Mangalore-575003', 1, 2, 3, 990),
(44, 200, 'Annapurna, opp Keshav Apts, Nehru Avenue Road, Lalbagh, Mangalore-575003', 2, 1, 4, 800),
(45, 170, 'Annapurna, opp Keshav Apts, Nehru Avenue Road, Lalbagh, Mangalore-575003', 2, 1, 4, 680),
(46, 480000, 'Annapurna, opp Keshav Apts, Nehru Avenue Road, Lalbagh, Mangalore-575003', 2, 12, 5, 2400000),
(47, 48, 'Annapurna, opp Keshav Apts, Nehru Avenue Road, Lalbagh, Mangalore-575003', 2, 17, 5, 240),
(48, 195, 'Annapurna, opp Keshav Apts, Nehru Avenue Road, Lalbagh, Mangalore-575003', 2, 9, 3, 585),
(49, 170, 'Annapurna, opp Keshav Apts, Nehru Avenue Road, Lalbagh, Mangalore-575003', 3, 1, 3, 510),
(50, 330, 'Annapurna, opp Keshav Apts, Nehru Avenue Road, Lalbagh, Mangalore-575003', 1, 2, 1, 330);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `pid` int(11) NOT NULL,
  `pname` varchar(45) DEFAULT NULL,
  `descri` text,
  `ncost` int(11) DEFAULT NULL,
  `scost` int(11) DEFAULT NULL,
  `pimg(image address-static/images/...jpg)` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`pid`, `pname`, `descri`, `ncost`, `scost`, `pimg(image address-static/images/...jpg)`) VALUES
(1, 'CORIANDER SEEDS', 'Plant-vigor:Good;Maturity:35days;Stalk length:20-25;Foliage:Dark shiny green;Remarks:Late-Bolting and suitable for multiple harvest;Size:500gms;Company:Namdhari                 ', 200, 170, 'SURABHI-CORIANDER_200x.jpg'),
(2, 'US 440 TOMATO SEEDS', 'Maturity - 1st harvest after transplanting: 60-65 days;Plant Habit:Determinate;Weight (gms):80-100;Fruit Shape:Flat and round;Firmness: Good;Shelf Life: Excellent;Disease Tolerance: TLCV,HEAT;Size : 3000 seeds;Company: Nunhems', 360, 330, 'US_440_TOMATO_200x.jpg'),
(3, 'CAPSICUM SEEDS', 'Product Description: Plants are vigorous , dark green fruit and harvest starts from 90-100 days;\r\nSoil Requirements: Well drained red loamy soil;\r\nHeight after growth: 3-4 feet;\r\nBest time to plant : Year round except January to May;\r\nSunlight Requirement: Natural sunlight;\r\nWatering Requirements/ Moisturing Needs: Whenever surface soil is dry;\r\nAdditional planting and growing instructions: Sow the seeds 1cm deep;\r\nSpecific Uses For Product: Used as seeds only and not for consumption;\r\nDescription of the warranty: Seeds to be sown before expiry date;\r\nSpecial care instructions: Regularly apply nutrients and plant protection;\r\nCompany: Indo-American;\r\nSize: 14 seeds', 65, 55, 'capsicum.jpg'),
(4, 'HAND WEEDER - LWS 07 (WITHOUT PIPE)', 'Colour - yellow ;\r\nUseful for removing weeds in any field;\r\nCan be attached to metal / wooden sticking for weeding;\r\nPowder coating to make it rust resistant;\r\nLight weight and easy to operate;\r\nhand held product, no power and maintenance required;\r\nLength of the blade is 7 inch; \r\nNote: Aluminium pipe is not part of this product. User has to buy pipe separately.;\r\nCompany : Hectare', 599, 490, 'Hectare_LWS07_1_large.jpg'),
(5, 'PICO PLUS SOLAR EMERGENCY LIGHT', 'Lighting Power LED with 25 lumens total flux, neutral color temperature; \r\nThree light modes: Turbo (25 lumens), Normal (12 lumens), Low (2 lumens); 360 degree ambient wide-angle spread;\r\nMaterials & Durability Drop-proof, UV-stable, IP65 rated polycarbonate & ABS casing Water-resistant with O ring seal for rain and humidity protection; \r\nIn the box: LED solar light with integrated solar panel & Multi-use stand;\r\nSize & weight Lamp Dimension: 101 x 88 x 40 mm ;Stand Dimension: 110 x 110 x 154 mm ;Weight: 150 g ; Warranty Standard 2 year Sun King warranty;\r\nDigital control Active battery management automatically switches to low power when battery is running low, giving user 5 hours of additional light.;\r\nDaily Run time: 72 hours;\r\nCompany : Sun King', 649, 599, 'solarlight.jpg'),
(6, 'BASF PROFESSIONAL FARMER SAFETY KIT', 'Close Up: The Professional Farmer Kit\r\nThe Professional Farmer Kit consists of a pair of nitrile gloves, three particulate filter masks, a set of protective eyewear and an easy-to-understand, picture-based instruction lea et.;\r\nAll of the kit components comply with US or EU certification standards (ANSI/NIOSH and EN).;\r\nWith a shelf life of at least two years, the kit is sufficiently robust to endure rigorous use over a single season.;\r\nAll the components in the Professional Farmer Kit are packed in a sturdy and compact fiberboard box with a transparent display panel, weighing less than 300g.;\r\nBASF is providing these kits at cost and does not intend to develop this business like a pro generating revenue stream.;\r\nPack Contains: Safety Glasses, Chemical Purifying Mask, Gloves, Body Cover.;\r\nCompany: BASF', 550, 470, 'safetykit.jpg'),
(7, 'MANUAL SEEDLING TRANSPLANTER', 'The operator can stand straight and can use it with single or both the hands.;\r\nOur hand-held transplanter allows one person to plant hundreds of seedlings per hour.;\r\nThis tool can be used with prepared seed- beds either through plastic (mulching sheets) or bare ground.;\r\nUsed for planting seedlings of vegetables like, Tomato, Onion, Maize (Corn), Brinjal, Cabbage, Cucumber, Peanut, Garlic, Carrot and tobacco.;\r\nCan also be used for planting potato, flower bulbs, etc.;\r\nCompany:KisanKraft', 2750, 2200, 'seedling.jpg'),
(8, 'CP-16ME : BATTERY SPRAYER', 'It can also run manually in case of discharge of the battery in the field.;\r\nPressurized with pressure regulator switch.;\r\nSuitable for operation with low and high pressure.;\r\nLong delivery hose pipe with high-quality brass trigger cut off.;\r\nHeavy-duty diaphragm pump capable of recharging 3.1lt/min.;\r\nCompany: Crystal Crop Protection', 3600, 2900, 'bsp.jpg'),
(9, 'FAT BOY (MULTI-CUT FORAGE SORGHUM)', 'FAT BOY is a multi-cut SSG.;\r\nFast growth with excellent re-growth.;\r\nGood for green fodder and dry kutti.;\r\nBecause of juicy and soft fodder animal loves to eat.;\r\nHealthy animals and profitable dairy farm.;\r\nCompany: Foragen Seeds Pvt Ltd;\r\nSize: 1kg', 270, 195, 'fatboy.jpg'),
(10, 'BC 230 POWER WEEDER', 'Displacement:40.2cm3;\r\nPower Output:1.55Kw/2.1hp;	\r\nCultivation Width:30 cm;\r\nCultivation Depth:75 mm/ 3 inch;	\r\nWeight:20 Kg;\r\nErgonomic handle design.;\r\nFor easy transport.;\r\nRobust support frame.;\r\nHandle frame fold.;\r\nHandles protected when placing tool down.;\r\nCompany: STIHL\r\n', 24000, 19000, 'pw.jpg'),
(11, 'ROTOMASTER - SOIL PULVERIZER', 'Uniform soil pulverization (up to 5 inch Depth).;\r\nDoorstep service and installation by the trained service engineer.;\r\nLess load on tractor due to the \'Helical blade arrangement\'.;\r\nHeavy Duty Gear Drive & Structures - Low maintenance & longer life.;\r\nAdjustable Bottom Links - Compatible for 18HP & above the tractor.;\r\nAvailable in 20 and 24 Blades with 3.5 ft. and 4 ft. width respectively.;\r\nCompany: Mitra', 32000, 25000, 'rm.jpg'),
(12, 'EURO 41 PLUS TRACTOR', 'PTO HP : 38.3 HP;\r\nForward Gears : 8;\r\nReverse Gears : 2;\r\nSteering Type : Mechanical / Power Steering;\r\nBrakes : Dry / Oil Immersed;\r\nLift Capacity : 1500 kg;\r\nCompany: Mitra', 550000, 480000, 'euro.png'),
(13, 'PORTABLE WATER STRUCTURING UNIT', 'Structured water is soft, energized, with original detached molecular structure, balanced pH, less surface tension, neutralized toxins and free of memory.;\r\nRain water is considered as the purest form of water as it is refreshed, energized by the natural action prevalent in the atmosphere.;\r\nUse of structured water not only benefits the agriculture but also benefits human and other domesticated animals.; \r\nImmunological systems, digestive systems perform well.;\r\nSize : ;\r\nLength(MM) : 105;\r\nDiameter(MM): 37;\r\nWeight(MM): 100;\r\nPressure(MM): 1;\r\nCompany: Crystal Blue', 10000, 8500, 'port.jpg'),
(14, 'PLANOFIX ALPHA GROWTH PROMOTER', 'Alpha Naphthyl Acetic Acid 4.5 SL (4.5% w/w);\r\nPlanofix is an aqueous solution containing 4.5% (w/w) of Alpha napthyl acetic acid active ingredient.;\r\nIt is a plant growth regulator used for the purpose of inducing flowering, preventing shedding of flower buds and unripe fruits.;\r\nIt helps in enlarging fruit size, increasing and improving the quality and yield of fruits.;\r\nStandard solution :;\r\n1 ml Planofix in 4.5 L of water = 10 ppm;\r\n10 ml Planofix in 4.5 L of water=100 ppm;\r\nCompany: BAYER;\r\nSize:100ml', 120, 99, 'plano.jpg'),
(15, 'CORAGEN INSECTICIDE', 'Technical Name : Chlorantraniliprole 18.5 % w/w;\r\nMode Of Action : Broad Spectrum Insecticide;\r\nCrop : Tomato,Brinjal,Chilli &  other Vegetables.;\r\nDosage - 60 ml per acre or 0.4 ml per liter of water. Usually 150 liter of water is used per acre;\r\nTarget Pest : Coragen® insecticide provides an effective and long duration of insect control with its unique mode of action in crops.;\r\nThis makes Coragen®  an excellent solution for pest management and enable farmers to achieve good quality produce and better yields.;\r\nCompany: Fmc;\r\nSize: 10ml', 200, 193, 'cora.jpg'),
(16, 'PERFEKT- HERBAL CROP HEALTH ENHANCER', 'It is a preventive and early curative broad-spectrum disease-controller & controls diseases caused by a virus, fungus, bacteria & micronutrient deficiencies.;\r\nIt stops flower shedding and improves the overall health of plants thereby increases flowering resulting in a considerable enhancement in yield of crops.;\r\nIt also repels sucking pests and gives ovicidal action thereby controlling the sucking pest population and keeping it below ETL (Economic threshold level).;\r\nCompany: Global Green Agri Nova;\r\nSize:200ml', 769, 650, 'phc.jpg'),
(17, 'ASTER SEEDS', 'Variant: Cut flower meteor;\r\nSize: 24 seeds;\r\nThe large, fully double flowers can measure up to 10in (4in) in diameter!;\r\nAster flowers are excellent for tall borders or beds. ;\r\nIf you want a profusion of brilliant blooms for a long lasting flower bouquet, Asters are an excellent choice.;\r\nThe easy-to-grow upright plants will continue to bloom throughout the summer.; \r\nAster plants prefer a sunny location, however, they will tolerate light shade.;\r\nCompany: Indo-American', 55, 48, 'aster.jpg'),
(18, 'DAHLIA SEEDS', 'Variant: Dahlia;\r\nSize: 20 seeds;\r\nDwarf and uniform, this early flowering mixture freely produces semi-double flowers in a wide range of bright colours.;\r\nExcellent for bedding displays and as a striking container plant.;\r\nA half hardy perennial, best treated as a half hardy annual, flowering.;\r\nCompany: Indo-American', 55, 45, 'dahlia.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `subap`
--

CREATE TABLE `subap` (
  `cid` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `address` varchar(225) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `ainc` int(11) DEFAULT NULL,
  `adpf` text,
  `inpf` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cid`,`email`);

--
-- Indexes for table `management`
--
ALTER TABLE `management`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`oid`),
  ADD KEY `cid_idx` (`cid`),
  ADD KEY `pid_idx` (`pid`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `subap`
--
ALTER TABLE `subap`
  ADD KEY `cid_idx` (`cid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `oid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `cid_id` FOREIGN KEY (`cid`) REFERENCES `customer` (`cid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pid` FOREIGN KEY (`pid`) REFERENCES `product` (`pid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `subap`
--
ALTER TABLE `subap`
  ADD CONSTRAINT `cid` FOREIGN KEY (`cid`) REFERENCES `customer` (`cid`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
