-- WordPress Dummy SQL Dump
-- Generated for deployment on server
-- Generation Time: May 23, 2025 at 08:26 AM
-- Server version: 10.6.20-MariaDB
-- PHP Version: 8.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE DATABASE IF NOT EXISTS `dummy_sndentalsite`;
USE `dummy_sndentalsite`;

-- --------------------------------------------------------

-- Table structure for table `wp_options`
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost'),
(2, 'home', 'http://localhost'),
(3, 'blogname', 'Dummy Dental Site'),
(4, 'blogdescription', 'Just another WordPress site'),
(5, 'admin_email', 'admin@example.com');

-- --------------------------------------------------------

-- Table structure for table `wp_users`
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- Admin password is 'admin123' (hashed with WordPress default hashing)
INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_registered`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BbzU3iqEqcPOQe/Vd3/P9sCu1mFAbc.', 'admin', 'admin@example.com', NOW(), 0, 'Administrator');

-- --------------------------------------------------------

-- Table structure for table `wp_usermeta`
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

INSERT INTO `wp_usermeta` (`user_id`, `meta_key`, `meta_value`) VALUES
(1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(1, 'wp_user_level', '10');

-- --------------------------------------------------------

-- Table structure for table `wp_posts`
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_content`, `post_title`, `post_status`, `post_type`) VALUES
(1, 1, NOW(), 'Welcome to your dummy WordPress site.', 'Hello World!', 'publish', 'post');

COMMIT;
