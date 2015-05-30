-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2015 at 03:24 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `estore`
--

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL DEFAULT '0',
  `des` varchar(200) NOT NULL DEFAULT '0',
  `cat` varchar(30) NOT NULL DEFAULT '0',
  `subcat` varchar(30) NOT NULL DEFAULT '0',
  `subsubcat` varchar(30) NOT NULL DEFAULT '0',
  `rprice` double NOT NULL DEFAULT '0',
  `sprice` double NOT NULL DEFAULT '0',
  `priceunit` varchar(20) NOT NULL,
  `tag` varchar(200) NOT NULL DEFAULT '0',
  `adate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `sdate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `added-by` varchar(50) NOT NULL DEFAULT '0',
  `size` varchar(50) NOT NULL DEFAULT '0',
  `color` varchar(50) NOT NULL DEFAULT '0',
  `rating` varchar(50) NOT NULL DEFAULT '0',
  `rater-num` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `title`, `des`, `cat`, `subcat`, `subsubcat`, `rprice`, `sprice`, `priceunit`, `tag`, `adate`, `sdate`, `added-by`, `size`, `color`, `rating`, `rater-num`) VALUES
(1, 'hjh', 'ed', 'Design', 'Logo', '0', 45, 34, 'Dollar', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '0', '0', '0', 0),
(2, 'ukj', 'ghg', 'Development', 'mobile-apps', '0', 5, 4, 'Dollar', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '0', '0', '0', 0),
(3, 'hj', 'hjghj', 'Design', 'Logo', '0', 5, 4, 'Dollar', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '0', '0', '0', 0),
(4, 'gh', 'dsfs', 'Design', 'Logo', '0', 4, 3, 'Dollar', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '0', '0', '0', 0),
(5, 'ghdgf', 'dfsdfgfds', 'Design', 'Logo', '0', 4, 2, 'Dollar', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '0', '0', '0', 0),
(6, 'fd', 'efed', 'Design', 'Logo', '0', 5, 4, 'Dollar', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '0', '0', '0', 0),
(7, 'f', 'fd', 'Design', 'Logo', '0', 4, 3, 'Dollar', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '0', '0', '0', 0),
(8, 'gh', 'ghgf', 'Design', 'Logo', '0', 7, 4, 'Dollar', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '0', '0', '0', 0),
(9, 'ghfgh', 'gjghj', 'Design', 'Logo', '0', 5, 4, 'Dollar', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '0', '0', '0', 0),
(10, 'hjh', 'hgj', 'Development', 'html', 'Wordpress', 5, 4, 'Taka', 'shirt,t-shirt', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', 'Medium', 'black', '0', 0),
(11, 't', 'tyt', 'Design', 'Logo', 'Logo', 5, 4, 'Taka', 't', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', 'Extra Large', 'red', '0', 0),
(12, 'hjh', 'g', 'Design', 'Logo', 'Logo', 4, 3, 'Dollar', 'gff', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', 'Extra Large', 'red', '0', 0),
(13, 'hg', 'gdf', 'Design', 'Logo', 'Logo', 5, 4, 'Dollar', 'dfsg', '2015-05-11 18:00:00', '0000-00-00 00:00:00', '0', 'Extra Large', 'red', '0', 0),
(14, 'gf', 'rgf', 'Design', 'Logo', 'Logo', 5, 4, 'Dollar', 'bvd', '2015-05-12 02:19:14', '0000-00-00 00:00:00', '0', 'Extra Large', 'red', '0', 0),
(15, 'gfh', 'gedfg', 'Design', 'Logo', 'Logo', 6, 4, 'Dollar', 't', '2015-05-12 02:20:22', '0000-00-00 00:00:00', '0', 'Extra Large', 'reed', '0', 0),
(16, 't', 'r', 'Design', 'Logo', 'Logo', 6, 5, 'Dollar', 'r', '2015-05-12 02:46:36', '0000-00-00 00:00:00', '0', 'Extra Large', 'r', '0', 0),
(17, 't', 'r', 'Design', 'Logo', 'Logo', 6, 5, 'Dollar', 'w', '2015-05-12 02:48:41', '0000-00-00 00:00:00', '0', 'Extra Large', 'w', '0', 0),
(18, 'r', 'r', 'Design', 'Logo', 'Logo', 3, 2, 'Dollar', 'q', '2015-05-12 02:50:29', '0000-00-00 00:00:00', '0', 'Extra Large', 'q', '0', 0),
(19, 'o', 'o', 'Design', 'Logo', 'Logo', 7, 7, 'Dollar', 'o', '2015-05-12 02:54:24', '0000-00-00 00:00:00', '0', 'Extra Large', 'o', '0', 0),
(20, 't', 't', 'Design', 'Logo', 'Logo', 5, 5, 'Dollar', '', '2015-05-12 02:58:37', '0000-00-00 00:00:00', '0', 'Extra Large', '', '0', 0),
(21, 'u', 't', 'Design', 'Logo', 'Logo', 1, 1, 'Dollar', '', '2015-05-11 19:01:11', '0000-00-00 00:00:00', '0', 'Extra Large', '', '0', 0),
(22, 'hjh', 'sa', 'Design', 'Logo', 'Logo', 2, 0, 'Dollar', '', '2015-05-16 01:40:02', '0000-00-00 00:00:00', '0', 'Extra Large', '', '0', 0),
(23, 'hh', 'a', 'Design', 'Logo', 'Logo', 3, 0, 'Dollar', '', '2015-05-16 01:41:11', '0000-00-00 00:00:00', '0', 'Extra Large', '', '0', 0),
(24, 'hh', 'aa', 'Design', 'Logo', 'Logo', 4, 0, 'Dollar', '', '2015-05-16 01:42:38', '0000-00-00 00:00:00', '0', 'Extra Large', '', '0', 0),
(25, '', '', '', '', '', 0, 0, '', '', '2015-05-16 02:59:34', '0000-00-00 00:00:00', '0', '', '', '0', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
