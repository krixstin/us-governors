SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `us-governors`
-- ----------------------------

DROP TABLE IF EXISTS `us-governors`;
CREATE TABLE `senate` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `state_name` varchar(100) NOT NULL,
  `state_name_slug` varchar(100) NOT NULL,
  `state_code` char(2) NOT NULL,
  `state_code_slug` char(2) NOT NULL,
  `votesmart` varchar(15) DEFAULT NULL,
  `title` enum('governor') NOT NULL DEFAULT 'governor',
  `party` enum('constitution','democrat','green','independent','libertarian','nonpartisan','republican') NOT NULL DEFAULT 'nonpartisan',
  `name` varchar(100) NOT NULL,
  `name_slug` varchar(100) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `middle_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `name_suffix` varchar(50) NOT NULL,
  `goes_by` varchar(50) NOT NULL,
  `pronunciation` varchar(50) NOT NULL,
  `gender` enum('female','male','unspecified') NOT NULL DEFAULT 'unspecified',
  `ethnicity` enum('african-american','asian-american','hispanic-american','middle-eastern-american','multi-racial-american','native-american','pacific-islander','white-american','unspecified') NOT NULL DEFAULT 'unspecified',
  `religion` enum('african-methodist','anglican','baptist','buddhism','christian','christian-reformed','christian-scientist','church-of-christ','church-of-god','congregationalist','deist','eastern-orthodox','episcopalian','evangelical','evangelical-lutheran','hindu','jewish','jodo-shinshu-buddhist','lutheran','methodist','mormon','muslim','nazarene-christian','pentecostal','presbyterian','protestant','roman-catholic','seventh-day-adventist-church','soka-gakkai-buddhist','southern-baptist','united-church-of-christ','united-methodist','unitarian-universalist','unspecified') NOT NULL DEFAULT 'unspecified',
  `openly_lgbtq` enum('no','lesbian','gay','bisexual','transgender','queer') NOT NULL DEFAULT 'no',
  `date_of_birth` date DEFAULT NULL,
  `entered_office` date DEFAULT NULL,
  `term_end` date DEFAULT NULL,
  `biography` text COLLATE utf8_unicode_ci,
  `phone` varchar(12) DEFAULT NULL,
  `fax` varchar(12) DEFAULT NULL,
  `latitude` decimal(10,8) NOT NULL,
  `longitude` decimal(11,8) NOT NULL,
  `address_complete` varchar(255) NOT NULL,
  `address_number` varchar(10) NOT NULL,
  `address_prefix` varchar(10) NOT NULL,
  `address_street` varchar(100) NOT NULL,
  `address_sec_unit_type` varchar(10) NOT NULL,
  `address_sec_unit_num` varchar(10) NOT NULL,
  `address_city` varchar(50) NOT NULL,
  `address_state` varchar(50) NOT NULL,
  `address_zipcode` varchar(10) NOT NULL,
  `address_type` varchar(20) NOT NULL,
  `website` varchar(100) DEFAULT NULL,
  `contact_page` varchar(100) DEFAULT NULL,
  `twitter_handle` varchar(20) DEFAULT NULL,
  `twitter_url` varchar(100) DEFAULT NULL,
  `facebook_url` varchar(100) DEFAULT NULL,
  `photo_url` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

SET FOREIGN_KEY_CHECKS = 1;
