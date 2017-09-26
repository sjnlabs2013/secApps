-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 26, 2017 at 02:11 PM
-- Server version: 5.6.37
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shalomso_pmp`
--

-- --------------------------------------------------------

--
-- Table structure for table `countrys`
--

CREATE TABLE `countrys` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(44) DEFAULT NULL,
  `country_iso_2` varchar(2) DEFAULT NULL,
  `country_iso_3` varchar(3) DEFAULT NULL,
  `country_rid` int(3) DEFAULT NULL,
  `country_region` varchar(50) DEFAULT NULL,
  `country_sub_region` varchar(255) DEFAULT NULL,
  `country_region_code` varchar(255) DEFAULT NULL,
  `country_sub_region_code` varchar(255) DEFAULT NULL,
  `country_x` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `countrys`
--

INSERT INTO `countrys` (`country_id`, `country_name`, `country_iso_2`, `country_iso_3`, `country_rid`, `country_region`, `country_sub_region`, `country_region_code`, `country_sub_region_code`, `country_x`) VALUES
(1, 'Afghanistan', 'AF', 'AFG', 4, 'ISO 3166-2:AF', 'Asia', 'Southern Asia', '142', 34),
(2, 'Aland Islands', 'AX', 'ALA', 248, 'ISO 3166-2:AX', 'Europe', 'Northern Europe', '150', 154),
(3, 'Albania', 'AL', 'ALB', 8, 'ISO 3166-2:AL', 'Europe', 'Southern Europe', '150', 39),
(4, 'Algeria', 'DZ', 'DZA', 12, 'ISO 3166-2:DZ', 'Africa', 'Northern Africa', '2', 15),
(5, 'American Samoa', 'AS', 'ASM', 16, 'ISO 3166-2:AS', 'Oceania', 'Polynesia', '9', 61),
(6, 'Andorra', 'AD', 'AND', 20, 'ISO 3166-2:AD', 'Europe', 'Southern Europe', '150', 39),
(7, 'Angola', 'AO', 'AGO', 24, 'ISO 3166-2:AO', 'Africa', 'Middle Africa', '2', 17),
(8, 'Anguilla', 'AI', 'AIA', 660, 'ISO 3166-2:AI', 'Americas', 'Caribbean', '19', 29),
(9, 'Antarctica', 'AQ', 'ATA', 10, 'ISO 3166-2:AQ', '', '', '', NULL),
(10, 'Antigua and Barbuda', 'AG', 'ATG', 28, 'ISO 3166-2:AG', 'Americas', 'Caribbean', '19', 29),
(11, 'Argentina', 'AR', 'ARG', 32, 'ISO 3166-2:AR', 'Americas', 'South America', '19', 5),
(12, 'Armenia', 'AM', 'ARM', 51, 'ISO 3166-2:AM', 'Asia', 'Western Asia', '142', 145),
(13, 'Aruba', 'AW', 'ABW', 533, 'ISO 3166-2:AW', 'Americas', 'Caribbean', '19', 29),
(14, 'Australia', 'AU', 'AUS', 36, 'ISO 3166-2:AU', 'Oceania', 'Australia and New Zealand', '9', 53),
(15, 'Austria', 'AT', 'AUT', 40, 'ISO 3166-2:AT', 'Europe', 'Western Europe', '150', 155),
(16, 'Azerbaijan', 'AZ', 'AZE', 31, 'ISO 3166-2:AZ', 'Asia', 'Western Asia', '142', 145),
(17, 'Bahamas', 'BS', 'BHS', 44, 'ISO 3166-2:BS', 'Americas', 'Caribbean', '19', 29),
(18, 'Bahrain', 'BH', 'BHR', 48, 'ISO 3166-2:BH', 'Asia', 'Western Asia', '142', 145),
(19, 'Bangladesh', 'BD', 'BGD', 50, 'ISO 3166-2:BD', 'Asia', 'Southern Asia', '142', 34),
(20, 'Barbados', 'BB', 'BRB', 52, 'ISO 3166-2:BB', 'Americas', 'Caribbean', '19', 29),
(21, 'Belarus', 'BY', 'BLR', 112, 'ISO 3166-2:BY', 'Europe', 'Eastern Europe', '150', 151),
(22, 'Belgium', 'BE', 'BEL', 56, 'ISO 3166-2:BE', 'Europe', 'Western Europe', '150', 155),
(23, 'Belize', 'BZ', 'BLZ', 84, 'ISO 3166-2:BZ', 'Americas', 'Central America', '19', 13),
(24, 'Benin', 'BJ', 'BEN', 204, 'ISO 3166-2:BJ', 'Africa', 'Western Africa', '2', 11),
(25, 'Bermuda', 'BM', 'BMU', 60, 'ISO 3166-2:BM', 'Americas', 'Northern America', '19', 21),
(26, 'Bhutan', 'BT', 'BTN', 64, 'ISO 3166-2:BT', 'Asia', 'Southern Asia', '142', 34),
(27, 'Bolivia', 'BO', 'BOL', 68, 'ISO 3166-2:BO', 'Americas', 'South America', '19', 5),
(28, 'Bosnia and Herzegovina', 'BA', 'BIH', 70, 'ISO 3166-2:BA', 'Europe', 'Southern Europe', '150', 39),
(29, 'Botswana', 'BW', 'BWA', 72, 'ISO 3166-2:BW', 'Africa', 'Southern Africa', '2', 18),
(30, 'Bouvet Island', 'BV', 'BVT', 74, 'ISO 3166-2:BV', '', '', '', NULL),
(31, 'Brazil', 'BR', 'BRA', 76, 'ISO 3166-2:BR', 'Americas', 'South America', '19', 5),
(32, 'British Virgin Islands', 'VG', 'VGB', 92, 'ISO 3166-2:VG', 'Americas', 'Caribbean', '19', 29),
(33, 'British Indian Ocean Territory', 'IO', 'IOT', 86, 'ISO 3166-2:IO', '', '', '', NULL),
(34, 'Brunei Darussalam', 'BN', 'BRN', 96, 'ISO 3166-2:BN', 'Asia', 'South-Eastern Asia', '142', 35),
(35, 'Bulgaria', 'BG', 'BGR', 100, 'ISO 3166-2:BG', 'Europe', 'Eastern Europe', '150', 151),
(36, 'Burkina Faso', 'BF', 'BFA', 854, 'ISO 3166-2:BF', 'Africa', 'Western Africa', '2', 11),
(37, 'Burundi', 'BI', 'BDI', 108, 'ISO 3166-2:BI', 'Africa', 'Eastern Africa', '2', 14),
(38, 'Cambodia', 'KH', 'KHM', 116, 'ISO 3166-2:KH', 'Asia', 'South-Eastern Asia', '142', 35),
(39, 'Cameroon', 'CM', 'CMR', 120, 'ISO 3166-2:CM', 'Africa', 'Middle Africa', '2', 17),
(40, 'Canada', 'CA', 'CAN', 124, 'ISO 3166-2:CA', 'Americas', 'Northern America', '19', 21),
(41, 'Cape Verde', 'CV', 'CPV', 132, 'ISO 3166-2:CV', 'Africa', 'Western Africa', '2', 11),
(42, 'Cayman Islands', 'KY', 'CYM', 136, 'ISO 3166-2:KY', 'Americas', 'Caribbean', '19', 29),
(43, 'Central African Republic', 'CF', 'CAF', 140, 'ISO 3166-2:CF', 'Africa', 'Middle Africa', '2', 17),
(44, 'Chad', 'TD', 'TCD', 148, 'ISO 3166-2:TD', 'Africa', 'Middle Africa', '2', 17),
(45, 'Chile', 'CL', 'CHL', 152, 'ISO 3166-2:CL', 'Americas', 'South America', '19', 5),
(46, 'China', 'CN', 'CHN', 156, 'ISO 3166-2:CN', 'Asia', 'Eastern Asia', '142', 30),
(47, 'Hong Kong, SAR China', 'HK', 'HKG', 344, 'ISO 3166-2:HK', 'Asia', 'Eastern Asia', '142', 30),
(48, 'Macao, SAR China', 'MO', 'MAC', 446, 'ISO 3166-2:MO', 'Asia', 'Eastern Asia', '142', 30),
(49, 'Christmas Island', 'CX', 'CXR', 162, 'ISO 3166-2:CX', '', '', '', NULL),
(50, 'Cocos (Keeling) Islands', 'CC', 'CCK', 166, 'ISO 3166-2:CC', '', '', '', NULL),
(51, 'Colombia', 'CO', 'COL', 170, 'ISO 3166-2:CO', 'Americas', 'South America', '19', 5),
(52, 'Comoros', 'KM', 'COM', 174, 'ISO 3166-2:KM', 'Africa', 'Eastern Africa', '2', 14),
(53, 'Congo?(Brazzaville)', 'CG', 'COG', 178, 'ISO 3166-2:CG', 'Africa', 'Middle Africa', '2', 17),
(54, 'Congo, (Kinshasa)', 'CD', 'COD', 180, 'ISO 3166-2:CD', 'Africa', 'Middle Africa', '2', 17),
(55, 'Cook Islands', 'CK', 'COK', 184, 'ISO 3166-2:CK', 'Oceania', 'Polynesia', '9', 61),
(56, 'Costa Rica', 'CR', 'CRI', 188, 'ISO 3166-2:CR', 'Americas', 'Central America', '19', 13),
(57, 'C?te d\'Ivoire', 'CI', 'CIV', 384, 'ISO 3166-2:CI', 'Africa', 'Western Africa', '2', 11),
(58, 'Croatia', 'HR', 'HRV', 191, 'ISO 3166-2:HR', 'Europe', 'Southern Europe', '150', 39),
(59, 'Cuba', 'CU', 'CUB', 192, 'ISO 3166-2:CU', 'Americas', 'Caribbean', '19', 29),
(60, 'Cyprus', 'CY', 'CYP', 196, 'ISO 3166-2:CY', 'Asia', 'Western Asia', '142', 145),
(61, 'Czech Republic', 'CZ', 'CZE', 203, 'ISO 3166-2:CZ', 'Europe', 'Eastern Europe', '150', 151),
(62, 'Denmark', 'DK', 'DNK', 208, 'ISO 3166-2:DK', 'Europe', 'Northern Europe', '150', 154),
(63, 'Djibouti', 'DJ', 'DJI', 262, 'ISO 3166-2:DJ', 'Africa', 'Eastern Africa', '2', 14),
(64, 'Dominica', 'DM', 'DMA', 212, 'ISO 3166-2:DM', 'Americas', 'Caribbean', '19', 29),
(65, 'Dominican Republic', 'DO', 'DOM', 214, 'ISO 3166-2:DO', 'Americas', 'Caribbean', '19', 29),
(66, 'Ecuador', 'EC', 'ECU', 218, 'ISO 3166-2:EC', 'Americas', 'South America', '19', 5),
(67, 'Egypt', 'EG', 'EGY', 818, 'ISO 3166-2:EG', 'Africa', 'Northern Africa', '2', 15),
(68, 'El Salvador', 'SV', 'SLV', 222, 'ISO 3166-2:SV', 'Americas', 'Central America', '19', 13),
(69, 'Equatorial Guinea', 'GQ', 'GNQ', 226, 'ISO 3166-2:GQ', 'Africa', 'Middle Africa', '2', 17),
(70, 'Eritrea', 'ER', 'ERI', 232, 'ISO 3166-2:ER', 'Africa', 'Eastern Africa', '2', 14),
(71, 'Estonia', 'EE', 'EST', 233, 'ISO 3166-2:EE', 'Europe', 'Northern Europe', '150', 154),
(72, 'Ethiopia', 'ET', 'ETH', 231, 'ISO 3166-2:ET', 'Africa', 'Eastern Africa', '2', 14),
(73, 'Falkland Islands (Malvinas)', 'FK', 'FLK', 238, 'ISO 3166-2:FK', 'Americas', 'South America', '19', 5),
(74, 'Faroe Islands', 'FO', 'FRO', 234, 'ISO 3166-2:FO', 'Europe', 'Northern Europe', '150', 154),
(75, 'Fiji', 'FJ', 'FJI', 242, 'ISO 3166-2:FJ', 'Oceania', 'Melanesia', '9', 54),
(76, 'Finland', 'FI', 'FIN', 246, 'ISO 3166-2:FI', 'Europe', 'Northern Europe', '150', 154),
(77, 'France', 'FR', 'FRA', 250, 'ISO 3166-2:FR', 'Europe', 'Western Europe', '150', 155),
(78, 'French Guiana', 'GF', 'GUF', 254, 'ISO 3166-2:GF', 'Americas', 'South America', '19', 5),
(79, 'French Polynesia', 'PF', 'PYF', 258, 'ISO 3166-2:PF', 'Oceania', 'Polynesia', '9', 61),
(80, 'French Southern Territories', 'TF', 'ATF', 260, 'ISO 3166-2:TF', '', '', '', NULL),
(81, 'Gabon', 'GA', 'GAB', 266, 'ISO 3166-2:GA', 'Africa', 'Middle Africa', '2', 17),
(82, 'Gambia', 'GM', 'GMB', 270, 'ISO 3166-2:GM', 'Africa', 'Western Africa', '2', 11),
(83, 'Georgia', 'GE', 'GEO', 268, 'ISO 3166-2:GE', 'Asia', 'Western Asia', '142', 145),
(84, 'Germany', 'DE', 'DEU', 276, 'ISO 3166-2:DE', 'Europe', 'Western Europe', '150', 155),
(85, 'Ghana', 'GH', 'GHA', 288, 'ISO 3166-2:GH', 'Africa', 'Western Africa', '2', 11),
(86, 'Gibraltar', 'GI', 'GIB', 292, 'ISO 3166-2:GI', 'Europe', 'Southern Europe', '150', 39),
(87, 'Greece', 'GR', 'GRC', 300, 'ISO 3166-2:GR', 'Europe', 'Southern Europe', '150', 39),
(88, 'Greenland', 'GL', 'GRL', 304, 'ISO 3166-2:GL', 'Americas', 'Northern America', '19', 21),
(89, 'Grenada', 'GD', 'GRD', 308, 'ISO 3166-2:GD', 'Americas', 'Caribbean', '19', 29),
(90, 'Guadeloupe', 'GP', 'GLP', 312, 'ISO 3166-2:GP', 'Americas', 'Caribbean', '19', 29),
(91, 'Guam', 'GU', 'GUM', 316, 'ISO 3166-2:GU', 'Oceania', 'Micronesia', '9', 57),
(92, 'Guatemala', 'GT', 'GTM', 320, 'ISO 3166-2:GT', 'Americas', 'Central America', '19', 13),
(93, 'Guernsey', 'GG', 'GGY', 831, 'ISO 3166-2:GG', 'Europe', 'Northern Europe', '150', 154),
(94, 'Guinea', 'GN', 'GIN', 324, 'ISO 3166-2:GN', 'Africa', 'Western Africa', '2', 11),
(95, 'Guinea-Bissau', 'GW', 'GNB', 624, 'ISO 3166-2:GW', 'Africa', 'Western Africa', '2', 11),
(96, 'Guyana', 'GY', 'GUY', 328, 'ISO 3166-2:GY', 'Americas', 'South America', '19', 5),
(97, 'Haiti', 'HT', 'HTI', 332, 'ISO 3166-2:HT', 'Americas', 'Caribbean', '19', 29),
(98, 'Heard and Mcdonald Islands', 'HM', 'HMD', 334, 'ISO 3166-2:HM', '', '', '', NULL),
(99, 'Holy See?(Vatican City State)', 'VA', 'VAT', 336, 'ISO 3166-2:VA', 'Europe', 'Southern Europe', '150', 39),
(100, 'Honduras', 'HN', 'HND', 340, 'ISO 3166-2:HN', 'Americas', 'Central America', '19', 13),
(101, 'Hungary', 'HU', 'HUN', 348, 'ISO 3166-2:HU', 'Europe', 'Eastern Europe', '150', 151),
(102, 'Iceland', 'IS', 'ISL', 352, 'ISO 3166-2:IS', 'Europe', 'Northern Europe', '150', 154),
(103, 'India', 'IN', 'IND', 356, 'ISO 3166-2:IN', 'Asia', 'Southern Asia', '142', 34),
(104, 'Indonesia', 'ID', 'IDN', 360, 'ISO 3166-2:ID', 'Asia', 'South-Eastern Asia', '142', 35),
(105, 'Iran, Islamic Republic of', 'IR', 'IRN', 364, 'ISO 3166-2:IR', 'Asia', 'Southern Asia', '142', 34),
(106, 'Iraq', 'IQ', 'IRQ', 368, 'ISO 3166-2:IQ', 'Asia', 'Western Asia', '142', 145),
(107, 'Ireland', 'IE', 'IRL', 372, 'ISO 3166-2:IE', 'Europe', 'Northern Europe', '150', 154),
(108, 'Isle of Man', 'IM', 'IMN', 833, 'ISO 3166-2:IM', 'Europe', 'Northern Europe', '150', 154),
(109, 'Israel', 'IL', 'ISR', 376, 'ISO 3166-2:IL', 'Asia', 'Western Asia', '142', 145),
(110, 'Italy', 'IT', 'ITA', 380, 'ISO 3166-2:IT', 'Europe', 'Southern Europe', '150', 39),
(111, 'Jamaica', 'JM', 'JAM', 388, 'ISO 3166-2:JM', 'Americas', 'Caribbean', '19', 29),
(112, 'Japan', 'JP', 'JPN', 392, 'ISO 3166-2:JP', 'Asia', 'Eastern Asia', '142', 30),
(113, 'Jersey', 'JE', 'JEY', 832, 'ISO 3166-2:JE', 'Europe', 'Northern Europe', '150', 154),
(114, 'Jordan', 'JO', 'JOR', 400, 'ISO 3166-2:JO', 'Asia', 'Western Asia', '142', 145),
(115, 'Kazakhstan', 'KZ', 'KAZ', 398, 'ISO 3166-2:KZ', 'Asia', 'Central Asia', '142', 143),
(116, 'Kenya', 'KE', 'KEN', 404, 'ISO 3166-2:KE', 'Africa', 'Eastern Africa', '2', 14),
(117, 'Kiribati', 'KI', 'KIR', 296, 'ISO 3166-2:KI', 'Oceania', 'Micronesia', '9', 57),
(118, 'Korea?(North)', 'KP', 'PRK', 408, 'ISO 3166-2:KP', 'Asia', 'Eastern Asia', '142', 30),
(119, 'Korea?(South)', 'KR', 'KOR', 410, 'ISO 3166-2:KR', 'Asia', 'Eastern Asia', '142', 30),
(120, 'Kuwait', 'KW', 'KWT', 414, 'ISO 3166-2:KW', 'Asia', 'Western Asia', '142', 145),
(121, 'Kyrgyzstan', 'KG', 'KGZ', 417, 'ISO 3166-2:KG', 'Asia', 'Central Asia', '142', 143),
(122, 'Lao PDR', 'LA', 'LAO', 418, 'ISO 3166-2:LA', 'Asia', 'South-Eastern Asia', '142', 35),
(123, 'Latvia', 'LV', 'LVA', 428, 'ISO 3166-2:LV', 'Europe', 'Northern Europe', '150', 154),
(124, 'Lebanon', 'LB', 'LBN', 422, 'ISO 3166-2:LB', 'Asia', 'Western Asia', '142', 145),
(125, 'Lesotho', 'LS', 'LSO', 426, 'ISO 3166-2:LS', 'Africa', 'Southern Africa', '2', 18),
(126, 'Liberia', 'LR', 'LBR', 430, 'ISO 3166-2:LR', 'Africa', 'Western Africa', '2', 11),
(127, 'Libya', 'LY', 'LBY', 434, 'ISO 3166-2:LY', 'Africa', 'Northern Africa', '2', 15),
(128, 'Liechtenstein', 'LI', 'LIE', 438, 'ISO 3166-2:LI', 'Europe', 'Western Europe', '150', 155),
(129, 'Lithuania', 'LT', 'LTU', 440, 'ISO 3166-2:LT', 'Europe', 'Northern Europe', '150', 154),
(130, 'Luxembourg', 'LU', 'LUX', 442, 'ISO 3166-2:LU', 'Europe', 'Western Europe', '150', 155),
(131, 'Macedonia, Republic of', 'MK', 'MKD', 807, 'ISO 3166-2:MK', 'Europe', 'Southern Europe', '150', 39),
(132, 'Madagascar', 'MG', 'MDG', 450, 'ISO 3166-2:MG', 'Africa', 'Eastern Africa', '2', 14),
(133, 'Malawi', 'MW', 'MWI', 454, 'ISO 3166-2:MW', 'Africa', 'Eastern Africa', '2', 14),
(134, 'Malaysia', 'MY', 'MYS', 458, 'ISO 3166-2:MY', 'Asia', 'South-Eastern Asia', '142', 35),
(135, 'Maldives', 'MV', 'MDV', 462, 'ISO 3166-2:MV', 'Asia', 'Southern Asia', '142', 34),
(136, 'Mali', 'ML', 'MLI', 466, 'ISO 3166-2:ML', 'Africa', 'Western Africa', '2', 11),
(137, 'Malta', 'MT', 'MLT', 470, 'ISO 3166-2:MT', 'Europe', 'Southern Europe', '150', 39),
(138, 'Marshall Islands', 'MH', 'MHL', 584, 'ISO 3166-2:MH', 'Oceania', 'Micronesia', '9', 57),
(139, 'Martinique', 'MQ', 'MTQ', 474, 'ISO 3166-2:MQ', 'Americas', 'Caribbean', '19', 29),
(140, 'Mauritania', 'MR', 'MRT', 478, 'ISO 3166-2:MR', 'Africa', 'Western Africa', '2', 11),
(141, 'Mauritius', 'MU', 'MUS', 480, 'ISO 3166-2:MU', 'Africa', 'Eastern Africa', '2', 14),
(142, 'Mayotte', 'YT', 'MYT', 175, 'ISO 3166-2:YT', 'Africa', 'Eastern Africa', '2', 14),
(143, 'Mexico', 'MX', 'MEX', 484, 'ISO 3166-2:MX', 'Americas', 'Central America', '19', 13),
(144, 'Micronesia, Federated States of', 'FM', 'FSM', 583, 'ISO 3166-2:FM', 'Oceania', 'Micronesia', '9', 57),
(145, 'Moldova', 'MD', 'MDA', 498, 'ISO 3166-2:MD', 'Europe', 'Eastern Europe', '150', 151),
(146, 'Monaco', 'MC', 'MCO', 492, 'ISO 3166-2:MC', 'Europe', 'Western Europe', '150', 155),
(147, 'Mongolia', 'MN', 'MNG', 496, 'ISO 3166-2:MN', 'Asia', 'Eastern Asia', '142', 30),
(148, 'Montenegro', 'ME', 'MNE', 499, 'ISO 3166-2:ME', 'Europe', 'Southern Europe', '150', 39),
(149, 'Montserrat', 'MS', 'MSR', 500, 'ISO 3166-2:MS', 'Americas', 'Caribbean', '19', 29),
(150, 'Morocco', 'MA', 'MAR', 504, 'ISO 3166-2:MA', 'Africa', 'Northern Africa', '2', 15),
(151, 'Mozambique', 'MZ', 'MOZ', 508, 'ISO 3166-2:MZ', 'Africa', 'Eastern Africa', '2', 14),
(152, 'Myanmar', 'MM', 'MMR', 104, 'ISO 3166-2:MM', 'Asia', 'South-Eastern Asia', '142', 35),
(153, 'Namibia', 'NA', 'NAM', 516, 'ISO 3166-2:NA', 'Africa', 'Southern Africa', '2', 18),
(154, 'Nauru', 'NR', 'NRU', 520, 'ISO 3166-2:NR', 'Oceania', 'Micronesia', '9', 57),
(155, 'Nepal', 'NP', 'NPL', 524, 'ISO 3166-2:NP', 'Asia', 'Southern Asia', '142', 34),
(156, 'Netherlands', 'NL', 'NLD', 528, 'ISO 3166-2:NL', 'Europe', 'Western Europe', '150', 155),
(157, 'Netherlands Antilles', 'AN', 'ANT', 530, NULL, NULL, NULL, NULL, NULL),
(158, 'New Caledonia', 'NC', 'NCL', 540, 'ISO 3166-2:NC', 'Oceania', 'Melanesia', '9', 54),
(159, 'New Zealand', 'NZ', 'NZL', 554, 'ISO 3166-2:NZ', 'Oceania', 'Australia and New Zealand', '9', 53),
(160, 'Nicaragua', 'NI', 'NIC', 558, 'ISO 3166-2:NI', 'Americas', 'Central America', '19', 13),
(161, 'Niger', 'NE', 'NER', 562, 'ISO 3166-2:NE', 'Africa', 'Western Africa', '2', 11),
(162, 'Nigeria', 'NG', 'NGA', 566, 'ISO 3166-2:NG', 'Africa', 'Western Africa', '2', 11),
(163, 'Niue', 'NU', 'NIU', 570, 'ISO 3166-2:NU', 'Oceania', 'Polynesia', '9', 61),
(164, 'Norfolk Island', 'NF', 'NFK', 574, 'ISO 3166-2:NF', 'Oceania', 'Australia and New Zealand', '9', 53),
(165, 'Northern Mariana Islands', 'MP', 'MNP', 580, 'ISO 3166-2:MP', 'Oceania', 'Micronesia', '9', 57),
(166, 'Norway', 'NO', 'NOR', 578, 'ISO 3166-2:NO', 'Europe', 'Northern Europe', '150', 154),
(167, 'Oman', 'OM', 'OMN', 512, 'ISO 3166-2:OM', 'Asia', 'Western Asia', '142', 145),
(168, 'Pakistan', 'PK', 'PAK', 586, 'ISO 3166-2:PK', 'Asia', 'Southern Asia', '142', 34),
(169, 'Palau', 'PW', 'PLW', 585, 'ISO 3166-2:PW', 'Oceania', 'Micronesia', '9', 57),
(170, 'Palestinian Territory', 'PS', 'PSE', 275, 'ISO 3166-2:PS', 'Asia', 'Western Asia', '142', 145),
(171, 'Panama', 'PA', 'PAN', 591, 'ISO 3166-2:PA', 'Americas', 'Central America', '19', 13),
(172, 'Papua New Guinea', 'PG', 'PNG', 598, 'ISO 3166-2:PG', 'Oceania', 'Melanesia', '9', 54),
(173, 'Paraguay', 'PY', 'PRY', 600, 'ISO 3166-2:PY', 'Americas', 'South America', '19', 5),
(174, 'Peru', 'PE', 'PER', 604, 'ISO 3166-2:PE', 'Americas', 'South America', '19', 5),
(175, 'Philippines', 'PH', 'PHL', 608, 'ISO 3166-2:PH', 'Asia', 'South-Eastern Asia', '142', 35),
(176, 'Pitcairn', 'PN', 'PCN', 612, 'ISO 3166-2:PN', 'Oceania', 'Polynesia', '9', 61),
(177, 'Poland', 'PL', 'POL', 616, 'ISO 3166-2:PL', 'Europe', 'Eastern Europe', '150', 151),
(178, 'Portugal', 'PT', 'PRT', 620, 'ISO 3166-2:PT', 'Europe', 'Southern Europe', '150', 39),
(179, 'Puerto Rico', 'PR', 'PRI', 630, 'ISO 3166-2:PR', 'Americas', 'Caribbean', '19', 29),
(180, 'Qatar', 'QA', 'QAT', 634, 'ISO 3166-2:QA', 'Asia', 'Western Asia', '142', 145),
(181, 'R?union', 'RE', 'REU', 638, 'ISO 3166-2:RE', 'Africa', 'Eastern Africa', '2', 14),
(182, 'Romania', 'RO', 'ROU', 642, 'ISO 3166-2:RO', 'Europe', 'Eastern Europe', '150', 151),
(183, 'Russian Federation', 'RU', 'RUS', 643, 'ISO 3166-2:RU', 'Europe', 'Eastern Europe', '150', 151),
(184, 'Rwanda', 'RW', 'RWA', 646, 'ISO 3166-2:RW', 'Africa', 'Eastern Africa', '2', 14),
(185, 'Saint-Barth?lemy', 'BL', 'BLM', 652, 'ISO 3166-2:BL', 'Americas', 'Caribbean', '19', 29),
(186, 'Saint Helena', 'SH', 'SHN', 654, 'ISO 3166-2:SH', 'Africa', 'Western Africa', '2', 11),
(187, 'Saint Kitts and Nevis', 'KN', 'KNA', 659, 'ISO 3166-2:KN', 'Americas', 'Caribbean', '19', 29),
(188, 'Saint Lucia', 'LC', 'LCA', 662, 'ISO 3166-2:LC', 'Americas', 'Caribbean', '19', 29),
(189, 'Saint-Martin (French part)', 'MF', 'MAF', 663, 'ISO 3166-2:MF', 'Americas', 'Caribbean', '19', 29),
(190, 'Saint Pierre and Miquelon', 'PM', 'SPM', 666, 'ISO 3166-2:PM', 'Americas', 'Northern America', '19', 21),
(191, 'Saint Vincent and Grenadines', 'VC', 'VCT', 670, 'ISO 3166-2:VC', 'Americas', 'Caribbean', '19', 29),
(192, 'Samoa', 'WS', 'WSM', 882, 'ISO 3166-2:WS', 'Oceania', 'Polynesia', '9', 61),
(193, 'San Marino', 'SM', 'SMR', 674, 'ISO 3166-2:SM', 'Europe', 'Southern Europe', '150', 39),
(194, 'Sao Tome and Principe', 'ST', 'STP', 678, 'ISO 3166-2:ST', 'Africa', 'Middle Africa', '2', 17),
(195, 'Saudi Arabia', 'SA', 'SAU', 682, 'ISO 3166-2:SA', 'Asia', 'Western Asia', '142', 145),
(196, 'Senegal', 'SN', 'SEN', 686, 'ISO 3166-2:SN', 'Africa', 'Western Africa', '2', 11),
(197, 'Serbia', 'RS', 'SRB', 688, 'ISO 3166-2:RS', 'Europe', 'Southern Europe', '150', 39),
(198, 'Seychelles', 'SC', 'SYC', 690, 'ISO 3166-2:SC', 'Africa', 'Eastern Africa', '2', 14),
(199, 'Sierra Leone', 'SL', 'SLE', 694, 'ISO 3166-2:SL', 'Africa', 'Western Africa', '2', 11),
(200, 'Singapore', 'SG', 'SGP', 702, 'ISO 3166-2:SG', 'Asia', 'South-Eastern Asia', '142', 35),
(201, 'Slovakia', 'SK', 'SVK', 703, 'ISO 3166-2:SK', 'Europe', 'Eastern Europe', '150', 151),
(202, 'Slovenia', 'SI', 'SVN', 705, 'ISO 3166-2:SI', 'Europe', 'Southern Europe', '150', 39),
(203, 'Solomon Islands', 'SB', 'SLB', 90, 'ISO 3166-2:SB', 'Oceania', 'Melanesia', '9', 54),
(204, 'Somalia', 'SO', 'SOM', 706, 'ISO 3166-2:SO', 'Africa', 'Eastern Africa', '2', 14),
(205, 'South Africa', 'ZA', 'ZAF', 710, 'ISO 3166-2:ZA', 'Africa', 'Southern Africa', '2', 18),
(206, 'South Georgia and the South Sandwich Islands', 'GS', 'SGS', 239, 'ISO 3166-2:GS', '', '', '', NULL),
(207, 'South Sudan', 'SS', 'SSD', 728, 'ISO 3166-2:SS', 'Africa', 'Eastern Africa', '2', 14),
(208, 'Spain', 'ES', 'ESP', 724, 'ISO 3166-2:ES', 'Europe', 'Southern Europe', '150', 39),
(209, 'Sri Lanka', 'LK', 'LKA', 144, 'ISO 3166-2:LK', 'Asia', 'Southern Asia', '142', 34),
(210, 'Sudan', 'SD', 'SDN', 736, 'ISO 3166-2:SD', 'Africa', 'Northern Africa', '2', 15),
(211, 'Suriname', 'SR', 'SUR', 740, 'ISO 3166-2:SR', 'Americas', 'South America', '19', 5),
(212, 'Svalbard and Jan Mayen Islands', 'SJ', 'SJM', 744, 'ISO 3166-2:SJ', 'Europe', 'Northern Europe', '150', 154),
(213, 'Swaziland', 'SZ', 'SWZ', 748, 'ISO 3166-2:SZ', 'Africa', 'Southern Africa', '2', 18),
(214, 'Sweden', 'SE', 'SWE', 752, 'ISO 3166-2:SE', 'Europe', 'Northern Europe', '150', 154),
(215, 'Switzerland', 'CH', 'CHE', 756, 'ISO 3166-2:CH', 'Europe', 'Western Europe', '150', 155),
(216, 'Syrian Arab Republic?(Syria)', 'SY', 'SYR', 760, 'ISO 3166-2:SY', 'Asia', 'Western Asia', '142', 145),
(217, 'Taiwan, Republic of China', 'TW', 'TWN', 158, 'ISO 3166-2:TW', 'Asia', 'Eastern Asia', '142', 30),
(218, 'Tajikistan', 'TJ', 'TJK', 762, 'ISO 3166-2:TJ', 'Asia', 'Central Asia', '142', 143),
(219, 'Tanzania, United Republic of', 'TZ', 'TZA', 834, 'ISO 3166-2:TZ', 'Africa', 'Eastern Africa', '2', 14),
(220, 'Thailand', 'TH', 'THA', 764, 'ISO 3166-2:TH', 'Asia', 'South-Eastern Asia', '142', 35),
(221, 'Timor-Leste', 'TL', 'TLS', 626, 'ISO 3166-2:TL', 'Asia', 'South-Eastern Asia', '142', 35),
(222, 'Togo', 'TG', 'TGO', 768, 'ISO 3166-2:TG', 'Africa', 'Western Africa', '2', 11),
(223, 'Tokelau', 'TK', 'TKL', 772, 'ISO 3166-2:TK', 'Oceania', 'Polynesia', '9', 61),
(224, 'Tonga', 'TO', 'TON', 776, 'ISO 3166-2:TO', 'Oceania', 'Polynesia', '9', 61),
(225, 'Trinidad and Tobago', 'TT', 'TTO', 780, 'ISO 3166-2:TT', 'Americas', 'Caribbean', '19', 29),
(226, 'Tunisia', 'TN', 'TUN', 788, 'ISO 3166-2:TN', 'Africa', 'Northern Africa', '2', 15),
(227, 'Turkey', 'TR', 'TUR', 792, 'ISO 3166-2:TR', 'Asia', 'Western Asia', '142', 145),
(228, 'Turkmenistan', 'TM', 'TKM', 795, 'ISO 3166-2:TM', 'Asia', 'Central Asia', '142', 143),
(229, 'Turks and Caicos Islands', 'TC', 'TCA', 796, 'ISO 3166-2:TC', 'Americas', 'Caribbean', '19', 29),
(230, 'Tuvalu', 'TV', 'TUV', 798, 'ISO 3166-2:TV', 'Oceania', 'Polynesia', '9', 61),
(231, 'Uganda', 'UG', 'UGA', 800, 'ISO 3166-2:UG', 'Africa', 'Eastern Africa', '2', 14),
(232, 'Ukraine', 'UA', 'UKR', 804, 'ISO 3166-2:UA', 'Europe', 'Eastern Europe', '150', 151),
(233, 'United Arab Emirates', 'AE', 'ARE', 784, 'ISO 3166-2:AE', 'Asia', 'Western Asia', '142', 145),
(234, 'United Kingdom', 'GB', 'GBR', 826, 'ISO 3166-2:GB', 'Europe', 'Northern Europe', '150', 154),
(235, 'United States of America', 'US', 'USA', 840, 'ISO 3166-2:US', 'Americas', 'Northern America', '19', 21),
(236, 'US Minor Outlying Islands', 'UM', 'UMI', 581, 'ISO 3166-2:UM', '', '', '', NULL),
(237, 'Uruguay', 'UY', 'URY', 858, 'ISO 3166-2:UY', 'Americas', 'South America', '19', 5),
(238, 'Uzbekistan', 'UZ', 'UZB', 860, 'ISO 3166-2:UZ', 'Asia', 'Central Asia', '142', 143),
(239, 'Vanuatu', 'VU', 'VUT', 548, 'ISO 3166-2:VU', 'Oceania', 'Melanesia', '9', 54),
(240, 'Venezuela?(Bolivarian Republic)', 'VE', 'VEN', 862, 'ISO 3166-2:VE', 'Americas', 'South America', '19', 5),
(241, 'Viet Nam', 'VN', 'VNM', 704, 'ISO 3166-2:VN', 'Asia', 'South-Eastern Asia', '142', 35),
(242, 'Virgin Islands, US', 'VI', 'VIR', 850, 'ISO 3166-2:VI', 'Americas', 'Caribbean', '19', 29),
(243, 'Wallis and Futuna Islands', 'WF', 'WLF', 876, 'ISO 3166-2:WF', 'Oceania', 'Polynesia', '9', 61),
(244, 'Western Sahara', 'EH', 'ESH', 732, 'ISO 3166-2:EH', 'Africa', 'Northern Africa', '2', 15),
(245, 'Yemen', 'YE', 'YEM', 887, 'ISO 3166-2:YE', 'Asia', 'Western Asia', '142', 145),
(246, 'Zambia', 'ZM', 'ZMB', 894, 'ISO 3166-2:ZM', 'Africa', 'Eastern Africa', '2', 14),
(247, 'Zimbabwe', 'ZW', 'ZWE', 716, 'ISO 3166-2:ZW', 'Africa', 'Eastern Africa', '2', 14);

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1505718896),
('m130524_201442_init', 1505718899),
('m140209_132017_init', 1505720056),
('m140403_174025_create_account_table', 1505720057),
('m140504_113157_update_tables', 1505720063),
('m140504_130429_create_token_table', 1505720064),
('m140830_171933_fix_ip_field', 1505720066),
('m140830_172703_change_account_table_name', 1505720067),
('m141222_110026_update_ip_field', 1505720067),
('m141222_135246_alter_username_length', 1505720068),
('m150614_103145_update_social_account_table', 1505720071),
('m150623_212711_fix_username_notnull', 1505720071),
('m151218_234654_add_timezone_to_profile', 1505720071),
('m160929_103127_add_last_login_at_to_user_table', 1505720072);

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `public_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gravatar_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gravatar_id` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bio` text COLLATE utf8_unicode_ci,
  `timezone` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`user_id`, `name`, `public_email`, `gravatar_email`, `gravatar_id`, `location`, `website`, `bio`, `timezone`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `social_account`
--

CREATE TABLE `social_account` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `client_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `code` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `token`
--

CREATE TABLE `token` (
  `user_id` int(11) NOT NULL,
  `code` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) NOT NULL,
  `type` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `token`
--

INSERT INTO `token` (`user_id`, `code`, `created_at`, `type`) VALUES
(1, 'UpXf-pIfZY6UwIrKv8lBCO24_DCrWQKa', 1505720130, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `confirmed_at` int(11) DEFAULT NULL,
  `unconfirmed_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blocked_at` int(11) DEFAULT NULL,
  `registration_ip` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0',
  `last_login_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password_hash`, `auth_key`, `confirmed_at`, `unconfirmed_email`, `blocked_at`, `registration_ip`, `status`, `created_at`, `updated_at`, `flags`, `last_login_at`) VALUES
(1, 'superadmin', 'shermalkaru@gmail.com', '$2y$10$3xU46FIW73Ts8I.U7E4J1ugS2HF3WHLnwCBkqYkuWTcoL8ZiiVLtC', '9C82MJ_UNSVmYbTzw2TZGCVlXbxRTgIT', 1505720130, NULL, NULL, '127.0.0.1', NULL, 1505720130, 1505720130, 0, 1506398375);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `countrys`
--
ALTER TABLE `countrys`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `social_account`
--
ALTER TABLE `social_account`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `account_unique` (`provider`,`client_id`),
  ADD UNIQUE KEY `account_unique_code` (`code`),
  ADD KEY `fk_user_account` (`user_id`);

--
-- Indexes for table `token`
--
ALTER TABLE `token`
  ADD UNIQUE KEY `token_unique` (`user_id`,`code`,`type`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_unique_username` (`username`),
  ADD UNIQUE KEY `user_unique_email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `countrys`
--
ALTER TABLE `countrys`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=248;
--
-- AUTO_INCREMENT for table `social_account`
--
ALTER TABLE `social_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `profile`
--
ALTER TABLE `profile`
  ADD CONSTRAINT `fk_user_profile` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `social_account`
--
ALTER TABLE `social_account`
  ADD CONSTRAINT `fk_user_account` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `token`
--
ALTER TABLE `token`
  ADD CONSTRAINT `fk_user_token` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
