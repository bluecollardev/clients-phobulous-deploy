-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: 127.0.0.1    Database: phobulous_quickcommerce
-- ------------------------------------------------------
-- Server version	5.7.25

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `category_products`
--

DROP TABLE IF EXISTS `category_products`;
/*!50001 DROP VIEW IF EXISTS `category_products`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `category_products` AS SELECT 
 1 AS `category_id`,
 1 AS `category_name`,
 1 AS `category_parent_id`,
 1 AS `category_sort_order`,
 1 AS `product_sort_order`,
 1 AS `name`,
 1 AS `description`,
 1 AS `language_id`,
 1 AS `product_id`,
 1 AS `model`,
 1 AS `sku`,
 1 AS `upc`,
 1 AS `ean`,
 1 AS `jan`,
 1 AS `isbn`,
 1 AS `mpn`,
 1 AS `location`,
 1 AS `quantity`,
 1 AS `stock_status_id`,
 1 AS `image`,
 1 AS `manufacturer_id`,
 1 AS `shipping`,
 1 AS `price`,
 1 AS `points`,
 1 AS `tax_class_id`,
 1 AS `date_available`,
 1 AS `weight`,
 1 AS `weight_class_id`,
 1 AS `length`,
 1 AS `width`,
 1 AS `height`,
 1 AS `length_class_id`,
 1 AS `subtract`,
 1 AS `minimum`,
 1 AS `sort_order`,
 1 AS `status`,
 1 AS `viewed`,
 1 AS `date_added`,
 1 AS `date_modified`,
 1 AS `po_title`,
 1 AS `po_model`,
 1 AS `po_cost`,
 1 AS `cost`,
 1 AS `qbname`,
 1 AS `parent_id`,
 1 AS `display_mode`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_access_tokens` (
  `access_token` varchar(40) NOT NULL,
  `client_id` varchar(80) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `expires` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `scope` varchar(2000) DEFAULT NULL,
  `session_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`access_token`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_tokens`
--

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_clients` (
  `client_id` varchar(80) NOT NULL,
  `client_secret` varchar(80) NOT NULL,
  `redirect_uri` varchar(2000) NOT NULL,
  `grant_types` varchar(80) DEFAULT NULL,
  `scope` varchar(100) DEFAULT NULL,
  `user_id` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_clients`
--

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
INSERT INTO `oauth_clients` (`client_id`, `client_secret`, `redirect_uri`, `grant_types`, `scope`, `user_id`) VALUES ('demo','demo','',NULL,NULL,NULL);
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_scopes`
--

DROP TABLE IF EXISTS `oauth_scopes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_scopes` (
  `scope` text,
  `is_default` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_scopes`
--

LOCK TABLES `oauth_scopes` WRITE;
/*!40000 ALTER TABLE `oauth_scopes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_scopes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_address`
--

DROP TABLE IF EXISTS `oc2_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_address` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) DEFAULT NULL,
  `lastname` varchar(32) DEFAULT NULL,
  `company` varchar(40) DEFAULT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) DEFAULT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT '0',
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text,
  PRIMARY KEY (`address_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_address`
--

LOCK TABLES `oc2_address` WRITE;
/*!40000 ALTER TABLE `oc2_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_affiliate`
--

DROP TABLE IF EXISTS `oc2_affiliate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_affiliate` (
  `affiliate_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `company` varchar(40) NOT NULL,
  `website` varchar(255) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `commission` decimal(4,2) NOT NULL DEFAULT '0.00',
  `tax` varchar(64) NOT NULL,
  `payment` varchar(6) NOT NULL,
  `cheque` varchar(100) NOT NULL,
  `paypal` varchar(64) NOT NULL,
  `bank_name` varchar(64) NOT NULL,
  `bank_branch_number` varchar(64) NOT NULL,
  `bank_swift_code` varchar(64) NOT NULL,
  `bank_account_name` varchar(64) NOT NULL,
  `bank_account_number` varchar(64) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`affiliate_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_affiliate`
--

LOCK TABLES `oc2_affiliate` WRITE;
/*!40000 ALTER TABLE `oc2_affiliate` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_affiliate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_affiliate_activity`
--

DROP TABLE IF EXISTS `oc2_affiliate_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_affiliate_activity` (
  `affiliate_activity_id` int(11) NOT NULL AUTO_INCREMENT,
  `affiliate_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`affiliate_activity_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_affiliate_activity`
--

LOCK TABLES `oc2_affiliate_activity` WRITE;
/*!40000 ALTER TABLE `oc2_affiliate_activity` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_affiliate_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_affiliate_login`
--

DROP TABLE IF EXISTS `oc2_affiliate_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_affiliate_login` (
  `affiliate_login_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`affiliate_login_id`),
  KEY `email` (`email`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_affiliate_login`
--

LOCK TABLES `oc2_affiliate_login` WRITE;
/*!40000 ALTER TABLE `oc2_affiliate_login` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_affiliate_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_affiliate_transaction`
--

DROP TABLE IF EXISTS `oc2_affiliate_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_affiliate_transaction` (
  `affiliate_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `affiliate_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`affiliate_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_affiliate_transaction`
--

LOCK TABLES `oc2_affiliate_transaction` WRITE;
/*!40000 ALTER TABLE `oc2_affiliate_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_affiliate_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_amazon_listing_report`
--

DROP TABLE IF EXISTS `oc2_amazon_listing_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_amazon_listing_report` (
  `marketplace` enum('uk','de','fr','es','it') NOT NULL,
  `sku` varchar(255) NOT NULL,
  `quantity` int(10) unsigned NOT NULL,
  `asin` varchar(255) NOT NULL,
  `price` decimal(10,4) NOT NULL,
  PRIMARY KEY (`marketplace`,`sku`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_amazon_listing_report`
--

LOCK TABLES `oc2_amazon_listing_report` WRITE;
/*!40000 ALTER TABLE `oc2_amazon_listing_report` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_amazon_listing_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_amazon_order`
--

DROP TABLE IF EXISTS `oc2_amazon_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_amazon_order` (
  `order_id` int(11) NOT NULL,
  `amazon_order_id` char(19) NOT NULL,
  `courier_id` varchar(255) NOT NULL,
  `courier_other` tinyint(1) NOT NULL,
  `tracking_no` varchar(255) NOT NULL,
  PRIMARY KEY (`order_id`,`amazon_order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_amazon_order`
--

LOCK TABLES `oc2_amazon_order` WRITE;
/*!40000 ALTER TABLE `oc2_amazon_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_amazon_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_amazon_order_product`
--

DROP TABLE IF EXISTS `oc2_amazon_order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_amazon_order_product` (
  `order_product_id` int(11) NOT NULL,
  `amazon_order_item_id` varchar(255) NOT NULL,
  PRIMARY KEY (`order_product_id`,`amazon_order_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_amazon_order_product`
--

LOCK TABLES `oc2_amazon_order_product` WRITE;
/*!40000 ALTER TABLE `oc2_amazon_order_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_amazon_order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_amazon_product`
--

DROP TABLE IF EXISTS `oc2_amazon_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_amazon_product` (
  `version` int(11) NOT NULL DEFAULT '2',
  `product_id` int(11) NOT NULL,
  `category` varchar(255) NOT NULL,
  `sku` varchar(255) NOT NULL,
  `insertion_id` varchar(255) NOT NULL,
  `data` text NOT NULL,
  `status` enum('saved','uploaded','ok','error') NOT NULL,
  `price` decimal(15,4) NOT NULL COMMENT 'Price on Amazon',
  `var` char(100) NOT NULL DEFAULT '',
  `marketplaces` text NOT NULL,
  `messages` text NOT NULL,
  PRIMARY KEY (`product_id`,`var`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_amazon_product`
--

LOCK TABLES `oc2_amazon_product` WRITE;
/*!40000 ALTER TABLE `oc2_amazon_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_amazon_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_amazon_product_error`
--

DROP TABLE IF EXISTS `oc2_amazon_product_error`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_amazon_product_error` (
  `error_id` int(11) NOT NULL AUTO_INCREMENT,
  `sku` varchar(255) NOT NULL,
  `insertion_id` varchar(255) NOT NULL,
  `error_code` int(11) NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`error_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_amazon_product_error`
--

LOCK TABLES `oc2_amazon_product_error` WRITE;
/*!40000 ALTER TABLE `oc2_amazon_product_error` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_amazon_product_error` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_amazon_product_link`
--

DROP TABLE IF EXISTS `oc2_amazon_product_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_amazon_product_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amazon_sku` varchar(255) NOT NULL,
  `var` char(100) NOT NULL DEFAULT '',
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_amazon_product_link`
--

LOCK TABLES `oc2_amazon_product_link` WRITE;
/*!40000 ALTER TABLE `oc2_amazon_product_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_amazon_product_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_amazon_product_search`
--

DROP TABLE IF EXISTS `oc2_amazon_product_search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_amazon_product_search` (
  `product_id` int(11) NOT NULL,
  `marketplace` enum('uk','de','es','it','fr') NOT NULL,
  `status` enum('searching','finished') NOT NULL,
  `matches` int(11) DEFAULT NULL,
  `data` text,
  PRIMARY KEY (`product_id`,`marketplace`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_amazon_product_search`
--

LOCK TABLES `oc2_amazon_product_search` WRITE;
/*!40000 ALTER TABLE `oc2_amazon_product_search` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_amazon_product_search` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_amazon_product_unshipped`
--

DROP TABLE IF EXISTS `oc2_amazon_product_unshipped`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_amazon_product_unshipped` (
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_amazon_product_unshipped`
--

LOCK TABLES `oc2_amazon_product_unshipped` WRITE;
/*!40000 ALTER TABLE `oc2_amazon_product_unshipped` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_amazon_product_unshipped` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_amazonus_listing_report`
--

DROP TABLE IF EXISTS `oc2_amazonus_listing_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_amazonus_listing_report` (
  `sku` varchar(255) NOT NULL,
  `quantity` int(10) unsigned NOT NULL,
  `asin` varchar(255) NOT NULL,
  `price` decimal(10,4) NOT NULL,
  PRIMARY KEY (`sku`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_amazonus_listing_report`
--

LOCK TABLES `oc2_amazonus_listing_report` WRITE;
/*!40000 ALTER TABLE `oc2_amazonus_listing_report` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_amazonus_listing_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_amazonus_order`
--

DROP TABLE IF EXISTS `oc2_amazonus_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_amazonus_order` (
  `order_id` int(11) NOT NULL,
  `amazonus_order_id` char(19) NOT NULL,
  `courier_id` varchar(255) NOT NULL,
  `courier_other` tinyint(1) NOT NULL,
  `tracking_no` varchar(255) NOT NULL,
  PRIMARY KEY (`order_id`,`amazonus_order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_amazonus_order`
--

LOCK TABLES `oc2_amazonus_order` WRITE;
/*!40000 ALTER TABLE `oc2_amazonus_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_amazonus_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_amazonus_order_product`
--

DROP TABLE IF EXISTS `oc2_amazonus_order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_amazonus_order_product` (
  `order_product_id` int(11) NOT NULL,
  `amazonus_order_item_id` varchar(255) NOT NULL,
  PRIMARY KEY (`order_product_id`,`amazonus_order_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_amazonus_order_product`
--

LOCK TABLES `oc2_amazonus_order_product` WRITE;
/*!40000 ALTER TABLE `oc2_amazonus_order_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_amazonus_order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_amazonus_product`
--

DROP TABLE IF EXISTS `oc2_amazonus_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_amazonus_product` (
  `version` int(11) NOT NULL DEFAULT '2',
  `product_id` int(11) NOT NULL,
  `category` varchar(255) NOT NULL,
  `sku` varchar(255) NOT NULL,
  `insertion_id` varchar(255) NOT NULL,
  `data` text NOT NULL,
  `status` enum('saved','uploaded','ok','error') NOT NULL,
  `price` decimal(15,4) NOT NULL COMMENT 'Price on Amazonus',
  `var` char(100) NOT NULL DEFAULT '',
  `marketplaces` text NOT NULL,
  `messages` text NOT NULL,
  PRIMARY KEY (`product_id`,`var`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_amazonus_product`
--

LOCK TABLES `oc2_amazonus_product` WRITE;
/*!40000 ALTER TABLE `oc2_amazonus_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_amazonus_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_amazonus_product_error`
--

DROP TABLE IF EXISTS `oc2_amazonus_product_error`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_amazonus_product_error` (
  `error_id` int(11) NOT NULL AUTO_INCREMENT,
  `sku` varchar(255) NOT NULL,
  `insertion_id` varchar(255) NOT NULL,
  `error_code` int(11) NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`error_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_amazonus_product_error`
--

LOCK TABLES `oc2_amazonus_product_error` WRITE;
/*!40000 ALTER TABLE `oc2_amazonus_product_error` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_amazonus_product_error` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_amazonus_product_link`
--

DROP TABLE IF EXISTS `oc2_amazonus_product_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_amazonus_product_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amazonus_sku` varchar(255) NOT NULL,
  `var` char(100) NOT NULL DEFAULT '',
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_amazonus_product_link`
--

LOCK TABLES `oc2_amazonus_product_link` WRITE;
/*!40000 ALTER TABLE `oc2_amazonus_product_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_amazonus_product_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_amazonus_product_search`
--

DROP TABLE IF EXISTS `oc2_amazonus_product_search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_amazonus_product_search` (
  `product_id` int(11) NOT NULL,
  `status` enum('searching','finished') NOT NULL,
  `matches` int(11) DEFAULT NULL,
  `data` text,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_amazonus_product_search`
--

LOCK TABLES `oc2_amazonus_product_search` WRITE;
/*!40000 ALTER TABLE `oc2_amazonus_product_search` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_amazonus_product_search` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_amazonus_product_unshipped`
--

DROP TABLE IF EXISTS `oc2_amazonus_product_unshipped`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_amazonus_product_unshipped` (
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_amazonus_product_unshipped`
--

LOCK TABLES `oc2_amazonus_product_unshipped` WRITE;
/*!40000 ALTER TABLE `oc2_amazonus_product_unshipped` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_amazonus_product_unshipped` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_api`
--

DROP TABLE IF EXISTS `oc2_api`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_api` (
  `api_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `key` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `firstname` varchar(64) NOT NULL,
  `lastname` varchar(64) NOT NULL,
  PRIMARY KEY (`api_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_api`
--

LOCK TABLES `oc2_api` WRITE;
/*!40000 ALTER TABLE `oc2_api` DISABLE KEYS */;
INSERT INTO `oc2_api` (`api_id`, `name`, `key`, `status`, `date_added`, `date_modified`, `firstname`, `lastname`) VALUES (1,'owNREMmQ7pqIJ0kBm6qypGD0f8RqoYN2JOzcuaBBaRB7871AXWFahOVFFpJn19LV','vGqaqKKn70D9THXLtYSw8jarQS27QL0RPfrk1okznVKUKgtCbGX0NjMOpSdxn4piTbHgyij7llBLEyRvQbrvEFV467QdRd4nvzb7l5LDCZk8GBKK9R412WUivf0cCnlpZedwzOSyGaFP1lTsbX6leGZrzEFXQhicEJPBmVgjCOBqeYaidbAkSVkf2qIA2sYcnbJ3mhSUGTOKno9c8CkmOkqyrQaRTJcy94ytBfyujDusfCS22odlttSGFqrTfL6Q',1,'2015-07-25 20:49:49','2015-07-25 20:49:49','','');
/*!40000 ALTER TABLE `oc2_api` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_api_ip`
--

DROP TABLE IF EXISTS `oc2_api_ip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_api_ip` (
  `api_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `api_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  PRIMARY KEY (`api_ip_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_api_ip`
--

LOCK TABLES `oc2_api_ip` WRITE;
/*!40000 ALTER TABLE `oc2_api_ip` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_api_ip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_api_session`
--

DROP TABLE IF EXISTS `oc2_api_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_api_session` (
  `api_session_id` int(11) NOT NULL AUTO_INCREMENT,
  `api_id` int(11) NOT NULL,
  `token` varchar(32) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `session_name` varchar(32) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`api_session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_api_session`
--

LOCK TABLES `oc2_api_session` WRITE;
/*!40000 ALTER TABLE `oc2_api_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_api_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_attribute`
--

DROP TABLE IF EXISTS `oc2_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_attribute` (
  `attribute_id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_attribute`
--

LOCK TABLES `oc2_attribute` WRITE;
/*!40000 ALTER TABLE `oc2_attribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_attribute_description`
--

DROP TABLE IF EXISTS `oc2_attribute_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_attribute_description`
--

LOCK TABLES `oc2_attribute_description` WRITE;
/*!40000 ALTER TABLE `oc2_attribute_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_attribute_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_attribute_group`
--

DROP TABLE IF EXISTS `oc2_attribute_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_attribute_group` (
  `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_attribute_group`
--

LOCK TABLES `oc2_attribute_group` WRITE;
/*!40000 ALTER TABLE `oc2_attribute_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_attribute_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_attribute_group_description`
--

DROP TABLE IF EXISTS `oc2_attribute_group_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_attribute_group_description`
--

LOCK TABLES `oc2_attribute_group_description` WRITE;
/*!40000 ALTER TABLE `oc2_attribute_group_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_attribute_group_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_attribute_template`
--

DROP TABLE IF EXISTS `oc2_attribute_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_attribute_template` (
  `attribute_template_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`attribute_template_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_attribute_template`
--

LOCK TABLES `oc2_attribute_template` WRITE;
/*!40000 ALTER TABLE `oc2_attribute_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_attribute_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_attribute_template_attribute`
--

DROP TABLE IF EXISTS `oc2_attribute_template_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_attribute_template_attribute` (
  `attribute_template_attribute_id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute_template_id` int(11) NOT NULL,
  `attribute_group_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `value` blob,
  PRIMARY KEY (`attribute_template_attribute_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_attribute_template_attribute`
--

LOCK TABLES `oc2_attribute_template_attribute` WRITE;
/*!40000 ALTER TABLE `oc2_attribute_template_attribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_attribute_template_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_banner`
--

DROP TABLE IF EXISTS `oc2_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_banner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_banner`
--

LOCK TABLES `oc2_banner` WRITE;
/*!40000 ALTER TABLE `oc2_banner` DISABLE KEYS */;
INSERT INTO `oc2_banner` (`banner_id`, `name`, `status`) VALUES (8,'Manufacturers',1);
/*!40000 ALTER TABLE `oc2_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_banner_image`
--

DROP TABLE IF EXISTS `oc2_banner_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_banner_image` (
  `banner_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`banner_image_id`)
) ENGINE=MyISAM AUTO_INCREMENT=105 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_banner_image`
--

LOCK TABLES `oc2_banner_image` WRITE;
/*!40000 ALTER TABLE `oc2_banner_image` DISABLE KEYS */;
INSERT INTO `oc2_banner_image` (`banner_image_id`, `banner_id`, `language_id`, `title`, `link`, `image`, `sort_order`) VALUES (102,8,1,'Danesi Caffe','','catalog/brands/logo.danesi.png',0),(103,8,1,'Goccia Coffee','','catalog/brands/png/logo.goccia.png',0),(104,8,1,'ACE Coffee','','catalog/brands/png/logo.ace.png',0);
/*!40000 ALTER TABLE `oc2_banner_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_blog_article`
--

DROP TABLE IF EXISTS `oc2_blog_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_blog_article` (
  `blog_article_id` int(11) NOT NULL AUTO_INCREMENT,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `allow_comment` tinyint(1) NOT NULL DEFAULT '0',
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `need_approval` tinyint(1) NOT NULL DEFAULT '0',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `viewed` int(5) NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`blog_article_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_blog_article`
--

LOCK TABLES `oc2_blog_article` WRITE;
/*!40000 ALTER TABLE `oc2_blog_article` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_blog_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_blog_article_category`
--

DROP TABLE IF EXISTS `oc2_blog_article_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_blog_article_category` (
  `blog_article_id` int(11) NOT NULL,
  `blog_category_id` int(11) NOT NULL,
  PRIMARY KEY (`blog_article_id`,`blog_category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_blog_article_category`
--

LOCK TABLES `oc2_blog_article_category` WRITE;
/*!40000 ALTER TABLE `oc2_blog_article_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_blog_article_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_blog_article_description`
--

DROP TABLE IF EXISTS `oc2_blog_article_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_blog_article_description` (
  `blog_article_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(500) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `meta_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_keyword` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `tag` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`blog_article_id`,`language_id`),
  FULLTEXT KEY `tag` (`tag`,`content`),
  FULLTEXT KEY `tag_2` (`tag`),
  FULLTEXT KEY `tag_3` (`tag`),
  FULLTEXT KEY `tag_4` (`tag`),
  FULLTEXT KEY `content` (`content`),
  FULLTEXT KEY `content_2` (`content`),
  FULLTEXT KEY `tag_5` (`tag`),
  FULLTEXT KEY `tag_6` (`tag`,`content`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_blog_article_description`
--

LOCK TABLES `oc2_blog_article_description` WRITE;
/*!40000 ALTER TABLE `oc2_blog_article_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_blog_article_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_blog_article_layout`
--

DROP TABLE IF EXISTS `oc2_blog_article_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_blog_article_layout` (
  `blog_article_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`blog_article_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_blog_article_layout`
--

LOCK TABLES `oc2_blog_article_layout` WRITE;
/*!40000 ALTER TABLE `oc2_blog_article_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_blog_article_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_blog_article_related`
--

DROP TABLE IF EXISTS `oc2_blog_article_related`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_blog_article_related` (
  `blog_article_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  PRIMARY KEY (`blog_article_id`,`related_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_blog_article_related`
--

LOCK TABLES `oc2_blog_article_related` WRITE;
/*!40000 ALTER TABLE `oc2_blog_article_related` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_blog_article_related` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_blog_article_store`
--

DROP TABLE IF EXISTS `oc2_blog_article_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_blog_article_store` (
  `blog_article_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`blog_article_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_blog_article_store`
--

LOCK TABLES `oc2_blog_article_store` WRITE;
/*!40000 ALTER TABLE `oc2_blog_article_store` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_blog_article_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_blog_category`
--

DROP TABLE IF EXISTS `oc2_blog_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_blog_category` (
  `blog_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`blog_category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_blog_category`
--

LOCK TABLES `oc2_blog_category` WRITE;
/*!40000 ALTER TABLE `oc2_blog_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_blog_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_blog_category_description`
--

DROP TABLE IF EXISTS `oc2_blog_category_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_blog_category_description` (
  `blog_category_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `meta_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_keyword` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`blog_category_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_blog_category_description`
--

LOCK TABLES `oc2_blog_category_description` WRITE;
/*!40000 ALTER TABLE `oc2_blog_category_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_blog_category_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_blog_category_layout`
--

DROP TABLE IF EXISTS `oc2_blog_category_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_blog_category_layout` (
  `blog_category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`blog_category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_blog_category_layout`
--

LOCK TABLES `oc2_blog_category_layout` WRITE;
/*!40000 ALTER TABLE `oc2_blog_category_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_blog_category_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_blog_category_store`
--

DROP TABLE IF EXISTS `oc2_blog_category_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_blog_category_store` (
  `blog_category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`blog_category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_blog_category_store`
--

LOCK TABLES `oc2_blog_category_store` WRITE;
/*!40000 ALTER TABLE `oc2_blog_category_store` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_blog_category_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_blog_comment`
--

DROP TABLE IF EXISTS `oc2_blog_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_blog_comment` (
  `blog_comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_article_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` text COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`blog_comment_id`,`blog_article_id`,`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_blog_comment`
--

LOCK TABLES `oc2_blog_comment` WRITE;
/*!40000 ALTER TABLE `oc2_blog_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_blog_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_blog_product_related`
--

DROP TABLE IF EXISTS `oc2_blog_product_related`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_blog_product_related` (
  `blog_article_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`blog_article_id`,`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_blog_product_related`
--

LOCK TABLES `oc2_blog_product_related` WRITE;
/*!40000 ALTER TABLE `oc2_blog_product_related` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_blog_product_related` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_callforprice`
--

DROP TABLE IF EXISTS `oc2_callforprice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_callforprice` (
  `callforprice_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_phone` varchar(200) DEFAULT NULL,
  `customer_name` varchar(100) DEFAULT NULL,
  `product_id` int(11) DEFAULT '0',
  `notes` varchar(255) DEFAULT NULL,
  `anotes` varchar(255) DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `customer_notified` tinyint(1) NOT NULL DEFAULT '0',
  `store_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`callforprice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_callforprice`
--

LOCK TABLES `oc2_callforprice` WRITE;
/*!40000 ALTER TABLE `oc2_callforprice` DISABLE KEYS */;
INSERT INTO `oc2_callforprice` (`callforprice_id`, `customer_phone`, `customer_name`, `product_id`, `notes`, `anotes`, `date_created`, `customer_notified`, `store_id`) VALUES (1,'555-555-5555','Lucas Lopatka',78,'Testing call-for-price form for commercial products. Testing testing 123...','Test archiving...','2015-12-13 00:48:58',1,0),(2,'555-555-5555','Lucas Lopatka',97,'Testing testing 123',NULL,'2015-12-19 19:45:37',0,0),(3,'4033830416','David',3604,'',NULL,'2016-02-22 17:09:53',0,0),(4,'artho','giovanni',3160,'hi, what is your price for a Mazzer Robur?',NULL,'2016-03-20 02:52:01',0,0),(5,'gioartho@gmail.com','g.artho',3160,'hi, what is your price for a Mazzer Robur?',NULL,'2016-03-20 02:54:32',0,0),(6,'306-291-2124','Brendan',3340,'',NULL,'2016-05-23 12:49:08',0,0),(7,'786-256-9691','karl Hayden',3380,'',NULL,'2016-06-16 10:59:33',0,0),(8,'7053474163','Kelly McAree',2106,'gm@killarney.com',NULL,'2016-09-12 15:37:24',0,0),(9,'6042192138','Dean',70,'deangiffin@gmail.com',NULL,'2016-09-20 21:07:08',0,0),(10,'850 832 7796','Steve',8,'Just text me a price...thanks!',NULL,'2016-09-26 18:32:20',0,0);
/*!40000 ALTER TABLE `oc2_callforprice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_cart`
--

DROP TABLE IF EXISTS `oc2_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_cart` (
  `cart_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `api_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `option` text NOT NULL,
  `quantity` int(5) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`cart_id`),
  KEY `cart_id` (`api_id`,`customer_id`,`session_id`,`product_id`,`recurring_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_cart`
--

LOCK TABLES `oc2_cart` WRITE;
/*!40000 ALTER TABLE `oc2_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_category`
--

DROP TABLE IF EXISTS `oc2_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`category_id`,`parent_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_category`
--

LOCK TABLES `oc2_category` WRITE;
/*!40000 ALTER TABLE `oc2_category` DISABLE KEYS */;
INSERT INTO `oc2_category` (`category_id`, `image`, `parent_id`, `top`, `column`, `sort_order`, `status`, `date_added`, `date_modified`) VALUES (1,'catalog/products/black/fhd/papaya-salad.jpg',0,1,1,3,1,'2017-10-24 11:17:02','2017-12-12 20:59:30'),(2,'catalog/products/black/fhd/pork-and-shrimp-salad-rolls.jpg',0,1,1,2,1,'2017-10-24 11:18:02','2017-12-12 20:59:25'),(3,'catalog/products/black/fhd/green-onion-cake.jpg',0,1,1,1,1,'2017-10-24 11:19:41','2017-12-12 20:58:57'),(4,'catalog/products/black/fhd/mother-pho.jpg',0,1,1,5,1,'2017-10-24 11:21:45','2018-01-02 23:25:08'),(5,'catalog/products/black/fhd/noodle-soup.jpg',0,1,1,6,1,'2017-10-24 11:22:58','2017-12-12 20:59:12'),(6,'catalog/products/black/fhd/curry-shrimp.jpg',0,1,1,8,1,'2017-10-24 11:23:23','2018-01-02 23:24:36'),(7,'catalog/products/black/fhd/jumbo-prawn-vermicelli.jpg',0,1,1,7,1,'2017-10-24 11:23:42','2018-01-07 20:27:47'),(8,'catalog/products/black/fhd/meatlovers-vermicelli.jpg',0,1,1,4,1,'2017-10-24 11:23:56','2017-12-12 20:59:41'),(10,'',0,0,1,100,1,'2017-10-24 11:24:25','2017-10-24 11:24:25'),(11,'',0,0,1,100,1,'2017-10-24 11:24:37','2017-10-24 11:24:37'),(12,'',11,0,1,100,1,'2017-10-24 11:24:52','2017-12-12 20:58:09'),(13,'',11,0,1,100,1,'2017-10-24 11:25:01','2017-10-28 19:44:52'),(14,'',11,0,1,100,1,'2017-10-24 11:25:13','2017-10-28 19:44:46'),(15,'',0,0,1,100,1,'2017-10-24 11:25:24','2017-12-12 20:59:04');
/*!40000 ALTER TABLE `oc2_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_category_description`
--

DROP TABLE IF EXISTS `oc2_category_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`category_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_category_description`
--

LOCK TABLES `oc2_category_description` WRITE;
/*!40000 ALTER TABLE `oc2_category_description` DISABLE KEYS */;
INSERT INTO `oc2_category_description` (`category_id`, `language_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES (1,1,'SALADS','','GOI (SALADS)','',''),(2,1,'SALAD ROLLS','Vietnamese fresh spring rolls are essentially little self-contained salads to go.  Wrapped in pliable rice paper and filled with fresh vegetables, meat and seafood, these tasty morsels are refreshingly cool and healthy!','GOI CUON (SALAD ROLLS)','',''),(3,1,'APPETIZERS','','PHO PLAY (APPETIZERS)','',''),(4,1,'PHO SOUPS','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','PHO SOUPS','',''),(5,1,'HU TIEU SOUPS','','HU TIEU LOVE?','',''),(6,1,'HOUSE SPECIALITIES','','HOUSE SPECIALITIES','',''),(7,1,'VERMICELLI BOWL','','VERMICELLI BOWLS (BUN)','',''),(8,1,'SPECIALITIES','','DAC BIET (HOUSE SPECIALITIES)','',''),(10,1,'EXTRAS','','EXTRAS','',''),(11,1,'DRINKS','','DRINKS','',''),(12,1,'MORE DRINKS','','PHOBULOUS REFRESHING DRINKS','',''),(13,1,'SLUSHES','','SLUSHES','',''),(14,1,'SHAKES','','SHAKES','',''),(15,1,'DESSERTS','','DESSERTS','','');
/*!40000 ALTER TABLE `oc2_category_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_category_filter`
--

DROP TABLE IF EXISTS `oc2_category_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_category_filter` (
  `category_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_category_filter`
--

LOCK TABLES `oc2_category_filter` WRITE;
/*!40000 ALTER TABLE `oc2_category_filter` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_category_filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_category_path`
--

DROP TABLE IF EXISTS `oc2_category_path`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`path_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_category_path`
--

LOCK TABLES `oc2_category_path` WRITE;
/*!40000 ALTER TABLE `oc2_category_path` DISABLE KEYS */;
INSERT INTO `oc2_category_path` (`category_id`, `path_id`, `level`) VALUES (1,1,0),(2,2,0),(3,3,0),(4,4,0),(5,5,0),(6,6,0),(7,7,0),(8,8,0),(10,10,0),(11,11,0),(12,12,1),(13,13,1),(14,14,1),(15,15,0),(12,11,0),(14,11,0),(13,11,0);
/*!40000 ALTER TABLE `oc2_category_path` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_category_to_layout`
--

DROP TABLE IF EXISTS `oc2_category_to_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_category_to_layout`
--

LOCK TABLES `oc2_category_to_layout` WRITE;
/*!40000 ALTER TABLE `oc2_category_to_layout` DISABLE KEYS */;
INSERT INTO `oc2_category_to_layout` (`category_id`, `store_id`, `layout_id`) VALUES (1,0,0),(2,0,0),(3,0,0),(4,0,0),(5,0,0),(6,0,0),(7,0,0),(8,0,0),(10,0,0),(10,8,0),(11,0,0),(11,8,0),(12,0,0),(13,8,0),(13,0,0),(14,8,0),(14,0,0),(15,0,0);
/*!40000 ALTER TABLE `oc2_category_to_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_category_to_store`
--

DROP TABLE IF EXISTS `oc2_category_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_category_to_store`
--

LOCK TABLES `oc2_category_to_store` WRITE;
/*!40000 ALTER TABLE `oc2_category_to_store` DISABLE KEYS */;
INSERT INTO `oc2_category_to_store` (`category_id`, `store_id`) VALUES (1,0),(2,0),(3,0),(4,0),(5,0),(6,0),(7,0),(8,0),(10,0),(11,0),(12,0),(13,0),(14,0),(15,0);
/*!40000 ALTER TABLE `oc2_category_to_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_country`
--

DROP TABLE IF EXISTS `oc2_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_country` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`country_id`)
) ENGINE=MyISAM AUTO_INCREMENT=258 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_country`
--

LOCK TABLES `oc2_country` WRITE;
/*!40000 ALTER TABLE `oc2_country` DISABLE KEYS */;
INSERT INTO `oc2_country` (`country_id`, `name`, `iso_code_2`, `iso_code_3`, `address_format`, `postcode_required`, `status`) VALUES (1,'Afghanistan','AF','AFG','',0,0),(2,'Albania','AL','ALB','',0,0),(3,'Algeria','DZ','DZA','',0,0),(4,'American Samoa','AS','ASM','',0,0),(5,'Andorra','AD','AND','',0,0),(6,'Angola','AO','AGO','',0,0),(7,'Anguilla','AI','AIA','',0,0),(8,'Antarctica','AQ','ATA','',0,0),(9,'Antigua and Barbuda','AG','ATG','',0,0),(10,'Argentina','AR','ARG','',0,0),(11,'Armenia','AM','ARM','',0,0),(12,'Aruba','AW','ABW','',0,0),(13,'Australia','AU','AUS','',0,0),(14,'Austria','AT','AUT','',0,0),(15,'Azerbaijan','AZ','AZE','',0,0),(16,'Bahamas','BS','BHS','',0,0),(17,'Bahrain','BH','BHR','',0,0),(18,'Bangladesh','BD','BGD','',0,0),(19,'Barbados','BB','BRB','',0,0),(20,'Belarus','BY','BLR','',0,0),(21,'Belgium','BE','BEL','{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}',0,0),(22,'Belize','BZ','BLZ','',0,0),(23,'Benin','BJ','BEN','',0,0),(24,'Bermuda','BM','BMU','',0,0),(25,'Bhutan','BT','BTN','',0,0),(26,'Bolivia','BO','BOL','',0,0),(27,'Bosnia and Herzegovina','BA','BIH','',0,0),(28,'Botswana','BW','BWA','',0,0),(29,'Bouvet Island','BV','BVT','',0,0),(30,'Brazil','BR','BRA','',0,0),(31,'British Indian Ocean Territory','IO','IOT','',0,0),(32,'Brunei Darussalam','BN','BRN','',0,0),(33,'Bulgaria','BG','BGR','',0,0),(34,'Burkina Faso','BF','BFA','',0,0),(35,'Burundi','BI','BDI','',0,0),(36,'Cambodia','KH','KHM','',0,0),(37,'Cameroon','CM','CMR','',0,0),(38,'Canada','CA','CAN','',0,1),(39,'Cape Verde','CV','CPV','',0,0),(40,'Cayman Islands','KY','CYM','',0,0),(41,'Central African Republic','CF','CAF','',0,0),(42,'Chad','TD','TCD','',0,0),(43,'Chile','CL','CHL','',0,0),(44,'China','CN','CHN','',0,0),(45,'Christmas Island','CX','CXR','',0,0),(46,'Cocos (Keeling) Islands','CC','CCK','',0,0),(47,'Colombia','CO','COL','',0,0),(48,'Comoros','KM','COM','',0,0),(49,'Congo','CG','COG','',0,0),(50,'Cook Islands','CK','COK','',0,0),(51,'Costa Rica','CR','CRI','',0,0),(52,'Cote D\'Ivoire','CI','CIV','',0,0),(53,'Croatia','HR','HRV','',0,0),(54,'Cuba','CU','CUB','',0,0),(55,'Cyprus','CY','CYP','',0,0),(56,'Czech Republic','CZ','CZE','',0,0),(57,'Denmark','DK','DNK','',0,0),(58,'Djibouti','DJ','DJI','',0,0),(59,'Dominica','DM','DMA','',0,0),(60,'Dominican Republic','DO','DOM','',0,0),(61,'East Timor','TL','TLS','',0,0),(62,'Ecuador','EC','ECU','',0,0),(63,'Egypt','EG','EGY','',0,0),(64,'El Salvador','SV','SLV','',0,0),(65,'Equatorial Guinea','GQ','GNQ','',0,0),(66,'Eritrea','ER','ERI','',0,0),(67,'Estonia','EE','EST','',0,0),(68,'Ethiopia','ET','ETH','',0,0),(69,'Falkland Islands (Malvinas)','FK','FLK','',0,0),(70,'Faroe Islands','FO','FRO','',0,0),(71,'Fiji','FJ','FJI','',0,0),(72,'Finland','FI','FIN','',0,0),(74,'France, Metropolitan','FR','FRA','{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}',1,0),(75,'French Guiana','GF','GUF','',0,0),(76,'French Polynesia','PF','PYF','',0,0),(77,'French Southern Territories','TF','ATF','',0,0),(78,'Gabon','GA','GAB','',0,0),(79,'Gambia','GM','GMB','',0,0),(80,'Georgia','GE','GEO','',0,0),(81,'Germany','DE','DEU','{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}',1,0),(82,'Ghana','GH','GHA','',0,0),(83,'Gibraltar','GI','GIB','',0,0),(84,'Greece','GR','GRC','',0,0),(85,'Greenland','GL','GRL','',0,0),(86,'Grenada','GD','GRD','',0,0),(87,'Guadeloupe','GP','GLP','',0,0),(88,'Guam','GU','GUM','',0,0),(89,'Guatemala','GT','GTM','',0,0),(90,'Guinea','GN','GIN','',0,0),(91,'Guinea-Bissau','GW','GNB','',0,0),(92,'Guyana','GY','GUY','',0,0),(93,'Haiti','HT','HTI','',0,0),(94,'Heard and Mc Donald Islands','HM','HMD','',0,0),(95,'Honduras','HN','HND','',0,0),(96,'Hong Kong','HK','HKG','',0,0),(97,'Hungary','HU','HUN','',0,0),(98,'Iceland','IS','ISL','',0,0),(99,'India','IN','IND','',0,0),(100,'Indonesia','ID','IDN','',0,0),(101,'Iran (Islamic Republic of)','IR','IRN','',0,0),(102,'Iraq','IQ','IRQ','',0,0),(103,'Ireland','IE','IRL','',0,0),(104,'Israel','IL','ISR','',0,0),(105,'Italy','IT','ITA','',0,0),(106,'Jamaica','JM','JAM','',0,0),(107,'Japan','JP','JPN','',0,0),(108,'Jordan','JO','JOR','',0,0),(109,'Kazakhstan','KZ','KAZ','',0,0),(110,'Kenya','KE','KEN','',0,0),(111,'Kiribati','KI','KIR','',0,0),(112,'North Korea','KP','PRK','',0,0),(113,'Korea, Republic of','KR','KOR','',0,0),(114,'Kuwait','KW','KWT','',0,0),(115,'Kyrgyzstan','KG','KGZ','',0,0),(116,'Lao People\'s Democratic Republic','LA','LAO','',0,0),(117,'Latvia','LV','LVA','',0,0),(118,'Lebanon','LB','LBN','',0,0),(119,'Lesotho','LS','LSO','',0,0),(120,'Liberia','LR','LBR','',0,0),(121,'Libyan Arab Jamahiriya','LY','LBY','',0,0),(122,'Liechtenstein','LI','LIE','',0,0),(123,'Lithuania','LT','LTU','',0,0),(124,'Luxembourg','LU','LUX','',0,0),(125,'Macau','MO','MAC','',0,0),(126,'FYROM','MK','MKD','',0,0),(127,'Madagascar','MG','MDG','',0,0),(128,'Malawi','MW','MWI','',0,0),(129,'Malaysia','MY','MYS','',0,0),(130,'Maldives','MV','MDV','',0,0),(131,'Mali','ML','MLI','',0,0),(132,'Malta','MT','MLT','',0,0),(133,'Marshall Islands','MH','MHL','',0,0),(134,'Martinique','MQ','MTQ','',0,0),(135,'Mauritania','MR','MRT','',0,0),(136,'Mauritius','MU','MUS','',0,0),(137,'Mayotte','YT','MYT','',0,0),(138,'Mexico','MX','MEX','',0,0),(139,'Micronesia, Federated States of','FM','FSM','',0,0),(140,'Moldova, Republic of','MD','MDA','',0,0),(141,'Monaco','MC','MCO','',0,0),(142,'Mongolia','MN','MNG','',0,0),(143,'Montserrat','MS','MSR','',0,0),(144,'Morocco','MA','MAR','',0,0),(145,'Mozambique','MZ','MOZ','',0,0),(146,'Myanmar','MM','MMR','',0,0),(147,'Namibia','NA','NAM','',0,0),(148,'Nauru','NR','NRU','',0,0),(149,'Nepal','NP','NPL','',0,0),(150,'Netherlands','NL','NLD','',0,0),(151,'Netherlands Antilles','AN','ANT','',0,0),(152,'New Caledonia','NC','NCL','',0,0),(153,'New Zealand','NZ','NZL','',0,0),(154,'Nicaragua','NI','NIC','',0,0),(155,'Niger','NE','NER','',0,0),(156,'Nigeria','NG','NGA','',0,0),(157,'Niue','NU','NIU','',0,0),(158,'Norfolk Island','NF','NFK','',0,0),(159,'Northern Mariana Islands','MP','MNP','',0,0),(160,'Norway','NO','NOR','',0,0),(161,'Oman','OM','OMN','',0,0),(162,'Pakistan','PK','PAK','',0,0),(163,'Palau','PW','PLW','',0,0),(164,'Panama','PA','PAN','',0,0),(165,'Papua New Guinea','PG','PNG','',0,0),(166,'Paraguay','PY','PRY','',0,0),(167,'Peru','PE','PER','',0,0),(168,'Philippines','PH','PHL','',0,0),(169,'Pitcairn','PN','PCN','',0,0),(170,'Poland','PL','POL','',0,0),(171,'Portugal','PT','PRT','',0,0),(172,'Puerto Rico','PR','PRI','',0,0),(173,'Qatar','QA','QAT','',0,0),(174,'Reunion','RE','REU','',0,0),(175,'Romania','RO','ROM','',0,0),(176,'Russian Federation','RU','RUS','',0,0),(177,'Rwanda','RW','RWA','',0,0),(178,'Saint Kitts and Nevis','KN','KNA','',0,0),(179,'Saint Lucia','LC','LCA','',0,0),(180,'Saint Vincent and the Grenadines','VC','VCT','',0,0),(181,'Samoa','WS','WSM','',0,0),(182,'San Marino','SM','SMR','',0,0),(183,'Sao Tome and Principe','ST','STP','',0,0),(184,'Saudi Arabia','SA','SAU','',0,0),(185,'Senegal','SN','SEN','',0,0),(186,'Seychelles','SC','SYC','',0,0),(187,'Sierra Leone','SL','SLE','',0,0),(188,'Singapore','SG','SGP','',0,0),(189,'Slovak Republic','SK','SVK','{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city} {postcode}\r\n{zone}\r\n{country}',0,0),(190,'Slovenia','SI','SVN','',0,0),(191,'Solomon Islands','SB','SLB','',0,0),(192,'Somalia','SO','SOM','',0,0),(193,'South Africa','ZA','ZAF','',0,0),(194,'South Georgia &amp; South Sandwich Islands','GS','SGS','',0,0),(195,'Spain','ES','ESP','',0,0),(196,'Sri Lanka','LK','LKA','',0,0),(197,'St. Helena','SH','SHN','',0,0),(198,'St. Pierre and Miquelon','PM','SPM','',0,0),(199,'Sudan','SD','SDN','',0,0),(200,'Suriname','SR','SUR','',0,0),(201,'Svalbard and Jan Mayen Islands','SJ','SJM','',0,0),(202,'Swaziland','SZ','SWZ','',0,0),(203,'Sweden','SE','SWE','{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}',1,0),(204,'Switzerland','CH','CHE','',0,0),(205,'Syrian Arab Republic','SY','SYR','',0,0),(206,'Taiwan','TW','TWN','',0,0),(207,'Tajikistan','TJ','TJK','',0,0),(208,'Tanzania, United Republic of','TZ','TZA','',0,0),(209,'Thailand','TH','THA','',0,0),(210,'Togo','TG','TGO','',0,0),(211,'Tokelau','TK','TKL','',0,0),(212,'Tonga','TO','TON','',0,0),(213,'Trinidad and Tobago','TT','TTO','',0,0),(214,'Tunisia','TN','TUN','',0,0),(215,'Turkey','TR','TUR','',0,0),(216,'Turkmenistan','TM','TKM','',0,0),(217,'Turks and Caicos Islands','TC','TCA','',0,0),(218,'Tuvalu','TV','TUV','',0,0),(219,'Uganda','UG','UGA','',0,0),(220,'Ukraine','UA','UKR','',0,0),(221,'United Arab Emirates','AE','ARE','',0,0),(222,'United Kingdom','GB','GBR','',1,0),(223,'United States','US','USA','{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}',0,1),(224,'United States Minor Outlying Islands','UM','UMI','',0,0),(225,'Uruguay','UY','URY','',0,0),(226,'Uzbekistan','UZ','UZB','',0,0),(227,'Vanuatu','VU','VUT','',0,0),(228,'Vatican City State (Holy See)','VA','VAT','',0,0),(229,'Venezuela','VE','VEN','',0,0),(230,'Viet Nam','VN','VNM','',0,0),(231,'Virgin Islands (British)','VG','VGB','',0,0),(232,'Virgin Islands (U.S.)','VI','VIR','',0,0),(233,'Wallis and Futuna Islands','WF','WLF','',0,0),(234,'Western Sahara','EH','ESH','',0,0),(235,'Yemen','YE','YEM','',0,0),(237,'Democratic Republic of Congo','CD','COD','',0,0),(238,'Zambia','ZM','ZMB','',0,0),(239,'Zimbabwe','ZW','ZWE','',0,0),(242,'Montenegro','ME','MNE','',0,0),(243,'Serbia','RS','SRB','',0,0),(244,'Aaland Islands','AX','ALA','',0,0),(245,'Bonaire, Sint Eustatius and Saba','BQ','BES','',0,0),(246,'Curacao','CW','CUW','',0,0),(247,'Palestinian Territory, Occupied','PS','PSE','',0,0),(248,'South Sudan','SS','SSD','',0,0),(249,'St. Barthelemy','BL','BLM','',0,0),(250,'St. Martin (French part)','MF','MAF','',0,0),(251,'Canary Islands','IC','ICA','',0,0),(252,'Ascension Island (British)','AC','ASC','',0,0),(253,'Kosovo, Republic of','XK','UNK','',0,0),(254,'Isle of Man','IM','IMN','',0,0),(255,'Tristan da Cunha','TA','SHN','',0,0),(256,'Guernsey','GG','GGY','',0,0),(257,'Jersey','JE','JEY','',0,0);
/*!40000 ALTER TABLE `oc2_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_coupon`
--

DROP TABLE IF EXISTS `oc2_coupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_coupon` (
  `coupon_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `code` varchar(20) NOT NULL,
  `type` char(1) NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  `logged` tinyint(1) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `uses_total` int(11) NOT NULL,
  `uses_customer` varchar(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`coupon_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_coupon`
--

LOCK TABLES `oc2_coupon` WRITE;
/*!40000 ALTER TABLE `oc2_coupon` DISABLE KEYS */;
INSERT INTO `oc2_coupon` (`coupon_id`, `name`, `code`, `type`, `discount`, `logged`, `shipping`, `total`, `date_start`, `date_end`, `uses_total`, `uses_customer`, `status`, `date_added`) VALUES (4,'-10% Discount','2222','P',10.0000,0,0,0.0000,'2014-01-01','2020-01-01',10,'10',0,'2009-01-27 13:55:03'),(5,'Free Shipping','3333','P',0.0000,0,1,100.0000,'2014-01-01','2014-02-01',10,'10',0,'2009-03-14 21:13:53'),(6,'-10.00 Discount','1111','F',10.0000,0,0,10.0000,'2014-01-01','2020-01-01',100000,'10000',0,'2009-03-14 21:15:18');
/*!40000 ALTER TABLE `oc2_coupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_coupon_category`
--

DROP TABLE IF EXISTS `oc2_coupon_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_coupon_category` (
  `coupon_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_id`,`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_coupon_category`
--

LOCK TABLES `oc2_coupon_category` WRITE;
/*!40000 ALTER TABLE `oc2_coupon_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_coupon_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_coupon_history`
--

DROP TABLE IF EXISTS `oc2_coupon_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_coupon_history` (
  `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`coupon_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_coupon_history`
--

LOCK TABLES `oc2_coupon_history` WRITE;
/*!40000 ALTER TABLE `oc2_coupon_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_coupon_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_coupon_product`
--

DROP TABLE IF EXISTS `oc2_coupon_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_coupon_product` (
  `coupon_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_coupon_product`
--

LOCK TABLES `oc2_coupon_product` WRITE;
/*!40000 ALTER TABLE `oc2_coupon_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_coupon_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_currency`
--

DROP TABLE IF EXISTS `oc2_currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_currency` (
  `currency_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` float(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`currency_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_currency`
--

LOCK TABLES `oc2_currency` WRITE;
/*!40000 ALTER TABLE `oc2_currency` DISABLE KEYS */;
INSERT INTO `oc2_currency` (`currency_id`, `title`, `code`, `symbol_left`, `symbol_right`, `decimal_place`, `value`, `status`, `date_modified`) VALUES (1,'Pound Sterling','GBP','£','','2',0.59469998,0,'2017-10-28 10:40:46'),(2,'US Dollar','USD','$','','2',0.78079998,1,'2017-10-28 10:40:46'),(3,'Euro','EUR','','€','2',0.67290002,0,'2017-10-28 10:40:46'),(5,'Canadian Dollar','CAD','$','','2',1.00000000,1,'2018-08-25 17:48:29');
/*!40000 ALTER TABLE `oc2_currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_custom_field`
--

DROP TABLE IF EXISTS `oc2_custom_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_custom_field` (
  `custom_field_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `validation` varchar(255) NOT NULL,
  `location` varchar(7) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_custom_field`
--

LOCK TABLES `oc2_custom_field` WRITE;
/*!40000 ALTER TABLE `oc2_custom_field` DISABLE KEYS */;
INSERT INTO `oc2_custom_field` (`custom_field_id`, `type`, `value`, `validation`, `location`, `status`, `sort_order`) VALUES (1,'text','','','account',1,0);
/*!40000 ALTER TABLE `oc2_custom_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_custom_field_customer_group`
--

DROP TABLE IF EXISTS `oc2_custom_field_customer_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_custom_field_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_custom_field_customer_group`
--

LOCK TABLES `oc2_custom_field_customer_group` WRITE;
/*!40000 ALTER TABLE `oc2_custom_field_customer_group` DISABLE KEYS */;
INSERT INTO `oc2_custom_field_customer_group` (`custom_field_id`, `customer_group_id`, `required`) VALUES (1,4,0),(1,3,0),(1,6,0),(1,8,0),(1,7,0),(1,2,0),(1,5,0);
/*!40000 ALTER TABLE `oc2_custom_field_customer_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_custom_field_description`
--

DROP TABLE IF EXISTS `oc2_custom_field_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_custom_field_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_custom_field_description`
--

LOCK TABLES `oc2_custom_field_description` WRITE;
/*!40000 ALTER TABLE `oc2_custom_field_description` DISABLE KEYS */;
INSERT INTO `oc2_custom_field_description` (`custom_field_id`, `language_id`, `name`) VALUES (1,1,'Business Name');
/*!40000 ALTER TABLE `oc2_custom_field_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_custom_field_value`
--

DROP TABLE IF EXISTS `oc2_custom_field_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_custom_field_value` (
  `custom_field_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_custom_field_value`
--

LOCK TABLES `oc2_custom_field_value` WRITE;
/*!40000 ALTER TABLE `oc2_custom_field_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_custom_field_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_custom_field_value_description`
--

DROP TABLE IF EXISTS `oc2_custom_field_value_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_custom_field_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_custom_field_value_description`
--

LOCK TABLES `oc2_custom_field_value_description` WRITE;
/*!40000 ALTER TABLE `oc2_custom_field_value_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_custom_field_value_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_customer`
--

DROP TABLE IF EXISTS `oc2_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_group_id` int(11) DEFAULT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) DEFAULT NULL,
  `fax` varchar(32) DEFAULT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `cart` text,
  `wishlist` text,
  `newsletter` tinyint(1) DEFAULT '0',
  `address_id` int(11) DEFAULT '0',
  `custom_field` text,
  `ip` varchar(40) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) DEFAULT NULL,
  `safe` tinyint(1) DEFAULT NULL,
  `token` text NOT NULL,
  `code` varchar(40) DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `display_name` varchar(96) DEFAULT NULL,
  `company_name` varchar(96) DEFAULT NULL,
  `print_on_check_name` varchar(96) DEFAULT NULL,
  `middlename` varchar(32) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_customer`
--

LOCK TABLES `oc2_customer` WRITE;
/*!40000 ALTER TABLE `oc2_customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_customer_activity`
--

DROP TABLE IF EXISTS `oc2_customer_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_customer_activity` (
  `customer_activity_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_activity_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_customer_activity`
--

LOCK TABLES `oc2_customer_activity` WRITE;
/*!40000 ALTER TABLE `oc2_customer_activity` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_customer_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_customer_ban_ip`
--

DROP TABLE IF EXISTS `oc2_customer_ban_ip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_customer_ban_ip` (
  `customer_ban_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(40) NOT NULL,
  PRIMARY KEY (`customer_ban_ip_id`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_customer_ban_ip`
--

LOCK TABLES `oc2_customer_ban_ip` WRITE;
/*!40000 ALTER TABLE `oc2_customer_ban_ip` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_customer_ban_ip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_customer_group`
--

DROP TABLE IF EXISTS `oc2_customer_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_customer_group` (
  `customer_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `approval` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_customer_group`
--

LOCK TABLES `oc2_customer_group` WRITE;
/*!40000 ALTER TABLE `oc2_customer_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_customer_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_customer_group_description`
--

DROP TABLE IF EXISTS `oc2_customer_group_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`customer_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_customer_group_description`
--

LOCK TABLES `oc2_customer_group_description` WRITE;
/*!40000 ALTER TABLE `oc2_customer_group_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_customer_group_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_customer_history`
--

DROP TABLE IF EXISTS `oc2_customer_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_customer_history` (
  `customer_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_customer_history`
--

LOCK TABLES `oc2_customer_history` WRITE;
/*!40000 ALTER TABLE `oc2_customer_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_customer_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_customer_ip`
--

DROP TABLE IF EXISTS `oc2_customer_ip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_customer_ip` (
  `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_ip_id`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_customer_ip`
--

LOCK TABLES `oc2_customer_ip` WRITE;
/*!40000 ALTER TABLE `oc2_customer_ip` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_customer_ip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_customer_login`
--

DROP TABLE IF EXISTS `oc2_customer_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_customer_login` (
  `customer_login_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`customer_login_id`),
  KEY `email` (`email`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_customer_login`
--

LOCK TABLES `oc2_customer_login` WRITE;
/*!40000 ALTER TABLE `oc2_customer_login` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_customer_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_customer_online`
--

DROP TABLE IF EXISTS `oc2_customer_online`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_customer_online`
--

LOCK TABLES `oc2_customer_online` WRITE;
/*!40000 ALTER TABLE `oc2_customer_online` DISABLE KEYS */;
INSERT INTO `oc2_customer_online` (`ip`, `customer_id`, `url`, `referer`, `date_added`) VALUES ('46.229.168.152',0,'http://www.phobulousedmonton.com/index.php?amp%3Bproduct_id=25&amp;route=product%2Fproduct','','2019-03-31 18:29:53');
/*!40000 ALTER TABLE `oc2_customer_online` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_customer_reward`
--

DROP TABLE IF EXISTS `oc2_customer_reward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_customer_reward` (
  `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `points` int(8) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_reward_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_customer_reward`
--

LOCK TABLES `oc2_customer_reward` WRITE;
/*!40000 ALTER TABLE `oc2_customer_reward` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_customer_reward` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_customer_search`
--

DROP TABLE IF EXISTS `oc2_customer_search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_customer_search` (
  `customer_search_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sub_category` tinyint(1) NOT NULL,
  `description` tinyint(1) NOT NULL,
  `products` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_search_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_customer_search`
--

LOCK TABLES `oc2_customer_search` WRITE;
/*!40000 ALTER TABLE `oc2_customer_search` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_customer_search` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_customer_transaction`
--

DROP TABLE IF EXISTS `oc2_customer_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_customer_transaction` (
  `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_customer_transaction`
--

LOCK TABLES `oc2_customer_transaction` WRITE;
/*!40000 ALTER TABLE `oc2_customer_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_customer_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_customer_wishlist`
--

DROP TABLE IF EXISTS `oc2_customer_wishlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_customer_wishlist` (
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_id`,`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_customer_wishlist`
--

LOCK TABLES `oc2_customer_wishlist` WRITE;
/*!40000 ALTER TABLE `oc2_customer_wishlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_customer_wishlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_download`
--

DROP TABLE IF EXISTS `oc2_download`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_download` (
  `download_id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(140) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `date_added` datetime NOT NULL,
  `constraint` tinyint(1) NOT NULL DEFAULT '0',
  `total_downloads` int(4) NOT NULL DEFAULT '-1',
  `duration` int(11) NOT NULL DEFAULT '0',
  `is_free` tinyint(1) NOT NULL DEFAULT '0',
  `file_size` int(11) NOT NULL DEFAULT '-1',
  `login` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `downloaded` int(6) NOT NULL DEFAULT '0',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_download`
--

LOCK TABLES `oc2_download` WRITE;
/*!40000 ALTER TABLE `oc2_download` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_download` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_download_description`
--

DROP TABLE IF EXISTS `oc2_download_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`download_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_download_description`
--

LOCK TABLES `oc2_download_description` WRITE;
/*!40000 ALTER TABLE `oc2_download_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_download_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_download_sample`
--

DROP TABLE IF EXISTS `oc2_download_sample`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_download_sample` (
  `download_sample_id` int(11) NOT NULL AUTO_INCREMENT,
  `hash` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `download_id` int(11) NOT NULL,
  `constraint` tinyint(1) NOT NULL DEFAULT '0',
  `remaining` int(3) NOT NULL DEFAULT '0',
  `end_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `store_id` int(11) NOT NULL DEFAULT '0',
  `customer_id` int(11) DEFAULT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `last_accessed` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`download_sample_id`),
  UNIQUE KEY `uq_ds_hash` (`hash`),
  KEY `fk_ds_d` (`download_id`),
  KEY `fk_ds_l` (`language_id`),
  KEY `fk_ds_c` (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_download_sample`
--

LOCK TABLES `oc2_download_sample` WRITE;
/*!40000 ALTER TABLE `oc2_download_sample` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_download_sample` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_download_stats`
--

DROP TABLE IF EXISTS `oc2_download_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_download_stats` (
  `download_date` date NOT NULL DEFAULT '0000-00-00',
  `download_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `download_count` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`download_date`,`download_id`,`customer_id`),
  KEY `fk_ds_download` (`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_download_stats`
--

LOCK TABLES `oc2_download_stats` WRITE;
/*!40000 ALTER TABLE `oc2_download_stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_download_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_download_tag`
--

DROP TABLE IF EXISTS `oc2_download_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_download_tag` (
  `download_tag_id` int(11) NOT NULL AUTO_INCREMENT,
  `administrative` tinyint(1) NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`download_tag_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_download_tag`
--

LOCK TABLES `oc2_download_tag` WRITE;
/*!40000 ALTER TABLE `oc2_download_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_download_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_download_tag_description`
--

DROP TABLE IF EXISTS `oc2_download_tag_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_download_tag_description` (
  `download_tag_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`download_tag_id`,`language_id`),
  KEY `fk_dtd_lang` (`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_download_tag_description`
--

LOCK TABLES `oc2_download_tag_description` WRITE;
/*!40000 ALTER TABLE `oc2_download_tag_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_download_tag_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_download_to_customer_group`
--

DROP TABLE IF EXISTS `oc2_download_to_customer_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_download_to_customer_group` (
  `download_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`download_id`,`customer_group_id`),
  KEY `fk_d2cg_cg` (`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_download_to_customer_group`
--

LOCK TABLES `oc2_download_to_customer_group` WRITE;
/*!40000 ALTER TABLE `oc2_download_to_customer_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_download_to_customer_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_download_to_tag`
--

DROP TABLE IF EXISTS `oc2_download_to_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_download_to_tag` (
  `download_id` int(11) NOT NULL,
  `download_tag_id` int(11) NOT NULL,
  PRIMARY KEY (`download_id`,`download_tag_id`),
  KEY `fk_d2t_dl_tag` (`download_tag_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_download_to_tag`
--

LOCK TABLES `oc2_download_to_tag` WRITE;
/*!40000 ALTER TABLE `oc2_download_to_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_download_to_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_ebay_category`
--

DROP TABLE IF EXISTS `oc2_ebay_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_ebay_category` (
  `ebay_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `CategoryID` int(11) NOT NULL,
  `CategoryParentID` int(11) NOT NULL,
  `CategoryLevel` smallint(6) NOT NULL,
  `CategoryName` char(100) NOT NULL,
  `BestOfferEnabled` tinyint(1) NOT NULL,
  `AutoPayEnabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`ebay_category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_ebay_category`
--

LOCK TABLES `oc2_ebay_category` WRITE;
/*!40000 ALTER TABLE `oc2_ebay_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_ebay_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_ebay_category_history`
--

DROP TABLE IF EXISTS `oc2_ebay_category_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_ebay_category_history` (
  `ebay_category_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `CategoryID` int(11) NOT NULL,
  `breadcrumb` varchar(255) NOT NULL,
  `used` int(6) NOT NULL,
  PRIMARY KEY (`ebay_category_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_ebay_category_history`
--

LOCK TABLES `oc2_ebay_category_history` WRITE;
/*!40000 ALTER TABLE `oc2_ebay_category_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_ebay_category_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_ebay_image_import`
--

DROP TABLE IF EXISTS `oc2_ebay_image_import`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_ebay_image_import` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image_original` text NOT NULL,
  `image_new` text NOT NULL,
  `name` text NOT NULL,
  `product_id` int(11) NOT NULL,
  `imgcount` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_ebay_image_import`
--

LOCK TABLES `oc2_ebay_image_import` WRITE;
/*!40000 ALTER TABLE `oc2_ebay_image_import` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_ebay_image_import` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_ebay_listing`
--

DROP TABLE IF EXISTS `oc2_ebay_listing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_ebay_listing` (
  `ebay_listing_id` int(11) NOT NULL AUTO_INCREMENT,
  `ebay_item_id` char(100) NOT NULL,
  `product_id` int(11) NOT NULL,
  `variant` int(11) NOT NULL,
  `status` smallint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ebay_listing_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_ebay_listing`
--

LOCK TABLES `oc2_ebay_listing` WRITE;
/*!40000 ALTER TABLE `oc2_ebay_listing` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_ebay_listing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_ebay_listing_pending`
--

DROP TABLE IF EXISTS `oc2_ebay_listing_pending`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_ebay_listing_pending` (
  `ebay_listing_pending_id` int(11) NOT NULL AUTO_INCREMENT,
  `ebay_item_id` char(25) NOT NULL,
  `product_id` int(11) NOT NULL,
  `key` char(50) NOT NULL,
  `variant` int(11) NOT NULL,
  PRIMARY KEY (`ebay_listing_pending_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_ebay_listing_pending`
--

LOCK TABLES `oc2_ebay_listing_pending` WRITE;
/*!40000 ALTER TABLE `oc2_ebay_listing_pending` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_ebay_listing_pending` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_ebay_order`
--

DROP TABLE IF EXISTS `oc2_ebay_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_ebay_order` (
  `ebay_order_id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_ebay_order_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `smp_id` int(11) NOT NULL,
  `tracking_no` varchar(100) NOT NULL,
  `carrier_id` varchar(100) NOT NULL,
  PRIMARY KEY (`ebay_order_id`),
  KEY `order_id` (`order_id`),
  KEY `smp_id` (`smp_id`),
  KEY `parent_ebay_order_id` (`parent_ebay_order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_ebay_order`
--

LOCK TABLES `oc2_ebay_order` WRITE;
/*!40000 ALTER TABLE `oc2_ebay_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_ebay_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_ebay_order_lock`
--

DROP TABLE IF EXISTS `oc2_ebay_order_lock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_ebay_order_lock` (
  `smp_id` int(11) NOT NULL,
  PRIMARY KEY (`smp_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_ebay_order_lock`
--

LOCK TABLES `oc2_ebay_order_lock` WRITE;
/*!40000 ALTER TABLE `oc2_ebay_order_lock` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_ebay_order_lock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_ebay_payment_method`
--

DROP TABLE IF EXISTS `oc2_ebay_payment_method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_ebay_payment_method` (
  `ebay_payment_method_id` int(11) NOT NULL AUTO_INCREMENT,
  `ebay_name` char(50) NOT NULL,
  `local_name` char(50) NOT NULL,
  PRIMARY KEY (`ebay_payment_method_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_ebay_payment_method`
--

LOCK TABLES `oc2_ebay_payment_method` WRITE;
/*!40000 ALTER TABLE `oc2_ebay_payment_method` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_ebay_payment_method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_ebay_profile`
--

DROP TABLE IF EXISTS `oc2_ebay_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_ebay_profile` (
  `ebay_profile_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `type` int(11) NOT NULL,
  `default` tinyint(1) NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`ebay_profile_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_ebay_profile`
--

LOCK TABLES `oc2_ebay_profile` WRITE;
/*!40000 ALTER TABLE `oc2_ebay_profile` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_ebay_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_ebay_setting_option`
--

DROP TABLE IF EXISTS `oc2_ebay_setting_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_ebay_setting_option` (
  `ebay_setting_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(100) NOT NULL,
  `last_updated` datetime NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`ebay_setting_option_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_ebay_setting_option`
--

LOCK TABLES `oc2_ebay_setting_option` WRITE;
/*!40000 ALTER TABLE `oc2_ebay_setting_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_ebay_setting_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_ebay_shipping`
--

DROP TABLE IF EXISTS `oc2_ebay_shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_ebay_shipping` (
  `ebay_shipping_id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(100) NOT NULL,
  `InternationalService` tinyint(4) NOT NULL,
  `ShippingService` varchar(100) NOT NULL,
  `ShippingServiceID` int(11) NOT NULL,
  `ServiceType` varchar(100) NOT NULL,
  `ValidForSellingFlow` tinyint(4) NOT NULL,
  `ShippingCategory` varchar(100) NOT NULL,
  `ShippingTimeMin` int(11) NOT NULL,
  `ShippingTimeMax` int(11) NOT NULL,
  PRIMARY KEY (`ebay_shipping_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_ebay_shipping`
--

LOCK TABLES `oc2_ebay_shipping` WRITE;
/*!40000 ALTER TABLE `oc2_ebay_shipping` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_ebay_shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_ebay_shipping_location`
--

DROP TABLE IF EXISTS `oc2_ebay_shipping_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_ebay_shipping_location` (
  `ebay_shipping_id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(100) NOT NULL,
  `detail_version` varchar(100) NOT NULL,
  `shipping_location` varchar(100) NOT NULL,
  `update_time` varchar(100) NOT NULL,
  PRIMARY KEY (`ebay_shipping_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_ebay_shipping_location`
--

LOCK TABLES `oc2_ebay_shipping_location` WRITE;
/*!40000 ALTER TABLE `oc2_ebay_shipping_location` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_ebay_shipping_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_ebay_shipping_location_exclude`
--

DROP TABLE IF EXISTS `oc2_ebay_shipping_location_exclude`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_ebay_shipping_location_exclude` (
  `ebay_shipping_exclude_id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `region` varchar(100) NOT NULL,
  PRIMARY KEY (`ebay_shipping_exclude_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_ebay_shipping_location_exclude`
--

LOCK TABLES `oc2_ebay_shipping_location_exclude` WRITE;
/*!40000 ALTER TABLE `oc2_ebay_shipping_location_exclude` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_ebay_shipping_location_exclude` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_ebay_stock_reserve`
--

DROP TABLE IF EXISTS `oc2_ebay_stock_reserve`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_ebay_stock_reserve` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `variant_id` varchar(100) NOT NULL,
  `item_id` varchar(100) NOT NULL,
  `reserve` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_ebay_stock_reserve`
--

LOCK TABLES `oc2_ebay_stock_reserve` WRITE;
/*!40000 ALTER TABLE `oc2_ebay_stock_reserve` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_ebay_stock_reserve` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_ebay_template`
--

DROP TABLE IF EXISTS `oc2_ebay_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_ebay_template` (
  `template_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `html` mediumtext NOT NULL,
  PRIMARY KEY (`template_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_ebay_template`
--

LOCK TABLES `oc2_ebay_template` WRITE;
/*!40000 ALTER TABLE `oc2_ebay_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_ebay_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_ebay_transaction`
--

DROP TABLE IF EXISTS `oc2_ebay_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_ebay_transaction` (
  `ebay_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `sku` varchar(100) NOT NULL,
  `txn_id` varchar(100) NOT NULL,
  `item_id` varchar(100) NOT NULL,
  `containing_order_id` varchar(100) NOT NULL,
  `order_line_id` varchar(100) NOT NULL,
  `qty` int(11) NOT NULL,
  `smp_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`ebay_transaction_id`),
  KEY `product_id` (`product_id`),
  KEY `order_id` (`order_id`),
  KEY `smp_id` (`smp_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_ebay_transaction`
--

LOCK TABLES `oc2_ebay_transaction` WRITE;
/*!40000 ALTER TABLE `oc2_ebay_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_ebay_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_etsy_listing`
--

DROP TABLE IF EXISTS `oc2_etsy_listing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_etsy_listing` (
  `etsy_listing_id` int(11) NOT NULL AUTO_INCREMENT,
  `etsy_item_id` char(100) NOT NULL,
  `product_id` int(11) NOT NULL,
  `status` smallint(3) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL,
  PRIMARY KEY (`etsy_listing_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_etsy_listing`
--

LOCK TABLES `oc2_etsy_listing` WRITE;
/*!40000 ALTER TABLE `oc2_etsy_listing` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_etsy_listing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_etsy_order`
--

DROP TABLE IF EXISTS `oc2_etsy_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_etsy_order` (
  `etsy_order_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `receipt_id` int(11) NOT NULL,
  `paid` int(1) NOT NULL,
  `shipped` int(1) NOT NULL,
  PRIMARY KEY (`etsy_order_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_etsy_order`
--

LOCK TABLES `oc2_etsy_order` WRITE;
/*!40000 ALTER TABLE `oc2_etsy_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_etsy_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_etsy_order_lock`
--

DROP TABLE IF EXISTS `oc2_etsy_order_lock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_etsy_order_lock` (
  `order_id` int(11) NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_etsy_order_lock`
--

LOCK TABLES `oc2_etsy_order_lock` WRITE;
/*!40000 ALTER TABLE `oc2_etsy_order_lock` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_etsy_order_lock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_etsy_setting_option`
--

DROP TABLE IF EXISTS `oc2_etsy_setting_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_etsy_setting_option` (
  `etsy_setting_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(100) NOT NULL,
  `last_updated` datetime NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`etsy_setting_option_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_etsy_setting_option`
--

LOCK TABLES `oc2_etsy_setting_option` WRITE;
/*!40000 ALTER TABLE `oc2_etsy_setting_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_etsy_setting_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_event`
--

DROP TABLE IF EXISTS `oc2_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_event` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(32) NOT NULL,
  `trigger` text NOT NULL,
  `action` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=MyISAM AUTO_INCREMENT=328 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_event`
--

LOCK TABLES `oc2_event` WRITE;
/*!40000 ALTER TABLE `oc2_event` DISABLE KEYS */;
INSERT INTO `oc2_event` (`event_id`, `code`, `trigger`, `action`, `status`, `date_added`) VALUES (309,'code','trigger','action',0,'0000-00-00 00:00:00'),(310,'openbay','post.admin.product.delete','extension/openbay/eventDeleteProduct',0,'0000-00-00 00:00:00'),(311,'openbay','post.admin.product.edit','extension/openbay/eventEditProduct',0,'0000-00-00 00:00:00'),(312,'openbaypro_amazon','post.order.history.add','openbay/amazon/eventAddOrderHistory',0,'0000-00-00 00:00:00'),(313,'openbaypro_amazonus','post.order.history.add','openbay/amazonus/eventAddOrderHistory',0,'0000-00-00 00:00:00'),(314,'openbaypro_ebay','post.order.history.add','openbay/ebay/eventAddOrderHistory',0,'0000-00-00 00:00:00'),(315,'openbaypro_ebay','post.order.history.add','openbay/ebay/eventAddOrderHistory',0,'0000-00-00 00:00:00'),(316,'openbaypro_etsy','post.order.history.add','openbay/etsy/eventAddOrderHistory',0,'0000-00-00 00:00:00'),(317,'pd.order.add','post.order.add','checkout/download/order_add_hook',0,'0000-00-00 00:00:00'),(318,'pd.order.delete','pre.order.delete','checkout/download/order_delete_hook',0,'0000-00-00 00:00:00'),(319,'pd.order.edit','post.order.edit','checkout/download/order_edit_hook',0,'0000-00-00 00:00:00'),(320,'qc.event.after_customer_add','post.customer.add','qc/customer/eventAfterAddCustomer',1,'2017-08-09 23:59:59'),(321,'qc.event.after_customer_edit','post.customer.edit','qc/customer/eventAfterEditCustomer',1,'2017-08-10 00:00:00'),(322,'qc.event.after_product_add','post.admin.product.add','qc/product/eventAfterAddProduct',1,'2017-08-10 00:00:00'),(323,'qc.event.after_product_edit','post.admin.product.edit','qc/product/eventAfterEditProduct',1,'2017-08-10 00:00:00'),(324,'qc.event.before_customer_add','pre.customer_add','qc/customer/eventBeforeAddCustomer',1,'2017-08-10 00:00:00'),(325,'qc.event.before_customer_edit','pre.customer.edit','qc/customer/eventBeforeEditCustomer',1,'2017-08-10 00:00:00'),(326,'qc.event.before_product_add','pre.admin.product.add','qc/product/eventBeforeAddProduct',1,'2017-08-10 00:00:00'),(327,'qc.event.before_product_edit','pre.admin.product.edit','qc/product/eventBeforeEditProduct',1,'2017-08-10 00:00:00');
/*!40000 ALTER TABLE `oc2_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_extension`
--

DROP TABLE IF EXISTS `oc2_extension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_extension` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  PRIMARY KEY (`extension_id`)
) ENGINE=MyISAM AUTO_INCREMENT=520 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_extension`
--

LOCK TABLES `oc2_extension` WRITE;
/*!40000 ALTER TABLE `oc2_extension` DISABLE KEYS */;
INSERT INTO `oc2_extension` (`extension_id`, `type`, `code`) VALUES (22,'total','shipping'),(57,'total','sub_total'),(58,'total','tax'),(59,'total','total'),(390,'total','credit'),(476,'shipping','pickup'),(349,'total','handling'),(350,'total','low_order_fee'),(389,'total','coupon'),(393,'total','reward'),(398,'total','voucher'),(407,'payment','free_checkout'),(456,'fraud','fraudlabspro'),(457,'fraud','maxmind'),(464,'openbay','ebay'),(461,'openbay','etsy'),(462,'openbay','amazon'),(463,'openbay','amazonus'),(465,'openbay','ebay'),(467,'payment','globalpay'),(469,'payment','bank_transfer'),(470,'payment','cheque'),(479,'shipping','free'),(484,'feed','google_sitemap'),(486,'shipping','flat'),(490,'shipping','weight'),(491,'feed','openbaypro'),(498,'theme','theme_default'),(499,'dashboard','activity'),(500,'dashboard','sale'),(501,'dashboard','recent'),(502,'dashboard','order'),(503,'dashboard','online'),(504,'dashboard','map'),(505,'dashboard','customer'),(506,'dashboard','chart');
/*!40000 ALTER TABLE `oc2_extension` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_filter`
--

DROP TABLE IF EXISTS `oc2_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_filter` (
  `filter_id` int(11) NOT NULL AUTO_INCREMENT,
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`filter_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_filter`
--

LOCK TABLES `oc2_filter` WRITE;
/*!40000 ALTER TABLE `oc2_filter` DISABLE KEYS */;
INSERT INTO `oc2_filter` (`filter_id`, `filter_group_id`, `sort_order`) VALUES (1,1,0);
/*!40000 ALTER TABLE `oc2_filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_filter_description`
--

DROP TABLE IF EXISTS `oc2_filter_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_filter_description` (
  `filter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_filter_description`
--

LOCK TABLES `oc2_filter_description` WRITE;
/*!40000 ALTER TABLE `oc2_filter_description` DISABLE KEYS */;
INSERT INTO `oc2_filter_description` (`filter_id`, `language_id`, `filter_group_id`, `name`) VALUES (1,1,1,'SKU');
/*!40000 ALTER TABLE `oc2_filter_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_filter_group`
--

DROP TABLE IF EXISTS `oc2_filter_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_filter_group` (
  `filter_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`filter_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_filter_group`
--

LOCK TABLES `oc2_filter_group` WRITE;
/*!40000 ALTER TABLE `oc2_filter_group` DISABLE KEYS */;
INSERT INTO `oc2_filter_group` (`filter_group_id`, `sort_order`) VALUES (1,0);
/*!40000 ALTER TABLE `oc2_filter_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_filter_group_description`
--

DROP TABLE IF EXISTS `oc2_filter_group_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_filter_group_description` (
  `filter_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_filter_group_description`
--

LOCK TABLES `oc2_filter_group_description` WRITE;
/*!40000 ALTER TABLE `oc2_filter_group_description` DISABLE KEYS */;
INSERT INTO `oc2_filter_group_description` (`filter_group_id`, `language_id`, `name`) VALUES (1,1,'Products');
/*!40000 ALTER TABLE `oc2_filter_group_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_filter_image`
--

DROP TABLE IF EXISTS `oc2_filter_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_filter_image` (
  `filter_group_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`filter_group_id`,`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_filter_image`
--

LOCK TABLES `oc2_filter_image` WRITE;
/*!40000 ALTER TABLE `oc2_filter_image` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_filter_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_firstdata_card`
--

DROP TABLE IF EXISTS `oc2_firstdata_card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_firstdata_card` (
  `firstdata_card_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `digits` char(25) NOT NULL,
  `expire_month` int(2) NOT NULL,
  `expire_year` int(2) NOT NULL,
  `token` char(64) NOT NULL,
  PRIMARY KEY (`firstdata_card_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_firstdata_card`
--

LOCK TABLES `oc2_firstdata_card` WRITE;
/*!40000 ALTER TABLE `oc2_firstdata_card` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_firstdata_card` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_firstdata_order`
--

DROP TABLE IF EXISTS `oc2_firstdata_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_firstdata_order` (
  `firstdata_order_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_ref` char(50) NOT NULL,
  `order_ref_previous` char(50) NOT NULL,
  `pasref` varchar(50) NOT NULL,
  `pasref_previous` varchar(50) NOT NULL,
  `tdate` datetime NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `capture_status` int(1) DEFAULT NULL,
  `void_status` int(1) DEFAULT NULL,
  `currency_code` char(3) NOT NULL,
  `authcode` varchar(30) NOT NULL,
  `account` varchar(30) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  PRIMARY KEY (`firstdata_order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_firstdata_order`
--

LOCK TABLES `oc2_firstdata_order` WRITE;
/*!40000 ALTER TABLE `oc2_firstdata_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_firstdata_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_firstdata_order_transaction`
--

DROP TABLE IF EXISTS `oc2_firstdata_order_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_firstdata_order_transaction` (
  `firstdata_order_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstdata_order_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `type` enum('auth','payment','void') DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  PRIMARY KEY (`firstdata_order_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_firstdata_order_transaction`
--

LOCK TABLES `oc2_firstdata_order_transaction` WRITE;
/*!40000 ALTER TABLE `oc2_firstdata_order_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_firstdata_order_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_firstdata_remote_card`
--

DROP TABLE IF EXISTS `oc2_firstdata_remote_card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_firstdata_remote_card` (
  `firstdata_remote_card_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `digits` char(4) NOT NULL,
  `expire_month` int(2) NOT NULL,
  `expire_year` int(2) NOT NULL,
  `card_type` char(15) NOT NULL,
  `token` char(64) NOT NULL,
  PRIMARY KEY (`firstdata_remote_card_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_firstdata_remote_card`
--

LOCK TABLES `oc2_firstdata_remote_card` WRITE;
/*!40000 ALTER TABLE `oc2_firstdata_remote_card` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_firstdata_remote_card` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_firstdata_remote_order`
--

DROP TABLE IF EXISTS `oc2_firstdata_remote_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_firstdata_remote_order` (
  `firstdata_remote_order_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_ref` char(50) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `tdate` varchar(30) NOT NULL,
  `capture_status` int(1) DEFAULT NULL,
  `void_status` int(1) DEFAULT NULL,
  `refund_status` int(1) DEFAULT NULL,
  `currency_code` char(3) NOT NULL,
  `authcode` varchar(30) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  PRIMARY KEY (`firstdata_remote_order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_firstdata_remote_order`
--

LOCK TABLES `oc2_firstdata_remote_order` WRITE;
/*!40000 ALTER TABLE `oc2_firstdata_remote_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_firstdata_remote_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_firstdata_remote_order_transaction`
--

DROP TABLE IF EXISTS `oc2_firstdata_remote_order_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_firstdata_remote_order_transaction` (
  `firstdata_remote_order_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstdata_remote_order_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `type` enum('auth','payment','refund','void') DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  PRIMARY KEY (`firstdata_remote_order_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_firstdata_remote_order_transaction`
--

LOCK TABLES `oc2_firstdata_remote_order_transaction` WRITE;
/*!40000 ALTER TABLE `oc2_firstdata_remote_order_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_firstdata_remote_order_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_form_builder_response`
--

DROP TABLE IF EXISTS `oc2_form_builder_response`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_form_builder_response` (
  `form_builder_response_id` int(11) NOT NULL AUTO_INCREMENT,
  `module_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(40) COLLATE utf8_bin NOT NULL,
  `response` mediumtext COLLATE utf8_bin NOT NULL,
  `readable_response` mediumtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`form_builder_response_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_form_builder_response`
--

LOCK TABLES `oc2_form_builder_response` WRITE;
/*!40000 ALTER TABLE `oc2_form_builder_response` DISABLE KEYS */;
INSERT INTO `oc2_form_builder_response` (`form_builder_response_id`, `module_id`, `date_added`, `customer_id`, `ip`, `response`, `readable_response`) VALUES (1,138,'2017-07-26 17:34:27',0,'206.75.211.193','a:5:{s:4:\"name\";s:5:\"Lucas\";s:7:\"company\";s:9:\"Firebrand\";s:5:\"email\";s:22:\"lucaslopatka@gmail.com\";s:5:\"phone\";s:10:\"5877834955\";s:7:\"message\";s:27:\"Testing ACE contact form...\";}','Your name: Lucas\nCompany: Firebrand\nE-mail: lucaslopatka@gmail.com\nPhone Number: 5877834955\nHow can we help you?: Testing ACE contact form...\n'),(2,138,'2017-07-26 17:34:40',0,'206.75.211.193','a:5:{s:4:\"name\";s:5:\"Lucas\";s:7:\"company\";s:9:\"Firebrand\";s:5:\"email\";s:22:\"lucaslopatka@gmail.com\";s:5:\"phone\";s:10:\"5877834955\";s:7:\"message\";s:27:\"Testing ACE contact form...\";}','Your name: Lucas\nCompany: Firebrand\nE-mail: lucaslopatka@gmail.com\nPhone Number: 5877834955\nHow can we help you?: Testing ACE contact form...\n'),(3,138,'2017-07-26 17:37:11',0,'206.75.211.193','a:5:{s:4:\"name\";s:5:\"Lucas\";s:7:\"company\";s:9:\"Firebrand\";s:5:\"email\";s:22:\"lucaslopatka@gmail.com\";s:5:\"phone\";s:10:\"5877834955\";s:7:\"message\";s:16:\"Testing again...\";}','Your name: Lucas\nCompany: Firebrand\nE-mail: lucaslopatka@gmail.com\nPhone Number: 5877834955\nHow can we help you?: Testing again...\n'),(4,138,'2017-07-26 17:38:28',0,'206.75.211.193','a:5:{s:4:\"name\";s:5:\"Lucas\";s:7:\"company\";s:0:\"\";s:5:\"email\";s:22:\"lucaslopatka@gmail.com\";s:5:\"phone\";s:10:\"5877834955\";s:7:\"message\";s:22:\"Testing testing 123...\";}','Your name: Lucas\nCompany: \nE-mail: lucaslopatka@gmail.com\nPhone Number: 5877834955\nHow can we help you?: Testing testing 123...\n'),(5,138,'2017-07-27 07:33:46',0,'68.149.74.238','a:5:{s:4:\"name\";s:4:\"Joe \";s:7:\"company\";s:2:\"Ct\";s:5:\"email\";s:17:\"joe@caffetech.com\";s:5:\"phone\";s:0:\"\";s:7:\"message\";s:87:\"What\'s happening with the site.? When will this be done when can we start utilizing it?\";}','Your name: Joe \nCompany: Ct\nE-mail: joe@caffetech.com\nPhone Number: \nHow can we help you?: What\'s happening with the site.? When will this be done when can we start utilizing it?\n'),(6,138,'2017-07-27 07:34:17',0,'68.149.74.238','a:5:{s:4:\"name\";s:2:\"Gh\";s:7:\"company\";s:2:\"Ih\";s:5:\"email\";s:17:\"joe@caffetech.com\";s:5:\"phone\";s:0:\"\";s:7:\"message\";s:5:\"Test \";}','Your name: Gh\nCompany: Ih\nE-mail: joe@caffetech.com\nPhone Number: \nHow can we help you?: Test \n'),(7,138,'2017-08-07 00:47:03',0,'76.90.37.243','a:5:{s:4:\"name\";s:16:\"Geoffrey Pfeifer\";s:7:\"company\";s:0:\"\";s:5:\"email\";s:20:\"drgpfeifer@yahoo.com\";s:5:\"phone\";s:14:\"(310) 487-4654\";s:7:\"message\";s:132:\"I would like to order a 53 mm MACAP tamper only.  I have the tamper unit, but need a 53mm portafilter sized tamper for the device.  \";}','Your name: Geoffrey Pfeifer\nCompany: \nE-mail: drgpfeifer@yahoo.com\nPhone Number: (310) 487-4654\nHow can we help you?: I would like to order a 53 mm MACAP tamper only.  I have the tamper unit, but need a 53mm portafilter sized tamper for the device.  \n'),(8,138,'2017-08-08 14:20:59',0,'68.151.170.175','a:5:{s:4:\"name\";s:10:\"Kathy Mene\";s:7:\"company\";s:0:\"\";s:5:\"email\";s:23:\"kathylagare@hotmail.com\";s:5:\"phone\";s:12:\"780 680-7413\";s:7:\"message\";s:427:\"Joe, I just posted some photos of your beautiful space on Facebook and Instagram. Just thought I\'d let you know that the Leva address comes up when you try to tag Ace Coffee Roasters location on Instagram. Best wishes on your new venture!\r\n                  \r\nhttps://www.facebook.com/kathy.mene/media_set?set=a.10155358966065250.1073741889.692745249&amp;type=3&amp;pnref=story        \r\n\r\nhttps://www.instagram.com/kathylagare/\";}','Your name: Kathy Mene\nCompany: \nE-mail: kathylagare@hotmail.com\nPhone Number: 780 680-7413\nHow can we help you?: Joe, I just posted some photos of your beautiful space on Facebook and Instagram. Just thought I\'d let you know that the Leva address comes up when you try to tag Ace Coffee Roasters location on Instagram. Best wishes on your new venture!\r\n                  \r\nhttps://www.facebook.com/kathy.mene/media_set?set=a.10155358966065250.1073741889.692745249&amp;type=3&amp;pnref=story        \r\n\r\nhttps://www.instagram.com/kathylagare/\n'),(9,138,'2017-08-08 16:10:11',0,'174.3.180.226','a:5:{s:4:\"name\";s:4:\"C.J.\";s:7:\"company\";s:12:\"Next Act Pub\";s:5:\"email\";s:12:\"cj@theact.ca\";s:5:\"phone\";s:10:\"7808183561\";s:7:\"message\";s:593:\"Hey Kate! \r\n\r\nI\'m emailing you this way so we can start a dialogue around renting out Ace for our Next Act and MEAT Summer Staff appreciation party. I\'m also hoping that we can coordinate to have Leva cater the event in some way. I\'m curious what options we would have around food and drinks, as well as what the cost for this sort of thing would be. My rough estimate is that there would be ~150 guests in attendance. \r\n\r\nAlso, I don\'t have a cellphone right now, but should be back on the grid as of Wednesday evening. Your best chance of getting a hold of me is via email.\r\n\r\nThanks!\r\n\r\n-C.\";}','Your name: C.J.\nCompany: Next Act Pub\nE-mail: cj@theact.ca\nPhone Number: 7808183561\nHow can we help you?: Hey Kate! \r\n\r\nI\'m emailing you this way so we can start a dialogue around renting out Ace for our Next Act and MEAT Summer Staff appreciation party. I\'m also hoping that we can coordinate to have Leva cater the event in some way. I\'m curious what options we would have around food and drinks, as well as what the cost for this sort of thing would be. My rough estimate is that there would be ~150 guests in attendance. \r\n\r\nAlso, I don\'t have a cellphone right now, but should be back on the grid as of Wednesday evening. Your best chance of getting a hold of me is via email.\r\n\r\nThanks!\r\n\r\n-C.\n');
/*!40000 ALTER TABLE `oc2_form_builder_response` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_fraudlabspro`
--

DROP TABLE IF EXISTS `oc2_fraudlabspro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_fraudlabspro` (
  `order_id` varchar(11) NOT NULL,
  `is_country_match` char(2) NOT NULL,
  `is_high_risk_country` char(2) NOT NULL,
  `distance_in_km` varchar(10) NOT NULL,
  `distance_in_mile` varchar(10) NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `ip_country` varchar(2) NOT NULL,
  `ip_continent` varchar(20) NOT NULL,
  `ip_region` varchar(21) NOT NULL,
  `ip_city` varchar(21) NOT NULL,
  `ip_latitude` varchar(21) NOT NULL,
  `ip_longitude` varchar(21) NOT NULL,
  `ip_timezone` varchar(10) NOT NULL,
  `ip_elevation` varchar(10) NOT NULL,
  `ip_domain` varchar(50) NOT NULL,
  `ip_mobile_mnc` varchar(100) NOT NULL,
  `ip_mobile_mcc` varchar(100) NOT NULL,
  `ip_mobile_brand` varchar(100) NOT NULL,
  `ip_netspeed` varchar(10) NOT NULL,
  `ip_isp_name` varchar(50) NOT NULL,
  `ip_usage_type` varchar(30) NOT NULL,
  `is_free_email` char(2) NOT NULL,
  `is_new_domain_name` char(2) NOT NULL,
  `is_proxy_ip_address` char(2) NOT NULL,
  `is_bin_found` char(2) NOT NULL,
  `is_bin_country_match` char(2) NOT NULL,
  `is_bin_name_match` char(2) NOT NULL,
  `is_bin_phone_match` char(2) NOT NULL,
  `is_bin_prepaid` char(2) NOT NULL,
  `is_address_ship_forward` char(2) NOT NULL,
  `is_bill_ship_city_match` char(2) NOT NULL,
  `is_bill_ship_state_match` char(2) NOT NULL,
  `is_bill_ship_country_match` char(2) NOT NULL,
  `is_bill_ship_postal_match` char(2) NOT NULL,
  `is_ip_blacklist` char(2) NOT NULL,
  `is_email_blacklist` char(2) NOT NULL,
  `is_credit_card_blacklist` char(2) NOT NULL,
  `is_device_blacklist` char(2) NOT NULL,
  `is_user_blacklist` char(2) NOT NULL,
  `fraudlabspro_score` char(3) NOT NULL,
  `fraudlabspro_distribution` char(3) NOT NULL,
  `fraudlabspro_status` char(10) NOT NULL,
  `fraudlabspro_id` char(15) NOT NULL,
  `fraudlabspro_error` char(3) NOT NULL,
  `fraudlabspro_message` varchar(50) NOT NULL,
  `fraudlabspro_credits` varchar(10) NOT NULL,
  `api_key` char(32) NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_fraudlabspro`
--

LOCK TABLES `oc2_fraudlabspro` WRITE;
/*!40000 ALTER TABLE `oc2_fraudlabspro` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_fraudlabspro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_geo_zone`
--

DROP TABLE IF EXISTS `oc2_geo_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_geo_zone` (
  `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_modified` datetime NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`geo_zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_geo_zone`
--

LOCK TABLES `oc2_geo_zone` WRITE;
/*!40000 ALTER TABLE `oc2_geo_zone` DISABLE KEYS */;
INSERT INTO `oc2_geo_zone` (`geo_zone_id`, `name`, `description`, `date_modified`, `date_added`) VALUES (3,'Sales Tax - UK VAT Zone','UK VAT','2016-03-03 15:49:00','2009-01-06 23:26:25'),(4,'Shipping - Canada','Canada Shipping Zones','2016-05-02 16:32:29','2009-06-23 01:14:53'),(5,'Sales Tax - GST','GST','2016-03-03 15:47:10','2015-10-05 18:37:38'),(6,'Sales Tax - HST-BC','HST-BC','2016-03-03 15:47:23','2015-10-05 18:37:40'),(7,'Sales Tax - PST-MB','PST-MB','2016-03-03 15:47:48','2015-10-05 18:37:43'),(8,'Sales Tax - HST-ON','HST-ON','2016-03-03 15:47:55','2015-10-05 18:37:45'),(9,'Sales Tax - PST-PEI','PST-PEI','2016-03-03 15:47:40','2015-10-05 18:37:47'),(10,'Sales Tax - HST-NB','HST-NB','2016-03-03 15:47:33','2015-10-05 18:37:49'),(11,'Sales Tax - HST-NS','HST-NS','2016-03-03 15:47:59','2015-10-05 18:37:51'),(12,'Sales Tax - TVQ','TVQ','2016-03-03 15:48:06','2015-10-05 18:37:53'),(13,'Sales Tax - PST-SK','PST-SK','2016-03-03 15:47:18','2015-10-05 18:37:55'),(24,'Shipping - Canada/USA','Canada &amp; US Shipping Zones','0000-00-00 00:00:00','2016-03-03 15:46:47'),(23,'Shipping - USA','USA (Continental) Shipping Zones','2016-03-03 15:40:49','2016-03-03 15:28:13'),(25,'Shipping - Free Commercial','Free Commercial Shipping, Local','2016-05-02 16:32:22','2016-05-02 16:28:26');
/*!40000 ALTER TABLE `oc2_geo_zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_globalpay_order`
--

DROP TABLE IF EXISTS `oc2_globalpay_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_globalpay_order` (
  `globalpay_order_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_ref` char(50) NOT NULL,
  `order_ref_previous` char(50) NOT NULL,
  `pasref` varchar(50) NOT NULL,
  `pasref_previous` varchar(50) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `capture_status` int(1) DEFAULT NULL,
  `void_status` int(1) DEFAULT NULL,
  `settle_type` int(1) DEFAULT NULL,
  `rebate_status` int(1) DEFAULT NULL,
  `currency_code` char(3) NOT NULL,
  `authcode` varchar(30) NOT NULL,
  `account` varchar(30) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  PRIMARY KEY (`globalpay_order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_globalpay_order`
--

LOCK TABLES `oc2_globalpay_order` WRITE;
/*!40000 ALTER TABLE `oc2_globalpay_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_globalpay_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_globalpay_order_transaction`
--

DROP TABLE IF EXISTS `oc2_globalpay_order_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_globalpay_order_transaction` (
  `globalpay_order_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `globalpay_order_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `type` enum('auth','payment','rebate','void') DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  PRIMARY KEY (`globalpay_order_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_globalpay_order_transaction`
--

LOCK TABLES `oc2_globalpay_order_transaction` WRITE;
/*!40000 ALTER TABLE `oc2_globalpay_order_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_globalpay_order_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_globalpay_remote_order`
--

DROP TABLE IF EXISTS `oc2_globalpay_remote_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_globalpay_remote_order` (
  `globalpay_remote_order_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_ref` char(50) NOT NULL,
  `order_ref_previous` char(50) NOT NULL,
  `pasref` varchar(50) NOT NULL,
  `pasref_previous` varchar(50) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `capture_status` int(1) DEFAULT NULL,
  `void_status` int(1) DEFAULT NULL,
  `settle_type` int(1) DEFAULT NULL,
  `rebate_status` int(1) DEFAULT NULL,
  `currency_code` char(3) NOT NULL,
  `authcode` varchar(30) NOT NULL,
  `account` varchar(30) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  PRIMARY KEY (`globalpay_remote_order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_globalpay_remote_order`
--

LOCK TABLES `oc2_globalpay_remote_order` WRITE;
/*!40000 ALTER TABLE `oc2_globalpay_remote_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_globalpay_remote_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_globalpay_remote_order_transaction`
--

DROP TABLE IF EXISTS `oc2_globalpay_remote_order_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_globalpay_remote_order_transaction` (
  `globalpay_remote_order_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `globalpay_remote_order_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `type` enum('auth','payment','rebate','void') DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  PRIMARY KEY (`globalpay_remote_order_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_globalpay_remote_order_transaction`
--

LOCK TABLES `oc2_globalpay_remote_order_transaction` WRITE;
/*!40000 ALTER TABLE `oc2_globalpay_remote_order_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_globalpay_remote_order_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_information`
--

DROP TABLE IF EXISTS `oc2_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_information` (
  `information_id` int(11) NOT NULL AUTO_INCREMENT,
  `bottom` int(1) NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`information_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_information`
--

LOCK TABLES `oc2_information` WRITE;
/*!40000 ALTER TABLE `oc2_information` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_information_description`
--

DROP TABLE IF EXISTS `oc2_information_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`information_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_information_description`
--

LOCK TABLES `oc2_information_description` WRITE;
/*!40000 ALTER TABLE `oc2_information_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_information_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_information_to_layout`
--

DROP TABLE IF EXISTS `oc2_information_to_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_information_to_layout`
--

LOCK TABLES `oc2_information_to_layout` WRITE;
/*!40000 ALTER TABLE `oc2_information_to_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_information_to_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_information_to_store`
--

DROP TABLE IF EXISTS `oc2_information_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_information_to_store`
--

LOCK TABLES `oc2_information_to_store` WRITE;
/*!40000 ALTER TABLE `oc2_information_to_store` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_information_to_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_journal2_blog_category`
--

DROP TABLE IF EXISTS `oc2_journal2_blog_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_journal2_blog_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `image` varchar(256) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_journal2_blog_category`
--

LOCK TABLES `oc2_journal2_blog_category` WRITE;
/*!40000 ALTER TABLE `oc2_journal2_blog_category` DISABLE KEYS */;
INSERT INTO `oc2_journal2_blog_category` (`category_id`, `parent_id`, `image`, `status`, `sort_order`) VALUES (1,0,'',1,0),(2,0,'',0,0);
/*!40000 ALTER TABLE `oc2_journal2_blog_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_journal2_blog_category_description`
--

DROP TABLE IF EXISTS `oc2_journal2_blog_category_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_journal2_blog_category_description` (
  `category_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(256) DEFAULT NULL,
  `description` text,
  `meta_title` varchar(256) DEFAULT NULL,
  `meta_keywords` varchar(256) DEFAULT NULL,
  `meta_description` text,
  `keyword` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`category_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_journal2_blog_category_description`
--

LOCK TABLES `oc2_journal2_blog_category_description` WRITE;
/*!40000 ALTER TABLE `oc2_journal2_blog_category_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_journal2_blog_category_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_journal2_blog_category_to_layout`
--

DROP TABLE IF EXISTS `oc2_journal2_blog_category_to_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_journal2_blog_category_to_layout` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `layout_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`category_id`,`store_id`),
  KEY `layout_id` (`layout_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_journal2_blog_category_to_layout`
--

LOCK TABLES `oc2_journal2_blog_category_to_layout` WRITE;
/*!40000 ALTER TABLE `oc2_journal2_blog_category_to_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_journal2_blog_category_to_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_journal2_blog_category_to_store`
--

DROP TABLE IF EXISTS `oc2_journal2_blog_category_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_journal2_blog_category_to_store` (
  `category_id` int(11) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_journal2_blog_category_to_store`
--

LOCK TABLES `oc2_journal2_blog_category_to_store` WRITE;
/*!40000 ALTER TABLE `oc2_journal2_blog_category_to_store` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_journal2_blog_category_to_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_journal2_blog_comments`
--

DROP TABLE IF EXISTS `oc2_journal2_blog_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_journal2_blog_comments` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `name` varchar(256) DEFAULT NULL,
  `email` varchar(256) DEFAULT NULL,
  `website` varchar(256) DEFAULT NULL,
  `comment` text,
  `status` tinyint(1) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_journal2_blog_comments`
--

LOCK TABLES `oc2_journal2_blog_comments` WRITE;
/*!40000 ALTER TABLE `oc2_journal2_blog_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_journal2_blog_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_journal2_blog_post`
--

DROP TABLE IF EXISTS `oc2_journal2_blog_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_journal2_blog_post` (
  `post_id` int(11) NOT NULL AUTO_INCREMENT,
  `author_id` int(11) DEFAULT NULL,
  `image` varchar(256) DEFAULT NULL,
  `comments` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_updated` datetime DEFAULT NULL,
  `views` int(11) DEFAULT NULL,
  PRIMARY KEY (`post_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_journal2_blog_post`
--

LOCK TABLES `oc2_journal2_blog_post` WRITE;
/*!40000 ALTER TABLE `oc2_journal2_blog_post` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_journal2_blog_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_journal2_blog_post_description`
--

DROP TABLE IF EXISTS `oc2_journal2_blog_post_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_journal2_blog_post_description` (
  `post_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(256) DEFAULT NULL,
  `description` text,
  `meta_title` varchar(256) DEFAULT NULL,
  `meta_keywords` varchar(256) DEFAULT NULL,
  `meta_description` text,
  `keyword` varchar(256) DEFAULT NULL,
  `tags` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`post_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_journal2_blog_post_description`
--

LOCK TABLES `oc2_journal2_blog_post_description` WRITE;
/*!40000 ALTER TABLE `oc2_journal2_blog_post_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_journal2_blog_post_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_journal2_blog_post_to_category`
--

DROP TABLE IF EXISTS `oc2_journal2_blog_post_to_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_journal2_blog_post_to_category` (
  `post_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`post_id`,`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_journal2_blog_post_to_category`
--

LOCK TABLES `oc2_journal2_blog_post_to_category` WRITE;
/*!40000 ALTER TABLE `oc2_journal2_blog_post_to_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_journal2_blog_post_to_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_journal2_blog_post_to_layout`
--

DROP TABLE IF EXISTS `oc2_journal2_blog_post_to_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_journal2_blog_post_to_layout` (
  `post_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `layout_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`post_id`,`store_id`),
  KEY `layout_id` (`layout_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_journal2_blog_post_to_layout`
--

LOCK TABLES `oc2_journal2_blog_post_to_layout` WRITE;
/*!40000 ALTER TABLE `oc2_journal2_blog_post_to_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_journal2_blog_post_to_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_journal2_blog_post_to_product`
--

DROP TABLE IF EXISTS `oc2_journal2_blog_post_to_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_journal2_blog_post_to_product` (
  `post_id` int(11) NOT NULL DEFAULT '0',
  `product_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`post_id`,`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_journal2_blog_post_to_product`
--

LOCK TABLES `oc2_journal2_blog_post_to_product` WRITE;
/*!40000 ALTER TABLE `oc2_journal2_blog_post_to_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_journal2_blog_post_to_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_journal2_blog_post_to_store`
--

DROP TABLE IF EXISTS `oc2_journal2_blog_post_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_journal2_blog_post_to_store` (
  `post_id` int(11) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_journal2_blog_post_to_store`
--

LOCK TABLES `oc2_journal2_blog_post_to_store` WRITE;
/*!40000 ALTER TABLE `oc2_journal2_blog_post_to_store` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_journal2_blog_post_to_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_journal2_config`
--

DROP TABLE IF EXISTS `oc2_journal2_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_journal2_config` (
  `key` varchar(64) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `value` mediumtext NOT NULL,
  `serialized` tinyint(1) NOT NULL,
  PRIMARY KEY (`key`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_journal2_config`
--

LOCK TABLES `oc2_journal2_config` WRITE;
/*!40000 ALTER TABLE `oc2_journal2_config` DISABLE KEYS */;
INSERT INTO `oc2_journal2_config` (`key`, `store_id`, `value`, `serialized`) VALUES ('active_skin',0,'2',0),('active_skin',3,'1',0),('blog_settings',0,'{\"status\":\"1\",\"feed\":\"1\",\"posts_per_row\":{\"range\":\"1,10\",\"step\":\"1\",\"value\":{\"mobile\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"mobile1\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet1\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet2\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop1\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop2\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop\":{\"value\":\"5\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop1\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop2\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"}}},\"related_products\":\"1\",\"related_products_per_row\":{\"range\":\"1,10\",\"step\":\"1\",\"value\":{\"mobile\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"mobile1\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet1\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet2\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop1\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop2\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop\":{\"value\":\"5\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop1\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop2\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"}}},\"posts_display\":\"list\",\"posts_sort\":\"newest\",\"author_name\":\"full\",\"posts_limit\":\"6\",\"title\":{\"value\":{\"1\":\"Journal Blog\",\"3\":\"Journal Blog\"}},\"keyword\":{\"value\":{\"1\":\"blog\",\"3\":\"blog\"}},\"meta_title\":{\"value\":{\"1\":\"\",\"3\":\"\"}},\"meta_keywords\":{\"value\":{\"1\":\"\",\"3\":\"\"}},\"meta_description\":{\"value\":[]},\"posts_image_type\":\"crop\",\"share_this\":\"1\",\"comments\":\"1\",\"auto_approve_comments\":\"0\",\"related_products_carousel\":\"1\",\"description_char_limit\":\"600\",\"posts_image_width\":\"225\",\"posts_image_height\":\"225\"}',1),('copyright',0,'{\"value\":{\"1\":\"Copyright \\u00a9 2016, ACE Coffee Roasters, All Rights Reserved. Site Design by Lucas Lopatka.\",\"2\":\"Copyright \\u00a9 2014, Your Store\",\"3\":\"\"}}',1),('footer_menu',0,'{\"rows\":[],\"close_others\":true}',1),('mega_menu',0,'{\"items\":[{\"type\":\"custom\",\"categories\":{\"type\":\"existing\",\"show\":\"both\",\"image_position\":\"right\",\"links_type\":\"categories\",\"items\":[],\"render_as\":\"megamenu\"},\"products\":{\"source\":\"category\",\"module_type\":\"featured\",\"items\":[]},\"manufacturers\":{\"type\":\"all\",\"show\":\"image\",\"items\":[]},\"custom\":{\"top\":{\"menu_type\":\"custom\",\"menu_item\":{\"url\":\"#\\/\"}},\"items\":[],\"target\":\"0\"},\"mixed_columns\":[],\"icon\":{\"options\":{\"font_size\":\"20px\",\"color\":{\"value\":{\"color\":\"\"}},\"top\":\"-1\"},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe14f;\",\"class\":\"home3\"}},\"hide_text\":\"0\",\"is_open\":true,\"status\":1,\"items_per_row\":{\"range\":\"1,10\",\"step\":\"1\",\"hide_columns\":true,\"value\":{\"mobile\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"mobile1\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet1\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet2\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop\":{\"value\":\"6\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop1\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop2\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop\":{\"value\":\"6\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop1\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop2\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"}}},\"items_limit\":5,\"html_blocks\":[],\"html_menu_link\":{\"menu_type\":\"custom\",\"menu_item\":[]},\"title\":[],\"float\":\"right\",\"image_width\":\"\",\"image_height\":\"\",\"image_type\":\"fit\",\"enable_on_phone\":\"1\",\"enable_on_tablet\":\"1\",\"enable_on_desktop\":\"1\",\"hide_on_mobile\":\"1\",\"hide_on_desktop\":\"0\",\"name\":{\"value\":{\"1\":\"Home\",\"2\":\"\",\"3\":\"\"}},\"sort_order\":\"1\"},{\"type\":\"mixed\",\"categories\":{\"type\":\"existing\",\"show\":\"both\",\"image_position\":\"right\",\"links_type\":\"categories\",\"items\":[],\"render_as\":\"dropdown\",\"top\":{\"id\":\"59\",\"name\":\"Fashion\"}},\"products\":{\"source\":\"module\",\"module_type\":\"special\",\"items\":[]},\"manufacturers\":{\"type\":\"all\",\"show\":\"image\",\"items\":[]},\"custom\":{\"top\":{\"menu_type\":\"custom\",\"menu_item\":[]},\"items\":[],\"target\":\"1\"},\"mixed_columns\":[{\"is_open\":false,\"hide_on_mobile\":0,\"type\":\"categories\",\"categories\":{\"type\":\"custom\",\"show\":\"both\",\"image_position\":\"left\",\"links_type\":\"products\",\"items\":[{\"menu_type\":\"opencart\",\"menu_item\":[],\"data\":{\"id\":\"105\",\"name\":\"Fashion &gt; Accesories\"}},{\"menu_type\":\"opencart\",\"menu_item\":[],\"data\":{\"id\":\"107\",\"name\":\"Fashion &gt; Bags\"}},{\"menu_type\":\"opencart\",\"menu_item\":[],\"data\":{\"id\":\"109\",\"name\":\"Fashion &gt; Beauty\"}},{\"menu_type\":\"opencart\",\"menu_item\":[],\"data\":{\"id\":\"60\",\"name\":\"Fashion &gt; Dresses\"}}],\"top\":{\"id\":\"59\",\"name\":\"Fashion\"}},\"products\":{\"source\":\"category\",\"module_type\":\"featured\",\"items\":[]},\"manufacturers\":{\"type\":\"all\",\"show\":\"image\",\"items\":[]},\"custom\":{\"top\":{\"menu_type\":\"custom\",\"menu_item\":null},\"items\":[]},\"link\":{\"menu_type\":\"custom\",\"menu_item\":null},\"html_text\":[],\"cms_blocks\":[],\"width\":\"50\",\"image_width\":\"\",\"image_height\":\"\",\"image_type\":\"fit\",\"items_per_row\":{\"range\":\"1,10\",\"step\":\"1\",\"hide_columns\":true,\"value\":{\"mobile\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"mobile1\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet1\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet2\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop1\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop2\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop1\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop2\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"}}},\"items_limit\":\"7\",\"status\":\"1\",\"sort_order\":\"\",\"name\":{\"value\":{\"1\":\"\",\"2\":\"\",\"3\":\"\"}},\"hide_on_desktop\":\"0\"},{\"is_open\":false,\"hide_on_mobile\":\"0\",\"type\":\"products\",\"categories\":{\"type\":\"existing\",\"show\":\"both\",\"image_position\":\"right\",\"links_type\":\"categories\",\"items\":[]},\"products\":{\"source\":\"module\",\"module_type\":\"special\",\"items\":[]},\"manufacturers\":{\"type\":\"all\",\"show\":\"image\",\"items\":[]},\"custom\":{\"top\":{\"menu_type\":\"custom\",\"menu_item\":null},\"items\":[]},\"link\":{\"menu_type\":\"custom\",\"menu_item\":null},\"html_text\":[],\"cms_blocks\":[],\"width\":\"50\",\"image_width\":\"\",\"image_height\":\"\",\"image_type\":\"fit\",\"items_per_row\":{\"range\":\"1,10\",\"step\":\"1\",\"hide_columns\":true,\"value\":{\"mobile\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"mobile1\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet1\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet2\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop1\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop2\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop1\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop2\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"}}},\"items_limit\":\"3\",\"status\":\"1\",\"sort_order\":\"\",\"name\":{\"value\":{\"1\":\"Special Offers\",\"2\":\"\",\"3\":\"\"}},\"hide_on_desktop\":\"0\"}],\"icon\":{\"options\":{\"font_size\":\"16px\"}},\"hide_text\":\"0\",\"is_open\":false,\"status\":1,\"items_per_row\":{\"range\":\"1,10\",\"step\":\"1\",\"hide_columns\":true,\"value\":{\"mobile\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"mobile1\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet1\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet2\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop\":{\"value\":\"6\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop1\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop2\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop\":{\"value\":\"6\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop1\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop2\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"}}},\"items_limit\":\"6\",\"html_blocks\":[],\"html_menu_link\":{\"menu_type\":\"custom\",\"menu_item\":{\"url\":\"#\\/category\"}},\"title\":[],\"float\":\"right\",\"image_width\":\"\",\"image_height\":\"\",\"image_type\":\"fit\",\"enable_on_phone\":\"1\",\"enable_on_tablet\":\"1\",\"enable_on_desktop\":\"1\",\"hide_on_mobile\":0,\"hide_on_desktop\":\"0\",\"name\":{\"value\":{\"1\":\"Shop\",\"2\":\"\",\"3\":\"\"}}},{\"type\":\"mixed\",\"categories\":{\"type\":\"existing\",\"show\":\"both\",\"image_position\":\"right\",\"links_type\":\"categories\",\"items\":[],\"render_as\":\"megamenu\"},\"products\":{\"source\":\"category\",\"module_type\":\"featured\",\"items\":[]},\"manufacturers\":{\"type\":\"all\",\"show\":\"image\",\"items\":[]},\"custom\":{\"top\":{\"menu_type\":\"custom\",\"menu_item\":[]},\"items\":[],\"target\":\"1\"},\"mixed_columns\":[],\"icon\":{\"options\":{\"font_size\":\"16px\"}},\"hide_text\":\"0\",\"is_open\":false,\"status\":1,\"items_per_row\":{\"range\":\"1,10\",\"step\":\"1\",\"hide_columns\":true,\"value\":{\"mobile\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"mobile1\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet1\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet2\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop\":{\"value\":\"6\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop1\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop2\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop\":{\"value\":\"6\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop1\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop2\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"}}},\"items_limit\":5,\"html_blocks\":[],\"html_menu_link\":{\"menu_type\":\"custom\",\"menu_item\":{\"url\":\"#\\/product\"}},\"title\":[],\"float\":\"right\",\"image_width\":\"\",\"image_height\":\"\",\"image_type\":\"fit\",\"enable_on_phone\":\"1\",\"enable_on_tablet\":\"1\",\"enable_on_desktop\":\"1\",\"hide_on_mobile\":0,\"hide_on_desktop\":\"0\",\"name\":{\"value\":{\"1\":\"Product\",\"2\":\"\",\"3\":\"\"}}},{\"type\":\"custom\",\"categories\":{\"type\":\"existing\",\"show\":\"both\",\"image_position\":\"right\",\"links_type\":\"categories\",\"items\":[],\"render_as\":\"megamenu\"},\"products\":{\"source\":\"category\",\"module_type\":\"featured\",\"items\":[]},\"manufacturers\":{\"type\":\"all\",\"show\":\"image\",\"items\":[]},\"custom\":{\"top\":{\"menu_type\":\"custom\",\"menu_item\":{\"url\":\"#\\/checkout\"}},\"target\":0,\"items\":[]},\"mixed_columns\":[],\"icon\":{\"options\":{\"font_size\":\"16px\"}},\"hide_text\":\"0\",\"is_open\":false,\"status\":1,\"items_per_row\":{\"range\":\"1,10\",\"step\":\"1\",\"hide_columns\":true,\"value\":{\"mobile\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"mobile1\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet1\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet2\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop\":{\"value\":\"6\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop1\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop2\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop\":{\"value\":\"6\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop1\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop2\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"}}},\"items_limit\":5,\"html_blocks\":[],\"html_menu_link\":{\"menu_type\":\"custom\",\"menu_item\":[]},\"title\":[],\"float\":\"right\",\"image_width\":\"\",\"image_height\":\"\",\"image_type\":\"fit\",\"enable_on_phone\":\"1\",\"enable_on_tablet\":\"1\",\"enable_on_desktop\":\"1\",\"hide_on_mobile\":0,\"hide_on_desktop\":\"0\",\"name\":{\"value\":{\"1\":\"Checkout\",\"3\":\"Blog\"}}}],\"close_others\":true,\"options\":{\"display\":\"table\",\"table_layout\":\"auto\",\"is_open\":false}}',1),('payments',0,'{\"payments\":[{\"image\":\"data\\/journal2\\/cards\\/visa.png\",\"name\":{\"value\":{\"1\":\"Visa\",\"2\":\"\"}},\"link\":{\"value\":\"\"},\"new_window\":\"0\",\"sort_order\":\"\",\"is_open\":true},{\"image\":\"data\\/journal2\\/cards\\/mc.png\",\"name\":{\"value\":{\"1\":\"MasterCard\",\"2\":\"\"}},\"link\":{\"value\":\"\"},\"new_window\":\"0\",\"sort_order\":\"\",\"is_open\":true},{\"image\":\"data\\/journal2\\/cards\\/maestro.png\",\"name\":{\"value\":{\"1\":\"Maestro\",\"2\":\"\"}},\"link\":{\"value\":\"\"},\"new_window\":\"0\",\"sort_order\":\"\",\"is_open\":true},{\"image\":\"data\\/journal2\\/cards\\/disc.png\",\"name\":{\"value\":{\"1\":\"Discover\",\"2\":\"\"}},\"link\":{\"value\":\"\"},\"new_window\":\"0\",\"sort_order\":\"\",\"is_open\":true},{\"image\":\"data\\/journal2\\/cards\\/ax.png\",\"name\":{\"value\":{\"1\":\"American Express\",\"2\":\"\"}},\"link\":{\"value\":\"\"},\"new_window\":\"0\",\"sort_order\":\"\",\"is_open\":true},{\"image\":\"data\\/journal2\\/cards\\/pp.png\",\"name\":{\"value\":{\"1\":\"PayPal\",\"2\":\"\"}},\"link\":{\"value\":\"\"},\"new_window\":\"0\",\"sort_order\":\"\",\"is_open\":true}],\"close_others\":false}',1),('primary_menu',0,'{\"items\":[{\"icon\":{\"options\":{\"font_size\":\"14px\",\"color\":{\"value\":{\"color\":\"\"}}},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe679;\",\"class\":\"phone2\"}},\"mobile_view\":\"icon\",\"menu\":{\"menu_type\":\"custom\",\"menu_item\":{\"url\":\"tel:18005558989\"}},\"name_overwrite\":0,\"target\":0,\"enable_on_phone\":\"1\",\"enable_on_tablet\":\"1\",\"enable_on_desktop\":\"1\",\"hide_on_mobile\":\"0\",\"icon_position\":\"left\",\"name\":{\"value\":{\"1\":\"1800-555-8989\",\"2\":\"\",\"3\":\"\"}},\"is_open\":true},{\"icon\":{\"options\":{\"font_size\":\"16px\"},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe658;\",\"class\":\"truck2\"}},\"mobile_view\":\"icon\",\"menu\":{\"menu_type\":\"information\",\"menu_item\":{\"id\":\"6\",\"name\":\"Delivery Information\"}},\"name_overwrite\":\"1\",\"target\":0,\"enable_on_phone\":\"1\",\"enable_on_tablet\":\"1\",\"enable_on_desktop\":\"1\",\"hide_on_mobile\":\"0\",\"is_open\":true,\"icon_position\":\"left\",\"name\":{\"value\":{\"1\":\"Delivery Info\",\"2\":\"\",\"3\":\"\"}}},{\"icon\":{\"options\":{\"font_size\":\"16px\"},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe64c;\",\"class\":\"reply\"}},\"mobile_view\":\"icon\",\"menu\":{\"menu_type\":\"information\",\"menu_item\":{\"id\":\"7\",\"name\":\"Returns Informarion\"}},\"name_overwrite\":\"1\",\"target\":0,\"enable_on_phone\":\"1\",\"enable_on_tablet\":\"1\",\"enable_on_desktop\":\"1\",\"hide_on_mobile\":\"0\",\"is_open\":true,\"icon_position\":\"left\",\"name\":{\"value\":{\"1\":\"Returns\",\"2\":\"\",\"3\":\"\"}}}]}',1),('secondary_menu',0,'{\"items\":[]}',1);
/*!40000 ALTER TABLE `oc2_journal2_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_journal2_modules`
--

DROP TABLE IF EXISTS `oc2_journal2_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_journal2_modules` (
  `module_id` int(11) NOT NULL AUTO_INCREMENT,
  `module_type` varchar(64) NOT NULL,
  `module_data` mediumtext NOT NULL,
  PRIMARY KEY (`module_id`)
) ENGINE=MyISAM AUTO_INCREMENT=250 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_journal2_modules`
--

LOCK TABLES `oc2_journal2_modules` WRITE;
/*!40000 ALTER TABLE `oc2_journal2_modules` DISABLE KEYS */;
INSERT INTO `oc2_journal2_modules` (`module_id`, `module_type`, `module_data`) VALUES (229,'journal2_popup','{\"module_name\":\"Home Popup\",\"close_button\":\"1\",\"padding\":\"\",\"title\":{\"value\":{\"1\":\"Welcome to ACE Coffee Roasters\",\"3\":\"\"}},\"title_align\":\"center\",\"title_font\":{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":null,\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\",\"font_subset\":[],\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}}},\"title_bg_color\":{\"value\":{\"color\":\"rgb(0, 0, 0)\"}},\"title_height\":\"45\",\"newsletter\":\"1\",\"newsletter_bg_color\":{\"value\":{\"color\":\"rgb(191, 195, 182)\"}},\"newsletter_height\":80,\"newsletter_id\":\"230\",\"footer_height\":\"30\",\"footer_bg_color\":{\"value\":{\"color\":\"rgb(0, 0, 0)\"}},\"type\":\"text\",\"text\":{\"1\":\"\"},\"text_font\":[],\"text_height\":\"\",\"image\":\"no_image.jpg\",\"content_overflow\":\"0\",\"status\":\"1\",\"width\":600,\"height\":\"1\",\"background\":{\"value\":{\"bgimage_attach\":\"scroll\"}},\"button_1\":\"0\",\"button_1_link\":{\"menu_type\":\"custom\",\"menu_item\":[]},\"button_1_icon\":{\"options\":{\"font_size\":\"16px\"}},\"button_1_new_window\":\"0\",\"button_1_text\":{\"value\":{\"1\":\"\",\"3\":\"\"}},\"button_1_font\":{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\"}},\"button_1_bgcolor\":\"\",\"button_1_hover_bgcolor\":\"\",\"button_2\":\"0\",\"button_2_link\":{\"menu_type\":\"custom\",\"menu_item\":[]},\"button_2_icon\":{\"options\":{\"font_size\":\"16px\"}},\"button_2_new_window\":\"0\",\"button_2_text\":{\"value\":{\"1\":\"\",\"3\":\"\"}},\"button_2_font\":{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\"}},\"button_2_bgcolor\":\"\",\"button_2_hover_bgcolor\":\"\",\"button_submit_icon\":{\"options\":{\"font_size\":\"16px\"}},\"button_submit_text\":{\"value\":{\"1\":\"\",\"3\":\"\"}},\"button_submit_font\":{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\"}},\"button_submit_bgcolor\":\"\",\"button_submit_hover_bgcolor\":\"\",\"button_submit_position\":\"center\",\"do_not_show_again\":\"1\",\"do_not_show_again_text\":{\"value\":{\"1\":\"Don\'t show again.\",\"3\":\"Don\'t show again.\"}},\"do_not_show_again_font\":{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}}},\"do_not_show_again_cookie\":\"zh5vjkd7f2quchc40a4i\",\"sort_order\":\"\",\"enable_on_phone\":\"1\",\"enable_on_tablet\":\"1\",\"enable_on_desktop\":\"1\",\"general_is_open\":true,\"header_is_open\":true,\"newsletter_is_open\":true,\"footer_is_open\":true,\"disable_mobile\":\"0\",\"disable_desktop\":\"0\",\"button_submit_icon_position\":\"left\",\"button_1_icon_position\":\"left\",\"button_2_icon_position\":\"left\",\"content_is_open\":true,\"top_bottom_is_open\":true}'),(54,'journal2_super_filter','{\"module_name\":\"New Module\",\"reset\":\"1\",\"product_count\":\"1\",\"price\":\"1\",\"price_slider\":\"1\",\"tags\":\"1\",\"availability\":\"1\",\"tax_class_id\":\"-1\",\"manufacturer\":\"image\",\"manufacturer_type\":\"single\",\"category\":\"list\",\"category_type\":\"single\",\"options\":{\"1\":\"list\",\"2\":\"image\",\"5\":\"list\",\"11\":\"list\",\"16\":\"list\"},\"options_type\":{\"1\":\"multi\",\"2\":\"multi\",\"5\":\"multi\",\"11\":\"multi\",\"16\":\"multi\"},\"attributes\":{\"1\":\"on\",\"2\":\"on\",\"3\":\"on\",\"4\":\"on\",\"5\":\"on\",\"6\":\"on\",\"7\":\"on\",\"8\":\"on\",\"9\":\"on\",\"10\":\"on\",\"11\":\"on\",\"12\":\"off\",\"13\":\"off\",\"14\":\"off\",\"15\":\"off\",\"16\":\"on\",\"18\":\"on\",\"19\":\"on\",\"20\":\"on\",\"22\":\"on\",\"23\":\"on\",\"24\":\"on\",\"25\":\"on\",\"26\":\"off\",\"27\":\"off\"},\"attributes_type\":{\"1\":\"multi\",\"2\":\"multi\",\"3\":\"multi\",\"4\":\"multi\",\"5\":\"multi\",\"6\":\"multi\",\"7\":\"multi\",\"8\":\"multi\",\"9\":\"multi\",\"10\":\"multi\",\"11\":\"multi\",\"12\":\"multi\",\"13\":\"multi\",\"14\":\"multi\",\"15\":\"multi\",\"16\":\"multi\",\"18\":\"multi\",\"19\":\"multi\",\"20\":\"multi\",\"22\":\"multi\",\"23\":\"multi\",\"24\":\"multi\",\"25\":\"multi\",\"26\":\"multi\",\"27\":\"multi\"},\"sort_orders\":{\"c\":\"1\",\"m\":\"2\",\"p\":\"0\",\"o_2\":\"4\",\"a\":\"3\",\"t\":\"10\"},\"general_is_open\":true,\"options_is_open\":true,\"is_open\":{\"3\":{\"is_open\":true},\"6\":{\"is_open\":true},\"7\":{\"is_open\":true}}}'),(9,'journal2_side_category','{\"module_name\":\"Categories\",\"type\":\"accordion\",\"title\":{\"value\":{\"1\":\"\",\"2\":\"\"}},\"show_categories\":\"1\",\"sections\":[],\"general_is_open\":true}'),(225,'journal2_carousel','{\"module_name\":\"Specials\",\"module_type\":\"product\",\"items_per_row\":{\"range\":\"1,10\",\"step\":\"1\",\"value\":{\"mobile\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"mobile1\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet1\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet2\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop1\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop2\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop\":{\"value\":\"5\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop1\":{\"value\":\"5\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop2\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"}}},\"module_background\":{\"value\":{\"bgimage_attach\":\"scroll\"}},\"module_padding\":\"0\",\"arrows\":\"top\",\"bullets\":1,\"top_bottom_placement\":0,\"background\":{\"value\":{\"bgimage_attach\":\"scroll\"}},\"fullwidth\":\"0\",\"margin_top\":\"\",\"margin_bottom\":\"\",\"show_title\":\"1\",\"brand_name\":\"1\",\"autoplay\":\"0\",\"pause_on_hover\":\"1\",\"transition_speed\":\"400\",\"transition_delay\":\"3000\",\"touch_drag\":\"0\",\"image_border\":{\"value\":{\"border_rounded\":\"px\"}},\"image_bgcolor\":\"\",\"image_width\":\"\",\"image_height\":\"\",\"image_type\":\"fit\",\"product_sections\":[{\"is_open\":true,\"section_title\":{\"value\":{\"1\":\"Today\'s Deals\",\"3\":\"Today\'s Deals\"}},\"section_type\":\"module\",\"status\":\"1\",\"default_section\":\"0\",\"sort_order\":\"\",\"products\":[],\"category\":{\"data\":{\"id\":\"105\",\"name\":\"Fashion &gt; Accesories\"}},\"items_limit\":\"5\",\"module_type\":\"specials\",\"filter_category\":\"0\",\"link\":{\"menu_type\":\"custom\",\"url\":\"\",\"menu_item\":[]},\"new_window\":\"0\",\"random_from\":\"all\",\"todays_specials_only\":\"1\",\"countdown_visibility\":\"1\"},{\"is_open\":true,\"section_title\":{\"value\":{\"1\":\"View All Offers\",\"3\":\"\"}},\"section_type\":\"link\",\"status\":\"1\",\"default_section\":\"0\",\"sort_order\":\"\",\"products\":[],\"category\":\"\",\"items_limit\":\"\",\"module_type\":\"featured\",\"filter_category\":\"0\",\"link\":{\"menu_type\":\"opencart\",\"url\":\"\",\"menu_item\":{\"page\":\"product\\/special\"}},\"new_window\":\"0\",\"random_from\":\"all\",\"todays_specials_only\":\"1\",\"countdown_visibility\":\"1\"}],\"category_sections\":[],\"manufacturer_sections\":[],\"enable_on_phone\":\"1\",\"enable_on_tablet\":\"1\",\"enable_on_desktop\":\"1\",\"general_is_open\":true,\"top_bottom_is_open\":true,\"disable_mobile\":\"0\"}'),(113,'journal2_cms_blocks','{\"module_name\":\"Text Block - Product Page\",\"module_title\":{\"value\":{\"1\":\"CMS Block\",\"2\":\"\"}},\"items_per_row\":{\"range\":\"1,10\",\"step\":\"1\",\"value\":{\"mobile\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"mobile1\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet1\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet2\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop1\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop2\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop1\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop2\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"}}},\"module_background\":{\"value\":{\"bgimage_attach\":\"scroll\"}},\"module_padding\":\"0\",\"background\":{\"value\":{\"bgimage_attach\":\"scroll\"}},\"fullwidth\":\"0\",\"margin_top\":\"\",\"margin_bottom\":\"\",\"sections\":[{\"bg_color\":\"\",\"is_open\":true,\"section_title\":[],\"text\":{\"1\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\\n\"},\"text_align\":\"left\",\"icon_status\":\"1\",\"icon_position\":\"left\",\"icon\":{\"options\":{\"font_size\":\"24px\",\"color\":{\"value\":{\"color\":\"rgb(221, 0, 23)\"}},\"top\":\"3\"},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe0ad;\",\"class\":\"truck3\"}},\"icon_border\":{\"value\":{\"border_rounded\":\"px\"}},\"icon_bg_color\":\"\",\"icon_width\":\"\",\"icon_height\":\"\",\"status\":\"1\",\"sort_order\":\"\"}],\"enable_on_phone\":\"1\",\"enable_on_tablet\":\"1\",\"enable_on_desktop\":\"1\",\"general_is_open\":true,\"top_bottom_is_open\":true,\"disable_mobile\":\"0\"}'),(247,'journal2_header_notice','{\"module_name\":\"Notice\",\"height\":\"\",\"padding_t\":{\"value\":\"\"},\"padding_l\":{\"value\":\"\"},\"padding_b\":{\"value\":\"\"},\"padding_r\":{\"value\":{\"text\":\"75\"}},\"text\":{\"value\":{\"1\":\"This is the new <strong>Header Notice<\\/strong> module. It can be used for Cookie Law messages or any other message you may need to communicate to your visitors. Multiple modules can be created on any page. They can be individually styled and also made to appear only once or always.\",\"3\":\"This is the new <strong>Header Notice<\\/strong> module. It can be used for Cookie Law messages or any other message you may need to communicate to your visitors. Multiple modules can be created on any page. They can be individually styled and also made to appear only once or always.\"}},\"text_align\":\"center\",\"text_font\":{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":null,\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\",\"font_subset\":[],\"color\":{\"value\":{\"color\":\"\"}}}},\"text_link_color\":[],\"text_link_hover_color\":[],\"button_color\":[],\"button_hover_color\":[],\"button_bg_color\":[],\"button_hover_bg_color\":[],\"icon\":{\"options\":{\"font_size\":\"30px\",\"color\":{\"value\":{\"color\":\"rgb(221, 0, 23)\"}},\"top\":\"-3\"},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe600;\",\"class\":\"ok-circle\"}},\"float_icon\":\"1\",\"fullwidth\":\"1\",\"icon_position\":\"left\",\"close_button_type\":\"icon\",\"close_button_text\":{\"value\":{\"1\":\"OK\",\"3\":\"\"}},\"do_not_show_again\":\"1\",\"do_not_show_again_cookie\":\"bjqzpodpldi\",\"enable_on_phone\":\"1\",\"enable_on_tablet\":\"1\",\"enable_on_desktop\":\"1\",\"general_is_open\":true,\"disable_mobile\":\"0\",\"disable_desktop\":\"0\",\"content_is_open\":true,\"text_background_color\":{\"value\":{\"color\":\"rgb(88, 143, 39)\"}}}'),(246,'journal2_product_tabs','{\"module_name\":\"Custom Order Link\",\"name\":{\"value\":{\"1\":\"\",\"3\":\"\"}},\"icon_status\":\"1\",\"icon\":{\"options\":{\"font_size\":\"20px\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe629;\",\"class\":\"pencil\"}},\"icon_border\":{\"value\":{\"border_rounded\":\"px\"}},\"icon_bg_color\":{\"value\":{\"color\":\"rgb(51, 153, 101)\"}},\"icon_width\":\"40\",\"icon_height\":\"40\",\"content_type\":\"custom\",\"out_of_stock_only\":\"0\",\"content\":{\"1\":\"<h3>Customize your watch<\\/h3>\\n\\n<p><strong><a href=\\\"javascript:Journal.openPopup(\'241\')\\\">Click here to send us your order details<\\/a>.<\\/strong><\\/p>\\n\"},\"popup\":\"\",\"global\":\"0\",\"products\":[{\"data\":{\"id\":\"272\",\"name\":\"Red Formal Watch\"}}],\"categories\":[],\"manufacturers\":[],\"store_id\":-1,\"status\":1,\"sort_order\":\"\",\"position\":\"desc\",\"option_position\":\"top\"}'),(76,'journal2_product_tabs','{\"module_name\":\"Free Shipping\",\"name\":{\"value\":{\"1\":\"Free Shipping\",\"2\":\"\"}},\"icon_status\":\"1\",\"icon\":{\"options\":{\"font_size\":\"18px\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}},\"left\":\"\"},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe659;\",\"class\":\"airplane\"}},\"icon_border\":{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"3\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}},\"icon_bg_color\":{\"value\":{\"color\":\"rgb(221, 0, 23)\"}},\"icon_width\":\"40\",\"icon_height\":\"40\",\"content_type\":\"custom\",\"out_of_stock_only\":\"0\",\"content\":{\"1\":\"<p>Create unlimited blocks with any content. Place them on any product page.<\\/p>\\n\"},\"popup\":\"\",\"global\":\"1\",\"products\":[],\"categories\":[],\"manufacturers\":[],\"store_id\":-1,\"status\":\"1\",\"sort_order\":\"1\",\"position\":\"desc\",\"option_position\":\"bottom\"}'),(232,'journal2_newsletter','{\"module_name\":\"Gift Popup\",\"module_title\":{\"value\":{\"1\":\"\",\"3\":\"\"}},\"module_text\":{\"value\":[]},\"module_text_font\":{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\"}},\"module_background\":{\"value\":{\"bgimage_attach\":\"scroll\"}},\"module_border\":{\"value\":{\"border_rounded\":\"px\"}},\"module_padding\":\"\",\"text_position\":\"top\",\"input_height\":\"45\",\"input_placeholder\":{\"value\":{\"1\":\"Email your email address here\",\"3\":\"\"}},\"input_bg_color\":[],\"input_font\":{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\"}},\"input_border\":{\"value\":{\"border_rounded\":\"px\"}},\"button_text\":{\"value\":{\"1\":\"Sign me up!\",\"3\":\"\"}},\"button_icon\":{\"options\":{\"font_size\":\"16px\"}},\"button_border\":{\"value\":{\"border_rounded\":\"px\"}},\"button_offset_top\":\"\",\"button_offset_left\":\"5\",\"background\":{\"value\":{\"bgimage_attach\":\"scroll\"}},\"disable_mobile\":\"0\",\"fullwidth\":\"0\",\"margin_top\":\"\",\"margin_bottom\":\"\",\"general_is_open\":true}'),(37,'journal2_product_tabs','{\"module_name\":\"Video\",\"name\":{\"value\":{\"1\":\"Responsive Video\",\"2\":\"\"}},\"icon_status\":\"0\",\"icon\":{\"options\":{\"font_size\":\"16px\"}},\"icon_border\":{\"value\":{\"border_rounded\":\"px\"}},\"icon_bg_color\":\"\",\"icon_width\":\"\",\"icon_height\":\"\",\"content\":[null,\"<div class=\\\"responsive-video\\\"><iframe allowfullscreen=\\\"\\\" frameborder=\\\"0\\\" height=\\\"315\\\" src=\\\"\\/\\/www.youtube.com\\/embed\\/5CdgftzjMSA\\\" width=\\\"560\\\"><\\/iframe><\\/div>\\n\",\"\"],\"global\":1,\"products\":[],\"status\":1,\"sort_order\":\"\",\"position\":\"tab\",\"option_position\":\"top\"}'),(73,'journal2_product_tabs','{\"module_name\":\"Tabs\",\"name\":{\"value\":{\"1\":\"Custom Tab\",\"2\":\"\"}},\"content\":{\"1\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam iaculis egestas laoreet. Etiam faucibus massa sed risus lacinia in vulputate dolor imperdiet. Curabitur pharetra, purus a commodo dignissim, sapien nulla tempus nisi, et varius nulla urna at arcu.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam iaculis egestas laoreet. Etiam faucibus massa sed risus lacinia in vulputate dolor imperdiet. Curabitur pharetra, purus a commodo dignissim, sapien nulla tempus nisi, et varius nulla urna at arcuLorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam iaculis egestas laoreet. Etiam faucibus massa sed risus lacinia in vulputate dolor imperdiet. Curabitur pharetra, purus a commodo dignissim, sapien nulla tempus nisi, et varius nulla urna at arcu.&nbsp;<\\/p>\\n\"},\"global\":1,\"products\":[],\"status\":1,\"sort_order\":\"\",\"position\":\"tab\",\"option_position\":\"top\"}'),(231,'journal2_popup','{\"module_name\":\"Gift\",\"close_button\":\"1\",\"padding\":\"\",\"title\":{\"value\":{\"1\":\"\",\"3\":\"\"}},\"title_font\":{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\"}},\"title_bg_color\":\"\",\"title_height\":\"0\",\"newsletter\":\"1\",\"newsletter_bg_color\":{\"value\":{\"color\":\"rgb(51, 55, 69)\"}},\"newsletter_height\":80,\"newsletter_id\":\"232\",\"footer_height\":\"0\",\"footer_bg_color\":{\"value\":{\"color\":\"\"}},\"type\":\"text\",\"text\":{\"1\":\"<p><img alt=\\\"\\\" height=\\\"350\\\" src=\\\"http:\\/\\/digital-cdn.net\\/1\\/image\\/data\\/journal2\\/misc\\/popup2.png\\\" width=\\\"600\\\" \\/><\\/p>\\n\"},\"text_font\":[],\"text_height\":\"\",\"image\":\"no_image.jpg\",\"content_overflow\":\"0\",\"disable_mobile\":\"0\",\"disable_desktop\":\"0\",\"status\":\"1\",\"width\":600,\"height\":\"350\",\"background\":{\"value\":{\"bgimage_attach\":\"scroll\"}},\"button_1\":\"0\",\"button_1_link\":{\"menu_type\":\"custom\"},\"button_1_icon\":{\"options\":{\"font_size\":\"16px\"}},\"button_1_new_window\":\"0\",\"button_1_text\":{\"value\":{\"1\":\"\",\"3\":\"\"}},\"button_1_font\":{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\"}},\"button_1_bgcolor\":\"\",\"button_1_hover_bgcolor\":\"\",\"button_2\":\"0\",\"button_2_link\":{\"menu_type\":\"custom\"},\"button_2_icon\":{\"options\":{\"font_size\":\"16px\"}},\"button_2_new_window\":\"0\",\"button_2_text\":{\"value\":{\"1\":\"\",\"3\":\"\"}},\"button_2_font\":{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\"}},\"button_2_bgcolor\":\"\",\"button_2_hover_bgcolor\":\"\",\"button_submit_icon\":{\"options\":{\"font_size\":\"16px\"}},\"button_submit_text\":{\"value\":{\"1\":\"\",\"3\":\"\"}},\"button_submit_font\":{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\"}},\"button_submit_bgcolor\":\"\",\"button_submit_hover_bgcolor\":\"\",\"button_submit_position\":\"center\",\"do_not_show_again\":\"1\",\"do_not_show_again_text\":{\"value\":{\"1\":\"\",\"3\":\"\"}},\"do_not_show_again_font\":{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\"}},\"do_not_show_again_cookie\":\"7oorn4xtj4i\",\"sort_order\":\"\",\"general_is_open\":true,\"header_is_open\":true,\"newsletter_is_open\":true,\"footer_is_open\":true,\"button_submit_icon_position\":\"left\",\"button_1_icon_position\":\"left\",\"button_2_icon_position\":\"left\",\"content_is_open\":true,\"top_bottom_is_open\":true}'),(112,'journal2_simple_slider','{\"module_name\":\"side-banner\",\"height\":\"400\",\"transition\":\"backSlide\",\"transition_speed\":1000,\"autoplay\":\"1\",\"pause_on_hover\":\"1\",\"transition_delay\":3000,\"hideonmobile\":\"0\",\"preload_images\":\"1\",\"arrows\":\"0\",\"bullets\":\"1\",\"show_on_hover\":\"1\",\"background\":{\"value\":{\"bgimage_attach\":\"scroll\"}},\"margin_top\":\"\",\"margin_bottom\":\"\",\"touch_drag\":\"1\",\"slides\":[{\"is_open\":true,\"slide_name\":\"\",\"image\":\"data\\/journal-demo\\/side-banner-2.jpg\",\"link\":{\"menu_type\":\"custom\"},\"link_new_window\":\"0\",\"status\":1,\"sort_order\":\"\"},{\"is_open\":true,\"slide_name\":\"\",\"image\":\"data\\/journal-demo\\/side-banner-1.jpg\",\"link\":{\"menu_type\":\"custom\"},\"link_new_window\":\"0\",\"status\":\"0\",\"sort_order\":\"\"}],\"general_is_open\":true,\"navigation_is_open\":true}'),(111,'journal2_carousel','{\"module_name\":\"Related Products\",\"module_type\":\"product\",\"items_per_row\":{\"range\":\"1,10\",\"step\":\"1\",\"value\":{\"mobile\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"mobile1\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet1\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet2\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop1\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop2\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop\":{\"value\":\"5\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop1\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop2\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"}}},\"module_background\":{\"value\":{\"bgimage_attach\":\"scroll\"}},\"module_padding\":\"0\",\"arrows\":\"top\",\"bullets\":1,\"top_bottom_placement\":0,\"background\":{\"value\":{\"bgimage_attach\":\"scroll\"}},\"fullwidth\":\"0\",\"margin_top\":\"\",\"margin_bottom\":\"\",\"show_title\":\"1\",\"brand_name\":\"1\",\"autoplay\":\"1\",\"pause_on_hover\":\"1\",\"transition_speed\":\"400\",\"transition_delay\":\"8000\",\"touch_drag\":\"1\",\"image_border\":{\"value\":{\"border_rounded\":\"px\"}},\"image_bgcolor\":\"\",\"image_width\":\"\",\"image_height\":\"\",\"image_type\":\"fit\",\"product_sections\":[{\"is_open\":true,\"section_title\":{\"value\":{\"1\":\"Related Products\",\"2\":\"\"}},\"section_type\":\"module\",\"status\":\"1\",\"default_section\":\"0\",\"sort_order\":\"\",\"products\":[],\"category\":{\"data\":{\"id\":\"111\",\"name\":\"Fashion &gt; Shoes\"}},\"items_limit\":5,\"module_type\":\"related\",\"link\":{\"menu_type\":\"custom\",\"url\":\"\",\"menu_item\":[]},\"new_window\":\"0\",\"random_from\":\"all\",\"filter_category\":\"1\"}],\"category_sections\":[],\"manufacturer_sections\":[],\"enable_on_phone\":\"1\",\"enable_on_tablet\":\"1\",\"enable_on_desktop\":\"1\",\"general_is_open\":true,\"disable_mobile\":\"0\"}'),(124,'journal2_photo_gallery','{\"module_name\":\"Follow us on Instagram!\",\"gallery_name\":{\"value\":{\"1\":\"Follow us on Instagram!\",\"2\":\"\"}},\"thumbs_limit\":\"9\",\"thumbs_width\":\"\",\"thumbs_height\":\"\",\"thumbs_type\":\"crop\",\"items_per_row\":{\"range\":\"1,10\",\"step\":\"1\",\"value\":{\"mobile\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"mobile1\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet\":{\"value\":\"5\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet1\":{\"value\":\"5\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet2\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop\":{\"value\":\"7\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop1\":{\"value\":\"7\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop2\":{\"value\":\"5\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop\":{\"value\":\"7\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop1\":{\"value\":\"7\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop2\":{\"value\":\"5\",\"range\":\"1,10\",\"step\":\"1\"}}},\"carousel\":\"1\",\"carousel_arrows\":\"top\",\"carousel_buttons\":1,\"top_bottom_placement\":0,\"background\":{\"value\":{\"bgimage_attach\":\"scroll\",\"bgimage_repeat\":\"repeat\",\"bgimage_position\":\"center\",\"bgcolor\":{\"value\":{\"color\":\"rgba(0, 0, 0, 0.88)\"}}}},\"autoplay\":\"0\",\"pause_on_hover\":\"1\",\"transition_speed\":\"400\",\"transition_delay\":\"3000\",\"touch_drag\":\"1\",\"fullwidth\":\"0\",\"margin_top\":\"20\",\"margin_bottom\":\"20\",\"image_border\":{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"%\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}},\"images\":[{\"is_open\":true,\"status\":\"1\",\"name\":{\"value\":{\"1\":\"\",\"2\":\"\",\"3\":\"\"}},\"image\":\"catalog\\/stores\\/ace\\/instagram\\/12338501_1718431741724733_208443057_n.jpg\"},{\"is_open\":true,\"status\":\"1\",\"name\":{\"value\":{\"1\":\"\",\"3\":\"\"}},\"image\":\"catalog\\/stores\\/ace\\/instagram\\/12328318_1661956074072589_1790039372_n.jpg\"},{\"is_open\":true,\"status\":\"1\",\"name\":{\"value\":{\"1\":\"\",\"3\":\"\"}},\"image\":\"catalog\\/stores\\/ace\\/instagram\\/10570213_532760516923050_1547586459_n.jpg\"},{\"is_open\":true,\"status\":\"1\",\"name\":{\"value\":{\"1\":\"\",\"3\":\"\"}},\"image\":\"catalog\\/stores\\/ace\\/instagram\\/12530742_483312588527915_1587627455_n.jpg\"},{\"is_open\":true,\"name\":{\"value\":{\"1\":\"\"}},\"image\":\"catalog\\/stores\\/ace\\/instagram\\/12558759_661733787262832_1470643955_n.jpg\"},{\"is_open\":true,\"name\":{\"value\":{\"1\":\"\"}},\"image\":\"catalog\\/stores\\/ace\\/instagram\\/12558837_1729401863962585_1298691234_n.jpg\"},{\"is_open\":true,\"name\":{\"value\":{\"1\":\"\"}},\"image\":\"catalog\\/stores\\/ace\\/instagram\\/12677670_884146135040232_260374693_n.jpg\"},{\"is_open\":true,\"name\":{\"value\":{\"1\":\"\"}},\"image\":\"catalog\\/stores\\/ace\\/instagram\\/12724738_1672113486372475_1911326671_n.jpg\"},{\"is_open\":true,\"name\":{\"value\":{\"1\":\"\"}},\"image\":\"catalog\\/stores\\/ace\\/instagram\\/917819_1745625095666527_899750655_n.jpg\"},{\"is_open\":true,\"name\":{\"value\":{\"1\":\"\"}},\"image\":\"catalog\\/stores\\/ace\\/instagram\\/12362283_141120842921670_533940905_n.jpg\"}],\"enable_on_phone\":\"1\",\"enable_on_tablet\":\"1\",\"enable_on_desktop\":\"1\",\"general_is_open\":true,\"top_bottom_is_open\":true,\"disable_mobile\":\"0\",\"carousel_bullets\":\"1\",\"close_others\":false}'),(127,'journal2_cms_blocks','{\"module_name\":\"Map - Contact Page\",\"module_title\":{\"value\":{\"1\":\"\",\"2\":\"\"}},\"items_per_row\":{\"range\":\"1,10\",\"step\":\"1\",\"value\":{\"mobile\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"mobile1\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet1\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet2\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop1\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop2\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop1\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop2\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"}}},\"module_background\":{\"value\":{\"bgimage_attach\":\"scroll\"}},\"module_padding\":\"0\",\"disable_mobile\":\"1\",\"background\":{\"value\":{\"bgimage_attach\":\"scroll\"}},\"fullwidth\":\"0\",\"margin_top\":\"\",\"margin_bottom\":\"\",\"sections\":[{\"is_open\":true,\"section_title\":[],\"text\":{\"1\":\"<p><iframe frameborder=\\\"0\\\" height=\\\"200\\\" src=\\\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m18!1m12!1m3!1d2624.745754504347!2d2.3350847999999917!3d48.863058399999964!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e25967267e3%3A0x72b2a53b90685549!2s174+Rue+de+Rivoli!5e0!3m2!1sen!2s!4v1400359491114\\\" style=\\\"border:0\\\" width=\\\"100%\\\"><\\/iframe><\\/p>\\n\"},\"text_align\":\"left\",\"icon_status\":\"0\",\"icon_position\":\"top\",\"icon\":{\"options\":{\"font_size\":\"16px\"}},\"icon_border\":{\"value\":{\"border_rounded\":\"px\"}},\"icon_bg_color\":\"\",\"icon_width\":\"\",\"icon_height\":\"\",\"status\":\"1\",\"sort_order\":\"\"}],\"general_is_open\":true,\"top_bottom_is_open\":true}'),(168,'journal2_custom_sections','{\"module_name\":\"Coffee Products\",\"module_type\":\"product\",\"items_per_row\":{\"range\":\"1,10\",\"step\":\"1\",\"value\":{\"mobile\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"mobile1\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet1\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet2\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop\":{\"value\":\"5\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop1\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop2\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop\":{\"value\":\"5\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop1\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop2\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"}}},\"top_bottom_placement\":0,\"module_background\":{\"value\":{\"bgimage_attach\":\"scroll\",\"bgimage\":{\"value\":{\"image\":\"\"}},\"bgimage_repeat\":\"no-repeat\"}},\"module_padding\":\"1\",\"background\":{\"value\":{\"bgimage_attach\":\"fixed\",\"bgimage_repeat\":\"no-repeat\",\"bgimage_position\":\"center\",\"bgcolor\":{\"value\":{\"color\":\"rgba(0, 0, 0, 0.86)\"}},\"bgimage\":{\"value\":{\"image\":\"\"}}}},\"fullwidth\":\"0\",\"margin_top\":\"\",\"margin_bottom\":\"20\",\"show_title\":\"1\",\"brand_name\":\"1\",\"image_border\":{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":\"\"},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}},\"image_bgcolor\":{\"value\":{\"color\":\"\"}},\"image_width\":\"\",\"image_height\":\"\",\"image_type\":\"fit\",\"product_sections\":[{\"is_open\":true,\"section_title\":{\"value\":{\"1\":\"1kg Bags\",\"2\":\"\",\"3\":\"Bestsellers\"}},\"section_type\":\"custom\",\"status\":\"1\",\"default_section\":\"0\",\"sort_order\":\"2\",\"products\":[{\"data\":{\"id\":\"1884\",\"name\":\"ACE NO.1 Zotti 1kg Individual Bag\"}},{\"data\":{\"id\":\"2095\",\"name\":\"ACE OX Decaf 1kg Individual Bag\"}},{\"data\":{\"id\":\"1942\",\"name\":\"NO.15 - COLUMBIA SINGLE ORIGIN 1KG\"}},{\"data\":{\"id\":\"1914\",\"name\":\"Ace NO.8 Ceni 1kg Individual Bag\"}},{\"data\":{\"id\":\"1889\",\"name\":\"NO.2 - BARACCA CLASSIC 1KG\"}}],\"category\":\"\",\"items_limit\":\"3\",\"module_type\":\"bestsellers\",\"link\":{\"menu_type\":\"custom\",\"url\":\"\",\"menu_item\":[]},\"new_window\":\"0\",\"random_from\":\"all\",\"filter_category\":\"1\",\"todays_specials_only\":\"1\",\"countdown_visibility\":\"1\"},{\"is_open\":true,\"section_title\":{\"value\":{\"1\":\"250g Bags\"}},\"section_type\":\"custom\",\"status\":\"1\",\"default_section\":\"1\",\"sort_order\":\"1\",\"products\":[{\"data\":{\"id\":\"1886\",\"name\":\"ACE NO.1 Zotti 250g Individual Bag\"}},{\"data\":{\"id\":\"2097\",\"name\":\"ACE OX Decaf 250g Individual Bag\"}},{\"data\":{\"id\":\"1944\",\"name\":\"NO.15 - COLUMBIA SINGLE ORIGIN 250G\"}},{\"data\":{\"id\":\"1916\",\"name\":\"Ace No.8 Ceni 250g Individual Bag\"}},{\"data\":{\"id\":\"1890\",\"name\":\"NO.2 - BARACCA CLASSIC 250G\"}}],\"category\":\"\",\"items_limit\":\"3\",\"module_type\":\"featured\",\"todays_specials_only\":\"0\",\"countdown_visibility\":\"0\",\"filter_category\":\"0\",\"link\":{\"menu_type\":\"custom\",\"url\":\"\",\"menu_item\":[]},\"new_window\":\"0\"},{\"is_open\":true,\"section_title\":{\"value\":{\"1\":\"Wholesale\"}},\"section_type\":\"custom\",\"status\":\"1\",\"default_section\":\"0\",\"sort_order\":\"\",\"products\":[{\"data\":{\"id\":\"1887\",\"name\":\"ACE NO.1 ZOTTI 250G CASE OF 15 BAGS\"}},{\"data\":{\"id\":\"2098\",\"name\":\"ACE OX Decaf 250g Case of 15 Bags\"}},{\"data\":{\"id\":\"1945\",\"name\":\"ACE NO.15 Colombia 250g Case of 15 Bags\"}},{\"data\":{\"id\":\"1917\",\"name\":\"ACE NO.8 Ceni 250g Case of 15 Bags\"}},{\"data\":{\"id\":\"1891\",\"name\":\"ACE NO.2 Baracca 250g Case of 15 Bags\"}}],\"category\":\"\",\"items_limit\":\"3\",\"module_type\":\"featured\",\"todays_specials_only\":\"0\",\"countdown_visibility\":\"0\",\"filter_category\":\"0\",\"link\":{\"menu_type\":\"custom\",\"url\":\"\",\"menu_item\":[]},\"new_window\":\"0\"}],\"category_sections\":[],\"manufacturer_sections\":[],\"enable_on_phone\":\"1\",\"enable_on_tablet\":\"1\",\"enable_on_desktop\":\"1\",\"general_is_open\":true,\"top_bottom_is_open\":true,\"disable_mobile\":\"0\",\"disable_desktop\":\"0\"}'),(133,'journal2_newsletter','{\"module_name\":\"Blog\",\"module_title\":{\"value\":{\"1\":\"\",\"2\":\"\"}},\"module_text\":{\"value\":{\"1\":\"Stay up to date with news and promotions by signing up for our weekly newsletter.\",\"2\":\"\"}},\"module_text_font\":{\"value\":{\"font_type\":\"google\",\"font_size\":\"15px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Droid Serif\",\"font_weight\":\"italic\",\"font_style\":\"italic\",\"letter_spacing\":\"\",\"text_transform\":\"none\",\"font_subset\":[\"latin\"],\"color\":{\"value\":{\"color\":\"rgb(68, 67, 73)\"}}}},\"module_background\":{\"value\":{\"bgimage_attach\":\"scroll\",\"bgimage_repeat\":\"repeat\",\"bgimage_position\":\"center\",\"bgimage\":{\"value\":{\"image\":\"data\\/journal2\\/misc\\/news.png\"}},\"bgcolor\":{\"value\":{\"color\":\"rgb(244, 244, 244)\"}}}},\"module_border\":{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":\"\"},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}},\"module_padding\":\"15\",\"text_position\":\"top\",\"input_height\":\"44\",\"input_placeholder\":{\"value\":{\"1\":\"Email Address...\",\"2\":\"\"}},\"input_bg_color\":[],\"input_font\":{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\"}},\"input_border\":{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":{\"text\":\"1\"}},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"},\"border_color\":{\"value\":{\"color\":\"rgb(204, 204, 204)\"}}}},\"button_text\":{\"value\":{\"1\":\"Send\",\"2\":\"\"}},\"button_icon\":{\"options\":{\"font_size\":\"16px\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}},\"icon_type\":\"none\",\"icon\":{\"icon\":\"&#xe67b;\",\"class\":\"envelope\"}},\"button_border\":{\"value\":{\"border_rounded\":\"px\"}},\"button_offset_top\":\"-1\",\"button_offset_left\":\"4\",\"background\":{\"value\":{\"bgimage_attach\":\"scroll\"}},\"disable_mobile\":\"0\",\"fullwidth\":\"0\",\"margin_top\":\"\",\"margin_bottom\":\"\",\"general_is_open\":true,\"top_bottom_is_open\":true}'),(230,'journal2_newsletter','{\"module_name\":\"Home Popup\",\"module_title\":{\"value\":{\"1\":\"\",\"3\":\"\"}},\"module_text\":{\"value\":{\"1\":\"Sign up for our newsletter to receive special offers.\",\"3\":\"\"}},\"module_text_font\":{\"value\":{\"font_type\":\"google\",\"font_size\":\"16px\",\"font_family\":\"Georgia, serif\",\"font_name\":\"Droid Serif\",\"font_weight\":\"italic\",\"font_style\":\"italic\",\"letter_spacing\":\"\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(0, 0, 0)\"}},\"font_subset\":[\"latin\"]}},\"module_background\":{\"value\":{\"bgimage_attach\":\"scroll\"}},\"module_border\":{\"value\":{\"border_rounded\":\"px\"}},\"module_padding\":\"\",\"text_position\":\"left\",\"input_height\":\"45\",\"input_placeholder\":{\"value\":{\"1\":\"Email Address\",\"3\":\"\"}},\"input_bg_color\":[],\"input_font\":{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\"}},\"input_border\":{\"value\":{\"border_rounded\":\"px\"}},\"button_text\":{\"value\":{\"1\":\"Send\",\"3\":\"\"}},\"button_icon\":{\"options\":{\"font_size\":\"16px\"}},\"button_border\":{\"value\":{\"border_rounded\":\"px\"}},\"button_offset_top\":\"\",\"button_offset_left\":\"5\",\"background\":{\"value\":{\"bgimage_attach\":\"scroll\"}},\"disable_mobile\":\"0\",\"fullwidth\":\"0\",\"margin_top\":\"\",\"margin_bottom\":\"\",\"general_is_open\":true}'),(248,'journal2_newsletter','{\"module_name\":\"Home Subscribe\",\"module_title\":{\"value\":{\"1\":\"\"}},\"module_text\":{\"value\":{\"1\":\"COMING SOON: \\\"How much coffee would you like, and how often? It\'s easy to pause, change your order, or cancel anytime. You\'re in control.\\\"\\n\\nWe are currently working on this feature. If you\'d like be notified when we\'re ready, subscribe to our mailing list on the right!\"}},\"module_text_font\":{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"ABeeZee\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"font_subset\":[\"latin\"],\"letter_spacing\":\"\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}}},\"module_background\":{\"value\":{\"bgimage_attach\":\"scroll\",\"bgcolor\":{\"value\":{\"color\":\"\"}}}},\"module_border\":{\"value\":{\"border_rounded\":\"px\"}},\"module_padding\":\"2rem 0\",\"text_position\":\"left\",\"input_height\":\"45\",\"input_placeholder\":{\"value\":{\"1\":\"Enter your email address...\"}},\"input_bg_color\":[],\"input_font\":{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"ABeeZee\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"font_subset\":[\"latin\"],\"letter_spacing\":\"\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(0, 0, 0)\"}}}},\"input_border\":{\"value\":{\"border_rounded\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":\"\"},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}},\"button_text\":{\"value\":{\"1\":\"Subscribe Now\"}},\"button_font\":{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"ABeeZee\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"font_subset\":[\"latin\"],\"letter_spacing\":\"\",\"text_transform\":\"none\"}},\"button_background\":[],\"button_icon\":{\"options\":{\"font_size\":\"16px\"}},\"button_border\":{\"value\":{\"border_rounded\":\"px\"}},\"button_offset_top\":\"\",\"button_offset_left\":\"\",\"background\":{\"value\":{\"bgimage_attach\":\"scroll\",\"bgcolor\":{\"value\":{\"color\":\"rgba(0, 0, 0, 0.88)\"}}}},\"fullwidth\":\"0\",\"margin_top\":\"\",\"margin_bottom\":\"\",\"enable_on_phone\":\"1\",\"enable_on_tablet\":\"1\",\"enable_on_desktop\":\"1\",\"general_is_open\":true,\"top_bottom_is_open\":true}'),(179,'journal2_side_blocks','{\"module_name\":\"CMS Block\",\"module_type\":\"block\",\"icon\":{\"options\":{\"font_size\":\"28px\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe62a;\",\"class\":\"question-sign\"}},\"icon_bg_color\":\"rgb(119, 119, 119)\",\"icon_border\":{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":\"\"},\"border_radius_top\":{\"value\":{\"text\":\"\"}},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":{\"text\":\"\"}},\"border_radius_bottom\":{\"value\":{\"text\":\"\"}}}},\"icon_bg_hover_color\":\"\",\"content_bg_color\":\"rgb(244, 244, 244)\",\"alignment\":\"right\",\"position\":\"fixed\",\"icon_width\":\"50\",\"icon_height\":\"50\",\"offset_top\":\"460\",\"offset_side\":\"\",\"content_width\":\"275\",\"content_padding\":\"15\",\"content\":{\"1\":\"<h3>Need Support?<\\/h3>\\n\\n<p><img alt=\\\"\\\" height=\\\"80\\\" src=\\\"http:\\/\\/digital-cdn.net\\/2\\/image\\/data\\/journal2\\/misc\\/button-up.jpg\\\" style=\\\"margin-bottom: 10px;\\\" width=\\\"290\\\" \\/>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\\n\"},\"link\":{\"menu_type\":\"custom\",\"url\":\"\",\"menu_item\":[]},\"new_window\":\"0\"}'),(182,'journal2_advanced_grid','{\"module_name\":\"Banners\",\"height\":\"200\",\"module_background\":{\"value\":{\"bgimage_attach\":\"scroll\"}},\"module_padding\":\"0\",\"background\":{\"value\":{\"bgimage_attach\":\"scroll\",\"bgimage_repeat\":\"repeat\",\"bgimage_position\":\"center\",\"bgcolor\":{\"value\":{\"color\":\"rgba(255, 255, 255, 0)\"}},\"bgimage\":{\"value\":{\"image\":\"\"}}}},\"fullwidth\":\"0\",\"margin_top\":\"10\",\"margin_bottom\":\"30\",\"grid_dimensions\":\"1\",\"module_spacing\":\"20\",\"columns\":[{\"is_open\":false,\"width\":\"50\",\"status\":1,\"sort_order\":\"\",\"modules\":[{\"is_open\":true,\"height\":\"100\",\"module_id\":\"189\",\"status\":1,\"sort_order\":\"\",\"enable_on_phone\":\"1\",\"enable_on_tablet\":\"1\",\"enable_on_desktop\":\"1\",\"disable_mobile\":\"0\"}],\"close_others\":true},{\"is_open\":true,\"width\":\"25\",\"status\":1,\"sort_order\":\"\",\"modules\":[{\"is_open\":true,\"height\":\"100\",\"module_id\":\"188\",\"status\":1,\"sort_order\":\"\",\"enable_on_phone\":\"1\",\"enable_on_tablet\":\"1\",\"enable_on_desktop\":\"1\",\"disable_mobile\":\"1\"}]},{\"is_open\":false,\"width\":\"25\",\"status\":1,\"sort_order\":\"\",\"modules\":[{\"is_open\":true,\"height\":\"50\",\"module_id\":\"190\",\"status\":1,\"sort_order\":\"\",\"enable_on_phone\":\"1\",\"enable_on_tablet\":\"1\",\"enable_on_desktop\":\"1\",\"disable_mobile\":\"1\"},{\"is_open\":true,\"height\":\"50\",\"module_id\":\"191\",\"status\":1,\"sort_order\":\"\",\"enable_on_phone\":\"1\",\"enable_on_tablet\":\"1\",\"enable_on_desktop\":\"1\",\"disable_mobile\":\"1\"}]}],\"enable_on_phone\":\"1\",\"enable_on_tablet\":\"1\",\"enable_on_desktop\":\"1\",\"general_is_open\":false,\"top_bottom_is_open\":false,\"disable_mobile\":\"0\",\"close_others\":true}'),(184,'journal2_headline_rotator','{\"module_name\":\"Coffee Subscription CTA\",\"transition_delay\":\"4000\",\"pause_on_hover\":\"1\",\"text_font\":{\"value\":{\"font_type\":\"google\",\"font_size\":\"40px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Droid Serif\",\"font_weight\":\"italic\",\"font_style\":\"italic\",\"letter_spacing\":\"\",\"text_transform\":\"none\",\"font_subset\":[\"latin\"],\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}}},\"text_background\":{\"value\":{\"bgimage_attach\":\"scroll\",\"bgimage_repeat\":\"repeat\",\"bgimage_position\":\"center\",\"bgcolor\":{\"value\":{\"color\":\"\"}}}},\"text_align\":\"center\",\"bullets\":\"0\",\"bullets_position\":\"center\",\"top_bottom_placement\":0,\"background\":{\"value\":{\"bgimage_attach\":\"fixed\",\"bgimage_repeat\":\"no-repeat\",\"bgimage_position\":\"center\",\"bgimage\":{\"value\":{\"image\":\"\"}},\"bgcolor\":{\"value\":{\"color\":\"rgba(0, 0, 0, 0.88)\"}}}},\"fullwidth\":\"0\",\"margin_top\":\"70\",\"margin_bottom\":\"70\",\"sections\":[{\"is_open\":true,\"name\":\"\",\"text\":{\"value\":{\"1\":\"ACE your coffee subscription.\",\"2\":\"\"}},\"icon\":{\"options\":{\"font_size\":\"16px\"}},\"cta\":\"0\",\"cta_link\":{\"menu_type\":\"custom\",\"menu_item\":{\"url\":\"http:\\/\\/acecoffeeroasters\\/\"}},\"cta_icon\":{\"options\":{\"font_size\":\"16px\"}},\"cta_icon_position\":\"right\",\"cta_new_window\":\"1\",\"cta_text\":{\"value\":{\"1\":\"Subscribe Now\",\"2\":\"\"}},\"cta_position\":\"center\",\"cta_offset_top\":\"10\",\"cta_offset_left\":\"\",\"status\":\"1\",\"sort_order\":\"\"}],\"enable_on_phone\":\"1\",\"enable_on_tablet\":\"1\",\"enable_on_desktop\":\"1\",\"general_is_open\":true,\"top_bottom_is_open\":true,\"disable_mobile\":\"0\"}'),(185,'journal2_cms_blocks','{\"module_name\":\"Home Page Blocks\",\"module_title\":{\"value\":{\"1\":\"\",\"2\":\"\"}},\"items_per_row\":{\"range\":\"1,10\",\"step\":\"1\",\"value\":{\"mobile\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"mobile1\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet1\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet2\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop1\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop2\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop1\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop2\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"}}},\"module_background\":{\"value\":{\"bgimage_attach\":\"scroll\"}},\"module_padding\":\"0\",\"background\":{\"value\":{\"bgimage_attach\":\"scroll\",\"bgimage_repeat\":\"repeat\",\"bgimage_position\":\"center\",\"bgcolor\":{\"value\":{\"color\":\"\"}}}},\"fullwidth\":\"0\",\"margin_top\":\"30\",\"margin_bottom\":\"10\",\"sections\":[{\"bg_color\":\"\",\"is_open\":false,\"section_title\":[],\"text\":{\"1\":\"<h3>Responsibly Grown Coffee<\\/h3>\\n\\n<p style=\\\"line-height: 20.7999992370605px;\\\">Over the last decade, we have developed buying guidelines that address our principles for ethical sourcing that&rsquo;s better for both people and the planet. We only source our coffees from growers with measures in place to manage waste, protect water quality, conserve water and energy, preserve biodiversity and reduce agrochemical use.<\\/p>\\n\"},\"text_align\":\"left\",\"icon_status\":\"1\",\"icon_position\":\"left\",\"icon\":{\"options\":{\"font_size\":\"38px\",\"color\":{\"value\":{\"color\":\"rgb(80, 80, 80)\"}}},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe662;\",\"class\":\"heart2\"}},\"icon_border\":{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"%\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"50\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}},\"icon_bg_color\":{\"value\":{\"color\":\"\"}},\"icon_width\":\"\",\"icon_height\":\"\",\"status\":\"1\",\"sort_order\":\"\"},{\"bg_color\":\"\",\"is_open\":false,\"section_title\":[],\"text\":{\"1\":\"<h3>Exceptional Beans<\\/h3>\\n\\n<p>The beans we source are different from regular Arabica beans. At every step, we go to great lengths to make sure our beans meet the highest standard of quality. How do we do it? For starters, the best beans grow at higher altitudes. The cold nights and warm days create denser beans. And denser beans have deeper, more complex flavours. Taste them in every cup of ACE.<\\/p>\\n\"},\"text_align\":\"left\",\"icon_status\":\"1\",\"icon_position\":\"left\",\"icon\":{\"options\":{\"font_size\":\"38px\",\"color\":{\"value\":{\"color\":\"rgb(80, 80, 80)\"}}},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe08e;\",\"class\":\"certificate\"}},\"icon_border\":{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"50\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"},\"border_color\":{\"value\":{\"color\":\"\"}}}},\"icon_bg_color\":{\"value\":{\"color\":\"\"}},\"icon_width\":\"\",\"icon_height\":\"\",\"status\":\"1\",\"sort_order\":\"\"},{\"bg_color\":\"\",\"is_open\":false,\"section_title\":[],\"text\":{\"1\":\"<h3>Artisan Inspected Batches<\\/h3>\\n\\n<p>&ldquo;Quality Control&rdquo; is not just about selecting only the best beans &ndash; it is also about selecting a quality consistent with the contract. It is important that we understand the cup profile of the coffee not only on the cupping table but also how it is served..<\\/p>\\n\"},\"text_align\":\"left\",\"icon_status\":\"1\",\"icon_position\":\"left\",\"icon\":{\"options\":{\"font_size\":\"38px\",\"color\":{\"value\":{\"color\":\"rgb(80, 80, 80)\"}},\"top\":\"2\"},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe697;\",\"class\":\"search\"}},\"icon_border\":{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"%\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"50\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}},\"icon_bg_color\":{\"value\":{\"color\":\"\"}},\"icon_width\":\"\",\"icon_height\":\"\",\"status\":\"1\",\"sort_order\":\"\"}],\"enable_on_phone\":\"1\",\"enable_on_tablet\":\"1\",\"enable_on_desktop\":\"1\",\"general_is_open\":false,\"top_bottom_is_open\":true,\"disable_mobile\":\"0\",\"close_others\":true}'),(187,'journal2_headline_rotator','{\"module_name\":\"Commercial Customer CTA\",\"transition_delay\":\"5000\",\"pause_on_hover\":\"1\",\"text_font\":{\"value\":{\"font_type\":\"google\",\"font_size\":\"16px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Droid Serif\",\"font_weight\":\"regular\",\"font_style\":\"italic\",\"letter_spacing\":\"\",\"text_transform\":\"none\",\"font_subset\":[\"latin\"],\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}}},\"text_background\":{\"value\":{\"bgimage_attach\":\"scroll\",\"bgimage_repeat\":\"no-repeat\",\"bgimage_position\":\"center\",\"bgcolor\":{\"value\":{\"color\":\"rgba(0, 0, 0, 0.86)\"}}}},\"text_align\":\"center\",\"bullets\":\"0\",\"bullets_position\":\"center\",\"top_bottom_placement\":0,\"background\":{\"value\":{\"bgimage_attach\":\"scroll\",\"bgimage_repeat\":\"repeat\",\"bgimage_position\":\"center\",\"bgcolor\":{\"value\":{\"color\":\"rgba(0, 0, 0, 0.86)\"}}}},\"fullwidth\":\"0\",\"margin_top\":\"\",\"margin_bottom\":\"\",\"sections\":[{\"is_open\":true,\"name\":\"\",\"text\":{\"value\":{\"1\":\"Do you own a business? Purchase in bulk and get free shipping on all products, and much, much more!\",\"2\":\"\"}},\"icon\":{\"options\":{\"font_size\":\"20px\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}},\"left\":\"-5\"},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe0ad;\",\"class\":\"truck3\"}},\"cta\":\"0\",\"cta_link\":{\"menu_type\":\"custom\",\"menu_item\":[]},\"cta_icon\":{\"options\":{\"font_size\":\"16px\"}},\"cta_icon_position\":\"right\",\"cta_new_window\":\"0\",\"cta_text\":{\"value\":{\"1\":\"\",\"2\":\"\"}},\"cta_position\":\"center\",\"cta_offset_top\":\"\",\"cta_offset_left\":\"\",\"status\":\"1\",\"sort_order\":\"\"}],\"enable_on_phone\":\"1\",\"enable_on_tablet\":\"1\",\"enable_on_desktop\":\"1\",\"general_is_open\":true,\"top_bottom_is_open\":true,\"disable_mobile\":\"0\"}'),(249,'journal2_carousel','{\"module_name\":\"Accessories\",\"module_type\":\"product\",\"items_per_row\":{\"range\":\"1,10\",\"step\":\"1\",\"value\":{\"mobile\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"mobile1\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet1\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet2\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop1\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop2\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop\":{\"value\":\"5\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop1\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop2\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"}}},\"module_background\":{\"value\":{\"bgimage_attach\":\"scroll\"}},\"module_padding\":\"0\",\"arrows\":\"top\",\"bullets\":1,\"top_bottom_placement\":0,\"background\":{\"value\":{\"bgimage_attach\":\"scroll\"}},\"fullwidth\":\"0\",\"margin_top\":\"\",\"margin_bottom\":\"\",\"show_title\":\"1\",\"brand_name\":\"1\",\"autoplay\":\"1\",\"pause_on_hover\":\"1\",\"transition_speed\":\"400\",\"transition_delay\":\"8000\",\"touch_drag\":\"0\",\"image_border\":{\"value\":{\"border_rounded\":\"px\"}},\"image_bgcolor\":\"\",\"image_width\":\"\",\"image_height\":\"\",\"image_type\":\"fit\",\"product_sections\":[{\"is_open\":true,\"section_title\":{\"value\":{\"1\":\"Accessories\"}},\"section_type\":\"random\",\"status\":\"1\",\"default_section\":\"0\",\"sort_order\":\"\",\"products\":[],\"category\":{\"data\":{\"id\":\"110\",\"name\":\"Accessories\"}},\"items_limit\":\"5\",\"module_type\":\"featured\",\"todays_specials_only\":\"0\",\"countdown_visibility\":\"0\",\"filter_category\":\"0\",\"link\":{\"menu_type\":\"custom\",\"url\":\"\",\"menu_item\":[]},\"new_window\":\"0\",\"random_from\":\"category\",\"random_from_category\":{\"id\":\"110\",\"name\":\"Accessories\"}}],\"category_sections\":[{\"is_open\":true,\"section_title\":{\"value\":{\"1\":\"\"}},\"section_type\":\"sub\",\"status\":\"1\",\"default_section\":\"0\",\"sort_order\":\"\",\"category_sub\":{\"id\":\"110\",\"name\":\"Accessories\"},\"categories\":[],\"items_limit\":5,\"link\":{\"menu_type\":\"custom\",\"url\":\"\",\"menu_item\":[]},\"new_window\":\"0\"}],\"manufacturer_sections\":[],\"enable_on_phone\":\"1\",\"enable_on_tablet\":\"1\",\"enable_on_desktop\":\"1\",\"general_is_open\":true,\"top_bottom_is_open\":true}'),(223,'journal2_carousel','{\"module_name\":\"Also Bought\",\"module_type\":\"product\",\"items_per_row\":{\"range\":\"1,10\",\"step\":\"1\",\"value\":{\"mobile\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"mobile1\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet1\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet2\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop1\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop2\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop\":{\"value\":\"5\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop1\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop2\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"}}},\"module_background\":{\"value\":{\"bgimage_attach\":\"scroll\"}},\"module_padding\":\"0\",\"arrows\":\"top\",\"bullets\":1,\"top_bottom_placement\":0,\"background\":{\"value\":{\"bgimage_attach\":\"scroll\",\"bgimage_repeat\":\"repeat\",\"bgimage_position\":\"center\",\"bgcolor\":{\"value\":{\"color\":\"rgb(238, 241, 234)\"}}}},\"fullwidth\":\"0\",\"margin_top\":\"20\",\"margin_bottom\":\"20\",\"show_title\":\"1\",\"brand_name\":\"1\",\"autoplay\":\"1\",\"pause_on_hover\":\"1\",\"transition_speed\":\"400\",\"transition_delay\":\"3000\",\"touch_drag\":\"1\",\"disable_mobile\":\"0\",\"image_border\":{\"value\":{\"border_rounded\":\"px\"}},\"image_bgcolor\":\"\",\"image_width\":\"\",\"image_height\":\"\",\"image_type\":\"fit\",\"product_sections\":[{\"is_open\":true,\"section_title\":{\"value\":{\"1\":\"People Also Bought\",\"2\":\"\",\"3\":\"\"}},\"section_type\":\"module\",\"status\":\"1\",\"default_section\":\"0\",\"sort_order\":\"\",\"products\":[],\"category\":\"\",\"items_limit\":\"6\",\"module_type\":\"people-also-bought\",\"filter_category\":\"0\",\"link\":{\"menu_type\":\"custom\",\"url\":\"\"},\"new_window\":\"0\",\"random_from\":\"all\",\"todays_specials_only\":\"1\",\"countdown_visibility\":\"1\"}],\"category_sections\":[],\"manufacturer_sections\":[],\"general_is_open\":true,\"top_bottom_is_open\":true}'),(188,'journal2_static_banners','{\"module_name\":\"Accessories Banner\",\"module_title\":{\"value\":{\"1\":\"\",\"2\":\"\"}},\"items_per_row\":{\"range\":\"1,10\",\"step\":\"1\",\"value\":{\"mobile\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"mobile1\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet1\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet2\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop1\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop2\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop1\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop2\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"}}},\"module_background\":{\"value\":{\"bgimage_attach\":\"scroll\"}},\"module_padding\":\"0\",\"background\":{\"value\":{\"bgimage_attach\":\"scroll\"}},\"bgcolor\":{\"value\":{\"color\":\"rgba(0, 0, 0, 0.4)\"}},\"icon\":{\"options\":{\"font_size\":\"32px\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe648;\",\"class\":\"link\"}},\"fullwidth\":\"0\",\"margin_top\":\"\",\"margin_bottom\":\"\",\"image_border\":{\"value\":{\"border_rounded\":\"px\"}},\"carousel\":\"0\",\"arrows\":\"1\",\"bullets\":\"1\",\"autoplay\":\"0\",\"pause_on_hover\":\"1\",\"transition_speed\":\"400\",\"transition_delay\":\"3000\",\"touch_drag\":\"0\",\"sections\":[{\"is_open\":true,\"image\":{\"1\":\"catalog\\/banners\\/top-categories\\/accessories.jpg\"},\"image_title\":{\"value\":{\"1\":\"\"}},\"link\":{\"menu_type\":\"custom\",\"menu_item\":{\"url\":\"#\"}},\"link_new_window\":\"0\",\"status\":\"1\",\"sort_order\":\"\"}],\"enable_on_phone\":\"1\",\"enable_on_tablet\":\"1\",\"enable_on_desktop\":\"1\",\"general_is_open\":true,\"top_bottom_is_open\":true,\"disable_mobile\":\"0\"}'),(189,'journal2_static_banners','{\"module_name\":\"Equipment Banner\",\"module_title\":{\"value\":{\"1\":\"\",\"2\":\"\"}},\"items_per_row\":{\"range\":\"1,10\",\"step\":\"1\",\"value\":{\"mobile\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"mobile1\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet1\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet2\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop1\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop2\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop1\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop2\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"}}},\"module_background\":{\"value\":{\"bgimage_attach\":\"scroll\"}},\"module_padding\":\"0\",\"background\":{\"value\":{\"bgimage_attach\":\"scroll\",\"bgimage\":{\"value\":{\"image\":\"catalog\\/banners\\/top-categories\\/tampers.jpg\"}}}},\"bgcolor\":{\"value\":{\"color\":\"rgba(0, 0, 0, 0.4)\"}},\"icon\":{\"options\":{\"font_size\":\"32px\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe056;\",\"class\":\"plus\"}},\"fullwidth\":\"0\",\"margin_top\":\"\",\"margin_bottom\":\"\",\"image_border\":{\"value\":{\"border_rounded\":\"px\"}},\"carousel\":\"0\",\"arrows\":\"1\",\"bullets\":\"1\",\"autoplay\":\"0\",\"pause_on_hover\":\"1\",\"transition_speed\":\"400\",\"transition_delay\":\"3000\",\"touch_drag\":\"0\",\"sections\":[{\"is_open\":true,\"image\":{\"1\":\"catalog\\/banners\\/top-categories\\/thermometers.jpg\"},\"image_title\":{\"value\":{\"1\":\"\"}},\"link\":{\"menu_type\":\"custom\",\"menu_item\":{\"url\":\"#\"}},\"link_new_window\":\"0\",\"status\":\"1\",\"sort_order\":\"\"}],\"enable_on_phone\":\"1\",\"enable_on_tablet\":\"1\",\"enable_on_desktop\":\"1\",\"general_is_open\":true,\"top_bottom_is_open\":true,\"disable_mobile\":\"0\"}'),(190,'journal2_static_banners','{\"module_name\":\"Service Banner\",\"module_title\":{\"value\":{\"1\":\"\",\"2\":\"\"}},\"items_per_row\":{\"range\":\"1,10\",\"step\":\"1\",\"value\":{\"mobile\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"mobile1\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet1\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet2\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop1\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop2\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop1\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop2\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"}}},\"module_background\":{\"value\":{\"bgimage_attach\":\"scroll\"}},\"module_padding\":\"0\",\"background\":{\"value\":{\"bgimage_attach\":\"scroll\",\"bgimage_repeat\":\"repeat\",\"bgimage_position\":\"center\"}},\"bgcolor\":{\"value\":{\"color\":\"rgba(0, 0, 0, 0.4)\"}},\"icon\":{\"options\":{\"font_size\":\"24px\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe608;\",\"class\":\"arrow-right\"}},\"fullwidth\":\"0\",\"margin_top\":\"\",\"margin_bottom\":\"\",\"image_border\":{\"value\":{\"border_rounded\":\"px\"}},\"carousel\":\"0\",\"arrows\":\"1\",\"bullets\":\"1\",\"autoplay\":\"0\",\"pause_on_hover\":\"1\",\"transition_speed\":\"400\",\"transition_delay\":\"3000\",\"touch_drag\":\"0\",\"sections\":[{\"is_open\":true,\"image\":{\"1\":\"catalog\\/banners\\/top-categories\\/parts.replace-me-copyrighted.resized.720h.jpg\"},\"image_title\":{\"value\":{\"1\":\"\"}},\"link\":{\"menu_type\":\"custom\",\"menu_item\":{\"url\":\"#\"}},\"link_new_window\":\"0\",\"status\":\"1\",\"sort_order\":\"\"}],\"enable_on_phone\":\"1\",\"enable_on_tablet\":\"1\",\"enable_on_desktop\":\"1\",\"general_is_open\":true,\"top_bottom_is_open\":true,\"disable_mobile\":\"0\"}'),(191,'journal2_static_banners','{\"module_name\":\"Resto Banner\",\"module_title\":{\"value\":{\"1\":\"\",\"2\":\"\"}},\"items_per_row\":{\"range\":\"1,10\",\"step\":\"1\",\"value\":{\"mobile\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"mobile1\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet1\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet2\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop1\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop2\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop1\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop2\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"}}},\"module_background\":{\"value\":{\"bgimage_attach\":\"scroll\"}},\"module_padding\":\"0\",\"background\":{\"value\":{\"bgimage_attach\":\"scroll\"}},\"bgcolor\":{\"value\":{\"color\":\"rgba(0, 0, 0, 0.4)\"}},\"icon\":{\"options\":{\"font_size\":\"24px\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe608;\",\"class\":\"arrow-right\"}},\"fullwidth\":\"0\",\"margin_top\":\"\",\"margin_bottom\":\"\",\"image_border\":{\"value\":{\"border_rounded\":\"px\"}},\"carousel\":\"0\",\"arrows\":\"1\",\"bullets\":\"1\",\"autoplay\":\"0\",\"pause_on_hover\":\"1\",\"transition_speed\":\"400\",\"transition_delay\":\"3000\",\"touch_drag\":\"0\",\"sections\":[{\"is_open\":true,\"image\":{\"1\":\"catalog\\/banners\\/top-categories\\/portafilters.jpg\"},\"image_title\":{\"value\":{\"1\":\"\"}},\"link\":{\"menu_type\":\"custom\",\"menu_item\":{\"url\":\"#\"}},\"link_new_window\":\"0\",\"status\":\"1\",\"sort_order\":\"\"}],\"enable_on_phone\":\"1\",\"enable_on_tablet\":\"1\",\"enable_on_desktop\":\"1\",\"general_is_open\":true,\"top_bottom_is_open\":true,\"disable_mobile\":\"0\"}'),(195,'journal2_side_blocks','{\"module_name\":\"FB Block\",\"module_type\":\"block\",\"icon\":{\"options\":{\"font_size\":\"24px\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe683;\",\"class\":\"facebook3\"}},\"icon_bg_color\":\"rgb(42, 43, 46)\",\"icon_border\":{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":\"\"},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}},\"icon_bg_hover_color\":\"\",\"content_bg_color\":\"rgb(255, 255, 255)\",\"alignment\":\"right\",\"position\":\"fixed\",\"icon_width\":\"50\",\"icon_height\":\"50\",\"offset_top\":\"360\",\"offset_side\":\"\",\"content_width\":\"300\",\"content_padding\":\"\",\"content\":[null,\"<p><br \\/>\\n<!--<script>(function(d, s, id) {\\n  var js, fjs = d.getElementsByTagName(s)[0];\\n  if (d.getElementById(id)) return;\\n  js = d.createElement(s); js.id = id;\\n  js.src = \\\"\\/\\/connect.facebook.net\\/en_US\\/sdk.js#xfbml=1&appId=413404662072763&version=v2.3\\\";\\n  fjs.parentNode.insertBefore(js, fjs);\\n}(document, \'script\', \'facebook-jssdk\'));<\\/script>\\n<div class=\\\"fb-page\\\" data-hide-cover=\\\"false\\\" data-href=\\\"https:\\/\\/www.facebook.com\\/facebook\\\" data-show-facepile=\\\"true\\\" data-show-posts=\\\"false\\\" data-width=\\\"300\\\">&nbsp;<\\/div>--><\\/p>\\n\"],\"link\":{\"menu_type\":\"custom\",\"url\":\"\",\"menu_item\":[]},\"new_window\":\"0\"}'),(196,'journal2_side_blocks','{\"module_name\":\"Tweets Block\",\"module_type\":\"block\",\"icon\":{\"options\":{\"font_size\":\"24px\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe682;\",\"class\":\"twitter3\"}},\"icon_bg_color\":\"rgb(68, 67, 73)\",\"icon_border\":{\"value\":{\"border_rounded\":\"px\"}},\"icon_bg_hover_color\":\"\",\"content_bg_color\":\"\",\"alignment\":\"right\",\"position\":\"fixed\",\"icon_width\":\"50\",\"icon_height\":\"50\",\"offset_top\":\"410\",\"offset_side\":\"\",\"content_width\":\"300\",\"content_padding\":\"\",\"content\":[null,\"<p><br \\/>\\n<!--\\n<p><a class=\\\"twitter-timeline\\\" data-widget-id=\\\"342636600209068032\\\" href=\\\"https:\\/\\/twitter.com\\/envato\\\">Tweets by @envato<\\/a> <script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=\\/^http:\\/.test(d.location)?\'http\':\'https\';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+\\\":\\/\\/platform.twitter.com\\/widgets.js\\\";fjs.parentNode.insertBefore(js,fjs);}}(document,\\\"script\\\",\\\"twitter-wjs\\\");<\\/script><\\/p>\\n--><\\/p>\\n\"],\"link\":{\"menu_type\":\"custom\",\"url\":\"\",\"menu_item\":[]},\"new_window\":\"0\"}'),(226,'journal2_carousel','{\"module_name\":\"Category Wall\",\"module_type\":\"category\",\"items_per_row\":{\"range\":\"1,10\",\"step\":\"1\",\"value\":{\"mobile\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"mobile1\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet\":{\"value\":\"5\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet1\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet2\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop\":{\"value\":\"6\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop1\":{\"value\":\"5\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop2\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop\":{\"value\":\"7\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop1\":{\"value\":\"6\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop2\":{\"value\":\"5\",\"range\":\"1,10\",\"step\":\"1\"}}},\"module_background\":{\"value\":{\"bgimage_attach\":\"scroll\"}},\"module_padding\":\"0\",\"arrows\":\"top\",\"bullets\":1,\"top_bottom_placement\":0,\"background\":{\"value\":{\"bgimage_attach\":\"scroll\"}},\"fullwidth\":\"0\",\"margin_top\":\"20\",\"margin_bottom\":\"\",\"show_title\":\"1\",\"brand_name\":\"1\",\"autoplay\":\"0\",\"pause_on_hover\":\"1\",\"transition_speed\":\"400\",\"transition_delay\":\"3000\",\"touch_drag\":\"0\",\"disable_mobile\":\"0\",\"image_border\":{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":\"\"},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}},\"image_bgcolor\":\"\",\"image_width\":\"\",\"image_height\":\"\",\"image_type\":\"fit\",\"product_sections\":[],\"category_sections\":[{\"is_open\":true,\"section_title\":{\"value\":{\"1\":\"Category Wall\",\"2\":\"\"}},\"section_type\":\"sub\",\"status\":\"1\",\"default_section\":\"0\",\"sort_order\":\"\",\"category_sub\":{\"id\":\"59\",\"name\":\"Fashion\"},\"categories\":[],\"items_limit\":5,\"link\":{\"menu_type\":\"custom\",\"url\":\"\"},\"new_window\":\"0\"}],\"manufacturer_sections\":[],\"general_is_open\":true,\"top_bottom_is_open\":true}'),(227,'journal2_slider','{\"module_name\":\"Video Slider\",\"width\":\"\",\"height\":\"480\",\"hidecaptionsonmobile\":\"0\",\"timer\":\"bottom\",\"js_options\":{\"delay\":4000,\"onHoverStop\":\"off\",\"thumbWidth\":100,\"thumbHeight\":75,\"thumbAmount\":4,\"hideThumbs\":1,\"navigationType\":\"bullet\",\"navigationArrows\":\"solo\",\"navigationStyle\":\"round\",\"navigationHAlign\":\"center\",\"navigationVAlign\":\"bottom\",\"navigationHOffset\":\"\",\"navigationVOffset\":\"20\"},\"preload_images\":\"1\",\"background\":{\"value\":{\"bgimage_attach\":\"scroll\"}},\"fullwidth\":\"1\",\"margin_top\":\"\",\"margin_bottom\":\"\",\"slides\":[{\"is_open\":true,\"slide_name\":\"\",\"image\":{\"1\":\"catalog\\/media\\/Steaming-Coffee-Beans.cprr.jpg\"},\"thumb\":{\"1\":\"\"},\"transition\":\"fade\",\"slotamount\":\"\",\"masterspeed\":800,\"delay\":\"\",\"captions\":[{\"is_open\":true,\"caption_name\":\"\",\"type\":\"image\",\"video_type\":\"youtube\",\"video_yt_id\":\"\",\"video_vm_id\":\"\",\"video_path\":\"\",\"video_fullwidth\":0,\"video_width\":\"\",\"video_height\":\"\",\"video_autoplay\":0,\"video_autoplayonlyfirsttime\":0,\"video_nextslideatend\":1,\"video_volume\":1,\"text_font\":{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"ABeeZee\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"font_subset\":[\"latin\"],\"letter_spacing\":\"\",\"text_transform\":\"none\"}},\"text_color\":\"\",\"text_bgcolor\":\"\",\"text_hover_color\":\"\",\"text_hover_bg_color\":\"\",\"text_border\":{\"value\":{\"border_rounded\":\"px\"}},\"text_hover_border_color\":\"\",\"text_padding_top\":\"\",\"text_padding_right\":\"\",\"text_padding_bottom\":\"\",\"text_padding_left\":\"\",\"text_line_height\":\"\",\"text_align\":\"center\",\"multilanguage_position\":\"0\",\"x\":\"\",\"y\":\"150\",\"x_ml\":{\"value\":{\"1\":\"\"}},\"y_ml\":{\"value\":{\"1\":\"\"}},\"animation_in\":\"fade\",\"animation_out\":\"fadeout\",\"custom_in_transition_x\":\"\",\"custom_in_transition_y\":\"\",\"custom_in_scale_x\":\"\",\"custom_in_scale_y\":\"\",\"custom_in_rotation_x\":\"\",\"custom_in_rotation_y\":\"\",\"custom_in_rotation_z\":\"\",\"transformOriginXin\":\"center\",\"transformOriginYin\":\"center\",\"custom_in_transform_perspective\":\"500\",\"custom_in_opacity\":\"1\",\"custom_out_transition_x\":\"\",\"custom_out_transition_y\":\"\",\"custom_out_scale_x\":\"\",\"custom_out_scale_y\":\"\",\"custom_out_rotation_x\":\"\",\"custom_out_rotation_y\":\"\",\"custom_out_rotation_z\":\"\",\"transformOriginXout\":\"center\",\"transformOriginYout\":\"center\",\"custom_out_transform_perspective\":\"500\",\"custom_out_opacity\":\"1\",\"speed\":\"\",\"start\":\"\",\"endspeed\":\"\",\"end\":\"\",\"status\":1,\"sort_order\":\"\",\"link\":{\"menu_type\":\"custom\",\"menu_item\":[]},\"link_new_window\":\"0\",\"easing\":\"easeInOutQuart\",\"endeasing\":\"easeInOutQuart\",\"text\":{\"value\":{\"1\":\"\"}},\"image\":{\"1\":\"catalog\\/stores\\/ace\\/banners\\/banner-03.png\"}}],\"status\":1,\"sort_order\":\"\",\"link\":{\"menu_type\":\"custom\",\"menu_item\":[]},\"link_new_window\":\"0\",\"easing\":\"easeInOutQuart\"}],\"enable_on_phone\":\"1\",\"enable_on_tablet\":\"1\",\"enable_on_desktop\":\"1\",\"general_is_open\":true,\"navigation_is_open\":true,\"top_bottom_is_open\":true,\"hideonmobile\":\"0\"}'),(233,'journal2_popup','{\"module_name\":\"Blog Style Popup\",\"close_button\":\"1\",\"padding\":\"\",\"title\":{\"value\":{\"1\":\"Did you know you can open custom popups from any link?\",\"3\":\"Did you know you can open custom popups from any link?\"}},\"title_font\":{\"value\":{\"font_type\":\"google\",\"font_size\":\"19px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Droid Serif\",\"font_weight\":\"regular\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\",\"font_subset\":[\"latin\"]}},\"title_bg_color\":{\"value\":{\"color\":\"rgb(244, 244, 244)\"}},\"title_height\":\"50\",\"newsletter\":\"0\",\"newsletter_bg_color\":\"\",\"newsletter_height\":80,\"newsletter_id\":\"\",\"footer_height\":60,\"footer_bg_color\":\"\",\"type\":\"text\",\"text\":{\"1\":\"<p><img alt=\\\"\\\" height=\\\"400\\\" src=\\\"http:\\/\\/digital-cdn.net\\/1\\/image\\/data\\/journal2\\/blog\\/blog-style-popup.jpg\\\" width=\\\"600\\\" \\/><\\/p>\\n\",\"3\":\"<p><img alt=\\\"\\\" height=\\\"400\\\" src=\\\"http:\\/\\/digital-cdn.net\\/1\\/image\\/data\\/journal2\\/blog\\/blog-style-popup.jpg\\\" width=\\\"600\\\" \\/><\\/p>\\n\"},\"text_font\":[],\"text_height\":\"\",\"image\":\"no_image.jpg\",\"content_overflow\":\"0\",\"disable_mobile\":\"1\",\"status\":\"1\",\"width\":600,\"height\":\"380\",\"background\":{\"value\":{\"bgimage_attach\":\"scroll\"}},\"button_1\":\"0\",\"button_1_link\":{\"menu_type\":\"custom\"},\"button_1_icon\":{\"options\":{\"font_size\":\"16px\"}},\"button_1_new_window\":\"0\",\"button_1_text\":{\"value\":{\"1\":\"\",\"3\":\"\"}},\"button_1_font\":{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\"}},\"button_1_bgcolor\":\"\",\"button_1_hover_bgcolor\":\"\",\"button_2\":\"0\",\"button_2_link\":{\"menu_type\":\"custom\"},\"button_2_icon\":{\"options\":{\"font_size\":\"16px\"}},\"button_2_new_window\":\"0\",\"button_2_text\":{\"value\":{\"1\":\"\",\"3\":\"\"}},\"button_2_font\":{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\"}},\"button_2_bgcolor\":\"\",\"button_2_hover_bgcolor\":\"\",\"button_submit_icon\":{\"options\":{\"font_size\":\"16px\"}},\"button_submit_text\":{\"value\":{\"1\":\"\",\"3\":\"\"}},\"button_submit_font\":{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\"}},\"button_submit_bgcolor\":\"\",\"button_submit_hover_bgcolor\":\"\",\"button_submit_position\":\"center\",\"do_not_show_again\":\"1\",\"do_not_show_again_text\":{\"value\":{\"1\":\"\",\"3\":\"\"}},\"do_not_show_again_font\":{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\"}},\"do_not_show_again_cookie\":\"2a99fre8kt9\",\"sort_order\":\"\",\"general_is_open\":true,\"header_is_open\":true,\"newsletter_is_open\":true,\"footer_is_open\":true,\"button_submit_icon_position\":\"left\",\"button_1_icon_position\":\"left\",\"button_2_icon_position\":\"left\",\"content_is_open\":true,\"top_bottom_is_open\":true}'),(234,'journal2_blog_side_posts','{\"general_is_open\":true,\"close_others\":false,\"module_name\":\"Latest Posts\",\"module_type\":\"newest\",\"limit\":5,\"title\":{\"value\":{\"1\":\"Latest Posts\",\"3\":\"\"}}}'),(235,'journal2_blog_categories','{\"general_is_open\":true,\"close_others\":false,\"module_name\":\"Blog Categories\",\"title\":{\"value\":{\"1\":\"Blog Categories\",\"3\":\"Blog Categories\"}}}'),(236,'journal2_blog_comments','{\"general_is_open\":true,\"close_others\":false,\"module_name\":\"Latest Comments\",\"limit\":5,\"title\":{\"value\":{\"1\":\"Latest Comments\",\"3\":\"Latest Comments\"}}}'),(237,'journal2_blog_search','{\"general_is_open\":true,\"close_others\":false,\"module_name\":\"Blog Search\",\"title\":{\"value\":{\"1\":\"\",\"3\":\"\"}},\"placeholder\":{\"value\":{\"1\":\"Blog Search\",\"3\":\"Blog Search\"}}}'),(238,'journal2_blog_tags','{\"general_is_open\":true,\"close_others\":false,\"module_name\":\"Filter by Tag\",\"limit\":15,\"title\":{\"value\":{\"1\":\"Filter by Tag\",\"3\":\"Filter by Tag\"}}}'),(239,'journal2_blog_posts','{\"general_is_open\":true,\"top_bottom_is_open\":true,\"close_others\":false,\"module_name\":\"Home Posts\",\"top_bottom_placement\":0,\"module_padding\":\"0\",\"background\":{\"value\":{\"bgimage_attach\":\"scroll\",\"bgimage_repeat\":\"repeat\",\"bgimage_position\":\"center\",\"bgcolor\":{\"value\":{\"color\":\"\"}},\"bgimage\":{\"value\":{\"image\":\"\"}}}},\"fullwidth\":\"0\",\"margin_top\":\"20\",\"margin_bottom\":\"10\",\"module_type\":\"newest\",\"posts\":[],\"display\":\"grid\",\"items_per_row\":{\"range\":\"1,10\",\"step\":\"1\",\"value\":{\"mobile\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"mobile1\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet1\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet2\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop1\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop2\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop1\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop2\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"}}},\"description\":1,\"description_limit\":\"145\",\"limit\":\"6\",\"content_align\":\"left\",\"image_width\":\"400\",\"image_height\":250,\"image_type\":\"crop\",\"carousel\":\"1\",\"carousel_arrows\":\"top\",\"carousel_buttons\":1,\"autoplay\":\"0\",\"pause_on_hover\":\"1\",\"transition_speed\":\"400\",\"transition_delay\":\"3000\",\"enable_on_phone\":\"1\",\"enable_on_tablet\":\"1\",\"enable_on_desktop\":\"1\",\"title\":{\"value\":{\"1\":\"Recent Blog Articles\",\"3\":\"Recent Blog Articles\"}},\"module_background\":{\"value\":{\"bgimage_attach\":\"scroll\"}},\"touch_drag\":\"0\",\"disable_mobile\":\"0\",\"carousel_bullets\":\"1\"}'),(240,'journal2_slider','{\"module_name\":\"Blog Header\",\"width\":\"\",\"height\":\"150\",\"hideonmobile\":\"1\",\"hidecaptionsonmobile\":\"0\",\"timer\":\"none\",\"js_options\":{\"delay\":4000,\"onHoverStop\":\"off\",\"thumbWidth\":100,\"thumbHeight\":75,\"thumbAmount\":4,\"hideThumbs\":1,\"navigationType\":\"none\",\"navigationArrows\":\"solo\",\"navigationStyle\":\"round\",\"navigationHAlign\":\"center\",\"navigationVAlign\":\"bottom\",\"navigationHOffset\":\"\",\"navigationVOffset\":\"20\"},\"preload_images\":\"1\",\"background\":{\"value\":{\"bgimage_attach\":\"scroll\"}},\"fullwidth\":\"1\",\"margin_top\":\"\",\"margin_bottom\":\"\",\"slides\":[{\"is_open\":true,\"slide_name\":\"\",\"image\":{\"1\":\"data\\/journal2\\/blog\\/blog-header.jpg\",\"3\":\"\"},\"thumb\":{\"1\":\"\",\"3\":\"\"},\"transition\":\"fade\",\"slotamount\":\"\",\"masterspeed\":800,\"delay\":\"\",\"captions\":[{\"is_open\":true,\"caption_name\":\"\",\"type\":\"text\",\"video_type\":\"youtube\",\"video_yt_id\":\"\",\"video_vm_id\":\"\",\"video_path\":\"\",\"video_fullwidth\":0,\"video_width\":\"\",\"video_height\":\"\",\"video_autoplay\":0,\"video_autoplayonlyfirsttime\":0,\"video_nextslideatend\":1,\"video_volume\":1,\"text_font\":{\"value\":{\"font_type\":\"google\",\"font_size\":\"35px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Droid Serif\",\"font_weight\":\"regular\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"uppercase\",\"font_subset\":[\"latin\"],\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}}},\"text_color\":\"\",\"text_bgcolor\":\"\",\"text_hover_color\":\"\",\"text_hover_bg_color\":\"\",\"text_border\":{\"value\":{\"border_rounded\":\"px\"}},\"text_hover_border_color\":\"\",\"text_padding_top\":\"\",\"text_padding_right\":\"\",\"text_padding_bottom\":\"\",\"text_padding_left\":\"\",\"text_line_height\":\"\",\"text_align\":\"center\",\"x\":\"390\",\"y\":\"40\",\"animation_in\":\"customin\",\"animation_out\":\"fadeout\",\"custom_in_transition_x\":\"\",\"custom_in_transition_y\":\"\",\"custom_in_scale_x\":\"\",\"custom_in_scale_y\":\"\",\"custom_in_rotation_x\":\"90\",\"custom_in_rotation_y\":\"\",\"custom_in_rotation_z\":\"\",\"transformOriginXin\":\"top\",\"transformOriginYin\":\"center\",\"custom_in_transform_perspective\":\"900\",\"custom_in_opacity\":\"1\",\"custom_out_transition_x\":\"\",\"custom_out_transition_y\":\"\",\"custom_out_scale_x\":\"\",\"custom_out_scale_y\":\"\",\"custom_out_rotation_x\":\"\",\"custom_out_rotation_y\":\"\",\"custom_out_rotation_z\":\"\",\"transformOriginXout\":\"center\",\"transformOriginYout\":\"center\",\"custom_out_transform_perspective\":\"500\",\"custom_out_opacity\":\"1\",\"speed\":\"700\",\"start\":\"750\",\"endspeed\":\"\",\"end\":\"\",\"status\":1,\"sort_order\":\"\",\"link\":{\"menu_type\":\"custom\"},\"link_new_window\":\"0\",\"easing\":\"easeOutBack\",\"endeasing\":\"easeInOutQuart\",\"text\":{\"value\":{\"1\":\"Welcome to Our Blog\",\"3\":\"\"}},\"animations_is_open\":true,\"image\":{\"1\":[],\"3\":[]}},{\"is_open\":true,\"caption_name\":\"\",\"type\":\"text\",\"video_type\":\"youtube\",\"video_yt_id\":\"\",\"video_vm_id\":\"\",\"video_path\":\"\",\"video_fullwidth\":0,\"video_width\":\"\",\"video_height\":\"\",\"video_autoplay\":0,\"video_autoplayonlyfirsttime\":0,\"video_nextslideatend\":1,\"video_volume\":1,\"text_font\":{\"value\":{\"font_type\":\"google\",\"font_size\":\"17px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Droid Serif\",\"font_weight\":\"regular\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\",\"font_subset\":[\"latin\"],\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}}},\"text_color\":\"\",\"text_bgcolor\":\"\",\"text_hover_color\":\"\",\"text_hover_bg_color\":\"\",\"text_border\":{\"value\":{\"border_rounded\":\"px\"}},\"text_hover_border_color\":\"\",\"text_padding_top\":\"\",\"text_padding_right\":\"\",\"text_padding_bottom\":\"\",\"text_padding_left\":\"\",\"text_line_height\":\"\",\"text_align\":\"center\",\"x\":\"300\",\"y\":\"85\",\"animation_in\":\"customin\",\"animation_out\":\"fadeout\",\"custom_in_transition_x\":\"\",\"custom_in_transition_y\":\"\",\"custom_in_scale_x\":\"\",\"custom_in_scale_y\":\"\",\"custom_in_rotation_x\":\"90\",\"custom_in_rotation_y\":\"\",\"custom_in_rotation_z\":\"\",\"transformOriginXin\":\"top\",\"transformOriginYin\":\"center\",\"custom_in_transform_perspective\":\"900\",\"custom_in_opacity\":\"1\",\"custom_out_transition_x\":\"\",\"custom_out_transition_y\":\"\",\"custom_out_scale_x\":\"\",\"custom_out_scale_y\":\"\",\"custom_out_rotation_x\":\"\",\"custom_out_rotation_y\":\"\",\"custom_out_rotation_z\":\"\",\"transformOriginXout\":\"center\",\"transformOriginYout\":\"center\",\"custom_out_transform_perspective\":\"500\",\"custom_out_opacity\":\"1\",\"speed\":\"700\",\"start\":\"950\",\"endspeed\":\"\",\"end\":\"\",\"status\":1,\"sort_order\":\"\",\"link\":{\"menu_type\":\"custom\"},\"link_new_window\":\"0\",\"easing\":\"easeOutBack\",\"endeasing\":\"easeInOutQuart\",\"text\":{\"value\":{\"1\":\"You can customize every single blog page with any modules, in any position\",\"3\":\"\"}},\"animations_is_open\":true,\"image\":[]}],\"status\":1,\"sort_order\":\"\",\"link\":{\"menu_type\":\"custom\"},\"link_new_window\":\"0\",\"easing\":\"easeInOutQuart\"}],\"general_is_open\":true,\"navigation_is_open\":true,\"top_bottom_is_open\":true}'),(241,'journal2_popup','{\"module_name\":\"Contact Form\",\"close_button\":\"1\",\"padding\":\"\",\"title\":{\"value\":{\"1\":\"Custom Order Form\",\"3\":\"Custom Order Form\"}},\"title_font\":{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}}},\"title_bg_color\":{\"value\":{\"color\":\"rgb(221, 0, 23)\"}},\"title_height\":\"45\",\"newsletter\":\"0\",\"newsletter_bg_color\":\"\",\"newsletter_height\":80,\"newsletter_id\":\"\",\"footer_height\":\"60\",\"footer_bg_color\":\"\",\"type\":\"contact\",\"text\":[],\"text_font\":[],\"text_height\":\"\",\"image\":\"no_image.jpg\",\"content_overflow\":\"1\",\"disable_mobile\":\"0\",\"status\":\"1\",\"width\":600,\"height\":300,\"background\":{\"value\":{\"bgimage_attach\":\"scroll\"}},\"button_1\":\"0\",\"button_1_link\":{\"menu_type\":\"custom\"},\"button_1_icon\":{\"options\":{\"font_size\":\"16px\"}},\"button_1_new_window\":\"0\",\"button_1_text\":{\"value\":{\"1\":\"\",\"3\":\"\"}},\"button_1_font\":{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\"}},\"button_1_bgcolor\":\"\",\"button_1_hover_bgcolor\":\"\",\"button_2\":\"0\",\"button_2_link\":{\"menu_type\":\"custom\"},\"button_2_icon\":{\"options\":{\"font_size\":\"16px\"}},\"button_2_new_window\":\"0\",\"button_2_text\":{\"value\":{\"1\":\"\",\"3\":\"\"}},\"button_2_font\":{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\"}},\"button_2_bgcolor\":\"\",\"button_2_hover_bgcolor\":\"\",\"button_submit_icon\":{\"options\":{\"font_size\":\"16px\"}},\"button_submit_text\":{\"value\":{\"1\":\"Send\",\"3\":\"\"}},\"button_submit_font\":{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\"}},\"button_submit_bgcolor\":\"\",\"button_submit_hover_bgcolor\":\"\",\"button_submit_position\":\"center\",\"do_not_show_again\":\"1\",\"do_not_show_again_text\":{\"value\":{\"1\":\"\",\"3\":\"\"}},\"do_not_show_again_font\":{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\"}},\"do_not_show_again_cookie\":\"vlawttep14i\",\"sort_order\":\"\",\"general_is_open\":true,\"header_is_open\":true,\"newsletter_is_open\":true,\"footer_is_open\":true,\"button_submit_icon_position\":\"left\",\"button_1_icon_position\":\"left\",\"button_2_icon_position\":\"left\",\"content_is_open\":true,\"top_bottom_is_open\":true}'),(242,'journal2_product_tabs','{\"module_name\":\"Enquiry Button\",\"name\":{\"value\":{\"1\":\"Send Enquiry\",\"3\":\"Send Enquiry\"}},\"icon_status\":\"1\",\"icon\":{\"options\":{\"font_size\":\"17px\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}},\"top\":\"\",\"left\":\"\"},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe67b;\",\"class\":\"envelope\"}},\"icon_border\":{\"value\":{\"border_rounded\":\"px\"}},\"icon_bg_color\":\"\",\"icon_width\":\"\",\"icon_height\":\"\",\"content_type\":\"enquiry\",\"content\":[],\"popup\":\"241\",\"global\":\"0\",\"products\":[{\"data\":{\"id\":\"269\",\"name\":\"Cool Boots\"}},{\"data\":{\"id\":\"179\",\"name\":\"Black &amp; White Straw Hat\"}}],\"categories\":[],\"manufacturers\":[],\"store_id\":-1,\"status\":1,\"sort_order\":\"\",\"position\":\"tab\",\"option_position\":\"top\"}');
/*!40000 ALTER TABLE `oc2_journal2_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_journal2_newsletter`
--

DROP TABLE IF EXISTS `oc2_journal2_newsletter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_journal2_newsletter` (
  `email` varchar(128) NOT NULL,
  `token` varchar(64) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_journal2_newsletter`
--

LOCK TABLES `oc2_journal2_newsletter` WRITE;
/*!40000 ALTER TABLE `oc2_journal2_newsletter` DISABLE KEYS */;
INSERT INTO `oc2_journal2_newsletter` (`email`, `token`, `store_id`) VALUES ('candicemceachren@gmail.com','e0108458a3f422c47988146349846276a8ad598c',0),('nmmercer_1@hotmail.com','97b2b369a6ba3bd88fd900cc78bbb4034d0531d8',0),('superninjendo@gmail.com','4d1512d5e9b744f5bbda4482f9b8386f98ee6dc7',0),('corey_maunu_@hotmail.com','bac9fa01a5e156eaa53fc4bef7d1171789bfc82b',0),('lesleygruhn@gmail.com','3731391b336894dcf88bf967b138940b31e06e90',0),('dcurtis03@gmail.com','ff66c63727127e0a09ef585b1db767073b76c9e8',0),('heffalump23@yahoo.com','0c96b984740ec23de400df95975c8fa765ce281d',0),('mpw3333@gmail.com','7901eb3f7e9ae4bbeb3420c2de812e6a5f7dc27c',0),('bwy007@gmail.com','fc91e10bc15e617f0502b71e494f86f021de60c4',0),('donavon.saltvold@fortisalberta.com','3d30e9818067b51423fb4409d3a47756c70f195a',0),('donnaobrochta9474@hotmail.com','7086313142f098e49c7c7fff52e4a50b2086e708',0),('jiezhuang1974@gmail.com','549df907501ddf481aa1df6909be52feeca393c3',0),('mark.otto1962@gmail.com','a0ef7e062ff8719b249ff47dd27267e24913cc7a',0),('dan.musica@shaw.ca','5852bfc81e8b3fc9775d000788b0dca7a5be6ee3',0),('emmerling1@hotmail.com','ca6b73f9ad5e82aa8c84626a1acbca0e1b6aa27d',0),('paltobelli@gmail.com','94db3ab67f06a77f4336988427d6cad662faa829',0),('Matthew.li@shaw.ca','e6c879b2cdc9253412bf3b5b498064d2ad628cae',0),('Juliamheistad@gmail.com','fb0e0c5cae0c5670174a11784130171f56644ce6',0),('dferchoff@gmail.com','11b969e978afa597b863564308844cb526b4fb3d',0),('Bpolvi@gmail.com','88b6eec2672ce8d4bfff4bcda2f3226dbc2fb946',0),('Apolowich@me.com','83b98e5ed5076054a2aeeff102547ec53a583527',0);
/*!40000 ALTER TABLE `oc2_journal2_newsletter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_journal2_settings`
--

DROP TABLE IF EXISTS `oc2_journal2_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_journal2_settings` (
  `theme_id` int(11) NOT NULL DEFAULT '0',
  `key` varchar(64) NOT NULL,
  `category` varchar(64) NOT NULL,
  `value` mediumtext NOT NULL,
  `serialized` tinyint(1) NOT NULL,
  PRIMARY KEY (`key`,`theme_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_journal2_settings`
--

LOCK TABLES `oc2_journal2_settings` WRITE;
/*!40000 ALTER TABLE `oc2_journal2_settings` DISABLE KEYS */;
INSERT INTO `oc2_journal2_settings` (`theme_id`, `key`, `category`, `value`, `serialized`) VALUES (2,'catalog_header_curr2','catalog','hidden',0),(2,'notification_show_close','notification','always',0),(2,'quickview_button_icon_hover','productgrid','{\"value\":{\"color\":\"\"}}',1),(2,'product_grid_quickview_button_font_hover','productgrid','{\"value\":{\"color\":\"\"}}',1),(2,'product_grid_details_padding','productgrid','{\"value\":{\"text\":\"\"}}',1),(2,'product_grid_button_bottom_margin','productgrid','{\"value\":{\"text\":\"\"}}',1),(2,'product_grid_quickview_button_bg_hover','productgrid','{\"value\":{\"color\":\"rgb(68, 67, 73)\"}}',1),(2,'product_grid_details_bg_hover','productgrid','{\"value\":{\"color\":\"\"}}',1),(2,'product_grid_quickview_button_border_hover','productgrid','{\"value\":{\"color\":\"rgb(68, 67, 73)\"}}',1),(2,'product_grid_quickview_button_bg','productgrid','{\"value\":{\"color\":\"rgb(221, 0, 23)\"}}',1),(2,'rating_offset_y','productgrid','{\"value\":{\"text\":\"-60\"}}',1),(2,'product_grid_hover_border','productgrid','{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}',1),(2,'rating_offset_x','productgrid','{\"value\":{\"text\":\"-47\"}}',1),(2,'product_grid_soft_shadow','productgrid','none',0),(2,'product_grid_button_tooltip_bg_color','productgrid','{\"value\":{\"color\":\"rgb(68, 67, 73)\"}}',1),(2,'product_grid_button_tooltip_font','productgrid','{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}',1),(2,'product_grid_item_bg','productgrid','{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}',1),(2,'product_grid_button_width_px','productgrid','{\"value\":{\"text\":\"35\"}}',1),(2,'product_grid_button_height_px','productgrid','{\"value\":{\"text\":\"35\"}}',1),(2,'product_grid_quickview_button_width_px','productgrid','{\"value\":{\"text\":\"40\"}}',1),(2,'product_grid_quickview_button_height_px','productgrid','{\"value\":{\"text\":\"40\"}}',1),(2,'product_grid_quickview_button_tooltip_font','productgrid','{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}',1),(2,'product_grid_quickview_button_tooltip_bg_color','productgrid','{\"value\":{\"color\":\"rgb(68, 67, 73)\"}}',1),(2,'product_grid_wishlist_icon_tip_bg','productgrid','{\"value\":{\"color\":\"rgb(68, 67, 73)\"}}',1),(2,'product_grid_wishlist_icon_tip_font','productgrid','{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}',1),(2,'product_grid_wishlist_icon_bg_hover','productgrid','{\"value\":{\"color\":\"rgb(221, 0, 23)\"}}',1),(2,'product_grid_wishlist_icon_bg','productgrid','{\"value\":{\"color\":\"rgb(68, 67, 73)\"}}',1),(2,'product_grid_details_tip_color','productgrid','{\"value\":{\"color\":\"\"}}',1),(2,'product_grid_details_bg','productgrid','{\"value\":{\"color\":\"\"}}',1),(2,'product_grid_name_font_hover','productgrid','{\"value\":{\"color\":\"rgb(221, 0, 23)\"}}',1),(2,'product_grid_price_background','productgrid','{\"value\":{\"color\":\"\"}}',1),(2,'product_grid_wishlist_font_hover','productgrid','{\"value\":{\"color\":\"\"}}',1),(2,'product_grid_image_overlay','productgrid','{\"value\":{\"color\":\"\"}}',1),(2,'product_grid_wishlist_font','productgrid','{\"value\":{\"font_type\":\"system\",\"font_size\":\"11px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(51, 55, 69)\"}}}}',1),(2,'product_grid_quickview_button_font','productgrid','{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"\"}}}}',1),(2,'product_grid_button_font','productgrid','{\"value\":{\"font_type\":\"none\",\"font_size\":\"12px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"letter_spacing\":\"-0\"}}',1),(2,'product_grid_name_font','productgrid','{\"value\":{\"font_type\":\"google\",\"font_size\":\"14px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Droid Serif\",\"font_weight\":\"regular\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(51, 55, 69)\"}},\"font_subset\":[\"latin\"],\"letter_spacing\":\"\"}}',1),(2,'product_grid_price_font','productgrid','{\"value\":{\"font_type\":\"google\",\"font_size\":\"14px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Droid Serif\",\"font_weight\":\"regular\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"\"}},\"font_subset\":[\"latin\"]}}',1),(2,'product_grid_old_price_font','productgrid','{\"value\":{\"font_type\":\"google\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Droid Serif\",\"font_weight\":\"regular\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(221, 0, 23)\"}},\"font_subset\":[\"latin\"]}}',1),(2,'product_grid_wishlist_icon','productgrid','{\"value\":{\"options\":{\"font_size\":\"17px\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}},\"top\":\"\",\"left\":\"\"},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe663;\",\"class\":\"heart3\"}}}',1),(2,'product_grid_compare_icon','productgrid','{\"value\":{\"options\":{\"font_size\":\"18px\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}},\"top\":\"\"},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe025;\",\"class\":\"refresh\"}}}',1),(2,'product_grid_quickview_button_icon','productgrid','{\"value\":{\"options\":{\"font_size\":\"20px\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}},\"top\":\"-1\"},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe660;\",\"class\":\"eye\"}}}',1),(2,'product_grid_button_icon','productgrid','{\"value\":{\"options\":{\"font_size\":\"20px\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}},\"top\":\"\",\"left\":\"\"},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe69a;\",\"class\":\"myFont3\"}}}',1),(2,'product_grid_wishlist_icon_display','productgrid','icon',0),(2,'product_grid_wishlist_icon_position','productgrid','button',0),(2,'product_grid_wishlist_icon_on_hover','productgrid','on',0),(2,'product_grid_wishlist_icon_border','productgrid','{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"%\",\"border\":{\"value\":{\"text\":\"\"}},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"50\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"},\"border_color\":{\"value\":{\"color\":\"\"}}}}',1),(2,'product_grid_wishlist_icon_bg_width','productgrid','{\"value\":{\"text\":\"35\"}}',1),(2,'product_grid_wishlist_icon_bg_height','productgrid','{\"value\":{\"text\":\"35\"}}',1),(2,'product_grid_wishlist_icon_tip_border','productgrid','{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"2\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}',1),(2,'product_grid_quickview_button_width','productgrid','{\"value\":{\"text\":\"\"}}',1),(2,'product_grid_quickview_button_height','productgrid','{\"value\":{\"text\":\"\"}}',1),(2,'product_grid_quickview_button_tooltip_border','productgrid','{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"2\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}',1),(2,'product_grid_quickview_button_border','productgrid','{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"%\",\"border\":{\"value\":{\"text\":\"1\"}},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"50\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"},\"border_color\":{\"value\":{\"color\":\"rgb(221, 0, 23)\"}}}}',1),(2,'product_grid_quickview_offset_y','productgrid','{\"value\":{\"text\":\"-25\"}}',1),(2,'product_grid_quickview_offset_x','productgrid','{\"value\":{\"text\":\"-20\"}}',1),(2,'product_grid_quickview_button_icon_display','productgrid','icon',0),(2,'product_grid_quickview_button_icon_position','productgrid','left',0),(2,'product_grid_button_border','productgrid','{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"%\",\"border\":{\"value\":{\"text\":\"\"}},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"50\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"},\"border_color\":{\"value\":{\"color\":\"\"}}}}',1),(2,'product_grid_quickview_button_active_shadow','productgrid','inset 0 1px 10px rgba(0, 0, 0, 0.8)',0),(2,'product_grid_button_tooltip_border','productgrid','{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"2\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}',1),(2,'product_grid_quickview_status','productgrid','hover',0),(2,'product_grid_button_height','productgrid','{\"value\":\"\"}',1),(2,'product_grid_button_width','productgrid','{\"value\":\"\"}',1),(2,'product_grid_button_icon_position','productgrid','left',0),(2,'product_grid_button_icon_display','productgrid','icon',0),(2,'product_grid_details_tip_offset_y','productgrid','{\"value\":{\"text\":\"-20\"}}',1),(2,'product_grid_button_block_button','productgrid','inline-button',0),(2,'product_grid_button_active_shadow','productgrid','inset 0 1px 10px rgba(0, 0, 0, 0.8)',0),(2,'product_grid_details_tip_offset_x','productgrid','{\"value\":{\"text\":\"-10\"}}',1),(2,'product_grid_details_tip_size','productgrid','{\"value\":{\"text\":\"23\"}}',1),(2,'product_grid_price_pl','productgrid','{\"value\":{\"text\":\"\"}}',1),(2,'product_grid_price_pb','productgrid','{\"value\":{\"text\":\"\"}}',1),(2,'product_grid_price_pr','productgrid','{\"value\":{\"text\":\"\"}}',1),(2,'product_grid_price_pt','productgrid','{\"value\":{\"text\":\"\"}}',1),(2,'product_grid_details_tip','productgrid','never',0),(2,'product_grid_details_border','productgrid','{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":{\"text\":\"3\"}},\"border_radius_bottom\":{\"value\":{\"text\":\"3\"}}}}',1),(2,'product_grid_details_margin','productgrid','{\"value\":{\"text\":\"\"}}',1),(2,'product_grid_price_border','productgrid','{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":{\"text\":\"\"}},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":{\"text\":\"\"}},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"},\"border_color\":{\"value\":{\"color\":\"\"}}}}',1),(2,'product_grid_price_full','productgrid','inline-block',0),(2,'product_grid_name_overflow','productgrid','nowrap',0),(2,'product_grid_outofstock_label_status','productgrid','block',0),(2,'product_grid_special_label_status','productgrid','block',0),(2,'product_grid_image_overlay_opacity','productgrid','{\"value\":{\"text\":\"\"}}',1),(2,'product_grid_latest_label_status','productgrid','block',0),(2,'product_grid_item_padding','productgrid','{\"value\":{\"text\":\"7\"}}',1),(2,'product_grid_second_image','productgrid','1',0),(2,'product_grid_image_border','productgrid','{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":{\"text\":\"3\"}},\"border_radius_right\":{\"value\":{\"text\":\"3\"}},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}',1),(2,'product_grid_item_border','productgrid','{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"dotted\",\"border_radius_unit\":\"px\",\"border\":{\"value\":{\"text\":\"1\"}},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"},\"border_color\":{\"value\":{\"color\":\"rgb(204, 204, 204)\"}}}}',1),(2,'one_page_table_style','journalcheckout','dotted',0),(2,'countdown_product_page_border','countdown','{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":{\"text\":\"\"}},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"},\"border_color\":{\"value\":{\"color\":\"\"}}}}',1),(2,'pp_countdown_bg','countdown','{\"value\":{\"color\":\"rgb(244, 244, 244)\"}}',1),(2,'countdown_product_page_option_padding','countdown','{\"value\":{\"text\":\"0\"}}',1),(2,'countdown_product_page_option_bg','countdown','{\"value\":{\"color\":\"rgba(0, 0, 0, 0)\"}}',1),(2,'countdown_product_page_padding_left','countdown','{\"value\":{\"text\":\"7\"}}',1),(2,'pp_countdown_divider_color','countdown','{\"value\":{\"color\":\"rgb(153, 153, 153)\"}}',1),(2,'countdown_product_page_title_bg','countdown','{\"value\":{\"color\":\"rgb(221, 0, 23)\"}}',1),(2,'countdown_product_page_title','countdown','{\"value\":{\"1\":\"Hurry, This Offer Expires in:\"}}',1),(2,'countdown_product_page_title_font','countdown','{\"value\":{\"font_type\":\"system\",\"font_size\":\"14px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"ABeeZee\",\"font_weight\":\"bold\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\",\"font_subset\":[],\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}}}',1),(2,'countdown_product_page_title_align','countdown','left',0),(2,'countdown_product_page_padding_right','countdown','{\"value\":{\"text\":\"7\"}}',1),(2,'countdown_product_page_padding_top','countdown','{\"value\":{\"text\":\"7\"}}',1),(2,'countdown_product_page_padding_bottom','countdown','{\"value\":{\"text\":\"7\"}}',1),(2,'countdown_product_page_width','countdown','{\"value\":{\"text\":\"\"}}',1),(2,'pp_countdown_numbers_font','countdown','{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"ABeeZee\",\"font_weight\":\"regular\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(68, 67, 73)\"}},\"font_subset\":[]}}',1),(2,'countdown_text_font','countdown','{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\"}}',1),(2,'pp_countdown_text_font','countdown','{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\"}}',1),(2,'pp_countdown_divider_type','countdown','dotted',0),(2,'show_countdown_product_page','countdown','on',0),(2,'countdown_min','countdown','{\"value\":{\"1\":\"\",\"2\":\"\"}}',1),(2,'countdown_days','countdown','{\"value\":{\"1\":\"\",\"2\":\"\"}}',1),(2,'countdown_hours','countdown','{\"value\":{\"1\":\"\",\"2\":\"\"}}',1),(2,'countdown_sec','countdown','{\"value\":{\"1\":\"\",\"2\":\"\"}}',1),(2,'show_countdown','countdown','hover',0),(2,'countdown_divider_type','countdown','solid',0),(2,'countdown_numbers_font','countdown','{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\"}}',1),(2,'one_page_dividers_style','journalcheckout','dotted',0),(2,'one_page_table_border','journalcheckout','{\"value\":{\"color\":\"rgb(204, 204, 204)\"}}',1),(2,'one_page_title_padding_left','journalcheckout','{\"value\":\"\"}',1),(2,'one_page_status','journalcheckout','one-page',0),(2,'one_page_title_align','journalcheckout','center',0),(2,'one_page_title_line_height','journalcheckout','{\"value\":{\"text\":\"\"}}',1),(2,'one_page_title_padding_right','journalcheckout','{\"value\":\"\"}',1),(2,'one_page_title','journalcheckout','{\"value\":{\"1\":\"Quick Checkout\"}}',1),(2,'one_page_title_font','journalcheckout','{\"value\":{\"font_type\":\"google\",\"font_size\":\"30px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Droid Serif\",\"font_weight\":\"regular\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"uppercase\",\"font_subset\":[\"latin\"]}}',1),(2,'one_page_section_padding','journalcheckout','{\"value\":{\"text\":\"\"}}',1),(2,'one_page_text_input_border','journalcheckout','{\"value\":{\"border_rounded\":\"px\"}}',1),(2,'one_page_lang_coupon_button','journalcheckout','{\"value\":{\"1\":\"\"}}',1),(2,'one_page_section_font','journalcheckout','{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\"}}',1),(2,'one_page_title_border','journalcheckout','{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":{\"text\":\"0\"}},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":\"\"},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}',1),(2,'one_page_lang_coupon_placeholder','journalcheckout','{\"value\":{\"1\":\"\"}}',1),(2,'one_page_lang_voucher_button','journalcheckout','{\"value\":{\"1\":\"\"}}',1),(2,'one_page_lang_voucher_placeholder','journalcheckout','{\"value\":{\"1\":\"\"}}',1),(2,'one_page_table_height','journalcheckout','{\"value\":{\"text\":\"382\"}}',1),(2,'one_page_table_footer_font','journalcheckout','{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\"}}',1),(2,'one_page_text_product_image_border','journalcheckout','{\"value\":{\"border_rounded\":\"px\"}}',1),(2,'one_page_table_product_name_font','journalcheckout','{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\"}}',1),(2,'one_page_lang_your_pass','journalcheckout','{\"value\":{\"1\":\"\"}}',1),(2,'one_page_lang_register_selector','journalcheckout','{\"value\":{\"1\":\"\"}}',1),(2,'one_page_table_header_font','journalcheckout','{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\"}}',1),(2,'one_page_lang_coupon_voucher','journalcheckout','{\"value\":{\"1\":\"\"}}',1),(2,'one_page_lang_pers_details','journalcheckout','{\"value\":{\"1\":\"\"}}',1),(2,'one_page_lang_ship_address','journalcheckout','{\"value\":{\"1\":\"\"}}',1),(2,'one_page_lang_your_address','journalcheckout','{\"value\":{\"1\":\"\"}}',1),(2,'one_page_lang_returning','journalcheckout','{\"value\":{\"1\":\"\"}}',1),(2,'one_page_lang_ship_method','journalcheckout','{\"value\":{\"1\":\"\"}}',1),(2,'one_page_lang_payment_method','journalcheckout','{\"value\":{\"1\":\"\"}}',1),(2,'one_page_lang_shop_cart','journalcheckout','{\"value\":{\"1\":\"\"}}',1),(2,'one_page_confirm_button_align','journalcheckout','left',0),(2,'one_page_confirm_button_active_shadow','journalcheckout','inset 0 1px 10px rgba(0, 0, 0, 0.8)',0),(2,'one_page_lang_comments','journalcheckout','{\"value\":{\"1\":\"\"}}',1),(2,'one_page_confirm_button_width','journalcheckout','{\"value\":\"\"}',1),(2,'one_page_confirm_button_height','journalcheckout','{\"value\":\"\"}',1),(2,'one_page_lang_confirm_order','journalcheckout','{\"value\":{\"1\":\"\"}}',1),(2,'one_page_confirm_button_font','journalcheckout','{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\"}}',1),(2,'one_page_confirm_button_border','journalcheckout','{\"value\":{\"border_rounded\":\"px\"}}',1),(2,'one_page_dividers_color','journalcheckout','{\"value\":{\"color\":\"rgb(204, 204, 204)\"}}',1),(2,'one_page_section_bg','journalcheckout','{\"value\":{\"color\":\"rgb(250, 250, 250)\"}}',1),(2,'one_page_section_padding_l','journalcheckout','{\"value\":{\"text\":\"10\"}}',1),(2,'one_page_section_title_border','journalcheckout','{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":{\"text\":\"0\"}},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":\"\"},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}',1),(2,'one_page_lang_bill_address','journalcheckout','{\"value\":[]}',1),(2,'one_page_section_title_align','journalcheckout','left',0),(2,'one_page_section_border_settings','journalcheckout','{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":{\"text\":\"1\"}},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":\"\"},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"},\"border_color\":{\"value\":{\"color\":\"rgb(228, 228, 228)\"}}}}',1),(2,'one_page_section_title_bg','journalcheckout','{\"value\":{\"color\":\"rgb(68, 67, 73)\"}}',1),(2,'one_page_section_title_font','journalcheckout','{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}}}',1),(2,'one_page_default_auth','journalcheckout','register',0),(2,'one_page_show_fax','journalcheckout','block',0),(2,'one_page_show_company','journalcheckout','block',0),(2,'one_page_show_address_2','journalcheckout','block',0),(2,'one_page_coupon_status','journalcheckout','on',0),(2,'one_page_voucher_status','journalcheckout','on',0),(2,'one_page_lang_payment_details','journalcheckout','{\"value\":[]}',1),(2,'one_page_hide_shipping_option_label','journalcheckout','none',0),(2,'one_page_coupon_voucher_button_active_shadow','journalcheckout','inset 0 1px 10px rgba(0, 0, 0, 0.8)',0),(2,'one_page_coupon_voucher_button_border','journalcheckout','{\"value\":{\"border_rounded\":\"px\"}}',1),(2,'one_page_lang_reward_button','journalcheckout','{\"value\":[]}',1),(2,'one_page_lang_reward_placeholder','journalcheckout','{\"value\":[]}',1),(2,'one_page_lang_loading_text','journalcheckout','{\"value\":[]}',1),(2,'catalog_header_lang2','catalog','hidden',0),(2,'side_list_price','catalog','inline-block',0),(2,'catalog_list_name','catalog','table',0),(1,'body_font','general','{\"value\":{\"font_type\":\"system\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Lato\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(51, 55, 69)\"}},\"font_subset\":[\"latin\"]}}',1),(2,'notification_position','notification','top-right',0),(2,'catalog_list_compare','catalog','inline-block',0),(2,'catalog_list_price','catalog','inline-block',0),(2,'catalog_list_wishlist','catalog','inline-block',0),(2,'catalog_list_cart','catalog','block',0),(2,'catalog_grid_main_menu_name','catalog','table',0),(2,'catalog_grid_main_menu_compare','catalog','none',0),(2,'catalog_grid_main_menu_price','catalog','inline-block',0),(2,'catalog_grid_main_menu_wishlist','catalog','none',0),(2,'catalog_grid_main_menu_cart','catalog','block',0),(2,'catalog_grid_cs_price','catalog','inline-block',0),(2,'catalog_grid_cs_name','catalog','table',0),(2,'catalog_grid_cs_compare','catalog','inline-block',0),(2,'catalog_grid_cs_cart','catalog','block',0),(2,'catalog_grid_cs_wishlist','catalog','inline-block',0),(2,'catalog_grid_side_carousel_compare','catalog','inline-block',0),(2,'catalog_grid_side_carousel_name','catalog','table',0),(2,'carousel_brand_product_grid_soft_shadow','modulecarousel','none',0),(2,'product_grid_button_icon_hover','productgrid','{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}',1),(2,'product_grid_button_bg','productgrid','{\"value\":{\"color\":\"\"}}',1),(2,'wish_button_icon_hover','productgrid','{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}',1),(2,'notification_status','notification','block',0),(1,'responsive_design','general','1',0),(1,'extended_layout','general','0',0),(1,'extended_layout_top_spacing','general','on',0),(1,'extended_layout_side_spacing','general','on',0),(1,'container_border','general','{\"value\":{\"border_rounded\":\"px\"}}',1),(1,'main_title_align','general','left',0),(1,'secondary_title_align','general','left',0),(1,'main_title_font','general','{\"value\":{\"font_type\":\"google\",\"font_size\":\"14px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Oswald\",\"font_weight\":\"regular\",\"font_style\":\"normal\",\"text_transform\":\"uppercase\",\"font_subset\":[\"latin\"],\"color\":{\"value\":{\"color\":\"rgb(250, 250, 250)\"}},\"letter_spacing\":\"\"}}',1),(1,'main_title_border','general','{\"value\":{\"border_rounded\":\"px\"}}',1),(1,'main_title_line_height','general','{\"value\":{\"text\":\"40\"}}',1),(1,'secondary_title_font','general','{\"value\":{\"font_type\":\"system\",\"font_size\":\"14px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"ABeeZee\",\"font_weight\":\"bold\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"font_subset\":[\"latin\"],\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}}}',1),(1,'secondary_title_border','general','{\"value\":{\"border_rounded\":\"px\"}}',1),(1,'secondary_title_padding_tb','general','{\"value\":{\"text\":\"8\"}}',1),(1,'secondary_title_padding_lr','general','{\"value\":{\"text\":\"10\"}}',1),(1,'general_button_active_shadow','general','inset 0 1px 10px rgba(0, 0, 0, 0.8)',0),(1,'general_button_font','general','{\"value\":{\"font_type\":\"google\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Oswald\",\"font_weight\":\"regular\",\"font_style\":\"normal\",\"text_transform\":\"uppercase\",\"font_subset\":[\"latin\"],\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}}}',1),(1,'general_button_border','general','{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":{\"text\":\"\"}},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"2\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"},\"border_color\":{\"value\":{\"color\":\"\"}}}}',1),(1,'general_button_width','general','{\"value\":{\"text\":\"10\"}}',1),(1,'general_button_height','general','{\"value\":{\"text\":\"33\"}}',1),(1,'breadcrumb_align','general','left',0),(1,'breadcrumb_font','general','{\"value\":{\"font_type\":\"system\",\"font_size\":\"12px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"bold\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}}}',1),(1,'scroll_top','general','1',0),(1,'scroll_top_icon','general','{\"value\":{\"options\":{\"font_size\":\"45px\",\"color\":{\"value\":{\"color\":\"rgb(63, 87, 101)\"}}},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe021;\",\"class\":\"upload\"}}}',1),(1,'body_bg_image','general','{\"value\":{\"bgimage_attach\":\"scroll\",\"bgimage_repeat\":\"repeat\",\"bgimage_position\":\"center\",\"bgimage\":{\"value\":{\"image\":\"data\\/journal2\\/pattern\\/dots.png\"}}}}',1),(1,'content_bg_image','general','{\"value\":{\"bgimage_attach\":\"scroll\"}}',1),(1,'extended_layout_bg_image','general','{\"value\":{\"bgimage_attach\":\"scroll\"}}',1),(1,'site_width','general','{\"value\":\"1024\",\"range\":\"1024,1920\",\"step\":\"2\"}',1),(1,'body_bg_color','general','{\"value\":{\"color\":\"rgb(228, 228, 228)\"}}',1),(1,'content_bg_color','general','{\"value\":{\"color\":\"rgb(238, 238, 238)\"}}',1),(1,'general_links_color','general','{\"value\":{\"color\":\"rgb(66, 139, 202)\"}}',1),(1,'general_links_hover','general','{\"value\":{\"color\":\"rgb(234, 35, 73)\"}}',1),(1,'main_title_bg','general','{\"value\":{\"color\":\"rgb(234, 35, 73)\"}}',1),(1,'secondary_title_bg','general','{\"value\":{\"color\":\"rgb(95, 104, 116)\"}}',1),(1,'general_button_font_hover','general','{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}',1),(1,'general_button_bg','general','{\"value\":{\"color\":\"rgb(234, 35, 73)\"}}',1),(1,'general_button_bg_hover','general','{\"value\":{\"color\":\"rgb(66, 139, 202)\"}}',1),(1,'breadcrumb_hover','general','{\"value\":{\"color\":\"rgb(234, 35, 73)\"}}',1),(1,'breadcrumb_bg_color','general','{\"value\":{\"color\":\"rgb(51, 55, 69)\"}}',1),(1,'ajax_loader','general','{\"value\":{\"image\":\"data\\/journal2\\/loader.gif\"}}',1),(1,'scroll_top_icon_hover','general','{\"value\":{\"color\":\"rgb(234, 35, 73)\"}}',1),(1,'general_button_border_hover','general','{\"value\":{\"color\":\"\"}}',1),(1,'breadcrumb_border','general','{\"value\":{\"border_rounded\":\"px\"}}',1),(1,'main_title_padding_left','general','{\"value\":{\"text\":\"10\"}}',1),(1,'main_title_padding_right','general','{\"value\":{\"text\":\"\"}}',1),(1,'extended_layout_bg_color','general','{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}',1),(1,'breadcrumb_status','general','block',0),(1,'scroll_to_top','general','1',0),(1,'old_browser_message','general','{\"value\":[]}',1),(2,'scroll_to_top','general','1',0),(2,'old_browser_message','general','{\"value\":[null,\"\"]}',1),(2,'lead_offset_left','general','{\"value\":\"\"}',1),(2,'breadcrumb_status','general','block',0),(2,'breadcrumb_full_bg_color','general','{\"value\":{\"color\":\"rgb(244, 244, 244)\"}}',1),(2,'leading_element','general','{\"value\":{\"image\":\"\"}}',1),(2,'breadcrumb_line_height','general','{\"value\":{\"text\":\"\"}}',1),(2,'breadcrumb_border','general','{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":\"\"},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":{\"text\":\"3\"}},\"border_radius_bottom\":{\"value\":{\"text\":\"3\"}}}}',1),(2,'main_title_padding_left','general','{\"value\":{\"text\":\"\"}}',1),(2,'extended_layout_bg_color','general','{\"value\":{\"color\":\"rgba(255, 255, 255, 0)\"}}',1),(2,'general_button_border_hover','general','{\"value\":{\"color\":\"rgb(171, 32, 45)\"}}',1),(2,'scroll_top_icon_hover','general','{\"value\":{\"color\":\"rgb(241, 196, 15)\"}}',1),(2,'ajax_loader','general','{\"value\":{\"image\":\"data\\/journal2\\/loader.gif\"}}',1),(2,'breadcrumb_hover','general','{\"value\":{\"color\":\"rgb(171, 32, 45)\"}}',1),(2,'breadcrumb_bg_color','general','{\"value\":{\"color\":\"\"}}',1),(2,'general_button_font_hover','general','{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}',1),(2,'general_button_bg','general','{\"value\":{\"color\":\"rgb(68, 67, 73)\"}}',1),(2,'general_button_bg_hover','general','{\"value\":{\"color\":\"rgb(171, 32, 45)\"}}',1),(2,'general_links_hover','general','{\"value\":{\"color\":\"rgb(221, 0, 23)\"}}',1),(2,'main_title_bg','general','{\"value\":{\"color\":\"\"}}',1),(2,'secondary_title_bg','general','{\"value\":{\"color\":\"\"}}',1),(2,'site_width','general','{\"value\":\"1920\",\"range\":\"1024,1920\",\"step\":\"2\"}',1),(2,'general_links_color','general','{\"value\":{\"color\":\"rgb(171, 32, 45)\"}}',1),(2,'body_bg_color','general','{\"value\":{\"color\":\"rgb(228, 228, 228)\"}}',1),(2,'content_bg_color','general','{\"value\":{\"color\":\"\"}}',1),(2,'product_grid_shadow','productgrid','hover',0),(2,'notification_shadow','notification','1',0),(2,'notification_show_image','notification','block',0),(2,'notification_hide','notification','{\"value\":{\"text\":\"10000000\"}}',1),(2,'notification_border','notification','{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"2\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}',1),(2,'notification_title_font','notification','{\"value\":{\"font_type\":\"google\",\"font_size\":\"17px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Roboto Condensed\",\"font_weight\":\"regular\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}},\"font_subset\":[\"latin\"],\"letter_spacing\":\"\"}}',1),(2,'notification_title_border','notification','{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}',1),(2,'notification_text_font','notification','{\"value\":{\"font_type\":\"none\",\"font_size\":\"14px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"\"}}}}',1),(2,'notification_image_border','notification','{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}',1),(2,'notification_close_color','notification','{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}',1),(2,'notification_close_hover','notification','{\"value\":{\"color\":\"rgb(221, 0, 23)\"}}',1),(2,'notification_bg_color','notification','{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}',1),(2,'notification_title_bg','notification','{\"value\":{\"color\":\"rgb(68, 67, 73)\"}}',1),(2,'notification_text_link_color','notification','{\"value\":{\"color\":\"rgb(168, 168, 168)\"}}',1),(2,'notification_text_link_hover','notification','{\"value\":{\"color\":\"rgb(221, 0, 23)\"}}',1),(2,'notification_offset_top','notification','{\"value\":{\"text\":\"\"}}',1),(2,'notification_cart_button_font','notification','{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}}}',1),(2,'notification_checkout_button_color_hover','notification','{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}',1),(2,'notification_checkout_button_font','notification','{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}}}',1),(2,'notification_cart_button_color_hover','notification','{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}',1),(2,'notification_buttons_status','notification','block',0),(2,'body_bg_image','general','{\"value\":{\"bgimage_attach\":\"fixed\",\"bgimage_repeat\":\"repeat\",\"bgimage_position\":\"center\",\"bgimage\":{\"value\":{\"image\":\"catalog\\/backgrounds\\/ISS_12974_00343.500x500.jpg\"}}}}',1),(2,'content_bg_image','general','{\"value\":{\"bgimage_attach\":\"scroll\",\"bgimage_repeat\":\"repeat\",\"bgimage_position\":\"center\"}}',1),(2,'extended_layout_bg_image','general','{\"value\":{\"bgimage_attach\":\"scroll\",\"bgimage_repeat\":\"no-repeat\",\"bgimage_position\":\"bottom\",\"bgimage\":{\"value\":{\"image\":\"\"}}}}',1),(2,'scroll_top_icon','general','{\"value\":{\"options\":{\"font_size\":\"45px\",\"color\":{\"value\":{\"color\":\"rgb(63, 87, 101)\"}}},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe021;\",\"class\":\"upload\"}}}',1),(2,'carousel_side_icon_hover','modulecarousel','{\"value\":{\"color\":\"rgb(221, 0, 23)\"}}',1),(2,'carousel_side_icon_offset_right','modulecarousel','{\"value\":{\"text\":\"5\"}}',1),(2,'carousel_brand_product_grid_item_border','modulecarousel','{\"value\":{\"border_rounded\":\"px\"}}',1),(2,'carousel_product_grid_item_border','modulecarousel','{\"value\":{\"border_rounded\":\"px\"}}',1),(2,'carousel_side_icon_offset_top','modulecarousel','{\"value\":{\"text\":\"-36\"}}',1),(2,'carousel_side_icon_offset_left','modulecarousel','{\"value\":{\"text\":\"2\"}}',1),(2,'carousel_side_icon_brands_offset_top','modulecarousel','{\"value\":{\"text\":\"-17\"}}',1),(2,'carousel_icon_offset_right','modulecarousel','{\"value\":{\"text\":\"-10\"}}',1),(2,'carousel_icon_offset_left','modulecarousel','{\"value\":{\"text\":\"10\"}}',1),(2,'carousel_icon_offset_top','modulecarousel','{\"value\":{\"text\":\"-56\"}}',1),(2,'carousel_side_left_icon','modulecarousel','{\"value\":{\"options\":{\"font_size\":\"22px\",\"color\":{\"value\":{\"color\":\"rgb(68, 67, 73)\"}}},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe61f;\",\"class\":\"play3\"}}}',1),(2,'carousel_side_icon_border','modulecarousel','{\"value\":{\"border_rounded\":\"px\"}}',1),(2,'carousel_side_right_icon','modulecarousel','{\"value\":{\"options\":{\"font_size\":\"22px\",\"color\":{\"value\":{\"color\":\"rgb(68, 67, 73)\"}}},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe620;\",\"class\":\"play4\"}}}',1),(2,'carousel_bullet_height','modulecarousel','{\"value\":{\"text\":\"10\"}}',1),(2,'carousel_bullet_margin','modulecarousel','{\"value\":{\"text\":\"8\"}}',1),(2,'carousel_title_hover','modulecarousel','{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}',1),(2,'carousel_title_bg_hover','modulecarousel','{\"value\":{\"color\":\"rgb(68, 67, 73)\"}}',1),(2,'carousel_icon_border','modulecarousel','{\"value\":{\"border_rounded\":\"px\"}}',1),(2,'carousel_bullet_width','modulecarousel','{\"value\":{\"text\":\"10\"}}',1),(2,'carousel_bullet_scale','modulecarousel','{\"value\":{\"text\":\"1\"}}',1),(2,'carousel_title_divider','modulecarousel','{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}',1),(2,'carousel_bullet_border','modulecarousel','{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"%\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"50\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}',1),(2,'carousel_title_bg','modulecarousel','{\"value\":{\"color\":\"\"}}',1),(2,'carousel_bullet_hover','modulecarousel','{\"value\":{\"color\":\"rgb(221, 0, 23)\"}}',1),(2,'carousel_icon_hover','modulecarousel','{\"value\":{\"color\":\"rgb(221, 0, 23)\"}}',1),(2,'carousel_bullet_color','modulecarousel','{\"value\":{\"color\":\"rgb(68, 67, 73)\"}}',1),(2,'carousel_right_icon','modulecarousel','{\"value\":{\"options\":{\"font_size\":\"16px\",\"color\":{\"value\":{\"color\":\"rgb(68, 67, 73)\"}},\"top\":\"\"},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe620;\",\"class\":\"play4\"}}}',1),(2,'carousel_left_icon','modulecarousel','{\"value\":{\"options\":{\"font_size\":\"16px\",\"color\":{\"value\":{\"color\":\"rgb(68, 67, 73)\"}},\"top\":\"\"},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe61f;\",\"class\":\"play3\"}}}',1),(2,'carousel_title_line_height','modulecarousel','{\"value\":{\"text\":\"37\"}}',1),(2,'carousel_title_font','modulecarousel','{\"value\":{\"font_type\":\"google\",\"font_size\":\"19px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Droid Serif\",\"font_weight\":\"regular\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"font_subset\":[\"latin\"],\"color\":{\"value\":{\"color\":\"\"}}}}',1),(2,'carousel_title_border','modulecarousel','{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":{\"text\":\"\"}},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":\"\"},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}',1),(2,'carousel_title_divider_type','modulecarousel','solid',0),(2,'carousel_brand_product_grid_shadow','modulecarousel','hover',0),(2,'carousel_product_grid_soft_shadow','modulecarousel','none',0),(2,'carousel_product_grid_shadow','modulecarousel','hover',0),(2,'carousel_product_shadow_mask','modulecarousel','on',0),(2,'carousel_brand_shadow_mask','modulecarousel','on',0),(2,'general_button_width','general','{\"value\":{\"text\":\"15\"}}',1),(2,'general_button_height','general','{\"value\":{\"text\":\"35\"}}',1),(2,'breadcrumb_align','general','center',0),(2,'breadcrumb_font','general','{\"value\":{\"font_type\":\"system\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Roboto Condensed\",\"font_weight\":\"bold\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(68, 67, 73)\"}},\"font_subset\":[\"latin\"]}}',1),(2,'scroll_top','general','1',0),(2,'headline_bullet_margin','moduleheadlinerotator','{\"value\":\"\"}',1),(2,'cta_button_bg','moduleheadlinerotator','{\"value\":{\"color\":\"rgb(0, 0, 0)\"}}',1),(2,'cta_button_bg_hover','moduleheadlinerotator','{\"value\":{\"color\":\"rgb(221, 0, 23)\"}}',1),(2,'cta_button_font_hover','moduleheadlinerotator','{\"value\":{\"color\":\"\"}}',1),(2,'cta_button_height','moduleheadlinerotator','{\"value\":{\"text\":\"45\"}}',1),(2,'headline_bullet_border','moduleheadlinerotator','{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}',1),(2,'cta_button_width','moduleheadlinerotator','{\"value\":{\"text\":\"20\"}}',1),(2,'cta_button_border','moduleheadlinerotator','{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":{\"text\":\"\"}},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":\"\"},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"},\"border_color\":{\"value\":{\"color\":\"\"}}}}',1),(2,'cta_button_font','moduleheadlinerotator','{\"value\":{\"font_type\":\"google\",\"font_size\":\"18px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Droid Serif\",\"font_weight\":\"italic\",\"font_style\":\"italic\",\"text_transform\":\"uppercase\",\"font_subset\":[\"latin\"],\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}},\"letter_spacing\":\"\"}}',1),(2,'cta_button_active_shadow','moduleheadlinerotator','inset 0 1px 10px rgba(0, 0, 0, 0.8)',0),(2,'headline_bullet_width','moduleheadlinerotator','{\"value\":\"\"}',1),(2,'headline_bullet_height','moduleheadlinerotator','{\"value\":\"\"}',1),(2,'headline_bullet_scale','moduleheadlinerotator','{\"value\":\"\"}',1),(2,'general_button_font','general','{\"value\":{\"font_type\":\"google\",\"font_size\":\"14px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Droid Serif\",\"font_weight\":\"regular\",\"font_style\":\"normal\",\"text_transform\":\"uppercase\",\"font_subset\":[\"latin\"],\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}},\"letter_spacing\":\"\"}}',1),(2,'general_button_border','general','{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"dotted\",\"border_radius_unit\":\"px\",\"border\":{\"value\":{\"text\":\"\"}},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"2\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"},\"border_color\":{\"value\":{\"color\":\"\"}}}}',1),(2,'view_more_text','headermenus','{\"value\":{\"1\":\"View More...\"}}',1),(2,'mixed_cms_padding_right','headermenus','{\"value\":{\"text\":\"\"}}',1),(2,'menu_product_grid_item_border','headermenus','{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":{\"text\":\"0\"}},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":\"\"},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}',1),(2,'mobile_menu_on','headermenus','tablet',0),(2,'main_menu_mobile_border_type','headermenus','solid',0),(2,'mobile_menu_cart_display','headermenus','on',0),(2,'mixed_cms_title_bg','headermenus','{\"value\":{\"color\":\"\"}}',1),(2,'view_more_font','headermenus','{\"value\":{\"font_type\":\"system\",\"font_size\":\"11px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"bold\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\"}}',1),(2,'contacts_icon_border','footer','{\"value\":{\"border_rounded\":\"px\"}}',1),(2,'footer_product_image_border','footer','{\"value\":{\"border_rounded\":\"px\"}}',1),(2,'footer_blog_image_border','footer','{\"value\":{\"border_rounded\":\"px\"}}',1),(2,'footer_post_date_icon_color','footer','{\"value\":{\"color\":\"rgb(244, 244, 244)\"}}',1),(2,'footer_post_comment_icon_color','footer','{\"value\":{\"color\":\"rgb(244, 244, 244)\"}}',1),(2,'footer_post_name_font','footer','{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"ABeeZee\",\"font_weight\":\"regular\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\",\"font_subset\":[],\"color\":{\"value\":{\"color\":\"\"}}}}',1),(2,'footer_post_price_date','footer','{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\"}}',1),(2,'footer_post_image_height','footer','{\"value\":{\"text\":\"30\"}}',1),(2,'footer_post_padding','footer','{\"value\":{\"text\":\"5\"}}',1),(2,'footer_post_image_width','footer','{\"value\":{\"text\":\"30\"}}',1),(2,'footer_html_heading_padding','footer','{\"value\":{\"text\":\"2\"}}',1),(2,'footer_html_heading_font','footer','{\"value\":{\"font_type\":\"google\",\"font_size\":\"14px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Droid Serif\",\"font_weight\":\"regular\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\",\"font_subset\":[\"latin\"],\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}}}',1),(2,'footer_post_divider','footer','{\"value\":{\"color\":\"rgb(80, 80, 80)\"}}',1),(2,'footer_post_divider_type','footer','dotted',0),(2,'html_line_height','footer','{\"value\":{\"text\":\"15\"}}',1),(2,'footer_html_p_font','footer','{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}}}',1),(2,'footer_product_name_overflow','footer','normal',0),(2,'footer_product_divider_type','footer','dotted',0),(2,'footer_product_image_width','footer','{\"value\":{\"text\":\"30\"}}',1),(2,'footer_product_image_height','footer','{\"value\":{\"text\":\"30\"}}',1),(2,'footer_product_padding','footer','{\"value\":{\"text\":\"5\"}}',1),(2,'footer_html_p_padding','footer','{\"value\":{\"text\":\"\"}}',1),(2,'footer_product_name_font','footer','{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}}}',1),(2,'footer_product_name_font_hover','footer','{\"value\":{\"color\":\"rgb(221, 0, 23)\"}}',1),(2,'footer_product_price_font','footer','{\"value\":{\"font_type\":\"none\",\"font_size\":\"14px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}}}',1),(2,'footer_product_old_price_font','footer','{\"value\":{\"font_type\":\"system\",\"font_size\":\"12px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(168, 168, 168)\"}}}}',1),(2,'footer_product_divider','footer','{\"value\":{\"color\":\"rgb(80, 80, 80)\"}}',1),(2,'copyright_font_settings','footer','{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"\"}}}}',1),(2,'contacts_icon_bg','footer','{\"value\":{\"color\":\"rgb(68, 67, 73)\"}}',1),(2,'contacts_icon_bg_hover','footer','{\"value\":{\"color\":\"rgb(105, 185, 207)\"}}',1),(2,'footer_tooltip_font','footer','{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}',1),(2,'footer_tooltip_bg_color','footer','{\"value\":{\"color\":\"rgb(105, 185, 207)\"}}',1),(2,'bottom_bar_bg','footer','{\"value\":{\"color\":\"rgb(244, 244, 244)\"}}',1),(2,'contacts_text_font_hover','footer','{\"value\":{\"color\":\"rgb(105, 185, 207)\"}}',1),(2,'contacts_text_font','footer','{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}}}',1),(2,'footer_bg_image','footer','{\"value\":{\"bgimage_attach\":\"scroll\",\"bgimage_repeat\":\"repeat\",\"bgimage_position\":\"center\",\"bgimage\":{\"value\":{\"image\":\"\"}}}}',1),(2,'contacts_bar_bg','footer','{\"value\":{\"color\":\"\"}}',1),(2,'footer_bg_color','footer','{\"value\":{\"color\":\"rgb(0, 0, 0)\"}}',1),(2,'footer_links_hover','footer','{\"value\":{\"color\":\"rgb(221, 0, 23)\"}}',1),(2,'html_font_color','footer','{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}',1),(2,'footer_titles_divider','footer','{\"value\":{\"color\":\"rgb(80, 80, 80)\"}}',1),(2,'bottom_bar_shadow','footer','none',0),(2,'boxed_bottom','footer','fullwidth-bar',0),(2,'bottom_bar_border','footer','{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":\"\"},\"border_radius_top\":{\"value\":{\"text\":\"\"}},\"border_radius_right\":{\"value\":{\"text\":\"\"}},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}',1),(2,'footer_tooltip_border','footer','{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"3\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}',1),(2,'contacts_bar_shadow','footer','none',0),(2,'contacts_display','footer','off',0),(2,'contacts_bar_border','footer','{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"dotted\",\"border_radius_unit\":\"px\",\"border\":{\"value\":{\"text\":\"\"}},\"border_top\":{\"value\":{\"text\":\"1\"}},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":{\"text\":\"1\"}},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"},\"border_color\":{\"value\":{\"color\":\"rgb(80, 80, 80)\"}}}}',1),(2,'footer_links','footer','{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}}}',1),(2,'footer_titles','footer','{\"value\":{\"font_type\":\"google\",\"font_size\":\"15px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Droid Serif\",\"font_weight\":\"regular\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"font_subset\":[\"latin\"],\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}},\"letter_spacing\":\"\"}}',1),(2,'footer_titles_divider_type','footer','dotted',0),(2,'footer_titles_align','footer','left',0),(2,'footer_border','footer','{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":\"\"},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}',1),(2,'footer_bottom_margin','footer','0',0),(2,'footer_top_margin','footer','20',0),(2,'fullwidth_footer','footer','fullwidth-footer',0),(2,'mixed_cms_margin_bottom','headermenus','{\"value\":{\"text\":\"10\"}}',1),(2,'menu_categories_link_bottom_margin','headermenus','{\"value\":{\"1\":\"jnjnjn\"}}',1),(2,'menu_product_grid_item_padding','headermenus','{\"value\":{\"text\":\"\"}}',1),(2,'mixed_cms_title_border','headermenus','{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"dotted\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":{\"text\":\"1\"}},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":\"\"},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"},\"border_color\":{\"value\":{\"color\":\"rgb(119, 119, 119)\"}}}}',1),(2,'view_more_font_hover','headermenus','{\"value\":{\"color\":\"\"}}',1),(2,'menu_product_grid_item_bg','headermenus','{\"value\":{\"color\":\"\"}}',1),(2,'mixed_cms_title_font','headermenus','{\"value\":{\"font_type\":\"google\",\"font_size\":\"16px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Droid Serif\",\"font_weight\":\"regular\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\",\"font_subset\":[\"latin\"],\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}}}',1),(2,'menu_html_padding_top','headermenus','{\"value\":{\"text\":\"8\"}}',1),(2,'menu_divider_hover','headermenus','{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}',1),(2,'menu_product_grid_price_font','headermenus','{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(42, 43, 46)\"}}}}',1),(2,'menu_product_grid_name_font_hover','headermenus','{\"value\":{\"color\":\"\"}}',1),(2,'mixed_cms_title_padding_bottom','headermenus','{\"value\":{\"text\":\"5\"}}',1),(2,'mixed_cms_heading_padding','headermenus','{\"value\":{\"text\":\"5\"}}',1),(2,'mixed_cms_heading_font','headermenus','{\"value\":{\"font_type\":\"google\",\"font_size\":\"16px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Droid Serif\",\"font_weight\":\"regular\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\",\"font_subset\":[\"latin\"],\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}}}',1),(2,'menu_html_title_padding_bottom','headermenus','{\"value\":{\"text\":\"\"}}',1),(2,'menu_html_title_padding_left','headermenus','{\"value\":{\"text\":\"\"}}',1),(2,'dropdown_shadow','headermenus','none',0),(2,'mega_menu_shadow','headermenus','none',0),(2,'menu_product_grid_name_font','headermenus','{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"\"}}}}',1),(2,'menu_html_title_padding_top','headermenus','{\"value\":{\"text\":\"\"}}',1),(2,'menu_categories_link_padding','headermenus','{\"value\":{\"text\":\"8\"}}',1),(2,'mega_menu_padding','headermenus','{\"value\":{\"text\":\"20\"}}',1),(2,'menu_categories_item_margin','headermenus','{\"value\":{\"text\":\"15\"}}',1),(2,'secondary_menu_bg_color','headermenus','{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}',1),(2,'dropdown_icon_hover','headermenus','{\"value\":{\"color\":\"\"}}',1),(2,'dropdown_divider','headermenus','{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}',1),(2,'menu_categories_link_font_hover','headermenus','{\"value\":{\"color\":\"rgb(221, 0, 23)\"}}',1),(2,'menu_categories_title_padding_top','headermenus','{\"value\":{\"text\":\"\"}}',1),(2,'main_menu_mobile_bg_color','headermenus','{\"value\":{\"color\":\"rgb(228, 228, 228)\"}}',1),(2,'menu_categories_title_padding_right','headermenus','{\"value\":{\"text\":\"\"}}',1),(2,'menu_product_grid_price_border','headermenus','{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":\"\"},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}',1),(2,'main_menu_border','headermenus','{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":{\"text\":\"\"}},\"border_top\":{\"value\":{\"text\":\"\"}},\"border_right\":{\"value\":{\"text\":\"\"}},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":{\"text\":\"\"}},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":{\"text\":\"\"}},\"border_radius_right\":{\"value\":{\"text\":\"\"}},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"},\"border_color\":{\"value\":{\"color\":\"\"}}}}',1),(2,'menu_categories_title_padding_bottom','headermenus','{\"value\":{\"text\":\"5\"}}',1),(2,'menu_product_grid_button_border','headermenus','{\"value\":{\"border_rounded\":\"px\"}}',1),(2,'menu_categories_title_padding_left','headermenus','{\"value\":{\"text\":\"\"}}',1),(2,'menu_html_title_bg','headermenus','{\"value\":{\"color\":\"\"}}',1),(2,'menu_html_bg','headermenus','{\"value\":{\"color\":\"\"}}',1),(2,'menu_brands_bg','headermenus','{\"value\":{\"color\":\"\"}}',1),(2,'menu_brands_title_font_hover','headermenus','{\"value\":{\"color\":\"\"}}',1),(2,'menu_brands_title_bg','headermenus','{\"value\":{\"color\":\"\"}}',1),(2,'dropdown_font_hover','headermenus','{\"value\":{\"color\":\"\"}}',1),(2,'dropdown_bg','headermenus','{\"value\":{\"color\":\"rgb(68, 67, 73)\"}}',1),(2,'dropdown_bg_hover','headermenus','{\"value\":{\"color\":\"rgb(221, 0, 23)\"}}',1),(2,'menu_categories_title_border_hover','headermenus','{\"value\":{\"color\":\"\"}}',1),(2,'menu_categories_title_bg_hover','headermenus','{\"value\":{\"color\":\"\"}}',1),(2,'menu_categories_title_bg','headermenus','{\"value\":{\"color\":\"\"}}',1),(2,'menu_categories_title_font_hover','headermenus','{\"value\":{\"color\":\"rgb(221, 0, 23)\"}}',1),(2,'menu_categories_bg','headermenus','{\"value\":{\"color\":\"\"}}',1),(2,'secondary_menu_link_hover_color','headermenus','{\"value\":{\"color\":\"rgb(221, 0, 23)\"}}',1),(2,'mega_menu_bg','headermenus','{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}',1),(2,'menu_divider','headermenus','{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}',1),(2,'menu_bg_hover','headermenus','{\"value\":{\"color\":\"rgb(0, 0, 0)\"}}',1),(2,'menu_font_hover','headermenus','{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}',1),(2,'main_menu_bg_full_color','headermenus','{\"value\":{\"color\":\"rgb(250, 250, 250)\"}}',1),(2,'mobile_plus_bg','headermenus','{\"value\":{\"color\":\"rgb(68, 67, 73)\"}}',1),(2,'mobile_plus_color','headermenus','{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}',1),(2,'top_menu_link_hover_bg_color','headermenus','{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}',1),(2,'top_menu_bg_color','headermenus','{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}',1),(2,'top_menu_border_color','headermenus','{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}',1),(2,'top_menu_link_hover_color','headermenus','{\"value\":{\"color\":\"rgb(221, 0, 23)\"}}',1),(2,'main_menu_bg_color','headermenus','{\"value\":{\"color\":\"rgb(250, 250, 250)\"}}',1),(2,'dropdown_link_icon','headermenus','{\"value\":{\"options\":{\"font_size\":\"10px\"},\"icon_type\":\"none\",\"icon\":{\"icon\":\"&#xe60e;\",\"class\":\"chevron-right\"}}}',1),(2,'dropdown_icon','headermenus','{\"value\":{\"options\":{\"font_size\":\"14px\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}},\"top\":\"-3\"},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe62c;\",\"class\":\"angle-right\"}}}',1),(2,'menu_categories_link_icon','headermenus','{\"value\":{\"options\":{\"font_size\":\"10px\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe62c;\",\"class\":\"angle-right\"}}}',1),(2,'mobile_text_font','headermenus','{\"value\":{\"font_type\":\"google\",\"font_size\":\"16px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Droid Serif\",\"font_weight\":\"regular\",\"font_style\":\"normal\",\"text_transform\":\"uppercase\",\"color\":{\"value\":{\"color\":\"rgb(68, 67, 73)\"}},\"font_subset\":[\"latin\"]}}',1),(2,'mobile_menu_text','headermenus','{\"value\":{\"1\":\"MENU\",\"2\":\"\"}}',1),(2,'mobile_menu_icon','headermenus','{\"value\":{\"options\":{\"font_size\":\"20px\",\"top\":\"-1\",\"color\":{\"value\":{\"color\":\"rgb(68, 67, 73)\"}}},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe618;\",\"class\":\"reorder\"}}}',1),(2,'mega_menu_border','headermenus','{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":{\"text\":\"\"}},\"border_bottom\":{\"value\":{\"text\":\"\"}},\"border_left\":{\"value\":{\"text\":\"\"}},\"border_radius\":{\"value\":\"\"},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":{\"text\":\"\"}},\"border_radius_bottom\":{\"value\":{\"text\":\"\"}},\"border_color\":{\"value\":{\"color\":\"\"}}}}',1),(2,'menu_html_border','headermenus','{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":{\"text\":\"\"}},\"border_radius_left\":{\"value\":{\"text\":\"\"}},\"border_radius_bottom\":{\"value\":{\"text\":\"\"}}}}',1),(2,'menu_html_title_border','headermenus','{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":\"\"},\"border_radius_top\":{\"value\":{\"text\":\"\"}},\"border_radius_right\":{\"value\":{\"text\":\"\"}},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}',1),(2,'menu_brands_image_border','headermenus','{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"%\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"2\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}',1),(2,'menu_brands_title_border','headermenus','{\"value\":{\"border_rounded\":\"px\"}}',1),(2,'menu_categories_title_border','headermenus','{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"dotted\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":{\"text\":\"1\"}},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":\"\"},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"},\"border_color\":{\"value\":{\"color\":\"rgb(119, 119, 119)\"}}}}',1),(2,'menu_brands_border','headermenus','{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"2\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}',1),(2,'menu_categories_image_border','headermenus','{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":{\"text\":\"\"}},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"},\"border_color\":{\"value\":{\"color\":\"\"}}}}',1),(2,'menu_divider_type','headermenus','solid',0),(2,'dropdown_divider_type','headermenus','solid',0),(2,'menu_categories_title_align','headermenus','left',0),(2,'menu_brands_title_align','headermenus','left',0),(2,'menu_html_title_align','headermenus','left',0),(2,'menu_categories_padding','headermenus','{\"value\":{\"text\":\"\"}}',1),(2,'menu_brands_padding','headermenus','{\"value\":{\"text\":\"\"}}',1),(2,'menu_html_font','headermenus','{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(68, 67, 73)\"}}}}',1),(2,'main_menu_font','headermenus','{\"value\":{\"font_type\":\"google\",\"font_size\":\"15px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Droid Serif\",\"font_weight\":\"regular\",\"font_style\":\"normal\",\"text_transform\":\"uppercase\",\"font_subset\":[\"latin\"],\"color\":{\"value\":{\"color\":\"rgb(68, 67, 73)\"}},\"letter_spacing\":\"\"}}',1),(2,'product_view','category','grid',0),(2,'hide_category_image','category','0',0),(2,'category_description_font','category','{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"text_transform\":\"none\"}}',1),(2,'refine_category','category','carousel',0),(2,'refine_image_font','category','{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Roboto Condensed\",\"font_weight\":\"300\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(51, 55, 69)\"}},\"font_subset\":[\"latin\"]}}',1),(2,'refine_link_divider','category','{\"value\":\"\"}',1),(2,'refine_bar_radius','category','{\"value\":{\"border_rounded\":\"px\"}}',1),(2,'refine_image_border_radius','category','{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"dotted\",\"border_radius_unit\":\"px\",\"border\":{\"value\":{\"text\":\"1\"}},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"},\"border_color\":{\"value\":{\"color\":\"rgb(228, 228, 228)\"}}}}',1),(2,'refine_image_border','category','{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"dotted\",\"border_radius_unit\":\"px\",\"border\":{\"value\":{\"text\":\"\"}},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"},\"border_color\":{\"value\":{\"color\":\"\"}}}}',1),(2,'product_compare_link_status','category','1',0),(2,'product_filter_radius','category','{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"dotted\",\"border_radius_unit\":\"px\",\"border\":{\"value\":{\"text\":\"\"}},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"2\"}},\"border_radius_top\":{\"value\":{\"text\":\"\"}},\"border_radius_right\":{\"value\":{\"text\":\"\"}},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"},\"border_color\":{\"value\":{\"color\":\"\"}}}}',1),(2,'product_filter_font','category','{\"value\":{\"font_type\":\"system\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"bold\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}}}',1),(2,'pagination_link_hover_color','category','{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}',1),(2,'category_grid_view_icon','category','{\"value\":{\"options\":{\"font_size\":\"32px\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}},\"top\":\"1\"},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe689;\",\"class\":\"grid\"}}}',1),(2,'category_list_view_icon','category','{\"value\":{\"options\":{\"font_size\":\"32px\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}},\"top\":\"1\"},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe68c;\",\"class\":\"list3\"}}}',1),(2,'category_page_products_per_row','category','{\"value\":{\"mobile\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"mobile1\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet1\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet2\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop\":{\"value\":\"5\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop1\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop2\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop\":{\"value\":\"6\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop1\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop2\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"}},\"step\":\"1\",\"range\":\"1,10\"}',1),(2,'refine_image_font_hover','category','{\"value\":{\"color\":\"\"}}',1),(2,'refine_image_bg','category','{\"value\":{\"color\":\"\"}}',1),(2,'refine_image_bg_hover','category','{\"value\":{\"color\":\"rgb(250, 250, 250)\"}}',1),(2,'refine_category_images_per_row','category','{\"value\":{\"mobile\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"mobile1\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet\":{\"value\":\"6\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet1\":{\"value\":\"5\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet2\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop\":{\"value\":\"9\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop1\":{\"value\":\"7\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop2\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop\":{\"value\":\"10\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop1\":{\"value\":\"8\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop2\":{\"value\":\"5\",\"range\":\"1,10\",\"step\":\"1\"}},\"step\":\"1\",\"range\":\"1,10\"}',1),(2,'pagination_bar_border','category','{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"dotted\",\"border_radius_unit\":\"px\",\"border\":{\"value\":{\"text\":\"\"}},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"2\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"},\"border_color\":{\"value\":{\"color\":\"rgb(204, 204, 204)\"}}}}',1),(2,'category_view_icon_hover','category','{\"value\":{\"color\":\"rgb(221, 0, 23)\"}}',1),(2,'product_filter_bg','category','{\"value\":{\"color\":\"rgb(80, 80, 80)\"}}',1),(2,'product_compare_hover_color','category','{\"value\":{\"color\":\"rgb(221, 0, 23)\"}}',1),(2,'pagination_link_font','category','{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}}}',1),(2,'pagination_radius','category','{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"%\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"50\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}',1),(2,'pagination_link_bg','category','{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}',1),(2,'pagination_link_hover_bg_color','category','{\"value\":{\"color\":\"rgb(221, 0, 23)\"}}',1),(2,'refine_link_divider_color','category','{\"value\":{\"color\":\"rgb(228, 228, 228)\"}}',1),(2,'refine_bar_bg','category','{\"value\":{\"color\":\"rgb(51, 55, 69)\"}}',1),(2,'pagination_bar_bg','category','{\"value\":{\"color\":\"rgb(80, 80, 80)\"}}',1),(2,'pagination_soft_shadow','category','none',0),(2,'pagination_text_font','category','{\"value\":{\"font_type\":\"google\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Ubuntu\",\"font_weight\":\"700\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}},\"font_subset\":[\"latin\"]}}',1),(2,'pagination_link_font_new','category','{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(80, 80, 80)\"}}}}',1),(2,'refine_image_padding','category','{\"value\":{\"text\":\"\"}}',1),(2,'main_category_image_border','category','{\"value\":{\"border_rounded\":\"px\"}}',1),(2,'category_page_title_overflow','category','on',0),(2,'category_page_title_align','category','left',0),(2,'refine_image_type','category','fit',0),(2,'refine_carousel_autoplay','category','1',0),(2,'refine_carousel_pause_on_hover','category','1',0),(2,'refine_carousel_touchdrag','category','1',0),(2,'category_page_title_border','category','{\"value\":{\"border_rounded\":\"px\"}}',1),(2,'product_compare_icon','category','{\"value\":{\"options\":{\"font_size\":\"16px\"}}}',1),(2,'catalog_grid_side_carousel_price','catalog','inline-block',0),(2,'catalog_grid_side_carousel_wishlist','catalog','inline-block',0),(2,'catalog_grid_side_carousel_cart','catalog','block',0),(2,'catalog_grid_carousel_name','catalog','table',0),(2,'catalog_grid_carousel_price','catalog','inline-block',0),(2,'catalog_grid_carousel_compare','catalog','inline-block',0),(2,'catalog_grid_carousel_wishlist','catalog','inline-block',0),(2,'catalog_grid_price','catalog','inline-block',0),(2,'catalog_grid_carousel_cart','catalog','block',0),(2,'catalog_grid_name','catalog','table',0),(2,'catalog_product_page_wishlist','catalog','inline-block',0),(2,'secondary_title_padding_tb','general','{\"value\":{\"text\":\"7\"}}',1),(2,'secondary_title_padding_lr','general','{\"value\":{\"text\":\"\"}}',1),(2,'general_button_active_shadow','general','inset 0 1px 10px rgba(0, 0, 0, 0.8)',0),(2,'secondary_title_border','general','{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"dotted\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":{\"text\":\"1\"}},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"},\"border_color\":{\"value\":{\"color\":\"rgb(204, 204, 204)\"}}}}',1),(2,'custom_css','custom_code','{\"value\":{\"text\":\"#logo img {\\n    max-width: 300px !important;\\n    height: auto !important;\\n}\"}}',1),(2,'custom_js','custom_code','{\"value\":{\"text\":\"\"}}',1),(2,'catalog_product_page_compare','catalog','none',0),(2,'catalog_product_page_options','catalog','block',0),(2,'catalog_product_page_price','catalog','block',0),(2,'catalog_product_page_details','catalog','block',0),(2,'catalog_product_page_cart','catalog','block',0),(2,'catalog_grid_cart','catalog','block',0),(2,'catalog_header_search','catalog','none',0),(2,'catalog_header_cart','catalog','none',0),(2,'catalog_grid_wishlist','catalog','inline-block',0),(2,'catalog_list_description','catalog','block',0),(2,'header_cart_checkout_button_border','header','{\"value\":{\"border_rounded\":\"px\"}}',1),(2,'menu_line_height','headermenus','{\"value\":{\"text\":\"\"}}',1),(2,'menu_categories_border','headermenus','{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}',1),(2,'menu_brands_title_font','headermenus','{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Oswald\",\"font_weight\":\"regular\",\"font_style\":\"normal\",\"text_transform\":\"uppercase\",\"font_subset\":[\"latin\"],\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}}}',1),(2,'menu_html_title_font','headermenus','{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Oswald\",\"font_weight\":\"300\",\"font_style\":\"normal\",\"text_transform\":\"uppercase\",\"font_subset\":[\"latin\"],\"color\":{\"value\":{\"color\":\"\"}}}}',1),(2,'menu_categories_link_font','headermenus','{\"value\":{\"font_type\":\"system\",\"font_size\":\"12px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Roboto Condensed\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}},\"font_subset\":[\"latin\"],\"letter_spacing\":\"\"}}',1),(2,'menu_categories_title_font','headermenus','{\"value\":{\"font_type\":\"google\",\"font_size\":\"16px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Droid Serif\",\"font_weight\":\"regular\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"font_subset\":[\"latin\"],\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}},\"letter_spacing\":\"\"}}',1),(2,'secondary_menu_link_font','headermenus','{\"value\":{\"font_type\":\"system\",\"font_size\":\"12px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(68, 67, 73)\"}}}}',1),(2,'secondary_menu_text_font','headermenus','{\"value\":{\"font_type\":\"system\",\"font_size\":\"12px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(68, 67, 73)\"}}}}',1),(2,'dropdown_font','headermenus','{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}}}',1),(2,'top_menu_link_font','headermenus','{\"value\":{\"font_type\":\"system\",\"font_size\":\"12px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(68, 67, 73)\"}}}}',1),(2,'top_menu_text_font','headermenus','{\"value\":{\"font_type\":\"system\",\"font_size\":\"12px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"\"}}}}',1),(2,'cart_button_border','header','{\"value\":{\"border_rounded\":\"px\"}}',1),(2,'curr_font','header','{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":null,\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\",\"font_subset\":[],\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}}}',1),(2,'autosuggest_product_image_type','header','fit',0),(2,'autosuggest_price_status','header','block',0),(2,'catalog_grid_compare','catalog','inline-block',0),(2,'sticky_header_style','header','full',0),(2,'search_autocomplete_include_description','header','1',0),(2,'autosuggest_limit','header','{\"value\":{\"text\":\"5\"}}',1),(2,'autosuggest_view_more_text','header','{\"value\":{\"1\":\"View More\"}}',1),(2,'center_top_menu_border','header','{\"value\":{\"color\":\"\"}}',1),(2,'autosuggest_product_image','header','block',0),(2,'mega_header_align','header','center',0),(2,'top_bar_divider_type','header','solid',0),(2,'drop_lang_divider_type','header','solid',0),(2,'lang_shadow','header','0 2px 2px rgba(0, 0, 0, 0.15)',0),(2,'header_height','header','normal',0),(2,'cart_button_bg_color','header','{\"value\":{\"color\":\"\"}}',1),(2,'cart_button_bg_hover_color','header','{\"value\":{\"color\":\"\"}}',1),(2,'cart_button_color_hover','header','{\"value\":{\"color\":\"\"}}',1),(2,'cart_button_color','header','{\"value\":{\"color\":\"\"}}',1),(2,'header_bg_image','header','{\"value\":{\"bgimage_attach\":\"scroll\",\"bgimage_repeat\":\"repeat\",\"bgimage_position\":\"center\",\"bgimage\":{\"value\":{\"image\":\"\"}}}}',1),(2,'search_bg_hover','header','{\"value\":{\"color\":\"\"}}',1),(2,'search_bg_center','header','{\"value\":{\"color\":\"\"}}',1),(2,'search_bg_mobile','header','{\"value\":{\"color\":\"rgb(250, 250, 250)\"}}',1),(2,'cart_heading_bg_mobile','header','{\"value\":{\"color\":\"rgb(250, 250, 250)\"}}',1),(2,'cart_heading_bg_hover','header','{\"value\":{\"color\":\"\"}}',1),(2,'boxed_bottom_spacing','header','{\"value\":{\"text\":\"\"}}',1),(2,'cart_heading_bg_center','header','{\"value\":{\"color\":\"\"}}',1),(2,'boxed_top_spacing','header','{\"value\":{\"text\":\"\"}}',1),(2,'search_placeholder_text','header','{\"value\":{\"1\":\"Search entire store...\",\"2\":\"\"}}',1),(2,'cart_header_shadow','header','none',0),(2,'header_shadow','header','0 1px 4px -1px rgba(0, 0, 0, 0.7)',0),(2,'lang_divider','header','{\"value\":{\"color\":\"rgb(244, 244, 244)\"}}',1),(2,'curr_bg','header','{\"value\":{\"color\":\"rgb(68, 67, 73)\"}}',1),(2,'lang_drop_bg_hover','header','{\"value\":{\"color\":\"rgb(244, 244, 244)\"}}',1),(2,'lang_drop_color_hover','header','{\"value\":{\"color\":\"rgb(0, 0, 0)\"}}',1),(2,'lang_drop_bg','header','{\"value\":{\"color\":\"rgb(250, 250, 250)\"}}',1),(2,'lang_drop_color','header','{\"value\":{\"color\":\"rgb(0, 0, 0)\"}}',1),(2,'autosuggest_divider','header','{\"value\":{\"color\":\"rgb(228, 228, 228)\"}}',1),(2,'autosuggest_hover','header','{\"value\":{\"color\":\"rgb(244, 244, 244)\"}}',1),(2,'autosuggest_bg','header','{\"value\":{\"color\":\"rgb(250, 250, 250)\"}}',1),(2,'search_divider','header','{\"value\":{\"color\":\"\"}}',1),(2,'search_button_bg_hover','header','{\"value\":{\"color\":\"rgb(221, 0, 23)\"}}',1),(2,'search_button_bg','header','{\"value\":{\"color\":\"rgb(51, 55, 69)\"}}',1),(2,'search_icon_hover','header','{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}',1),(2,'autosuggest_divider_type','header','solid',0),(2,'search_bg','header','{\"value\":{\"color\":\"rgb(42, 43, 46)\"}}',1),(2,'search_placeholder_color','header','{\"value\":{\"color\":\"rgb(68, 67, 73)\"}}',1),(2,'cart_total_bg','header','{\"value\":{\"color\":\"rgb(244, 244, 244)\"}}',1),(2,'cart_content_divider_color','header','{\"value\":{\"color\":\"rgb(228, 228, 228)\"}}',1),(2,'cart_content_delete_icon_hover','header','{\"value\":{\"color\":\"rgb(235, 88, 88)\"}}',1),(2,'cart_content_delete_icon_color','header','{\"value\":{\"color\":\"rgb(191, 195, 182)\"}}',1),(2,'cart_content_bg','header','{\"value\":{\"color\":\"rgb(250, 250, 250)\"}}',1),(2,'cart_icon_divider','header','{\"value\":{\"color\":\"rgba(244, 244, 244, 0)\"}}',1),(2,'cart_heading_icon_bg','header','{\"value\":{\"color\":\"rgb(51, 55, 69)\"}}',1),(2,'search_icon','header','{\"value\":{\"options\":{\"font_size\":\"22px\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}},\"top\":\"-1\",\"left\":\"-1\"},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe697;\",\"class\":\"search\"}}}',1),(2,'cart_heading_bg','header','{\"value\":{\"color\":\"rgb(42, 43, 46)\"}}',1),(2,'logo_bg_color','header','{\"value\":{\"color\":\"rgb(42, 43, 46)\"}}',1),(2,'top_bar_bg_color','header','{\"value\":{\"color\":\"rgb(250, 250, 250)\"}}',1),(2,'header_bg_color','header','{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}',1),(2,'cart_heading_icon','header','{\"value\":{\"options\":{\"font_size\":\"24px\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}},\"top\":\"\",\"left\":\"1\"},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe69a;\",\"class\":\"myFont3\"}}}',1),(2,'curr_radius','header','{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"%\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"50\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}',1),(2,'autosuggest_height','header','{\"value\":{\"text\":\"395\"}}',1),(2,'lang_divider_type','header','solid',0),(2,'drop_radius','header','{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}',1),(2,'autosuggest_price_font','header','{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"\"}}}}',1),(2,'autosuggest_image_border','header','{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}',1),(2,'search_button_radius','header','{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"%\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"50\"}},\"border_radius_top\":{\"value\":{\"text\":\"\"}},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":{\"text\":\"\"}},\"border_radius_bottom\":{\"value\":\"\"}}}',1),(2,'autosuggest_border','header','{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"4\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}',1),(2,'search_autocomplete','header','1',0),(2,'autosuggest_shadow','header','0 1px 8px -3px rgba(0,0,0,.5)',0),(2,'autosuggest_name_font','header','{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"\"}}}}',1),(2,'search_font','header','{\"value\":{\"font_type\":\"system\",\"font_size\":\"15px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Droid Serif\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"font_subset\":[\"latin\"],\"color\":{\"value\":{\"color\":\"\"}},\"letter_spacing\":\"\"}}',1),(2,'search_radius','header','{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":{\"text\":\"1\"}},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"},\"border_color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}}}',1),(2,'cart_content_image_border','header','{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":{\"text\":\"\"}},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"3\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"},\"border_color\":{\"value\":{\"color\":\"\"}}}}',1),(2,'search_divider_type','header','solid',0),(2,'cart_total_font','header','{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"bold\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"\"}}}}',1),(2,'cart_content_height','header','{\"value\":{\"text\":\"355\"}}',1),(2,'cart_heading_border','header','{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":{\"text\":\"1\"}},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":{\"text\":\"\"}},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"},\"border_color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}}}',1),(2,'cart_heading_content_border','header','{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"4\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}',1),(2,'cart_heading_icon_border','header','{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"%\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"50\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":{\"text\":\"\"}},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":{\"text\":\"\"}}}}',1),(2,'cart_content_font','header','{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(0, 0, 0)\"}}}}',1),(2,'cart_icon_divider_type','header','solid',0),(2,'cart_content_divider_type','header','solid',0),(2,'cart_content_shadow','header','0 2px 5px rgba(0, 0, 0, 0.10)',0),(2,'cart_heading_font','header','{\"value\":{\"font_type\":\"system\",\"font_size\":\"15px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Droid Serif\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(68, 67, 73)\"}},\"font_subset\":[\"latin\"],\"letter_spacing\":\"\"}}',1),(2,'top_menu_icon_display','header','inline',0),(2,'top_menu_shadow','header','0 1px 4px -1px rgba(0, 0, 0, 0.7)',0),(2,'sticky_header','header','0',0),(2,'header_type','header','default',0),(2,'boxed_header','header','0',0),(2,'secondary_title_font','general','{\"value\":{\"font_type\":\"google\",\"font_size\":\"16px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Droid Serif\",\"font_weight\":\"regular\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"font_subset\":[\"latin\"],\"color\":{\"value\":{\"color\":\"rgb(68, 67, 73)\"}},\"letter_spacing\":\"\"}}',1),(2,'main_title_line_height','general','{\"value\":{\"text\":\"40\"}}',1),(2,'main_title_border','general','{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"dotted\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":{\"text\":\"1\"}},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"},\"border_color\":{\"value\":{\"color\":\"rgb(204, 204, 204)\"}}}}',1),(2,'main_title_align','general','left',0),(2,'secondary_title_align','general','left',0),(2,'main_title_font','general','{\"value\":{\"font_type\":\"google\",\"font_size\":\"22px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Droid Serif\",\"font_weight\":\"regular\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"font_subset\":[\"latin\"],\"color\":{\"value\":{\"color\":\"rgb(42, 43, 46)\"}},\"letter_spacing\":\"\"}}',1),(2,'extended_layout_side_spacing','general','on',0),(2,'container_border','general','{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":\"\"},\"border_radius_top\":{\"value\":{\"text\":\"\"}},\"border_radius_right\":{\"value\":{\"text\":\"\"}},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}',1),(2,'extended_layout_top_spacing','general','on',0),(2,'extended_layout','general','1',0),(2,'responsive_design','general','1',0),(2,'body_font','general','{\"value\":{\"font_type\":\"system\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Ubuntu\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(51, 55, 69)\"}},\"font_subset\":[\"latin\"]}}',1),(2,'lead_offset_top','general','{\"value\":\"\"}',1),(2,'main_title_padding_right','general','{\"value\":\"\"}',1),(2,'breadcrumb_padding','general','{\"value\":\"\"}',1),(2,'side_posts_grid_bg','blogmodules','{\"value\":{\"color\":\"\"}}',1),(2,'posts_module_title_align','blogmodules','left',0),(2,'posts_module_title_border','blogmodules','{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":{\"text\":\"\"}},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":\"\"},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"},\"border_color\":{\"value\":{\"color\":\"\"}}}}',1),(2,'posts_module_title_font','blogmodules','{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"ABeeZee\",\"font_weight\":\"regular\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\",\"font_subset\":[],\"color\":{\"value\":{\"color\":\"\"}}}}',1),(2,'posts_grid_button_icon','blogmodules','{\"value\":{\"options\":{\"font_size\":\"16px\"}}}',1),(2,'side_posts_divider','blogmodules','{\"value\":{\"color\":\"rgb(204, 204, 204)\"}}',1),(2,'posts_grid_comments_icon','blogmodules','{\"value\":{\"options\":{\"font_size\":\"16px\"},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe1ae;\",\"class\":\"bubble2\"}}}',1),(2,'side_posts_grid_image_border','blogmodules','{\"value\":{\"border_rounded\":\"px\"}}',1),(2,'posts_grid_date_icon','blogmodules','{\"value\":{\"options\":{\"font_size\":\"16px\"},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe6b3;\",\"class\":\"date\"}}}',1),(2,'posts_grid_author_icon','blogmodules','{\"value\":{\"options\":{\"font_size\":\"16px\"},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe1b8;\",\"class\":\"user3\"}}}',1),(2,'side_posts_grid_author_date_font','blogmodules','{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\"}}',1),(2,'side_posts_grid_item_spacing_bottom','blogmodules','{\"value\":\"\"}',1),(2,'side_posts_grid_title_font','blogmodules','{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\"}}',1),(2,'posts_grid_button_padding_bottom','blogmodules','{\"value\":\"\"}',1),(2,'posts_grid_button_padding_left','blogmodules','{\"value\":\"\"}',1),(2,'side_posts_divider_type','blogmodules','dotted',0),(2,'side_posts_grid_button_padding_top','blogmodules','{\"value\":{\"text\":\"\"}}',1),(2,'side_posts_grid_button_padding_right','blogmodules','{\"value\":{\"text\":\"\"}}',1),(2,'side_posts_grid_button_border','blogmodules','{\"value\":{\"border_rounded\":\"px\"}}',1),(2,'side_posts_grid_spacing','blogmodules','{\"value\":\"\"}',1),(2,'side_posts_grid_button_padding_left','blogmodules','{\"value\":{\"text\":\"\"}}',1),(2,'side_posts_grid_button_padding_bottom','blogmodules','{\"value\":{\"text\":\"\"}}',1),(2,'posts_grid_button_border','blogmodules','{\"value\":{\"border_rounded\":\"px\"}}',1),(2,'posts_grid_button_padding_top','blogmodules','{\"value\":\"\"}',1),(2,'posts_grid_button_padding_right','blogmodules','{\"value\":\"\"}',1),(2,'posts_grid_shadow','blogmodules','hover',0),(2,'posts_grid_padding','blogmodules','{\"value\":\"\"}',1),(2,'posts_grid_border','blogmodules','{\"value\":{\"border_rounded\":\"px\"}}',1),(2,'posts_grid_image_border','blogmodules','{\"value\":{\"border_rounded\":\"px\"}}',1),(2,'posts_grid_title_overflow','blogmodules','nowrap',0),(2,'posts_grid_title_font','blogmodules','{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"\"}}}}',1),(2,'posts_grid_desc_font','blogmodules','{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\"}}',1),(2,'posts_grid_details_padding_top','blogmodules','{\"value\":\"\"}',1),(2,'posts_grid_details_padding_right','blogmodules','{\"value\":\"\"}',1),(2,'posts_grid_details_padding_bottom','blogmodules','{\"value\":\"\"}',1),(2,'posts_grid_details_padding_left','blogmodules','{\"value\":\"\"}',1),(2,'posts_grid_author_date_font','blogmodules','{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\"}}',1),(2,'posts_grid_author_date_padding','blogmodules','{\"value\":\"\"}',1),(2,'posts_grid_author_date_border','blogmodules','{\"value\":{\"border_rounded\":\"px\"}}',1),(2,'posts_grid_button_icon_position','blogmodules','left',0),(2,'posts_grid_button_font','blogmodules','{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\"}}',1);
/*!40000 ALTER TABLE `oc2_journal2_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_journal2_skins`
--

DROP TABLE IF EXISTS `oc2_journal2_skins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_journal2_skins` (
  `skin_id` int(11) NOT NULL AUTO_INCREMENT,
  `skin_name` varchar(64) NOT NULL,
  `parent_id` int(11) NOT NULL,
  PRIMARY KEY (`skin_id`)
) ENGINE=MyISAM AUTO_INCREMENT=100 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_journal2_skins`
--

LOCK TABLES `oc2_journal2_skins` WRITE;
/*!40000 ALTER TABLE `oc2_journal2_skins` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_journal2_skins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_language`
--

DROP TABLE IF EXISTS `oc2_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_language` (
  `language_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_language`
--

LOCK TABLES `oc2_language` WRITE;
/*!40000 ALTER TABLE `oc2_language` DISABLE KEYS */;
INSERT INTO `oc2_language` (`language_id`, `name`, `code`, `locale`, `image`, `directory`, `sort_order`, `status`) VALUES (1,'English','en-gb','en_US.UTF-8,en_US,en-gb,english','gb.png','english',1,1);
/*!40000 ALTER TABLE `oc2_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_layout`
--

DROP TABLE IF EXISTS `oc2_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_layout` (
  `layout_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`layout_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10024 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_layout`
--

LOCK TABLES `oc2_layout` WRITE;
/*!40000 ALTER TABLE `oc2_layout` DISABLE KEYS */;
INSERT INTO `oc2_layout` (`layout_id`, `name`) VALUES (1,'Home Page'),(2,'Product'),(3,'Category'),(4,'Default'),(5,'Manufacturer'),(6,'Account'),(7,'Checkout'),(8,'Contact'),(9,'Sitemap'),(10,'Affiliate'),(11,'Information'),(12,'Compare'),(13,'Search'),(14,'Boss Blog'),(9999,'Boss Themes Global - DO NOT DELETE'),(10016,'Downloads'),(10017,'Shop'),(10018,'ACE &gt; Coffee'),(10019,'ACE &gt; Company'),(10022,'Journal Blog'),(10023,'Journal Blog Post');
/*!40000 ALTER TABLE `oc2_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_layout_module`
--

DROP TABLE IF EXISTS `oc2_layout_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_layout_module` (
  `layout_module_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `position` varchar(14) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`layout_module_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3158 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_layout_module`
--

LOCK TABLES `oc2_layout_module` WRITE;
/*!40000 ALTER TABLE `oc2_layout_module` DISABLE KEYS */;
INSERT INTO `oc2_layout_module` (`layout_module_id`, `layout_id`, `code`, `position`, `sort_order`) VALUES (3095,1,'journal2_static_banners.90','top',-5),(3096,1,'journal2_static_banners.80','content_top',2),(3097,1,'journal2_static_banners.139','top',-5),(3098,1,'journal2_static_banners.152','column_left',0),(3099,1,'journal2_static_banners.162','top',2),(3100,1,'journal2_static_banners.218','top',-5),(3101,1,'journal2_text_rotator.24','content_top',5),(3102,1,'journal2_text_rotator.24','bottom',0),(3103,1,'journal2_text_rotator.135','column_right',5),(3104,1,'journal2_newsletter.248','bottom',9),(3107,1,'journal2_photo_gallery.124','bottom',30),(3108,16,'journal2_slider.240','top',0),(3109,1,'journal2_slider.227','top',0),(3110,2,'journal2_carousel.223','bottom',0),(3111,2,'journal2_carousel.111','column_right',0),(3112,2,'journal2_carousel.249','column_right',10),(3113,1,'journal2_carousel.225','top',4),(3114,1,'journal2_carousel.226','top',6),(3115,2,'journal2_side_category.9','column_left',0),(3116,3,'journal2_side_category.9','column_right',0),(3117,13,'journal2_side_category.9','column_left',0),(3118,1,'journal2_cms_blocks.185','bottom',1),(3119,8,'journal2_cms_blocks.127','content_top',0),(3120,2,'journal2_cms_blocks.113','column_left',10),(3121,2,'journal2_side_products.174','column_right',40),(3122,1,'journal2_side_products.175','column_left',0),(3123,2,'journal2_side_products.180','column_right',0),(3124,1,'journal2_side_products.203','column_right',1),(3125,-1,'journal2_fullscreen_slider.25','footer',1),(3126,1,'journal2_fullscreen_slider.122','footer',0),(3129,1,'journal2_side_blocks.52','footer',1),(3130,1,'journal2_side_blocks.94','footer',2),(3131,1,'journal2_side_blocks.163','footer',3),(3132,1,'journal2_side_blocks.179','footer',1),(3133,1,'journal2_side_blocks.195','footer',3),(3134,1,'journal2_side_blocks.196','footer',2),(3135,1,'journal2_popup.229','header',0),(3136,15,'journal2_simple_slider.112','column_left',2),(3137,3,'journal2_simple_slider.112','column_left',2),(3138,2,'journal2_simple_slider.112','column_right',10),(3141,16,'journal2_blog_comments.236','column_right',4),(3142,17,'journal2_blog_comments.236','column_right',4),(3143,16,'journal2_blog_search.237','column_right',2),(3144,17,'journal2_blog_search.237','column_right',2),(3145,16,'journal2_blog_tags.238','column_right',5),(3146,17,'journal2_blog_tags.238','column_right',5),(3157,1,'journal2_blog_posts.239','bottom',10),(3148,3,'journal2_super_filter.54','column_left',1),(3149,5,'journal2_super_filter.54','column_left',1),(3150,15,'journal2_super_filter.54','column_left',1),(3151,19,'journal2_super_filter.54','column_left',0),(3152,20,'journal2_super_filter.54','column_left',0),(3155,-1,'journal2_header_notice.247','header',0),(3154,1,'journal2_custom_sections.168','top',1);
/*!40000 ALTER TABLE `oc2_layout_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_layout_route`
--

DROP TABLE IF EXISTS `oc2_layout_route`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_layout_route` (
  `layout_route_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL,
  PRIMARY KEY (`layout_route_id`)
) ENGINE=MyISAM AUTO_INCREMENT=639 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_layout_route`
--

LOCK TABLES `oc2_layout_route` WRITE;
/*!40000 ALTER TABLE `oc2_layout_route` DISABLE KEYS */;
INSERT INTO `oc2_layout_route` (`layout_route_id`, `layout_id`, `store_id`, `route`) VALUES (32,9,0,'information/sitemap'),(52,12,0,'product/compare'),(87,10,0,'affiliate/%'),(412,10016,0,'download/download'),(362,6,0,'account/%'),(598,14,0,'bossblog/%'),(364,3,0,'product/category'),(190,9999,0,'%'),(413,2,0,'product/product'),(368,11,0,'information/information'),(615,10023,0,'journal2/blog/post'),(371,7,0,'checkout/%'),(370,8,0,'information/contact'),(369,5,0,'product/manufacturer'),(342,13,0,'product/search'),(614,10022,0,'journal2/blog'),(296,4,0,'%'),(636,1,0,'common/home'),(635,1,0,'');
/*!40000 ALTER TABLE `oc2_layout_route` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_length_class`
--

DROP TABLE IF EXISTS `oc2_length_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_length_class` (
  `length_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL,
  PRIMARY KEY (`length_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_length_class`
--

LOCK TABLES `oc2_length_class` WRITE;
/*!40000 ALTER TABLE `oc2_length_class` DISABLE KEYS */;
INSERT INTO `oc2_length_class` (`length_class_id`, `value`) VALUES (1,1.00000000),(2,10.00000000),(3,0.39370000);
/*!40000 ALTER TABLE `oc2_length_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_length_class_description`
--

DROP TABLE IF EXISTS `oc2_length_class_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_length_class_description` (
  `length_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`length_class_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_length_class_description`
--

LOCK TABLES `oc2_length_class_description` WRITE;
/*!40000 ALTER TABLE `oc2_length_class_description` DISABLE KEYS */;
INSERT INTO `oc2_length_class_description` (`length_class_id`, `language_id`, `title`, `unit`) VALUES (1,1,'Centimeter','cm'),(2,1,'Millimeter','mm'),(3,1,'Inch','in');
/*!40000 ALTER TABLE `oc2_length_class_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_location`
--

DROP TABLE IF EXISTS `oc2_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_location` (
  `location_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `address` text NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `geocode` varchar(32) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `open` text NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_location`
--

LOCK TABLES `oc2_location` WRITE;
/*!40000 ALTER TABLE `oc2_location` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_manufacturer`
--

DROP TABLE IF EXISTS `oc2_manufacturer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_manufacturer` (
  `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`manufacturer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_manufacturer`
--

LOCK TABLES `oc2_manufacturer` WRITE;
/*!40000 ALTER TABLE `oc2_manufacturer` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_manufacturer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_manufacturer_to_store`
--

DROP TABLE IF EXISTS `oc2_manufacturer_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`manufacturer_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_manufacturer_to_store`
--

LOCK TABLES `oc2_manufacturer_to_store` WRITE;
/*!40000 ALTER TABLE `oc2_manufacturer_to_store` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_manufacturer_to_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_marketing`
--

DROP TABLE IF EXISTS `oc2_marketing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_marketing` (
  `marketing_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `code` varchar(64) NOT NULL,
  `clicks` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`marketing_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_marketing`
--

LOCK TABLES `oc2_marketing` WRITE;
/*!40000 ALTER TABLE `oc2_marketing` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_marketing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_maxmind`
--

DROP TABLE IF EXISTS `oc2_maxmind`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_maxmind` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `country_match` varchar(3) NOT NULL,
  `country_code` varchar(2) NOT NULL,
  `high_risk_country` varchar(3) NOT NULL,
  `distance` int(11) NOT NULL,
  `ip_region` varchar(255) NOT NULL,
  `ip_city` varchar(255) NOT NULL,
  `ip_latitude` decimal(10,6) NOT NULL,
  `ip_longitude` decimal(10,6) NOT NULL,
  `ip_isp` varchar(255) NOT NULL,
  `ip_org` varchar(255) NOT NULL,
  `ip_asnum` int(11) NOT NULL,
  `ip_user_type` varchar(255) NOT NULL,
  `ip_country_confidence` varchar(3) NOT NULL,
  `ip_region_confidence` varchar(3) NOT NULL,
  `ip_city_confidence` varchar(3) NOT NULL,
  `ip_postal_confidence` varchar(3) NOT NULL,
  `ip_postal_code` varchar(10) NOT NULL,
  `ip_accuracy_radius` int(11) NOT NULL,
  `ip_net_speed_cell` varchar(255) NOT NULL,
  `ip_metro_code` int(3) NOT NULL,
  `ip_area_code` int(3) NOT NULL,
  `ip_time_zone` varchar(255) NOT NULL,
  `ip_region_name` varchar(255) NOT NULL,
  `ip_domain` varchar(255) NOT NULL,
  `ip_country_name` varchar(255) NOT NULL,
  `ip_continent_code` varchar(2) NOT NULL,
  `ip_corporate_proxy` varchar(3) NOT NULL,
  `anonymous_proxy` varchar(3) NOT NULL,
  `proxy_score` int(3) NOT NULL,
  `is_trans_proxy` varchar(3) NOT NULL,
  `free_mail` varchar(3) NOT NULL,
  `carder_email` varchar(3) NOT NULL,
  `high_risk_username` varchar(3) NOT NULL,
  `high_risk_password` varchar(3) NOT NULL,
  `bin_match` varchar(10) NOT NULL,
  `bin_country` varchar(2) NOT NULL,
  `bin_name_match` varchar(3) NOT NULL,
  `bin_name` varchar(255) NOT NULL,
  `bin_phone_match` varchar(3) NOT NULL,
  `bin_phone` varchar(32) NOT NULL,
  `customer_phone_in_billing_location` varchar(8) NOT NULL,
  `ship_forward` varchar(3) NOT NULL,
  `city_postal_match` varchar(3) NOT NULL,
  `ship_city_postal_match` varchar(3) NOT NULL,
  `score` decimal(10,5) NOT NULL,
  `explanation` text NOT NULL,
  `risk_score` decimal(10,5) NOT NULL,
  `queries_remaining` int(11) NOT NULL,
  `maxmind_id` varchar(8) NOT NULL,
  `error` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_maxmind`
--

LOCK TABLES `oc2_maxmind` WRITE;
/*!40000 ALTER TABLE `oc2_maxmind` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_maxmind` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_megamenu`
--

DROP TABLE IF EXISTS `oc2_megamenu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_megamenu` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `label_color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `num_column` int(2) unsigned DEFAULT '1',
  `icon_class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon_class_status` tinyint(1) NOT NULL DEFAULT '1',
  `module_id` int(11) NOT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_megamenu`
--

LOCK TABLES `oc2_megamenu` WRITE;
/*!40000 ALTER TABLE `oc2_megamenu` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_megamenu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_megamenu_column`
--

DROP TABLE IF EXISTS `oc2_megamenu_column`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_megamenu_column` (
  `column_id` int(11) NOT NULL AUTO_INCREMENT,
  `row_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `num_column` int(2) unsigned NOT NULL DEFAULT '1',
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `params` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`column_id`,`row_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_megamenu_column`
--

LOCK TABLES `oc2_megamenu_column` WRITE;
/*!40000 ALTER TABLE `oc2_megamenu_column` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_megamenu_column` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_megamenu_description`
--

DROP TABLE IF EXISTS `oc2_megamenu_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_megamenu_description` (
  `menu_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`menu_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_megamenu_description`
--

LOCK TABLES `oc2_megamenu_description` WRITE;
/*!40000 ALTER TABLE `oc2_megamenu_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_megamenu_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_megamenu_row`
--

DROP TABLE IF EXISTS `oc2_megamenu_row`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_megamenu_row` (
  `row_id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `height` decimal(10,0) DEFAULT NULL,
  `bg_color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bg_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`row_id`,`menu_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_megamenu_row`
--

LOCK TABLES `oc2_megamenu_row` WRITE;
/*!40000 ALTER TABLE `oc2_megamenu_row` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_megamenu_row` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_menu`
--

DROP TABLE IF EXISTS `oc2_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_menu` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `type` varchar(6) NOT NULL,
  `link` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_menu`
--

LOCK TABLES `oc2_menu` WRITE;
/*!40000 ALTER TABLE `oc2_menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_menu_description`
--

DROP TABLE IF EXISTS `oc2_menu_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_menu_description` (
  `menu_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`menu_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_menu_description`
--

LOCK TABLES `oc2_menu_description` WRITE;
/*!40000 ALTER TABLE `oc2_menu_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_menu_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_menu_module`
--

DROP TABLE IF EXISTS `oc2_menu_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_menu_module` (
  `menu_module_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`menu_module_id`),
  KEY `menu_id` (`menu_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_menu_module`
--

LOCK TABLES `oc2_menu_module` WRITE;
/*!40000 ALTER TABLE `oc2_menu_module` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_menu_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_modification`
--

DROP TABLE IF EXISTS `oc2_modification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_modification` (
  `modification_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `code` varchar(64) NOT NULL,
  `author` varchar(64) NOT NULL,
  `version` varchar(32) NOT NULL,
  `link` varchar(255) NOT NULL,
  `xml` mediumtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`modification_id`)
) ENGINE=MyISAM AUTO_INCREMENT=122 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_modification`
--

LOCK TABLES `oc2_modification` WRITE;
/*!40000 ALTER TABLE `oc2_modification` DISABLE KEYS */;
INSERT INTO `oc2_modification` (`modification_id`, `name`, `code`, `author`, `version`, `link`, `xml`, `status`, `date_added`) VALUES (111,'QuickCommerce Populate Option Values','quickcommerce_populate_option_values','lucaslopatka@gmail.com','1.0','','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<modification>\r\n	<name>QuickCommerce Populate Option Values</name>\r\n	<version>1.0</version>\r\n	<code>quickcommerce_populate_option_values</code>\r\n	<author>lucaslopatka@gmail.com</author>\r\n	<file path=\"admin/controller/catalog/product.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			protected function getForm() {\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n		$this->document->addScript(\'view/javascript/quickcommerce/qc_populate_option_values.js\');\r\n			]]></add>\r\n		 </operation>\r\n	</file>\r\n	<file path=\"admin/view/template/catalog/product_form.tpl\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			<label class=\"col-sm-2 control-label\" for=\"input-required<?php echo $option_row; ?>\"><?php echo $entry_required; ?></label>\r\n			]]></search>\r\n			<add position=\"replace\" offset=\"11\"><![CDATA[\r\n					  <label class=\"col-sm-2 control-label\" for=\"input-required<?php echo $option_row; ?>\"><?php echo $entry_required; ?></label>\r\n					  <div class=\"col-sm-8\">\r\n					    <select name=\"product_option[<?php echo $option_row; ?>][required]\" id=\"input-required<?php echo $option_row; ?>\" class=\"form-control\">\r\n						  <?php if ($product_option[\'required\']) { ?>\r\n						  <option value=\"1\" selected=\"selected\"><?php echo $text_yes; ?></option>\r\n						  <option value=\"0\"><?php echo $text_no; ?></option>\r\n						  <?php } else { ?>\r\n						  <option value=\"1\"><?php echo $text_yes; ?></option>\r\n						  <option value=\"0\" selected=\"selected\"><?php echo $text_no; ?></option>\r\n						  <?php } ?>\r\n					    </select>\r\n					  </div>\r\n					  <div class=\"col-sm-2\">\r\n						<button type=\"button\" name=\"qc-fill-select-options\" data-toggle=\"tooltip\" title=\"<?php echo $button_option_value_add; ?>\" class=\"btn btn-primary\"><i class=\"fa fa-plus-circle\"></i>Fill Options</button>\r\n					  </div>\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[\r\n			html += \'	  <label class=\"col-sm-2 control-label\" for=\"input-required\' + option_row + \'\"><?php echo $entry_required; ?></label>\';\r\n			]]></search>\r\n			<add position=\"replace\" offset=\"4\"><![CDATA[\r\n		html += \'	  <label class=\"col-sm-2 control-label\" for=\"input-required\' + option_row + \'\"><?php echo $entry_required; ?></label>\';\r\n		html += \'	  <div class=\"col-sm-8\"><select name=\"product_option[\' + option_row + \'][required]\" id=\"input-required\' + option_row + \'\" class=\"form-control\">\';\r\n		html += \'	      <option value=\"1\"><?php echo $text_yes; ?></option>\';\r\n		html += \'	      <option value=\"0\"><?php echo $text_no; ?></option>\';\r\n		html += \'	  </select></div>\';\r\n		html += \'	  <div class=\"col-sm-2\">\';\r\n		html += \'		<button type=\"button\" name=\"qc-fill-select-options\" data-toggle=\"tooltip\" title=\"<?php echo $button_option_value_add; ?>\" class=\"btn btn-primary\"><i class=\"fa fa-plus-circle\"></i>Fill Options</button>\';\r\n		html += \'	  </div>\';\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[\r\n		html += \'  <td class=\"text-left\"><select name=\"product_option[\' + option_row + \'][product_option_value][\' + option_value_row + \'][subtract]\" class=\"form-control\">\';\r\n			]]></search>\r\n			<add position=\"replace\" offset=\"3\"><![CDATA[\r\n		html += \'  <td class=\"text-left\"><select name=\"product_option[\' + option_row + \'][product_option_value][\' + option_value_row + \'][subtract]\" class=\"form-control\">\';\r\n		html += \'    <option value=\"0\" selected=\"selected\"><?php echo $text_no; ?></option>\';\r\n		html += \'    <option value=\"1\"><?php echo $text_yes; ?></option>\';\r\n		html += \'  </select></td>\';\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n</modification>',1,'2017-08-09 16:43:25'),(10,'QuickCommerce Categories','quickcommerce_product_categories','lucaslopatka@gmail.com','1.0','','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<modification>\r\n	<name>QuickCommerce Categories</name>\r\n	<version>1.0</version>\r\n	<code>quickcommerce_product_categories</code>\r\n	<author>lucaslopatka@gmail.com</author>\r\n	<file path=\"catalog/controller/product/category.php\">\r\n		<operation info=\"Add category images\">\r\n			<search position=\"replace\" offset=\"3\"><![CDATA[\r\n				$data[\'categories\'][] = array(\r\n			]]></search>\r\n			<add><![CDATA[\r\n				if ($result[\'image\']) {\r\n					$category_image = $this->model_tool_image->resize($result[\'image\'], $this->config->get(\'config_image_product_width\'), $this->config->get(\'config_image_product_height\'));\r\n				} else {\r\n					$category_image = false;\r\n				}\r\n				\r\n				$data[\'categories\'][] = array(\r\n					\'name\'  => $result[\'name\'] . ($this->config->get(\'config_product_count\') ? \' (\' . $this->model_catalog_product->getTotalProducts($filter_data) . \')\' : \'\'),\r\n					\'href\'  => $this->url->link(\'product/category\', \'path=\' . $this->request->get[\'path\'] . \'_\' . $result[\'category_id\'] . $url),\r\n					\'thumb\' => $category_image\r\n				);\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n</modification>',0,'2015-07-30 13:03:25'),(11,'Batch Editor','2.0.x.x','Yarik','1.0','http://opencartforum.com/files/file/301-batch-editor-пакетное-редактирование-товаров/','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n <name>Batch Editor</name>\r\n <code>2.0.x.x</code>\r\n <version>1.0</version>\r\n <author>Yarik</author>\r\n <link>http://opencartforum.com/files/file/301-batch-editor-пакетное-редактирование-товаров/</link>\r\n \r\n <file path=\"admin/controller/common/menu.php\">\r\n  <operation>\r\n   <search>\r\n    <![CDATA[$data[\'product\'] = $this->url->link(\'catalog/product\', \'token=\' . $this->session->data[\'token\'], \'SSL\');]]>\r\n   </search>\r\n   <add position=\"after\">\r\n    <![CDATA[$data[\'batch_editor\'] = $this->url->link(\'batch_editor/index\', \'token=\' . $this->session->data[\'token\'], \'SSL\');]]>\r\n   </add>\r\n  </operation>\r\n </file>\r\n \r\n <file path=\"admin/view/template/common/menu.tpl\">\r\n  <operation>\r\n   <search>\r\n    <![CDATA[<li><a href=\"<?php echo $product; ?>\"><?php echo $text_product; ?></a></li>]]>\r\n   </search>\r\n   <add position=\"after\">\r\n    <![CDATA[<li><a href=\"<?php echo $batch_editor; ?>\">Batch Editor</a></li>]]>\r\n   </add>\r\n  </operation>\r\n </file>\r\n \r\n</modification>',1,'2015-10-27 16:41:28'),(12,'QuickCommerce Copy Module','quickcommerce_copy_module','Lucas Lopatka [lucaslopatka@gmail.com]','1.0','http://www.quickcommerce.org','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<modification>\r\n	<name>QuickCommerce Copy Module</name>\r\n	<code>quickcommerce_copy_module</code>\r\n	<version>1.0</version>\r\n	<author>Lucas Lopatka [lucaslopatka@gmail.com]</author>\r\n	<link>http://www.quickcommerce.org</link>\r\n	<file path=\"admin/controller/extension/module.php\">\r\n		<operation>\r\n			<search><![CDATA[\'module_id\' => $module[\'module_id\'],]]></search>\r\n			<add position=\"after\"><![CDATA[\'duplicate\' => $this->url->link(\'extension/module/duplicate\', \'token=\' . $this->session->data[\'token\'] . \'&extension=\' . $extension . \'&module_id=\' . $module[\'module_id\'], \'SSL\'),]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[protected function validate() {]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n			public function duplicate() {\r\n			  $this->load->language(\'extension/module\');\r\n\r\n			  if ($this->validate()) {\r\n				$extension = $this->request->get[\'extension\'];\r\n				$module_id = $this->request->get[\'module_id\'];\r\n\r\n				$query = $this->db->query(\"SELECT * FROM `\" . DB_PREFIX . \"module` WHERE `module_id` = \'\" . $this->db->escape($module_id) . \"\'\");\r\n\r\n				$module = $query->row;\r\n				$new_module_data = unserialize($module[\'setting\']);\r\n				$new_module_data[\'name\'] = \'Copy of \' . $module[\'name\'];\r\n\r\n				$this->load->model(\'extension/module\');\r\n				$this->model_extension_module->addModule($extension, $new_module_data);\r\n\r\n				$new_module_id = $this->db->getLastId();\r\n\r\n				$this->response->redirect($this->url->link(\'module/\' . $extension, \'token=\' . $this->session->data[\'token\'] . \'&module_id=\' . $new_module_id, \'SSL\'));\r\n			  } else {\r\n				$this->document->setTitle($this->language->get(\'heading_title\'));\r\n\r\n				$this->load->model(\'extension/extension\');\r\n				$this->load->model(\'extension/module\');\r\n\r\n				$this->getList();\r\n			  }\r\n			}\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n	<file path=\"admin/view/template/extension/module.tpl\">\r\n		<operation>\r\n			<search><![CDATA[<a onclick=\"confirm(\'<?php echo $text_confirm; ?>\') ? location.href=\'<?php echo $module[\'delete\']; ?>\' : false;\" data-toggle=\"tooltip\" title=\"<?php echo $button_delete; ?>\" class=\"btn btn-danger\"><i class=\"fa fa-trash-o\"></i></a>]]></search>\r\n			<add position=\"replace\"><![CDATA[<a href=\"<?php echo $module[\'duplicate\']; ?>\" data-toggle=\"tooltip\" title=\"Duplicate\" class=\"btn btn-default\"><i class=\"fa fa-copy\"></i></a> <a onclick=\"confirm(\'<?php echo $text_confirm; ?>\') ? location.href=\'<?php echo $module[\'delete\']; ?>\' : false;\" data-toggle=\"tooltip\" title=\"<?php echo $button_delete; ?>\" class=\"btn btn-danger\"><i class=\"fa fa-trash-o\"></i></a>]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n</modification>\r\n',0,'2015-11-12 15:49:50'),(13,'QuickCommerce Sub-category Images','quickcommerce_image_subcategories','lucaslopatka@gmail.com','1.0','','<modification>\r\n    <name>QuickCommerce Sub-category Images</name>\r\n	<version>1.0</version>\r\n	<code>quickcommerce_image_subcategories</code>\r\n	<author>lucaslopatka@gmail.com</author>\r\n	<file path=\"catalog/controller/product/category.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n            \'name\'  => $result[\'name\'] . ($this->config->get(\'config_product_count\') ? \' (\' . $this->model_catalog_product->getTotalProducts($filter_data) . \')\' : \'\'),\r\n            ]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n            \'thumb\'  => $this->model_tool_image->resize((isset($result[\'image\'])&&!empty($result[\'image\']))?$result[\'image\']:\'icon_default.png\', 500, 500),\r\n            ]]></add>\r\n		</operation>\r\n	</file>\r\n</modification>',0,'2015-11-23 13:51:13'),(77,'QuickCommerce P2P','quickcommerce_p2p','lucaslopatka@gmail.com','1.0','','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<modification>\r\n	<name>QuickCommerce P2P</name>\r\n	<version>1.0</version>\r\n	<code>quickcommerce_p2p</code>\r\n	<author>lucaslopatka@gmail.com</author>\r\n	\r\n	<file path=\"admin/model/catalog/product.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n				public function getProductImages($product_id) {\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n	public function getDb2ProductImages($product_id) {\r\n		$query = $this->db2->query(\"SELECT * FROM \" . DB2_PREFIX . \"product_image WHERE product_id = \'\" . (int)$product_id . \"\' ORDER BY sort_order ASC\");\r\n\r\n		return $query->rows;\r\n	}\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[\r\n				public function getProductDiscounts($product_id) {\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n	public function getDb2ProductDiscounts($product_id) {\r\n		$query = $this->db2->query(\"SELECT * FROM \" . DB2_PREFIX . \"product_discount WHERE product_id = \'\" . (int)$product_id . \"\' ORDER BY quantity, priority, price\");\r\n\r\n		return $query->rows;\r\n	}\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[\r\n				public function getProductSpecials($product_id) {\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n	public function getDb2ProductSpecials($product_id) {\r\n		$query = $this->db2->query(\"SELECT * FROM \" . DB2_PREFIX . \"product_special WHERE product_id = \'\" . (int)$product_id . \"\' ORDER BY priority, price\");\r\n\r\n		return $query->rows;\r\n	}\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[\r\n				public function getProductRewards($product_id) {\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n	public function getDb2ProductRewards($product_id) {\r\n		$product_reward_data = array();\r\n\r\n		$query = $this->db2->query(\"SELECT * FROM \" . DB2_PREFIX . \"product_reward WHERE product_id = \'\" . (int)$product_id . \"\'\");\r\n\r\n		foreach ($query->rows as $result) {\r\n			$product_reward_data[$result[\'customer_group_id\']] = array(\'points\' => $result[\'points\']);\r\n		}\r\n\r\n		return $product_reward_data;\r\n	}\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[\r\n				public function getProductDownloads($product_id) {\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n	public function getDb2ProductDownloads($product_id) {\r\n		$product_download_data = array();\r\n\r\n		$query = $this->db2->query(\"SELECT * FROM \" . DB2_PREFIX . \"product_to_download WHERE product_id = \'\" . (int)$product_id . \"\'\");\r\n\r\n		foreach ($query->rows as $result) {\r\n			$product_download_data[] = $result[\'download_id\'];\r\n		}\r\n\r\n		return $product_download_data;\r\n	}\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[\r\n				public function getProductAttributes($product_id) {\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n	public function getDb2ProductAttributes($product_id) {\r\n		$product_attribute_data = array();\r\n\r\n		$product_attribute_query = $this->db2->query(\"SELECT attribute_id FROM \" . DB2_PREFIX . \"product_attribute WHERE product_id = \'\" . (int)$product_id . \"\' GROUP BY attribute_id\");\r\n\r\n		foreach ($product_attribute_query->rows as $product_attribute) {\r\n			$product_attribute_description_data = array();\r\n\r\n			$product_attribute_description_query = $this->db2->query(\"SELECT * FROM \" . DB2_PREFIX . \"product_attribute WHERE product_id = \'\" . (int)$product_id . \"\' AND attribute_id = \'\" . (int)$product_attribute[\'attribute_id\'] . \"\'\");\r\n\r\n			foreach ($product_attribute_description_query->rows as $product_attribute_description) {\r\n				$product_attribute_description_data[$product_attribute_description[\'language_id\']] = array(\'text\' => $product_attribute_description[\'text\']);\r\n			}\r\n\r\n			$product_attribute_data[] = array(\r\n				\'attribute_id\'                  => $product_attribute[\'attribute_id\'],\r\n				\'product_attribute_description\' => $product_attribute_description_data\r\n			);\r\n		}\r\n\r\n		return $product_attribute_data;\r\n	}\r\n			]]>\r\n			</add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[\r\n				public function getProductOptions($product_id) {\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n	public function getDb2ProductOptions($product_id) {\r\n		$product_option_data = array();\r\n\r\n		$product_option_query = $this->db2->query(\"SELECT * FROM `\" . DB2_PREFIX . \"product_option` po LEFT JOIN `\" . DB2_PREFIX . \"option` o ON (po.option_id = o.option_id) LEFT JOIN `\" . DB2_PREFIX . \"option_description` od ON (o.option_id = od.option_id) WHERE po.product_id = \'\" . (int)$product_id . \"\' AND od.language_id = \'\" . (int)$this->config->get(\'config_language_id\') . \"\'\");\r\n\r\n		foreach ($product_option_query->rows as $product_option) {\r\n			$product_option_value_data = array();\r\n\r\n			$product_option_value_query = $this->db2->query(\"SELECT * FROM \" . DB2_PREFIX . \"product_option_value WHERE product_option_id = \'\" . (int)$product_option[\'product_option_id\'] . \"\'\");\r\n\r\n			foreach ($product_option_value_query->rows as $product_option_value) {\r\n				$product_option_value_data[] = array(\r\n					\'product_option_value_id\' => $product_option_value[\'product_option_value_id\'],\r\n					\'option_value_id\'         => $product_option_value[\'option_value_id\'],\r\n					\'quantity\'                => $product_option_value[\'quantity\'],\r\n					\'subtract\'                => $product_option_value[\'subtract\'],\r\n					\'price\'                   => $product_option_value[\'price\'],\r\n					\'price_prefix\'            => $product_option_value[\'price_prefix\'],\r\n					\'points\'                  => $product_option_value[\'points\'],\r\n					\'points_prefix\'           => $product_option_value[\'points_prefix\'],\r\n					\'weight\'                  => $product_option_value[\'weight\'],\r\n					\'weight_prefix\'           => $product_option_value[\'weight_prefix\']\r\n				);\r\n			}\r\n\r\n			$product_option_data[] = array(\r\n				\'product_option_id\'    => $product_option[\'product_option_id\'],\r\n				\'product_option_value\' => $product_option_value_data,\r\n				\'option_id\'            => $product_option[\'option_id\'],\r\n				\'name\'                 => $product_option[\'name\'],\r\n				\'type\'                 => $product_option[\'type\'],\r\n				\'value\'                => $product_option[\'value\'],\r\n				\'required\'             => $product_option[\'required\']\r\n			);\r\n		}\r\n\r\n		return $product_option_data;\r\n	}\r\n			]]>\r\n			</add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[\r\n				public function getProductCategories($product_id) {\r\n			]]></search>\r\n			<add position=\"before\">\r\n			<![CDATA[\r\n	public function getDb2ProductCategories($product_id) {\r\n		$product_category_data = array();\r\n\r\n		$query = $this->db2->query(\"SELECT * FROM \" . DB2_PREFIX . \"product_to_category WHERE product_id = \'\" . (int)$product_id . \"\'\");\r\n\r\n		foreach ($query->rows as $result) {\r\n			$product_category_data[] = $result[\'category_id\'];\r\n		}\r\n\r\n		return $product_category_data;\r\n	}\r\n			]]>\r\n			</add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[\r\n				public function getTotalProducts($data = array()) {\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n	public function getDb2TotalProducts($data = array()) {\r\n		$sql = \"SELECT COUNT(DISTINCT db2p.product_id) AS total\";\r\n\r\n		if (!empty($data[\'filter_category_id\'])) {\r\n			$sql .= \" FROM \" . DB2_DATABASE . \".\" . DB2_PREFIX . \"category_path db2cp LEFT JOIN \" . DB2_DATABASE . \".\" . DB2_PREFIX . \"product_to_category db2p2c ON (db2cp.category_id = db2p2c.category_id)\";\r\n			$sql .= \" LEFT JOIN \" . DB2_DATABASE . \".\" . DB2_PREFIX . \"product db2p ON (db2p2c.product_id = db2p.product_id)\";\r\n		} else {\r\n			$sql .= \" FROM \" . DB2_DATABASE . \".\" . DB2_PREFIX . \"product db2p\";\r\n		}\r\n\r\n		$sql .= \" LEFT JOIN \" . DB2_DATABASE . \".\" . DB2_PREFIX . \"product_description db2pd ON (db2p.product_id = db2pd.product_id)\";\r\n\r\n		if (!isset($data[\'filter_match\']) || empty($data[\'filter_match\'])) {\r\n			$sql .= \" LEFT OUTER JOIN \" . DB_DATABASE . \".\" . DB_PREFIX . \"product p ON (db2p.mpn = p.model)\";\r\n		} else {\r\n			$sql .= \" INNER JOIN \" . DB_DATABASE . \".\" . DB_PREFIX . \"product p ON (db2p.mpn = p.model)\";\r\n		}\r\n\r\n		$sql .= \" WHERE db2pd.language_id = \'\" . (int)$this->config->get(\'config_language_id\') . \"\'\";\r\n\r\n		if (!empty($data[\'filter_category_id\'])) {\r\n			if (!empty($data[\'filter_sub_category\'])) {\r\n				$sql .= \" AND db2cp.path_id = \'\" . (int)$data[\'filter_category_id\'] . \"\'\";\r\n			} else {\r\n				$sql .= \" AND db2p2c.category_id = \'\" . (int)$data[\'filter_category_id\'] . \"\'\";\r\n			}\r\n		}\r\n\r\n		if (!empty($data[\'filter_name\'])) {\r\n			$sql .= \" AND db2pd.name LIKE \'\" . $this->db2->escape($data[\'filter_name\']) . \"%\'\";\r\n		}\r\n\r\n		if (!empty($data[\'filter_model\'])) {\r\n			$sql .= \" AND db2p.model LIKE \'\" . $this->db2->escape($data[\'filter_model\']) . \"%\'\";\r\n		}\r\n\r\n		if (!empty($data[\'filter_mpn\'])) {\r\n			$sql .= \" AND db2p.mpn LIKE \'\" . $this->db2->escape($data[\'filter_mpn\']) . \"%\'\";\r\n		}\r\n\r\n		if (!empty($data[\'filter_sku\'])) {\r\n			$sql .= \" AND db2p.sku LIKE \'\" . $this->db->escape($data[\'filter_sku\']) . \"%\'\";\r\n		}\r\n\r\n		/*if (isset($data[\'filter_price\']) && !is_null($data[\'filter_price\'])) {\r\n			$sql .= \" AND db2p.price LIKE \'\" . $this->db2->escape($data[\'filter_price\']) . \"%\'\";\r\n		}\r\n\r\n		if (isset($data[\'filter_quantity\']) && !is_null($data[\'filter_quantity\'])) {\r\n			$sql .= \" AND db2p.quantity = \'\" . (int)$data[\'filter_quantity\'] . \"\'\";\r\n		}\r\n\r\n		if (isset($data[\'filter_status\']) && !is_null($data[\'filter_status\'])) {\r\n			$sql .= \" AND db2p.status = \'\" . (int)$data[\'filter_status\'] . \"\'\";\r\n		}*/\r\n\r\n		$query = $this->db2->query($sql);\r\n\r\n		return $query->row[\'total\'];\r\n	}\r\n			]]>\r\n			</add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[\r\n				public function getProduct($product_id) {\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n	public function getDb2Product($product_id) {\r\n		$query = $this->db2->query(\"SELECT DISTINCT *, (SELECT keyword FROM \" . DB2_PREFIX . \"url_alias WHERE query = \'product_id=\" . (int)$product_id . \"\') AS keyword FROM \" . DB2_PREFIX . \"product p LEFT JOIN \" . DB2_PREFIX . \"product_description pd ON (p.product_id = pd.product_id) WHERE p.product_id = \'\" . (int)$product_id . \"\' AND pd.language_id = \'\" . (int)$this->config->get(\'config_language_id\') . \"\'\");\r\n\r\n		return $query->row;\r\n	}\r\n			]]>\r\n			</add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[\r\n				public function getProducts($data = array()) {\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n	public function getDb2Products($data = array()) {\r\n		$sql = \"SELECT db2p.*, db2pd.*, p.product_id AS local_id, p.model AS local_model\";\r\n\r\n		if (!empty($data[\'filter_category_id\'])) {\r\n			$sql .= \" FROM \" . DB2_DATABASE . \".\" . DB2_PREFIX . \"category_path db2cp LEFT JOIN \" . DB2_DATABASE . \".\" . DB2_PREFIX . \"product_to_category db2p2c ON (db2cp.category_id = db2p2c.category_id)\";\r\n			$sql .= \" LEFT JOIN \" . DB2_DATABASE . \".\" . DB2_PREFIX . \"product db2p ON (db2p2c.product_id = db2p.product_id)\";\r\n		} else {\r\n			$sql .= \" FROM \" . DB2_DATABASE . \".\" . DB2_PREFIX . \"product db2p\";\r\n		}\r\n		\r\n		$sql .= \" LEFT JOIN \" . DB2_DATABASE . \".\" . DB2_PREFIX . \"product_description db2pd ON (db2p.product_id = db2pd.product_id)\";\r\n\r\n		if (!isset($data[\'filter_match\']) || empty($data[\'filter_match\'])) {\r\n			$sql .= \" LEFT OUTER JOIN \" . DB_DATABASE . \".\" . DB_PREFIX . \"product p ON (db2p.mpn = p.model)\";\r\n		} else {\r\n			$sql .= \" INNER JOIN \" . DB_DATABASE . \".\" . DB_PREFIX . \"product p ON (db2p.mpn = p.model)\";\r\n		}\r\n		\r\n		$sql .= \" WHERE db2pd.language_id = \'\" . (int)$this->config->get(\'config_language_id\') . \"\'\";\r\n		\r\n		if (!empty($data[\'filter_category_id\'])) {\r\n			if (!empty($data[\'filter_sub_category\'])) {\r\n				$sql .= \" AND db2cp.path_id = \'\" . (int)$data[\'filter_category_id\'] . \"\'\";\r\n			} else {\r\n				$sql .= \" AND db2p2c.category_id = \'\" . (int)$data[\'filter_category_id\'] . \"\'\";\r\n			}\r\n		}\r\n\r\n		if (!empty($data[\'filter_name\'])) {\r\n			$sql .= \" AND db2pd.name LIKE \'\" . $this->db2->escape($data[\'filter_name\']) . \"%\'\";\r\n		}\r\n\r\n		if (!empty($data[\'filter_model\'])) {\r\n			$sql .= \" AND db2p.model LIKE \'\" . $this->db2->escape($data[\'filter_model\']) . \"%\'\";\r\n		}\r\n\r\n		if (!empty($data[\'filter_mpn\'])) {\r\n			$sql .= \" AND db2p.mpn LIKE \'\" . $this->db2->escape($data[\'filter_mpn\']) . \"%\'\";\r\n		}\r\n\r\n		if (!empty($data[\'filter_sku\'])) {\r\n			$sql .= \" AND db2p.sku LIKE \'\" . $this->db->escape($data[\'filter_sku\']) . \"%\'\";\r\n		}\r\n\r\n		/*if (isset($data[\'filter_price\']) && !is_null($data[\'filter_price\'])) {\r\n			$sql .= \" AND db2p.price LIKE \'\" . $this->db2->escape($data[\'filter_price\']) . \"%\'\";\r\n		}\r\n\r\n		if (isset($data[\'filter_quantity\']) && !is_null($data[\'filter_quantity\'])) {\r\n			$sql .= \" AND db2p.quantity = \'\" . (int)$data[\'filter_quantity\'] . \"\'\";\r\n		}\r\n\r\n		if (isset($data[\'filter_status\']) && !is_null($data[\'filter_status\'])) {\r\n			$sql .= \" AND db2p.status = \'\" . (int)$data[\'filter_status\'] . \"\'\";\r\n		}*/\r\n		\r\n		$sql .= \" GROUP BY db2p.product_id\";\r\n\r\n		$sort_data = array(\r\n			\'db2pd.name\',\r\n			\'db2p.model\',\r\n			\'db2p.price\',\r\n			\'db2p.quantity\',\r\n			\'db2p.status\',\r\n			\'db2p.sort_order\'\r\n		);\r\n\r\n		if (isset($data[\'sort\']) && in_array($data[\'sort\'], $sort_data)) {\r\n			$sql .= \" ORDER BY \" . $data[\'sort\'];\r\n		} else {\r\n			$sql .= \" ORDER BY db2pd.name\";\r\n		}\r\n\r\n		if (isset($data[\'order\']) && ($data[\'order\'] == \'DESC\')) {\r\n			$sql .= \" DESC\";\r\n		} else {\r\n			$sql .= \" ASC\";\r\n		}\r\n\r\n		if (isset($data[\'start\']) || isset($data[\'limit\'])) {\r\n			if ($data[\'start\'] < 0) {\r\n				$data[\'start\'] = 0;\r\n			}\r\n\r\n			if ($data[\'limit\'] < 1) {\r\n				$data[\'limit\'] = 20;\r\n			}\r\n\r\n			$sql .= \" LIMIT \" . (int)$data[\'start\'] . \",\" . (int)$data[\'limit\'];\r\n		}\r\n\r\n		$query = $this->db2->query($sql);\r\n\r\n		return $query->rows;\r\n	}\r\n			\r\n			]]>\r\n			</add>\r\n		</operation>\r\n	</file>\r\n	\r\n	<file path=\"admin/controller/catalog/product.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n				protected function getList() {\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n	public function getImportList() {\r\n		$this->load->language(\'catalog/product\');\r\n\r\n		$this->load->model(\'catalog/product\');\r\n\r\n		if (isset($this->request->get[\'filter_name\'])) {\r\n			$filter_name = $this->request->get[\'filter_name\'];\r\n		} else {\r\n			$filter_name = null;\r\n		}\r\n\r\n		if (isset($this->request->get[\'filter_model\'])) {\r\n			$filter_model = $this->request->get[\'filter_model\'];\r\n		} else {\r\n			$filter_model = null;\r\n		}\r\n\r\n		if (isset($this->request->get[\'filter_price\'])) {\r\n			$filter_price = $this->request->get[\'filter_price\'];\r\n		} else {\r\n			$filter_price = null;\r\n		}\r\n\r\n		if (isset($this->request->get[\'filter_quantity\'])) {\r\n			$filter_quantity = $this->request->get[\'filter_quantity\'];\r\n		} else {\r\n			$filter_quantity = null;\r\n		}\r\n\r\n		if (isset($this->request->get[\'filter_status\'])) {\r\n			$filter_status = $this->request->get[\'filter_status\'];\r\n		} else {\r\n			$filter_status = null;\r\n		}\r\n\r\n		if (isset($this->request->get[\'product_category\'])) {\r\n			$filter_category_id = $this->request->get[\'product_category\'];\r\n		} else {\r\n			$filter_category_id = null;\r\n		}\r\n\r\n		if (isset($this->request->get[\'filter_match\'])) {\r\n			$filter_match = $this->request->get[\'filter_match\'];\r\n		} else {\r\n			$filter_match = null;\r\n		}\r\n\r\n		if (isset($this->request->get[\'sort\'])) {\r\n			$sort = $this->request->get[\'sort\'];\r\n		} else {\r\n			$sort = \'pd.name\';\r\n		}\r\n\r\n		if (isset($this->request->get[\'order\'])) {\r\n			$order = $this->request->get[\'order\'];\r\n		} else {\r\n			$order = \'ASC\';\r\n		}\r\n\r\n		if (isset($this->request->get[\'page\'])) {\r\n			$page = $this->request->get[\'page\'];\r\n		} else {\r\n			$page = 1;\r\n		}\r\n\r\n		$url = \'\';\r\n\r\n		if (isset($this->request->get[\'filter_name\'])) {\r\n			$url .= \'&filter_name=\' . urlencode(html_entity_decode($this->request->get[\'filter_name\'], ENT_QUOTES, \'UTF-8\'));\r\n		}\r\n\r\n		if (isset($this->request->get[\'filter_model\'])) {\r\n			$url .= \'&filter_model=\' . urlencode(html_entity_decode($this->request->get[\'filter_model\'], ENT_QUOTES, \'UTF-8\'));\r\n		}\r\n\r\n		if (isset($this->request->get[\'filter_price\'])) {\r\n			$url .= \'&filter_price=\' . $this->request->get[\'filter_price\'];\r\n		}\r\n\r\n		if (isset($this->request->get[\'filter_quantity\'])) {\r\n			$url .= \'&filter_quantity=\' . $this->request->get[\'filter_quantity\'];\r\n		}\r\n\r\n		if (isset($this->request->get[\'filter_status\'])) {\r\n			$url .= \'&filter_status=\' . $this->request->get[\'filter_status\'];\r\n		}\r\n\r\n		if (isset($this->request->get[\'filter_match\'])) {\r\n			$url .= \'&filter_match=\' . $this->request->get[\'filter_match\'];\r\n		}\r\n\r\n		if (isset($this->request->get[\'sort\'])) {\r\n			$url .= \'&sort=\' . $this->request->get[\'sort\'];\r\n		}\r\n\r\n		if (isset($this->request->get[\'order\'])) {\r\n			$url .= \'&order=\' . $this->request->get[\'order\'];\r\n		}\r\n\r\n		if (isset($this->request->get[\'page\'])) {\r\n			$url .= \'&page=\' . $this->request->get[\'page\'];\r\n		}\r\n\r\n		$data[\'breadcrumbs\'] = array();\r\n\r\n		$data[\'breadcrumbs\'][] = array(\r\n			\'text\' => $this->language->get(\'text_home\'),\r\n			\'href\' => $this->url->link(\'common/dashboard\', \'token=\' . $this->session->data[\'token\'], \'SSL\')\r\n		);\r\n\r\n		$data[\'breadcrumbs\'][] = array(\r\n			\'text\' => $this->language->get(\'heading_title\'),\r\n			\'href\' => $this->url->link(\'catalog/product\', \'token=\' . $this->session->data[\'token\'] . $url, \'SSL\')\r\n		);\r\n\r\n		$data[\'add\'] = $this->url->link(\'catalog/product/add\', \'token=\' . $this->session->data[\'token\'] . $url, \'SSL\');\r\n		$data[\'copy\'] = $this->url->link(\'catalog/product/copy\', \'token=\' . $this->session->data[\'token\'] . $url, \'SSL\');\r\n		$data[\'delete\'] = $this->url->link(\'catalog/product/delete\', \'token=\' . $this->session->data[\'token\'] . $url, \'SSL\');\r\n\r\n		$data[\'products\'] = array();\r\n\r\n		$filter_data = array(\r\n			\'filter_name\'			=> $filter_name,\r\n			\'filter_model\'			=> $filter_model,\r\n			\'filter_price\'			=> $filter_price,\r\n			\'filter_quantity\'		=> $filter_quantity,\r\n			\'filter_status\'   		=> $filter_status,\r\n			\'filter_sub_category\'	=> true,\r\n			\'filter_category_id\'	=> (is_array($filter_category_id) && count($filter_category_id) > 0) ? $filter_category_id[0] : null, // Quick hack to make sure we only pick up one\r\n			\'filter_match\'			=> $filter_match,\r\n			\'sort\'					=> $sort,\r\n			\'order\'					=> $order,\r\n			\'start\'					=> ($page - 1) * $this->config->get(\'config_limit_admin\'),\r\n			\'limit\'					=> $this->config->get(\'config_limit_admin\')\r\n		);\r\n\r\n		$this->load->model(\'tool/image\');\r\n\r\n		$db2_product_total = $this->model_catalog_product->getDb2TotalProducts($filter_data);\r\n\r\n		$db2_results = $this->model_catalog_product->getDb2Products($filter_data);\r\n\r\n		foreach ($db2_results as $result) {\r\n			if (is_file(DIR_IMAGE . $result[\'image\'])) {\r\n				$image = $this->model_tool_image->resize($result[\'image\'], 40, 40);\r\n			} else {\r\n				$image = $this->model_tool_image->resize(\'no_image.png\', 40, 40);\r\n			}\r\n\r\n			$special = false;\r\n\r\n			$db2_product_specials = $this->model_catalog_product->getDb2ProductSpecials($result[\'product_id\']);\r\n\r\n			foreach ($db2_product_specials  as $db2_product_special) {\r\n				if (($db2_product_special[\'date_start\'] == \'0000-00-00\' || strtotime($db2_product_special[\'date_start\']) < time()) && ($db2_product_special[\'date_end\'] == \'0000-00-00\' || strtotime($db2_product_special[\'date_end\']) > time())) {\r\n					$special = $db2_product_special[\'price\'];\r\n\r\n					break;\r\n				}\r\n			}\r\n\r\n			$data[\'db2_products\'][] = array(\r\n				\'local_id\'   => (isset($result[\'local_id\'])) ? $result[\'local_id\'] : \'\',\r\n				\'local_model\'=> (isset($result[\'local_model\'])) ? $result[\'local_model\'] : \'\',\r\n				\'product_id\' => $result[\'product_id\'],\r\n				\'image\'      => $image,\r\n				\'name\'       => $result[\'name\'],\r\n				\'model\'      => $result[\'model\'],\r\n				\'price\'      => $result[\'price\'],\r\n				\'special\'    => $special,\r\n				\'quantity\'   => $result[\'quantity\'],\r\n				\'status\'     => ($result[\'status\']) ? $this->language->get(\'text_enabled\') : $this->language->get(\'text_disabled\'),\r\n				\'edit\'       => $this->url->link(\'catalog/db2_product/edit\', \'token=\' . $this->session->data[\'token\'] . \'&product_id=\' . $result[\'product_id\'] . $url, \'SSL\')\r\n			);\r\n		}\r\n\r\n		$db2_pagination = new Pagination();\r\n		$db2_pagination->total = $db2_product_total;\r\n		$db2_pagination->page = $page;\r\n		$db2_pagination->limit = $this->config->get(\'config_limit_admin\');\r\n		$db2_pagination->url = $this->url->link(\'catalog/product\', \'token=\' . $this->session->data[\'token\'] . $url . \'&page={page}\', \'SSL\');\r\n\r\n		$data[\'db2_pagination\'] = $db2_pagination->render();\r\n\r\n		$data[\'db2_results\'] = sprintf($this->language->get(\'text_pagination\'), ($db2_product_total) ? (($page - 1) * $this->config->get(\'config_limit_admin\')) + 1 : 0, ((($page - 1) * $this->config->get(\'config_limit_admin\')) > ($db2_product_total - $this->config->get(\'config_limit_admin\'))) ? $db2_product_total : ((($page - 1) * $this->config->get(\'config_limit_admin\')) + $this->config->get(\'config_limit_admin\')), $db2_product_total, ceil($db2_product_total / $this->config->get(\'config_limit_admin\')));\r\n\r\n		$data[\'column_image\'] = $this->language->get(\'column_image\');\r\n		$data[\'column_name\'] = $this->language->get(\'column_name\');\r\n		$data[\'column_model\'] = $this->language->get(\'column_model\');\r\n		$data[\'column_price\'] = $this->language->get(\'column_price\');\r\n		$data[\'column_quantity\'] = $this->language->get(\'column_quantity\');\r\n		$data[\'column_status\'] = $this->language->get(\'column_status\');\r\n		$data[\'column_action\'] = $this->language->get(\'column_action\');\r\n\r\n		$data[\'entry_name\'] = $this->language->get(\'entry_name\');\r\n\r\n		$data[\'entry_qbname\'] = $this->language->get(\'entry_qbname\');\r\n		$data[\'entry_parent\'] = $this->language->get(\'entry_parent\');\r\n\r\n		$data[\'entry_model\'] = $this->language->get(\'entry_model\');\r\n		$data[\'entry_price\'] = $this->language->get(\'entry_price\');\r\n		$data[\'entry_quantity\'] = $this->language->get(\'entry_quantity\');\r\n		$data[\'entry_status\'] = $this->language->get(\'entry_status\');\r\n\r\n		if (isset($this->request->post[\'selected\'])) {\r\n			$data[\'selected\'] = (array)$this->request->post[\'selected\'];\r\n		} else {\r\n			$data[\'selected\'] = array();\r\n		}\r\n\r\n		$data[\'sort\'] = $sort;\r\n		$data[\'order\'] = $order;\r\n\r\n		$data[\'token\'] = $this->session->data[\'token\'];\r\n\r\n		// Categories\r\n		$this->load->model(\'catalog/category\');\r\n\r\n		if (isset($this->request->post[\'product_category\'])) {\r\n			$categories = $this->request->post[\'product_category\'];\r\n		} elseif (isset($this->request->get[\'product_id\'])) {\r\n			$categories = $this->model_catalog_product->getDb2ProductCategories($this->request->get[\'product_id\']);\r\n		} else {\r\n			$categories = array();\r\n		}\r\n\r\n		$data[\'product_categories\'] = array();\r\n\r\n		foreach ($categories as $category_id) {\r\n			$category_info = $this->model_catalog_category->getDb2Category($category_id);\r\n\r\n			if ($category_info) {\r\n				$data[\'product_categories\'][] = array(\r\n					\'category_id\' => $category_info[\'category_id\'],\r\n					\'name\' => ($category_info[\'path\']) ? $category_info[\'path\'] . \' &gt; \' . $category_info[\'name\'] : $category_info[\'name\']\r\n				);\r\n			}\r\n		}\r\n\r\n		$this->response->setOutput($this->load->view(\'catalog/product_import_list.tpl\', $data));\r\n	}\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[\r\n				protected function getList() {\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[		\r\n		// Categories\r\n		$data[\'entry_category\'] = $this->language->get(\'entry_category\');\r\n		\r\n		$this->load->model(\'catalog/category\');\r\n\r\n		if (isset($this->request->post[\'product_category\'])) {\r\n			$categories = $this->request->post[\'product_category\'];\r\n		} elseif (isset($this->request->get[\'product_id\'])) {\r\n			$categories = $this->model_catalog_product->getDb2ProductCategories($this->request->get[\'product_id\']);\r\n		} else {\r\n			$categories = array();\r\n		}\r\n\r\n		$data[\'product_categories\'] = array();\r\n\r\n		foreach ($categories as $category_id) {\r\n			$category_info = $this->model_catalog_category->getDb2Category($category_id);\r\n\r\n			if ($category_info) {\r\n				$data[\'product_categories\'][] = array(\r\n					\'category_id\' => $category_info[\'category_id\'],\r\n					\'name\' => ($category_info[\'path\']) ? $category_info[\'path\'] . \' &gt; \' . $category_info[\'name\'] : $category_info[\'name\']\r\n				);\r\n			}\r\n		}\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"admin/view/template/catalog/product_list.tpl\">\r\n		<operation>\r\n			<search><![CDATA[\r\n				<?php echo $footer; ?>\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n	<div class=\"modal fade\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"mySmallModalLabel\" aria-hidden=\"true\" id=\"p2p-import-modal\" data-token=\"<?php echo $token; ?>\">\r\n		<div class=\"modal-dialog modal-xl\">\r\n		<div class=\"modal-content\">\r\n			<!--<div class=\"modal-header\">\r\n			  <button aria-hidden=\"true\" data-dismiss=\"modal\" class=\"close\" type=\"button\">×</button>\r\n			  <h4 id=\"mySmallModalLabel\" class=\"modal-title\">Edit Address</h4>\r\n			</div>-->\r\n			<style scoped>\r\n			.modal-body {\r\n				padding: 0;\r\n			}\r\n			</style>\r\n			<div class=\"modal-body\">\r\n			  <div class=\"panel panel-default\">\r\n				<div class=\"panel-heading\">	\r\n					<h3 class=\"panel-title\"><i class=\"fa fa-list-alt\"></i> Import Products</h3>\r\n					<button style=\"float: right\" aria-hidden=\"true\" data-dismiss=\"modal\" class=\"close\" type=\"button\">×</button>\r\n				</div>\r\n				<div class=\"panel-body\">\r\n					<div class=\"row\">\r\n						<div class=\"col-sm-12\">\r\n							<div class=\"well\">\r\n								<form class=\"form-horizontal\" id=\"form-product-p2p-filter\">\r\n									<div class=\"row\">\r\n									<fieldset>\r\n										<div class=\"col-sm-12\">\r\n											<div class=\"form-group\">\r\n												<label class=\"col-sm-2 control-label\" for=\"input-name\"><?php echo $entry_name; ?></label>\r\n												<div class=\"col-sm-10\">\r\n													<select multiple class=\"form-control\">\r\n														<option selected=\"selected\">QuickCommerce Parent Site</option>\r\n														<option disabled=\"disabled\">Demo Feed 1</option>\r\n														<option disabled=\"disabled\">Demo Feed 2</option>\r\n													</select>\r\n												</div>\r\n											</div>\r\n											<div class=\"form-group\">\r\n												<div class=\"col-sm-8 pull-right\">\r\n												<!-- EDIT -->\r\n												<button id=\"qc-peer-shares\" data-token=\"<?php echo $token; ?>\" data-toggle=\"tooltip\" title=\"View Products\" class=\"btn btn-info pull-right\"><i class=\"fa fa-list-alt\"></i> View Products</button>\r\n												<!-- END -->\r\n												</div>\r\n											</div>\r\n										</div>\r\n									</fieldset>\r\n									</div>\r\n									<div class=\"row\">\r\n									<fieldset>\r\n										<div class=\"col-sm-4\">\r\n											<div class=\"form-group\">\r\n												<label class=\"col-sm-4 control-label\" for=\"input-name\"><?php echo $entry_name; ?></label>\r\n												<div class=\"col-sm-8\">\r\n													<input type=\"text\" name=\"filter_name\" value=\"<?php echo $filter_name; ?>\" placeholder=\"<?php echo $entry_name; ?>\" id=\"input-name\" class=\"form-control\" />\r\n												</div>\r\n											</div>\r\n											<div class=\"form-group\">\r\n												<label class=\"col-sm-4 control-label\" for=\"input-model\"><?php echo $entry_model; ?></label>\r\n												<div class=\"col-sm-8\">\r\n													<input type=\"text\" name=\"filter_model\" value=\"<?php echo $filter_model; ?>\" placeholder=\"<?php echo $entry_model; ?>\" id=\"input-model\" class=\"form-control\" />\r\n												</div>\r\n											</div>\r\n											<div class=\"form-group\">\r\n												<label class=\"col-sm-4 control-label\" for=\"input-match\"> </label>\r\n												<div class=\"col-sm-8\">\r\n													<input type=\"checkbox\" name=\"filter_match\" value=\"1\" id=\"input-match\" class=\"form-control\" style=\"display: inline-block; margin-right: 1em\" checked=\"checked\" /><b><?php echo \'Show matching products only\'; ?></b>\r\n												</div>\r\n											</div>\r\n										</div>\r\n										<div class=\"col-sm-4\">\r\n											<div class=\"form-group\">\r\n												<label class=\"col-sm-4 control-label\" for=\"input-price\"><?php echo $entry_price; ?></label>\r\n												<div class=\"col-sm-8\">\r\n													<input type=\"text\" name=\"filter_price\" value=\"<?php echo $filter_price; ?>\" placeholder=\"<?php echo $entry_price; ?>\" id=\"input-price\" class=\"form-control\" />\r\n												</div>\r\n											</div>\r\n											<div class=\"form-group\">\r\n												<label class=\"col-sm-4 control-label\" for=\"input-quantity\"><?php echo $entry_quantity; ?></label>\r\n												<div class=\"col-sm-8\">\r\n													<input type=\"text\" name=\"filter_quantity\" value=\"<?php echo $filter_quantity; ?>\" placeholder=\"<?php echo $entry_quantity; ?>\" id=\"input-quantity\" class=\"form-control\" />\r\n												</div>\r\n											</div>\r\n										</div>\r\n										<div class=\"col-sm-4\">\r\n											<div class=\"form-group\">\r\n												<label class=\"col-sm-4 control-label\" for=\"input-category\"><span data-toggle=\"tooltip\" title=\"<?php echo $help_category; ?>\"><?php echo \'Categories\'; ?></span></label>\r\n												<div class=\"col-sm-8\">\r\n												  <input type=\"text\" name=\"category\" value=\"\" placeholder=\"<?php echo $entry_category; ?>\" id=\"input-category\" class=\"form-control\" data-token=\"<?php echo $token; ?>\" />\r\n												  <div id=\"product-category\" class=\"well well-sm\" style=\"height: 150px; overflow: auto;\">\r\n													<?php foreach ($product_categories as $product_category) { ?>\r\n													<div id=\"product-category<?php echo $product_category[\'category_id\']; ?>\"><i class=\"fa fa-minus-circle\"></i> <?php echo $product_category[\'name\']; ?>\r\n													  <input type=\"hidden\" name=\"product_category[]\" value=\"<?php echo $product_category[\'category_id\']; ?>\" />\r\n													</div>\r\n													<?php } ?>\r\n												  </div>\r\n												</div>\r\n											</div>\r\n											<div class=\"form-group\">\r\n												<div class=\"col-sm-8 pull-right\">\r\n												<!-- EDIT -->\r\n												<button type=\"button\" id=\"button-p2p-import-filter\" class=\"btn btn-primary pull-right\"><i class=\"fa fa-search\"></i> <?php echo $button_filter; ?></button>\r\n												<!-- END -->\r\n												</div>\r\n											</div>\r\n										</div>\r\n									</fieldset>\r\n									</div>\r\n								</form>\r\n							</div>\r\n						</div>\r\n					</div>\r\n					<div class=\"row\">\r\n						<fieldset>\r\n							<div class=\"col-sm-12\">\r\n								<div class=\"row\">\r\n									<div class=\"col-sm-12\"><legend>Import Options</legend></div>\r\n								</div>\r\n							</div>\r\n							<div class=\"col-sm-2\" for=\"\">	\r\n								<div class=\"form-group\">\r\n									<label class=\"col-sm-8 control-label\" for=\"import-images\">Images</label>\r\n									<div class=\"col-sm-2\">\r\n										<input type=\"checkbox\" name=\"images\" value=\"true\" id=\"import-images\" class=\"form-control\" checked=\"checked\" />\r\n									</div>\r\n								</div>\r\n							</div>\r\n							<div class=\"col-sm-2\" for=\"\">	\r\n								<div class=\"form-group\">\r\n									<label class=\"col-sm-8 control-label\" for=\"import-categories\">Categories</label>\r\n									<div class=\"col-sm-2\">\r\n										<input type=\"checkbox\" name=\"categories\" value=\"true\" id=\"import-categories\" class=\"form-control\" checked=\"checked\" />\r\n									</div>\r\n								</div>\r\n							</div>\r\n							<div class=\"col-sm-2\" for=\"\">	\r\n								<div class=\"form-group\">\r\n									<label class=\"col-sm-8 control-label\" for=\"import-attributes\">Attributes</label>\r\n									<div class=\"col-sm-2\">\r\n										<input type=\"checkbox\" name=\"attributes\" value=\"true\" id=\"import-attributes\" class=\"form-control\" />\r\n									</div>\r\n								</div>\r\n							</div>\r\n							<div class=\"col-sm-2\" for=\"\">	\r\n								<div class=\"form-group\">\r\n									<label class=\"col-sm-8 control-label\" for=\"import-options\">Options</label>\r\n									<div class=\"col-sm-2\">\r\n										<input type=\"checkbox\" name=\"options\" value=\"true\" id=\"import-options\" class=\"form-control\" />\r\n									</div>\r\n								</div>\r\n							</div>\r\n							<div class=\"col-sm-4\" for=\"\">	\r\n								<div class=\"form-group\">\r\n									<div class=\"col-sm-6\">\r\n										<button id=\"qc-peer-import-selected\" data-token=\"<?php echo $token; ?>\" data-toggle=\"tooltip\" title=\"Import Selected\" class=\"btn btn-warning\"><i class=\"fa fa-adjust\"></i> Import Selected</button>\r\n									</div>\r\n									<div class=\"col-sm-6\">\r\n										<button id=\"qc-peer-import-all\" data-token=\"<?php echo $token; ?>\" data-toggle=\"tooltip\" title=\"Import Selected\" class=\"btn btn-success\"><i class=\"fa fa-circle-o\"></i> Import All</button>\r\n									</div>\r\n								</div>\r\n							</div>\r\n						</fieldset>\r\n					</div>\r\n					<div class=\"row\" style=\"margin-top: 20px;\">\r\n						<div class=\"col-sm-12\">\r\n							<div class=\"panel panel-default\">\r\n							  <!--<div class=\"panel-heading\">\r\n								<h3 class=\"panel-title\"><i class=\"fa fa-list\"></i> <?php echo $text_list; ?></h3>\r\n							  </div>-->\r\n							  <div class=\"panel-body\">\r\n								<form action=\"<?php echo $delete; ?>\" method=\"post\" enctype=\"multipart/form-data\" id=\"form-product-p2p-import\">\r\n								  <div class=\"table-responsive\">\r\n									<table class=\"table table-bordered table-hover\">\r\n									  <thead>\r\n										<tr>\r\n										  <td class=\"text-center\"><?php echo $column_image; ?></td>\r\n										  <td class=\"text-left\"><?php if ($sort == \'pd.name\') { ?>\r\n											<a href=\"<?php echo $sort_name; ?>\" class=\"<?php echo strtolower($order); ?>\"><?php echo $column_name; ?></a>\r\n											<?php } else { ?>\r\n											<a href=\"<?php echo $sort_name; ?>\"><?php echo $column_name; ?></a>\r\n											<?php } ?></td>\r\n										  <td class=\"text-left\"><?php if ($sort == \'p.model\') { ?>\r\n											<a href=\"<?php echo $sort_model; ?>\" class=\"<?php echo strtolower($order); ?>\"><?php echo $column_model; ?></a>\r\n											<?php } else { ?>\r\n											<a href=\"<?php echo $sort_model; ?>\"><?php echo $column_model; ?></a>\r\n											<?php } ?></td>\r\n										  <td class=\"text-right\"><?php if ($sort == \'p.price\') { ?>\r\n											<a href=\"<?php echo $sort_price; ?>\" class=\"<?php echo strtolower($order); ?>\"><?php echo $column_price; ?></a>\r\n											<?php } else { ?>\r\n											<a href=\"<?php echo $sort_price; ?>\"><?php echo $column_price; ?></a>\r\n											<?php } ?></td>\r\n										  <td class=\"text-right\"><?php if ($sort == \'p.quantity\') { ?>\r\n											<a href=\"<?php echo $sort_quantity; ?>\" class=\"<?php echo strtolower($order); ?>\"><?php echo $column_quantity; ?></a>\r\n											<?php } else { ?>\r\n											<a href=\"<?php echo $sort_quantity; ?>\"><?php echo $column_quantity; ?></a>\r\n											<?php } ?></td>\r\n										  <td class=\"text-left\"><?php if ($sort == \'p.status\') { ?>\r\n											<a href=\"<?php echo $sort_status; ?>\" class=\"<?php echo strtolower($order); ?>\"><?php echo $column_status; ?></a>\r\n											<?php } else { ?>\r\n											<a href=\"<?php echo $sort_status; ?>\"><?php echo $column_status; ?></a>\r\n											<?php } ?></td>\r\n										  <td style=\"width: 1px;\" class=\"text-center\"><input type=\"checkbox\" onclick=\"$(\'input[name*=\\\'selected\\\']\').prop(\'checked\', this.checked);\" /></td>\r\n										</tr>\r\n									  </thead>\r\n									  <tbody>\r\n										<tr>\r\n										  <td class=\"text-center\" colspan=\"8\"><?php echo $text_no_results; ?></td>\r\n										</tr>\r\n									  </tbody>\r\n									</table>\r\n								  </div>\r\n								</form>\r\n								<div class=\"row\">\r\n								</div>\r\n							  </div>\r\n							</div>\r\n						</div>\r\n					</div>\r\n				</div>\r\n			  </div>\r\n			</div>\r\n		</div>\r\n		</div>\r\n	</div>\r\n	<style scoped>\r\n		.modal-xl {\r\n			width: 1248px;\r\n		}\r\n	</style>\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	\r\n	<file path=\"admin/controller/catalog/category.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n				public function autocomplete() {\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n	public function db2_autocomplete() {\r\n		$json = array();\r\n\r\n		if (isset($this->request->get[\'filter_name\'])) {\r\n			$this->load->model(\'catalog/category\');\r\n\r\n			$filter_data = array(\r\n				\'filter_name\' => $this->request->get[\'filter_name\'],\r\n				\'sort\'        => \'name\',\r\n				\'order\'       => \'ASC\',\r\n				\'start\'       => 0,\r\n				\'limit\'       => 5\r\n			);\r\n\r\n			$results = $this->model_catalog_category->getDb2Categories($filter_data);\r\n\r\n			foreach ($results as $result) {\r\n				$json[] = array(\r\n					\'category_id\' => $result[\'category_id\'],\r\n					\'name\'        => strip_tags(html_entity_decode($result[\'name\'], ENT_QUOTES, \'UTF-8\'))\r\n				);\r\n			}\r\n		}\r\n\r\n		$sort_order = array();\r\n\r\n		foreach ($json as $key => $value) {\r\n			$sort_order[$key] = $value[\'name\'];\r\n		}\r\n\r\n		array_multisort($sort_order, SORT_ASC, $json);\r\n\r\n		$this->response->addHeader(\'Content-Type: application/json\');\r\n		$this->response->setOutput(json_encode($json));\r\n	}\r\n			]]>\r\n			</add>\r\n		</operation>\r\n	</file>\r\n	\r\n	<file path=\"admin/model/catalog/manufacturer.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n				public function getManufacturer($manufacturer_id) {\r\n			]]></search>\r\n			<add position=\"before\">\r\n			<![CDATA[\r\n	public function getDb2Manufacturer($manufacturer_id) {\r\n		$query = $this->db2->query(\"SELECT DISTINCT *, (SELECT keyword FROM \" . DB2_PREFIX . \"url_alias WHERE query = \'manufacturer_id=\" . (int)$manufacturer_id . \"\') AS keyword FROM \" . DB2_PREFIX . \"manufacturer WHERE manufacturer_id = \'\" . (int)$manufacturer_id . \"\'\");\r\n\r\n		return $query->row;\r\n	}\r\n			]]>\r\n			</add>\r\n		</operation>\r\n	</file>\r\n	\r\n	<file path=\"admin/model/catalog/category.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n				public function getCategory($category_id) {\r\n			]]></search>\r\n			<add position=\"before\">\r\n			<![CDATA[\r\n	public function getDb2Category($category_id) {\r\n		$query = $this->db2->query(\"SELECT DISTINCT *, (SELECT GROUP_CONCAT(cd1.name ORDER BY level SEPARATOR \'&nbsp;&nbsp;&gt;&nbsp;&nbsp;\') FROM \" . DB_PREFIX . \"category_path cp LEFT JOIN \" . DB_PREFIX . \"category_description cd1 ON (cp.path_id = cd1.category_id AND cp.category_id != cp.path_id) WHERE cp.category_id = c.category_id AND cd1.language_id = \'\" . (int)$this->config->get(\'config_language_id\') . \"\' GROUP BY cp.category_id) AS path, (SELECT DISTINCT keyword FROM \" . DB_PREFIX . \"url_alias WHERE query = \'category_id=\" . (int)$category_id . \"\') AS keyword FROM \" . DB_PREFIX . \"category c LEFT JOIN \" . DB_PREFIX . \"category_description cd2 ON (c.category_id = cd2.category_id) WHERE c.category_id = \'\" . (int)$category_id . \"\' AND cd2.language_id = \'\" . (int)$this->config->get(\'config_language_id\') . \"\'\");\r\n\r\n		return $query->row;\r\n	}\r\n			]]>\r\n			</add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[\r\n				public function getCategories($data = array()) {\r\n			]]></search>\r\n			<add position=\"before\">\r\n			<![CDATA[\r\n	public function getDb2Categories($data = array()) {\r\n		$sql = \"SELECT cp.category_id AS category_id, GROUP_CONCAT(cd1.name ORDER BY cp.level SEPARATOR \'&nbsp;&nbsp;&gt;&nbsp;&nbsp;\') AS name, c1.parent_id, c1.sort_order FROM \" . DB2_PREFIX . \"category_path cp LEFT JOIN \" . DB2_PREFIX . \"category c1 ON (cp.category_id = c1.category_id) LEFT JOIN \" . DB2_PREFIX . \"category c2 ON (cp.path_id = c2.category_id) LEFT JOIN \" . DB2_PREFIX . \"category_description cd1 ON (cp.path_id = cd1.category_id) LEFT JOIN \" . DB2_PREFIX . \"category_description cd2 ON (cp.category_id = cd2.category_id) WHERE cd1.language_id = \'\" . (int)$this->config->get(\'config_language_id\') . \"\' AND cd2.language_id = \'\" . (int)$this->config->get(\'config_language_id\') . \"\'\";\r\n\r\n		if (!empty($data[\'filter_name\'])) {\r\n			$sql .= \" AND cd2.name LIKE \'\" . $this->db2->escape($data[\'filter_name\']) . \"%\'\";\r\n		}\r\n\r\n		$sql .= \" GROUP BY cp.category_id\";\r\n\r\n		$sort_data = array(\r\n			\'name\',\r\n			\'sort_order\'\r\n		);\r\n\r\n		if (isset($data[\'sort\']) && in_array($data[\'sort\'], $sort_data)) {\r\n			$sql .= \" ORDER BY \" . $data[\'sort\'];\r\n		} else {\r\n			$sql .= \" ORDER BY sort_order\";\r\n		}\r\n\r\n		if (isset($data[\'order\']) && ($data[\'order\'] == \'DESC\')) {\r\n			$sql .= \" DESC\";\r\n		} else {\r\n			$sql .= \" ASC\";\r\n		}\r\n\r\n		if (isset($data[\'start\']) || isset($data[\'limit\'])) {\r\n			if ($data[\'start\'] < 0) {\r\n				$data[\'start\'] = 0;\r\n			}\r\n\r\n			if ($data[\'limit\'] < 1) {\r\n				$data[\'limit\'] = 20;\r\n			}\r\n\r\n			$sql .= \" LIMIT \" . (int)$data[\'start\'] . \",\" . (int)$data[\'limit\'];\r\n		}\r\n\r\n		$query = $this->db2->query($sql);\r\n\r\n		return $query->rows;\r\n	}\r\n			]]>\r\n			</add>\r\n		</operation>\r\n	</file>\r\n	\r\n	<file path=\"admin/model/catalog/option.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n				public function getOption($option_id) {\r\n			]]></search>\r\n			<add position=\"before\">\r\n			<![CDATA[\r\n	public function getDb2Option($option_id) {\r\n		$query = $this->db2->query(\"SELECT * FROM `\" . DB2_PREFIX . \"option` o LEFT JOIN \" . DB2_PREFIX . \"option_description od ON (o.option_id = od.option_id) WHERE o.option_id = \'\" . (int)$option_id . \"\' AND od.language_id = \'\" . (int)$this->config->get(\'config_language_id\') . \"\'\");\r\n\r\n		return $query->row;\r\n	}\r\n			]]>\r\n			</add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[\r\n				public function getOptionValueDescriptions($option_id) {\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n	public function getDb2OptionValueDescriptions($option_id) {\r\n		$option_value_data = array();\r\n\r\n		$option_value_query = $this->db2->query(\"SELECT * FROM \" . DB2_PREFIX . \"option_value WHERE option_id = \'\" . (int)$option_id . \"\' ORDER BY sort_order\");\r\n\r\n		foreach ($option_value_query->rows as $option_value) {\r\n			$option_value_description_data = array();\r\n\r\n			$option_value_description_query = $this->db2->query(\"SELECT * FROM \" . DB2_PREFIX . \"option_value_description WHERE option_value_id = \'\" . (int)$option_value[\'option_value_id\'] . \"\'\");\r\n\r\n			foreach ($option_value_description_query->rows as $option_value_description) {\r\n				$option_value_description_data[$option_value_description[\'language_id\']] = array(\'name\' => $option_value_description[\'name\']);\r\n			}\r\n\r\n			$option_value_data[] = array(\r\n				\'option_value_id\'          => $option_value[\'option_value_id\'],\r\n				\'option_value_description\' => $option_value_description_data,\r\n				\'image\'                    => $option_value[\'image\'],\r\n				\'sort_order\'               => $option_value[\'sort_order\']\r\n			);\r\n		}\r\n\r\n		return $option_value_data;\r\n	}\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	\r\n	<file path=\"admin/model/catalog/attribute.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n				public function getAttribute($attribute_id) {\r\n			]]></search>\r\n			<add position=\"before\">\r\n			<![CDATA[\r\n	public function getDb2Attribute($attribute_id) {\r\n		$query = $this->db2->query(\"SELECT * FROM \" . DB2_PREFIX . \"attribute a LEFT JOIN \" . DB2_PREFIX . \"attribute_description ad ON (a.attribute_id = ad.attribute_id) WHERE a.attribute_id = \'\" . (int)$attribute_id . \"\' AND ad.language_id = \'\" . (int)$this->config->get(\'config_language_id\') . \"\'\");\r\n\r\n		return $query->row;\r\n	}\r\n			]]>\r\n			</add>\r\n		</operation>\r\n	</file>\r\n</modification>',1,'2016-09-11 00:08:55'),(76,'QuickCommerce SEO Tools','quickcommerce_seo','lucaslopatka@gmail.com','1.0','','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<modification>\r\n	<name>QuickCommerce SEO Tools</name>\r\n	<version>1.0</version>\r\n	<code>quickcommerce_seo</code>\r\n	<author>lucaslopatka@gmail.com</author>\r\n	\r\n	<file path=\"admin/model/catalog/product.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n				public function getProducts($data = array()) {\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n	public function editUrlAlias($product_id = null, $keyword = \'\') {\r\n		if (!is_numeric($product_id) || $product_id < 1) {\r\n			return false;\r\n		}\r\n		\r\n		$keyword = (!empty($keyword)) ? $keyword : \'\';\r\n		\r\n		$this->db->query(\"DELETE FROM \" . DB_PREFIX . \"url_alias WHERE query = \'product_id=\" . (int)$product_id . \"\'\");\r\n\r\n		$this->db->query(\"INSERT INTO \" . DB_PREFIX . \"url_alias SET query = \'product_id=\" . (int)$product_id . \"\', keyword = \'\" . $this->db->escape($keyword) . \"\'\");\r\n	}\r\n	\r\n	public function getProductsByCategory($data = array()) {\r\n		$sql = \'SELECT *\';		\r\n		if (!empty($data[\'filter_category_id\'])) {\r\n			$sql .= \" FROM \" . DB_PREFIX . \"category_path cp LEFT JOIN \" . DB_PREFIX . \"product_to_category p2c ON (cp.category_id = p2c.category_id)\";\r\n			$sql .= \" LEFT JOIN \" . DB_PREFIX . \"product p ON (p2c.product_id = p.product_id)\";\r\n		} else {\r\n			$sql .= \" FROM \" . DB_PREFIX . \"product p\";\r\n		}\r\n		\r\n		$sql .=  \" LEFT JOIN \" . DB_PREFIX . \"product_description pd ON (p.product_id = pd.product_id) WHERE pd.language_id = \'\" . (int)$this->config->get(\'config_language_id\') . \"\'\";\r\n		\r\n		if (!empty($data[\'filter_category_id\'])) {\r\n			if (!empty($data[\'filter_sub_category\'])) {\r\n				$sql .= \" AND cp.path_id = \'\" . (int)$data[\'filter_category_id\'] . \"\'\";\r\n			} else {\r\n				$sql .= \" AND p2c.category_id = \'\" . (int)$data[\'filter_category_id\'] . \"\'\";\r\n			}\r\n		}\r\n\r\n		if (!empty($data[\'filter_mpn\'])) {\r\n			$sql .= \" AND p.mpn LIKE \'\" . $this->db->escape($data[\'filter_mpn\']) . \"%\'\";\r\n		}\r\n				\r\n			\r\n		if (!empty($data[\'filter_name\'])) {\r\n			\r\n		$sql .= \" AND pd.name LIKE \'%\" . $this->db->escape($data[\'filter_name\']) . \"%\'\";	\r\n			\r\n		}\r\n\r\n		if (!empty($data[\'filter_model\'])) {\r\n			\r\n		$sql .= \" AND p.model LIKE \'%\" . $this->db->escape($data[\'filter_model\']) . \"%\'\";	\r\n			\r\n		}\r\n\r\n		/*if (isset($data[\'filter_price\']) && !is_null($data[\'filter_price\'])) {\r\n			$sql .= \" AND p.price LIKE \'\" . $this->db->escape($data[\'filter_price\']) . \"%\'\";\r\n		}\r\n\r\n		if (isset($data[\'filter_quantity\']) && !is_null($data[\'filter_quantity\'])) {\r\n			$sql .= \" AND p.quantity = \'\" . (int)$data[\'filter_quantity\'] . \"\'\";\r\n		}\r\n\r\n		if (isset($data[\'filter_status\']) && !is_null($data[\'filter_status\'])) {\r\n			$sql .= \" AND p.status = \'\" . (int)$data[\'filter_status\'] . \"\'\";\r\n		}*/\r\n		\r\n		$sql .= \" GROUP BY p.product_id\";\r\n\r\n		$sort_data = array(\r\n			\'pd.name\',\r\n			\'p.model\',\r\n			\'p.price\',\r\n			\'p.quantity\',\r\n			\'p.status\',\r\n			\'p.sort_order\'\r\n		);\r\n\r\n		if (isset($data[\'sort\']) && in_array($data[\'sort\'], $sort_data)) {\r\n			$sql .= \" ORDER BY \" . $data[\'sort\'];\r\n		} else {\r\n			$sql .= \" ORDER BY pd.name\";\r\n		}\r\n\r\n		if (isset($data[\'order\']) && ($data[\'order\'] == \'DESC\')) {\r\n			$sql .= \" DESC\";\r\n		} else {\r\n			$sql .= \" ASC\";\r\n		}\r\n\r\n		if (isset($data[\'start\']) || isset($data[\'limit\'])) {\r\n			if ($data[\'start\'] < 0) {\r\n				$data[\'start\'] = 0;\r\n			}\r\n\r\n			if ($data[\'limit\'] < 1) {\r\n				$data[\'limit\'] = 20;\r\n			}\r\n\r\n			$sql .= \" LIMIT \" . (int)$data[\'start\'] . \",\" . (int)$data[\'limit\'];\r\n		}\r\n\r\n		$query = $this->db->query($sql);\r\n\r\n		return $query->rows;\r\n	}\r\n			]]>\r\n			</add>\r\n		</operation>\r\n	</file>\r\n	\r\n	<file path=\"admin/controller/catalog/product.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n				protected function getList() {\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n	// From http://cubiq.org/the-perfect-php-clean-url-generator\r\n	protected static function regexGenerateSeoUrl($str, $replace = array(), $delimiter = \'-\') {\r\n		setlocale(LC_ALL, \'en_US.UTF8\');\r\n		if (!empty($replace)) {\r\n			$str = str_replace((array)$replace, \' \', $str);\r\n		}\r\n\r\n		$clean = iconv(\'UTF-8\', \'ASCII//TRANSLIT\', $str);\r\n		$clean = preg_replace(\"/[^a-zA-Z0-9_|+ -]/\", \'\', $clean);\r\n		$clean = strtolower(trim($clean, \'-\'));\r\n		$clean = preg_replace(\"/[_|+ -]+/\", $delimiter, $clean);\r\n\r\n		return $clean;\r\n	}\r\n	\r\n	public function getSeoRenameResultsList() {\r\n		$this->load->language(\'catalog/product\');\r\n\r\n		$this->load->model(\'catalog/product\');\r\n\r\n		if (isset($this->request->get[\'filter_name\'])) {\r\n			$filter_name = $this->request->get[\'filter_name\'];\r\n		} else {\r\n			$filter_name = null;\r\n		}\r\n\r\n		if (isset($this->request->get[\'filter_model\'])) {\r\n			$filter_model = $this->request->get[\'filter_model\'];\r\n		} else {\r\n			$filter_model = null;\r\n		}\r\n\r\n		if (isset($this->request->get[\'filter_price\'])) {\r\n			$filter_price = $this->request->get[\'filter_price\'];\r\n		} else {\r\n			$filter_price = null;\r\n		}\r\n\r\n		if (isset($this->request->get[\'filter_quantity\'])) {\r\n			$filter_quantity = $this->request->get[\'filter_quantity\'];\r\n		} else {\r\n			$filter_quantity = null;\r\n		}\r\n\r\n		if (isset($this->request->get[\'filter_status\'])) {\r\n			$filter_status = $this->request->get[\'filter_status\'];\r\n		} else {\r\n			$filter_status = null;\r\n		}\r\n\r\n		if (isset($this->request->get[\'product_category\'])) {\r\n			$filter_category_id = $this->request->get[\'product_category\'];\r\n		} else {\r\n			$filter_category_id = null;\r\n		}\r\n\r\n		if (isset($this->request->get[\'filter_match\'])) {\r\n			$filter_match = $this->request->get[\'filter_match\'];\r\n		} else {\r\n			$filter_match = null;\r\n		}\r\n\r\n		if (isset($this->request->get[\'sort\'])) {\r\n			$sort = $this->request->get[\'sort\'];\r\n		} else {\r\n			$sort = \'pd.name\';\r\n		}\r\n\r\n		if (isset($this->request->get[\'order\'])) {\r\n			$order = $this->request->get[\'order\'];\r\n		} else {\r\n			$order = \'ASC\';\r\n		}\r\n\r\n		if (isset($this->request->get[\'page\'])) {\r\n			$page = $this->request->get[\'page\'];\r\n		} else {\r\n			$page = 1;\r\n		}\r\n\r\n		$url = \'\';\r\n\r\n		if (isset($this->request->get[\'filter_name\'])) {\r\n			$url .= \'&filter_name=\' . urlencode(html_entity_decode($this->request->get[\'filter_name\'], ENT_QUOTES, \'UTF-8\'));\r\n		}\r\n\r\n		if (isset($this->request->get[\'filter_model\'])) {\r\n			$url .= \'&filter_model=\' . urlencode(html_entity_decode($this->request->get[\'filter_model\'], ENT_QUOTES, \'UTF-8\'));\r\n		}\r\n\r\n		if (isset($this->request->get[\'filter_price\'])) {\r\n			$url .= \'&filter_price=\' . $this->request->get[\'filter_price\'];\r\n		}\r\n\r\n		if (isset($this->request->get[\'filter_quantity\'])) {\r\n			$url .= \'&filter_quantity=\' . $this->request->get[\'filter_quantity\'];\r\n		}\r\n\r\n		if (isset($this->request->get[\'filter_status\'])) {\r\n			$url .= \'&filter_status=\' . $this->request->get[\'filter_status\'];\r\n		}\r\n\r\n		if (isset($this->request->get[\'filter_match\'])) {\r\n			$url .= \'&filter_match=\' . $this->request->get[\'filter_match\'];\r\n		}\r\n\r\n		if (isset($this->request->get[\'sort\'])) {\r\n			$url .= \'&sort=\' . $this->request->get[\'sort\'];\r\n		}\r\n\r\n		if (isset($this->request->get[\'order\'])) {\r\n			$url .= \'&order=\' . $this->request->get[\'order\'];\r\n		}\r\n\r\n		if (isset($this->request->get[\'page\'])) {\r\n			$url .= \'&page=\' . $this->request->get[\'page\'];\r\n		}\r\n\r\n		$data[\'breadcrumbs\'] = array();\r\n\r\n		$data[\'breadcrumbs\'][] = array(\r\n			\'text\' => $this->language->get(\'text_home\'),\r\n			\'href\' => $this->url->link(\'common/dashboard\', \'token=\' . $this->session->data[\'token\'], \'SSL\')\r\n		);\r\n\r\n		$data[\'breadcrumbs\'][] = array(\r\n			\'text\' => $this->language->get(\'heading_title\'),\r\n			\'href\' => $this->url->link(\'catalog/product\', \'token=\' . $this->session->data[\'token\'] . $url, \'SSL\')\r\n		);\r\n\r\n		$data[\'add\'] = $this->url->link(\'catalog/product/add\', \'token=\' . $this->session->data[\'token\'] . $url, \'SSL\');\r\n		$data[\'copy\'] = $this->url->link(\'catalog/product/copy\', \'token=\' . $this->session->data[\'token\'] . $url, \'SSL\');\r\n		$data[\'delete\'] = $this->url->link(\'catalog/product/delete\', \'token=\' . $this->session->data[\'token\'] . $url, \'SSL\');\r\n\r\n		$data[\'products\'] = array();\r\n\r\n		$filter_data = array(\r\n			\'filter_name\'			=> $filter_name,\r\n			\'filter_model\'			=> $filter_model,\r\n			\'filter_price\'			=> $filter_price,\r\n			\'filter_quantity\'		=> $filter_quantity,\r\n			\'filter_status\'   		=> $filter_status,\r\n			\'filter_sub_category\'	=> true,\r\n			\'filter_category_id\'	=> (is_array($filter_category_id) && count($filter_category_id) > 0) ? $filter_category_id[0] : null, // Quick hack to make sure we only pick up one\r\n			\'filter_match\'			=> $filter_match,\r\n			\'sort\'					=> $sort,\r\n			\'order\'					=> $order,\r\n			\'start\'					=> ($page - 1) * $this->config->get(\'config_limit_admin\'),\r\n			\'limit\'					=> $this->config->get(\'config_limit_admin\')\r\n		);\r\n\r\n		$this->load->model(\'tool/image\');\r\n\r\n		$product_total = $this->model_catalog_product->getTotalProducts($filter_data);\r\n\r\n		$results = $this->model_catalog_product->getProductsByCategory($filter_data);\r\n\r\n		$this->load->model(\'catalog/manufacturer\');\r\n		$manufacturerResults = $this->model_catalog_manufacturer->getManufacturers();\r\n		$manufacturers = array();\r\n		\r\n		foreach ($manufacturerResults as $manufacturer) {\r\n			$manufacturers[$manufacturer[\'manufacturer_id\']] = $manufacturer;\r\n		}\r\n		\r\n		foreach ($results as $result) {\r\n			\r\n			if (is_file(DIR_IMAGE . $result[\'image\'])) {\r\n				$image = $this->model_tool_image->resize($result[\'image\'], 40, 40);\r\n			} else {\r\n				$image = $this->model_tool_image->resize(\'no_image.png\', 40, 40);\r\n			}\r\n			\r\n			$seoUrl = $result[\'product_id\'];\r\n			if (isset($result[\'model\'])) {\r\n				$seoUrl = $result[\'model\'];	\r\n			}\r\n			\r\n			if (isset($result[\'manufacturer_id\']) && isset($manufacturers[$result[\'manufacturer_id\']])) {\r\n				$seoUrl = $manufacturers[$result[\'manufacturer_id\']][\'name\'] . \'-\' . $seoUrl;\r\n			}\r\n			\r\n			$seoUrl = self::regexGenerateSeoUrl($seoUrl);\r\n			\r\n			$data[\'products\'][] = array(\r\n				\'local_id\'   => (isset($result[\'local_id\'])) ? $result[\'local_id\'] : \'\',\r\n				\'local_model\'=> $seoUrl,\r\n				\'product_id\' => $result[\'product_id\'],\r\n				\'image\'      => $image,\r\n				\'name\'       => $result[\'name\'],\r\n				\'model\'      => $result[\'model\'],\r\n				\'status\'     => ($result[\'status\']) ? $this->language->get(\'text_enabled\') : $this->language->get(\'text_disabled\'),\r\n				\'edit\'       => $this->url->link(\'catalog/product/edit\', \'token=\' . $this->session->data[\'token\'] . \'&product_id=\' . $result[\'product_id\'] . $url, \'SSL\')\r\n			);\r\n		}\r\n\r\n		$pagination = new Pagination();\r\n		$pagination->total = $product_total;\r\n		$pagination->page = $page;\r\n		$pagination->limit = $this->config->get(\'config_limit_admin\');\r\n		$pagination->url = $this->url->link(\'catalog/product\', \'token=\' . $this->session->data[\'token\'] . $url . \'&page={page}\', \'SSL\');\r\n\r\n		$data[\'pagination\'] = $pagination->render();\r\n\r\n		$data[\'results\'] = sprintf($this->language->get(\'text_pagination\'), ($product_total) ? (($page - 1) * $this->config->get(\'config_limit_admin\')) + 1 : 0, ((($page - 1) * $this->config->get(\'config_limit_admin\')) > ($product_total - $this->config->get(\'config_limit_admin\'))) ? $product_total : ((($page - 1) * $this->config->get(\'config_limit_admin\')) + $this->config->get(\'config_limit_admin\')), $product_total, ceil($product_total / $this->config->get(\'config_limit_admin\')));\r\n\r\n		$data[\'column_image\'] = $this->language->get(\'column_image\');\r\n		$data[\'column_name\'] = $this->language->get(\'column_name\');\r\n		$data[\'column_model\'] = $this->language->get(\'column_model\');\r\n		$data[\'column_price\'] = $this->language->get(\'column_price\');\r\n		$data[\'column_quantity\'] = $this->language->get(\'column_quantity\');\r\n		$data[\'column_status\'] = $this->language->get(\'column_status\');\r\n		$data[\'column_action\'] = $this->language->get(\'column_action\');\r\n\r\n		$data[\'entry_name\'] = $this->language->get(\'entry_name\');\r\n\r\n		$data[\'entry_qbname\'] = $this->language->get(\'entry_qbname\');\r\n		$data[\'entry_parent\'] = $this->language->get(\'entry_parent\');\r\n\r\n		$data[\'entry_model\'] = $this->language->get(\'entry_model\');\r\n		$data[\'entry_price\'] = $this->language->get(\'entry_price\');\r\n		$data[\'entry_quantity\'] = $this->language->get(\'entry_quantity\');\r\n		$data[\'entry_status\'] = $this->language->get(\'entry_status\');\r\n\r\n		if (isset($this->request->post[\'selected\'])) {\r\n			$data[\'selected\'] = (array)$this->request->post[\'selected\'];\r\n		} else {\r\n			$data[\'selected\'] = array();\r\n		}\r\n\r\n		$data[\'sort\'] = $sort;\r\n		$data[\'order\'] = $order;\r\n\r\n		$data[\'token\'] = $this->session->data[\'token\'];\r\n\r\n		// Categories\r\n		$this->load->model(\'catalog/category\');\r\n\r\n		if (isset($this->request->post[\'product_category\'])) {\r\n			$categories = $this->request->post[\'product_category\'];\r\n		} elseif (isset($this->request->get[\'product_id\'])) {\r\n			$categories = $this->model_catalog_product->getProductCategories($this->request->get[\'product_id\']);\r\n		} else {\r\n			$categories = array();\r\n		}\r\n\r\n		$data[\'product_categories\'] = array();\r\n\r\n		foreach ($categories as $category_id) {\r\n			$category_info = $this->model_catalog_category->getCategory($category_id);\r\n\r\n			if ($category_info) {\r\n				$data[\'product_categories\'][] = array(\r\n					\'category_id\' => $category_info[\'category_id\'],\r\n					\'name\' => ($category_info[\'path\']) ? $category_info[\'path\'] . \' &gt; \' . $category_info[\'name\'] : $category_info[\'name\']\r\n				);\r\n			}\r\n		}\r\n\r\n		$this->response->setOutput($this->load->view(\'catalog/product_seo_list.tpl\', $data));\r\n	}\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[\r\n				protected function getList() {\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[		\r\n	// TODO: Do this in QC Product controller?\r\n	// I need this method to be base OpenCart compatible though, which is why I also need this here\r\n	// I\'d just prefer if QC can stand alone on all fronts\r\n	public function generateSeoUrls() {\r\n		if (!isset($this->request->post[\'selected\'])) {\r\n			return false;\r\n		}\r\n		\r\n		$this->load->model(\'catalog/product\');\r\n		foreach ($this->request->post[\'selected\'] as $selected) {\r\n			$keyword = false;\r\n			if (isset($this->request->post[\'model\'])) {\r\n				$keyword = $this->request->post[\'model\'][$selected];\r\n				if (!empty($keyword)) {\r\n					$this->model_catalog_product->editUrlAlias((int)$selected, $keyword);\r\n				}\r\n			}\r\n		}\r\n	}\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"admin/view/template/catalog/product_list.tpl\">\r\n		<operation>\r\n			<search><![CDATA[\r\n				<?php echo $footer; ?>\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n	<div class=\"modal fade\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"mySmallModalLabel\" aria-hidden=\"true\" id=\"seo-rename-modal\" data-token=\"<?php echo $token; ?>\">\r\n		<div class=\"modal-dialog modal-xl\">\r\n		<div class=\"modal-content\">\r\n			<!--<div class=\"modal-header\">\r\n			  <button aria-hidden=\"true\" data-dismiss=\"modal\" class=\"close\" type=\"button\">×</button>\r\n			  <h4 id=\"mySmallModalLabel\" class=\"modal-title\">Edit Address</h4>\r\n			</div>-->\r\n			<style scoped>\r\n			.modal-body {\r\n				padding: 0;\r\n			}\r\n			</style>\r\n			<div class=\"modal-body\">\r\n			  <div class=\"panel panel-default\">\r\n				<div class=\"panel-heading\">	\r\n					<h3 class=\"panel-title\"><i class=\"fa fa-list-alt\"></i> Batch Generate SEO URLs for Products</h3>\r\n					<button style=\"float: right\" aria-hidden=\"true\" data-dismiss=\"modal\" class=\"close\" type=\"button\">×</button>\r\n				</div>\r\n				<div class=\"panel-body\">\r\n					<div class=\"row\">\r\n						<div class=\"col-sm-12\">\r\n							<div class=\"well\">\r\n								<form class=\"form-horizontal\" id=\"form-seo-rename-product-filter\">\r\n									<div class=\"row\">\r\n									<fieldset>\r\n										<div class=\"col-sm-4\">\r\n											<div class=\"form-group\">\r\n												<label class=\"col-sm-4 control-label\" for=\"input-name\"><?php echo $entry_name; ?></label>\r\n												<div class=\"col-sm-8\">\r\n													<input type=\"text\" name=\"filter_name\" value=\"<?php echo $filter_name; ?>\" placeholder=\"<?php echo $entry_name; ?>\" id=\"input-name\" class=\"form-control\" />\r\n												</div>\r\n											</div>\r\n											<hr>\r\n											<div class=\"form-group\">\r\n												<label class=\"col-sm-4 control-label\" for=\"input-field\"><?php echo \'Field\'; //$filter_quantity; ?></label>\r\n												<div class=\"col-sm-8\">\r\n													<small>Choose a field and its corresponding tag will be appended to the expression editor</small>\r\n													<br>\r\n													<br>\r\n													<select multiple=\"multiple\" name=\"input_field\" value=\"<?php echo \'Field\'; //$filter_quantity; ?>\" style=\"height: 120px; overflow: auto;\" placeholder=\"<?php echo \'Field\'; //$filter_quantity; ?>\" id=\"input-field\" class=\"form-control\">\r\n														<option>Product ID {product_id}</option>\r\n														<option>Name {name}</option>\r\n														<option>QuickBooks Name {qb_name}</option>\r\n														<option>Manufacturer {manufacturer}</option>\r\n														<option>SKU {sku}</option>\r\n														<option>MPN {mpn}</option>\r\n													</select>\r\n												</div>\r\n											</div>\r\n										</div>\r\n										<div class=\"col-sm-4\">\r\n											<?php /*\r\n											<div class=\"form-group\">\r\n												<label class=\"col-sm-4 control-label\" for=\"input-price\"><?php echo $entry_price; ?></label>\r\n												<div class=\"col-sm-8\">\r\n													<input type=\"text\" name=\"filter_price\" value=\"<?php echo $filter_price; ?>\" placeholder=\"<?php echo $entry_price; ?>\" id=\"input-price\" class=\"form-control\" />\r\n												</div>\r\n											</div>\r\n											<div class=\"form-group\">\r\n												<label class=\"col-sm-4 control-label\" for=\"input-quantity\"><?php echo $entry_quantity; ?></label>\r\n												<div class=\"col-sm-8\">\r\n													<input type=\"text\" name=\"filter_quantity\" value=\"<?php echo $filter_quantity; ?>\" placeholder=\"<?php echo $entry_quantity; ?>\" id=\"input-quantity\" class=\"form-control\" />\r\n												</div>\r\n											</div>\r\n											*/ ?>\r\n											<div class=\"form-group\">\r\n												<label class=\"col-sm-4 control-label\" for=\"input-model\"><?php echo \'QBO Name\'; //$entry_model; ?></label>\r\n												<div class=\"col-sm-8\">\r\n													<input type=\"text\" name=\"filter_model\" value=\"<?php echo $filter_model; ?>\" placeholder=\"<?php echo $entry_model; ?>\" id=\"input-model\" class=\"form-control\" />\r\n												</div>\r\n											</div>\r\n											<hr>\r\n											<div class=\"form-group\">\r\n												<label class=\"col-sm-4 control-label\" for=\"input-expr\"><?php echo \'Expr\'; //$entry_expr; ?>\r\n												</label>\r\n												<div class=\"col-sm-8\">\r\n													<small>1. {product_id}-my-url.htm</small>\r\n													<br>\r\n													<small>2. Regular Expr. (preg_replace)</small>\r\n													<br>\r\n													<br>\r\n													<textarea rows=\"6\" name=\"expr\" placeholder=\"<?php echo \'Expr\'; //$entry_expr; ?>\" id=\"input-expr\" class=\"form-control\">{product_id}-{manufacturer:{convert-spaces: true,convert-special:true}}-{model{convert-spaces: true,convert-special:true}}</textarea>\r\n												</div>\r\n											</div>\r\n										</div>\r\n										<div class=\"col-sm-4\">\r\n											<div class=\"form-group\">\r\n												<label class=\"col-sm-4 control-label\" for=\"input-category\"><span data-toggle=\"tooltip\" title=\"<?php echo $help_category; ?>\"><?php echo \'Categories\'; ?></span></label>\r\n												<div class=\"col-sm-8\">\r\n												  <input type=\"text\" name=\"category\" value=\"\" placeholder=\"<?php echo $entry_category; ?>\" id=\"input-category\" class=\"form-control\" data-token=\"<?php echo $token; ?>\" />\r\n												  <div id=\"product-category\" class=\"well well-sm\" style=\"height: 100px; overflow: auto;\">\r\n													<?php foreach ($product_categories as $product_category) { ?>\r\n													<div id=\"product-category<?php echo $product_category[\'category_id\']; ?>\"><i class=\"fa fa-minus-circle\"></i> <?php echo $product_category[\'name\']; ?>\r\n													  <input type=\"hidden\" name=\"product_category[]\" value=\"<?php echo $product_category[\'category_id\']; ?>\" />\r\n													</div>\r\n													<?php } ?>\r\n												  </div>\r\n												</div>\r\n											</div>\r\n											<div class=\"form-group\">\r\n												<div class=\"col-sm-8 pull-right\">\r\n												<!-- EDIT -->\r\n												<button type=\"button\" id=\"button-seo-rename-filter\" class=\"btn btn-info pull-right\"><i class=\"fa fa-eye\"></i> <?php echo \'Preview\'; //$button_filter; ?></button>\r\n												<!-- END -->\r\n												</div>\r\n											</div>\r\n										</div>\r\n									</fieldset>\r\n									</div>\r\n								</form>\r\n							</div>\r\n						</div>\r\n					</div>\r\n					<div class=\"row\">\r\n						<fieldset>\r\n							<div class=\"col-sm-12\">\r\n								<div class=\"row\">\r\n									<div class=\"col-sm-12\"><legend>Preview</legend></div>\r\n								</div>\r\n							</div>\r\n							<div class=\"col-sm-4 col-sm-push-8\" for=\"\">	\r\n								<div class=\"form-group\">\r\n									<div class=\"col-sm-6\">\r\n										<button id=\"qc-seo-rename-selected\" data-token=\"<?php echo $token; ?>\" data-toggle=\"tooltip\" title=\"Generate for Selected\" class=\"btn btn-warning\"><i class=\"fa fa-adjust\"></i> Generate for Selected</button>\r\n									</div>\r\n									<div class=\"col-sm-6\">\r\n										<button id=\"qc-seo-rename-all\" data-token=\"<?php echo $token; ?>\" data-toggle=\"tooltip\" title=\"Generate for All\" class=\"btn btn-success\"><i class=\"fa fa-circle-o\"></i> Generate for All</button>\r\n									</div>\r\n								</div>\r\n							</div>\r\n						</fieldset>\r\n					</div>\r\n					<div class=\"row\" style=\"margin-top: 20px;\">\r\n						<div class=\"col-sm-12\">\r\n							<div class=\"panel panel-default\">\r\n							  <!--<div class=\"panel-heading\">\r\n								<h3 class=\"panel-title\"><i class=\"fa fa-list\"></i> <?php echo $text_list; ?></h3>\r\n							  </div>-->\r\n							  <div class=\"panel-body\">\r\n								<form action=\"<?php echo $delete; ?>\" method=\"post\" enctype=\"multipart/form-data\" id=\"form-seo-rename\">\r\n								  <div class=\"table-responsive\">\r\n									<table class=\"table table-bordered table-hover\">\r\n									  <thead>\r\n										<tr>\r\n										  <td class=\"text-center\"><?php echo $column_image; ?></td>\r\n										  <td class=\"text-left\"><?php if ($sort == \'pd.name\') { ?>\r\n											<a href=\"<?php echo $sort_name; ?>\" class=\"<?php echo strtolower($order); ?>\"><?php echo $column_name; ?></a>\r\n											<?php } else { ?>\r\n											<a href=\"<?php echo $sort_name; ?>\"><?php echo $column_name; ?></a>\r\n											<?php } ?></td>\r\n										  <td class=\"text-left\"><?php if ($sort == \'p.model\') { ?>\r\n											<a href=\"<?php echo $sort_model; ?>\" class=\"<?php echo strtolower($order); ?>\"><?php echo $column_model; ?></a>\r\n											<?php } else { ?>\r\n											<a href=\"<?php echo $sort_model; ?>\"><?php echo $column_model; ?></a>\r\n											<?php } ?></td>\r\n										  <td class=\"text-right\"><?php if ($sort == \'p.price\') { ?>\r\n											<a href=\"<?php echo $sort_price; ?>\" class=\"<?php echo strtolower($order); ?>\"><?php echo $column_price; ?></a>\r\n											<?php } else { ?>\r\n											<a href=\"<?php echo $sort_price; ?>\"><?php echo $column_price; ?></a>\r\n											<?php } ?></td>\r\n										  <td class=\"text-right\"><?php if ($sort == \'p.quantity\') { ?>\r\n											<a href=\"<?php echo $sort_quantity; ?>\" class=\"<?php echo strtolower($order); ?>\"><?php echo $column_quantity; ?></a>\r\n											<?php } else { ?>\r\n											<a href=\"<?php echo $sort_quantity; ?>\"><?php echo $column_quantity; ?></a>\r\n											<?php } ?></td>\r\n										  <td class=\"text-left\"><?php if ($sort == \'p.status\') { ?>\r\n											<a href=\"<?php echo $sort_status; ?>\" class=\"<?php echo strtolower($order); ?>\"><?php echo $column_status; ?></a>\r\n											<?php } else { ?>\r\n											<a href=\"<?php echo $sort_status; ?>\"><?php echo $column_status; ?></a>\r\n											<?php } ?></td>\r\n										  <td style=\"width: 1px;\" class=\"text-center\"><input type=\"checkbox\" onclick=\"$(\'input[name*=\\\'selected\\\']\').prop(\'checked\', this.checked);\" /></td>\r\n										</tr>\r\n									  </thead>\r\n									  <tbody>\r\n										<tr>\r\n										  <td class=\"text-center\" colspan=\"8\"><?php echo $text_no_results; ?></td>\r\n										</tr>\r\n									  </tbody>\r\n									</table>\r\n								  </div>\r\n								</form>\r\n								<div class=\"row\">\r\n								</div>\r\n							  </div>\r\n							</div>\r\n						</div>\r\n					</div>\r\n				</div>\r\n			  </div>\r\n			</div>\r\n		</div>\r\n		</div>\r\n	</div>\r\n	<style scoped>\r\n		.modal-xl {\r\n			width: 1248px;\r\n		}\r\n	</style>\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n</modification>',1,'2016-09-10 02:17:00'),(28,'Quantity list PRO Plus','ocm_quantity_list_pro','-vito-','1.3','opencartmodding.com','<modification>\n	<name>Quantity list PRO Plus</name>\n	<version>1.3</version>\n	<author>-vito-</author>\n	<link>opencartmodding.com</link>\n	<code>ocm_quantity_list_pro</code>\n	<!--  //////////////////       ADMIN CHANGES     ////////////////////////           -->\n	<file path=\"admin/controller/catalog/product.php\">\n		<operation info=\"Add DB column \'packs\'\">\n			<search><![CDATA[public function index() {]]></search>\n			<add position=\"after\"><![CDATA[		//ocm_qty_list_pro_cg_start\n		$query = $this->db->query(\"DESC \".DB_PREFIX.\"product_discount packs\");\n		if (!$query->num_rows) { \n			$this->db->query(\"ALTER TABLE `\" . DB_PREFIX . \"product_discount` ADD `packs` varchar(20) NOT NULL\");\n		}\n		//ocm_qty_list_pro_cg_end\n]]></add>\n		</operation>\n		<operation info=\"Add \'Packs\' to Product discount array\">\n			<search><![CDATA[=> $product_discount[\'quantity\'],]]></search>\n			<add position=\"after\"><![CDATA[			//ocm_qty_list_pro_cg_start\n				\'packs\'          => $product_discount[\'packs\'],\n			//ocm_qty_list_pro_cg_end]]></add>\n		</operation>\n		<operation info=\"Add Language variable for header \'Packs\'\">\n			<search><![CDATA[$data[\'entry_priority\']]]></search>\n			<add position=\"after\"><![CDATA[//ocm_qty_list_pro_cg_start\n$data[\'entry_packs\'] = ($this->language->get(\'entry_packs\')==\'entry_packs\')? \'Packs\':$this->language->get(\'entry_packs\');\n//ocm_qty_list_pro_cg_end]]></add>\n		</operation>\n	</file>\n	<file path=\"admin/view/template/catalog/product_form.tpl\">\n		<operation info=\"Add Column header for \'Packs\'\">\n			<search><![CDATA[<table id=\"discount\"]]></search>\n			<add position=\"after\" offset=\"4\"><![CDATA[<!--ocm_qty_list_pro_cg_start-->\n<td class=\"text-right\"><?php echo $entry_packs; ?></td>\n<!--ocm_qty_list_pro_cg_end-->]]></add>\n		</operation>\n		<operation info=\"Add Column for \'Packs\'\">\n			<search><![CDATA[<input type=\"text\" name=\"product_discount[<?php echo $discount_row; ?>][quantity]\"]]></search>\n			<add position=\"after\"><![CDATA[<!--ocm_qty_list_pro_cg_start-->\n<td class=\"text-right\"><input type=\"text\" name=\"product_discount[<?php echo $discount_row; ?>][packs]\" value=\"<?php echo $product_discount[\'packs\']; ?>\" placeholder=\"<?php echo $entry_packs; ?>\" class=\"form-control\" /></td>\n<!--ocm_qty_list_pro_cg_end-->]]></add>\n		</operation>\n		<operation info=\"Add Column for \'Packs\' into \'AddDiscount\' function\">\n			<search><![CDATA[<input type=\"text\" name=\"product_discount[\' + discount_row + \'][quantity]\"]]></search>\n			<add position=\"after\"><![CDATA[// ocm_qty_list_pro_cg_start\nhtml += \'    <td class=\"text-right\"><input type=\"text\" name=\"product_discount[\' + discount_row + \'][packs]\" value=\"\" placeholder=\"<?php echo $entry_packs; ?>\" class=\"form-control\" /></td>\';\n// ocm_qty_list_pro_cg_end]]></add>\n		</operation>\n	</file>\n	<file path=\"admin/model/catalog/product.php\">\n		<operation info=\"Save field \'packs\' in the DB while addProduct and EditProduct\">\n			<search><![CDATA[, quantity = \'\" . (int)$product_discount[\'quantity\'] . \"\']]></search>\n			<add position=\"replace\"><![CDATA[, quantity = \'\" . (int)$product_discount[\'quantity\'] . \"\', packs = \'\" . $this->db->escape($product_discount[\'packs\']) . \"\']]></add>\n		</operation>\n		<operation info=\"Add Order by Customer Group to Tab \'Discount\'\">\n			<search><![CDATA[\"\' ORDER BY quantity, priority, price\"]]></search>\n			<add position=\"replace\"><![CDATA[\"\' ORDER BY customer_group_id, quantity, priority, price\"]]></add>\n		</operation>\n	</file>\n	<!--  //////////////////       CATALOG CHANGES     ////////////////////////           -->\n	<file path=\"catalog/model/catalog/product.php\">\n		<operation info=\"Add field to SQL-queries in the GetProduct function\">\n			<search index=\"0\"><![CDATA[ORDER BY pd2.priority ASC, pd2.price ASC LIMIT 1) AS discount,]]></search>\n			<add position=\"replace\"><![CDATA[ORDER BY pd2.priority ASC, pd2.price ASC LIMIT 1) AS discount, (SELECT GROUP_CONCAT(DISTINCT packs ORDER BY packs SEPARATOR \',\' ) FROM \" . DB_PREFIX . \"product_discount pd2 WHERE pd2.product_id = p.product_id AND pd2.customer_group_id = \'\" . (int)$this->config->get(\'config_customer_group_id\') . \"\' AND ((pd2.date_start = \'0000-00-00\' OR pd2.date_start < NOW()) AND (pd2.date_end = \'0000-00-00\' OR pd2.date_end > NOW())) GROUP BY pd2.product_id) AS packs,]]></add>\n		</operation>\n		<operation info=\"Add field to result array in the GetProduct function\">\n			<search><![CDATA[=> $query->row[\'minimum\'],]]></search>\n			<add position=\"after\"><![CDATA[			// ocm_qty_list_pro_cg_start\n				\'packs\'            => $query->row[\'packs\'],\n			// ocm_qty_list_pro_cg_end]]></add>\n		</operation>\n		\n	</file>\n	<file path=\"catalog/view/theme/*/template/product/product.tpl\">\n		<operation info=\"Add data-multiplier and data-minimum attributes to the quantity input\">\n			<search><![CDATA[name=\"quantity\"]]></search>\n			<add position=\"replace\"><![CDATA[name=\"quantity\" data-multiplier=\"<?php echo $packs; ?>\" data-minimum=\"<?php echo $minimum; ?>\"]]></add>\n		</operation>\n		<operation info=\"Change quantity input value\">\n			<search><![CDATA[value=\"<?php echo $minimum; ?>\"]]></search>\n			<add position=\"replace\"><![CDATA[value=\"<?php echo ((int)$packs>(int)$minimum ? $packs : $minimum); ?>\"]]></add>\n		</operation>\n		<operation info=\"Add packs message\">\n			<search><![CDATA[<?php if ($minimum > 1) { ?>]]></search>\n			<add position=\"replace\"><![CDATA[<?php if ($minimum > 1 or (int)$packs > 1) {  ?>]]></add>\n		</operation>\n		<operation info=\"add jscript\">\n			<search><![CDATA[$footer;]]></search>\n			<add position=\"before\"><![CDATA[<script type=\"text/javascript\"><!--\nvar qtyParams = {\n	inputElement: \'<?php echo $prod_page_qty_input_selector; ?>\',\n	listHoverSample: \'<?php echo $prod_page_qty_hover_selector; ?>\',\n	listRows: <?php echo $prod_page_qty_list_items; ?> \n};\n//--></script> \n<script type=\"text/javascript\" src=\"catalog/view/javascript/quantity_list_pro.js\"></script>]]></add>\n		</operation>\n	</file>\n	<file path=\"catalog/controller/product/product.php\">\n		<operation info=\"Add DB column \'packs\'\">\n			<search><![CDATA[public function index() {]]></search>\n			<add position=\"after\"><![CDATA[		//ocm_qty_list_pro_cg_start\n		$query = $this->db->query(\"DESC \".DB_PREFIX.\"product_discount packs\");\n		if (!$query->num_rows) { \n			$this->db->query(\"ALTER TABLE `\" . DB_PREFIX . \"product_discount` ADD `packs` varchar(20) NOT NULL\");\n		}\n		//ocm_qty_list_pro_cg_end\n]]></add>\n		</operation>\n		<operation info=\"Changing text for multiplyer instead of minimum\">\n			<search><![CDATA[$data[\'text_minimum\'] = sprintf($this->language->get(\'text_minimum\'), $product_info[\'minimum\']);]]></search>\n			<add position=\"after\"><![CDATA[		// ocm_qty_list_pro_start\n			if ($product_info[\'packs\']) {\n				$data[\'packs\'] = $product_info[\'packs\'];\n				$data[\'text_minimum\'] = sprintf((!$this->config->get(\'qtylp_prod_page_qty_text_\' . $this->session->data[\'language\']))? \'Sold in packs of %s\':$this->config->get(\'qtylp_prod_page_qty_text_\' . $this->session->data[\'language\']), $product_info[\'packs\']) . ((int)$product_info[\'minimum\']>(int)$product_info[\'packs\'] ? \'<br />\' . $data[\'text_minimum\'] : \'\');\n			} else {\n				$data[\'packs\'] = 1;\n			}\n			$data[\'prod_page_qty_list_items\'] = $this->config->get(\'qtylp_prod_page_qty_list_items\')? $this->config->get(\'qtylp_prod_page_qty_list_items\') : 10;\n			$data[\'prod_page_qty_input_selector\'] = (!$this->config->get(\'qtylp_prod_page_qty_input_selector\'))? \'input[name=quantity]\':$this->config->get(\'qtylp_prod_page_qty_input_selector\');\n			$data[\'prod_page_qty_hover_selector\'] = (!$this->config->get(\'qtylp_prod_page_qty_hover_selector\'))? \'#button-cart\':$this->config->get(\'qtylp_prod_page_qty_hover_selector\');\n		// ocm_qty_list_pro_end]]></add>\n		</operation>\n	</file>\n	<file path=\"catalog/view/theme/*/template/checkout/cart.tpl\">\n		<operation info=\"Add data-multiplier attribute to the quantity field\">\n			<search><![CDATA[type=\"text\" name=\"quantity[<?php echo $product[\'key\']; ?>]\"]]></search>\n			<add position=\"replace\"><![CDATA[type=\"text\" name=\"quantity[<?php echo $product[\'key\']; ?>]\" data-multiplier=\"<?php echo $product[\'packs\']; ?>\" data-minimum=\"<?php echo $product[\'minimum\']; ?>\"]]></add>\n		</operation>\n		<operation info=\"Add Parameters for javascript\">\n			<search><![CDATA[$footer;]]></search>\n			<add position=\"before\"><![CDATA[<script type=\"text/javascript\"><!--\nvar qtyParams = {\n	inputElement: \'<?php echo $cart_page_qty_input_selector; ?>\',\n	listHoverSample: \'<?php echo $cart_page_qty_hover_selector; ?>\',\n	listRows: <?php echo $cart_page_qty_list_items; ?> \n};\n//--></script> \n<script type=\"text/javascript\" src=\"catalog/view/javascript/quantity_list_pro-min.js\"></script>]]></add>\n		</operation>\n		<operation info=\"Add Multiply message to cart module\">\n			<search trim=\"true\"><![CDATA[<a href=\"<?php echo $product[\'href\']; ?>\"><?php echo $product[\'name\']; ?></a>]]></search>\n			<add position=\"after\"><![CDATA[		<!--ocm_qty_list_pro_start-->\n			<?php if ($product[\'text_packs\']>\'\'){ ?>\n			<br><small><?php echo $product[\'text_packs\']; ?></small>\n			<?php } ?>\n		<!--ocm_qty_list_pro_end-->\n]]></add>\n		</operation>\n	</file>\n	<file path=\"catalog/controller/checkout/cart.php\">\n		<operation info=\"Add `minimum` field to the data array\">\n			<search><![CDATA[=> $product[\'quantity\'],]]></search>\n			<add position=\"after\"><![CDATA[				// ocm_qty_list_pro_start\n					\'minimum\' => ($product[\'minimum\'] ? $product[\'minimum\'] : 1),\n					\'packs\' => ($product[\'packs\'] ? $product[\'packs\'] : 1),\n					\'text_packs\' => (((int)$product[\'packs\']>1)?sprintf((!$this->config->get(\'qtylp_cart_page_qty_text_\' . $this->session->data[\'language\']))? \'Sold in packs of %s\':$this->config->get(\'qtylp_cart_page_qty_text_\' . $this->session->data[\'language\']), $product[\'packs\']):\'\'),\n				// ocm_qty_list_pro_end]]></add>\n		</operation>\n		<operation info=\"Add number of QtyList rows\">\n			<search><![CDATA[$this->language->get(\'button_update\');]]></search>\n			<add position=\"before\"><![CDATA[		// ocm_qty_list_pro_start\n			$data[\'cart_page_qty_list_items\'] = $this->config->get(\'qtylp_cart_page_qty_list_items\')? $this->config->get(\'qtylp_cart_page_qty_list_items\') : 10;\n			$data[\'cart_page_qty_input_selector\'] = (!$this->config->get(\'qtylp_cart_page_qty_input_selector\'))? \'input[name^=\"quantity[\"]\':$this->config->get(\'qtylp_cart_page_qty_input_selector\');\n			$data[\'cart_page_qty_hover_selector\'] = (!$this->config->get(\'qtylp_cart_page_qty_hover_selector\'))? \'div.buttons a[href*=\"route=checkout/checkout\"]\':$this->config->get(\'qtylp_cart_page_qty_hover_selector\');\n		// ocm_qty_list_pro_end]]></add>\n		</operation>\n		<operation info=\"Changing addToCart function 1\">\n			<search><![CDATA[$quantity = (int)$this->request->post[\'quantity\'];]]></search>\n			<add position=\"after\"><![CDATA[		// ocm_qty_list_pro_start\n			$quantity = (($quantity==1) and (max($product_info[\'minimum\'],$product_info[\'packs\'])>1))? max($product_info[\'minimum\'],$product_info[\'packs\']):$quantity;\n		// ocm_qty_list_pro_end]]></add>\n		</operation>\n		<operation error=\"skip\" info=\"Changing addToCart function 2\"><!--Only for vv. 2.0.0.1, 2.0.1.1-->\n			<search><![CDATA[$this->cart->add($this->request->post[\'product_id\'], $this->request->post[\'quantity\'], $option, $recurring_id);]]></search>\n			<add position=\"replace\"><![CDATA[//  ocm_qty_list_pro_comment: $this->cart->add($this->request->post[\'product_id\'], $this->request->post[\'quantity\'], $option, $recurring_id);\n			// ocm_qty_list_pro_start\n				$this->cart->add($product_id, $quantity, $option, $recurring_id);\n			// ocm_qty_list_pro_end]]></add>\n		</operation>\n		<operation info=\"Add multiplier to the Success message\">\n			<search><![CDATA[, $product_info[\'name\'],]]></search>\n			<add position=\"replace\"><![CDATA[, $product_info[\'name\'] . (($quantity > 1)? \'&nbsp;(&times;\' . $quantity . \')\':\'\'),]]></add>\n		</operation>\n	</file>\n	<file path=\"system/library/cart.php\">\n		<operation info=\"Add packs field to DB query\">\n			<search><![CDATA[FROM \" . DB_PREFIX . \"product p LEFT JOIN \" . DB_PREFIX . \"product_description pd]]></search>\n			<add position=\"replace\"><![CDATA[, (SELECT GROUP_CONCAT(DISTINCT packs ORDER BY packs SEPARATOR \',\' ) FROM \" . DB_PREFIX . \"product_discount pd2 WHERE pd2.product_id = p.product_id AND pd2.customer_group_id = \'\" . (int)$this->config->get(\'config_customer_group_id\') . \"\' AND ((pd2.date_start = \'0000-00-00\' OR pd2.date_start < NOW()) AND (pd2.date_end = \'0000-00-00\' OR pd2.date_end > NOW())) GROUP BY pd2.product_id) AS packs FROM \" . DB_PREFIX . \"product p LEFT JOIN \" . DB_PREFIX . \"product_description pd]]></add>\n		</operation>\n		<operation info=\"Add packs field to result\">\n			<search><![CDATA[=> $product_query->row[\'minimum\'],]]></search>\n			<add position=\"before\"><![CDATA[					// ocm_qty_list_pro_start\n						\'packs\'         => $product_query->row[\'packs\'],\n					// ocm_qty_list_pro_end]]></add>\n		</operation>\n	</file>\n	<file path=\"catalog/controller/common/cart.php\">\n		<operation info=\"Preparing multiply message for cart module\">\n			<search><![CDATA[$data[\'products\'][] = array(]]></search>\n			<add position=\"replace\"><![CDATA[// ocm_qty_list_pro_start\n			$text_packs = ((int)$product[\'packs\']>1)?sprintf((!$this->config->get(\'qtylp_cart_page_qty_text_\' . $this->session->data[\'language\']))? \'Sold in packs of %s\':$this->config->get(\'qtylp_cart_page_qty_text_\' . $this->session->data[\'language\']), $product[\'packs\']):\'\';\n			// ocm_qty_list_pro_end\n			$data[\'products\'][] = array(\n				\'text_packs\' => $text_packs, //ocm_qty_list_pro_cg insertion]]></add>\n		</operation>\n	</file>\n	<file path=\"catalog/view/theme/*/template/common/cart.tpl\">\n		<operation info=\"Add Multiply message to the product row of the cart module\">\n			<search><![CDATA[<a href=\"<?php echo $product[\'href\']; ?>\"><?php echo $product[\'name\']; ?></a>]]></search>\n			<add position=\"after\"><![CDATA[<!--ocm_qty_list_pro_start-->\n			<?php if ($product[\'text_packs\']>\'\'){ ?>\n			<br><small><?php echo $product[\'text_packs\']; ?></small>\n			<?php } ?>\n		<!--ocm_qty_list_pro_end-->\n]]></add>\n		</operation>\n	</file>\n</modification>',0,'2015-12-14 14:32:23'),(34,'QuickCommerce SMTP @No-Reply E-mail','quickcommerce_smtp_noreply_email','lucaslopatka@gmail.com','1.0','','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<modification>\n	<name>QuickCommerce SMTP @No-Reply E-mail</name>\n	<version>1.0</version>\n	<code>quickcommerce_smtp_noreply_email</code>\n	<author>lucaslopatka@gmail.com</author>\n	<file path=\"system/library/mail.php\">\n		<operation>\n			<search position=\"replace\"><![CDATA[\n			$header .= \'Reply-To: =?UTF-8?B?\' . base64_encode($this->reply_to) . \'?=\' . \' <\' . $this->from . \'>\' . $this->newline;\n			]]></search>\n			<add><![CDATA[\n			$header .= \'Reply-To: =?UTF-8?B?\' . base64_encode($this->reply_to) . \'?=\' . \' <\' . $this->reply_to . \'>\' . $this->newline;\n			]]></add>\n		 </operation>\n	</file>\n	<file path=\"catalog/controller/information/contact.php\">\n		 <operation>\n			<search position=\"replace\"><![CDATA[$mail->setFrom($this->request->post[\'email\']);]]></search>\n			<add>\n			<![CDATA[\n			if ($this->config->get(\'config_mail_protocol\') == \'smtp\') {\n				$mail->setFrom($this->config->get(\'config_mail_smtp_username\'));\n			} else {\n				$mail->setFrom($this->config->get(\'config_email\'));\n			}\n			]]></add>\n		</operation>\n		<operation>\n			<search position=\"replace\"><![CDATA[$mail->setSender(html_entity_decode($this->request->post[\'name\'], ENT_QUOTES, \'UTF-8\'));]]></search>\n			<add><![CDATA[\n			/*if ($this->config->get(\'config_mail_protocol\') == \'smtp\') {\n				$mail->setSender($this->config->get(\'config_mail_smtp_username\')); \n			} else {\n				$mail->setSender($this->config->get(\'config_email\'));\n			}*/\n			$mail->setSender(html_entity_decode($this->request->post[\'name\'], ENT_QUOTES, \'UTF-8\'));\n			$mail->setReplyTo($this->request->post[\'email\']);\n			]]></add>\n		</operation>\n	</file>\n</modification>',0,'2015-12-19 19:41:04'),(48,'Export/Import Tool (V3.3) for OpenCart 2.x','Export/Import Tool (V3.3) for OpenCart 2.x','mhccorp.com','2.x-3.3','','<modification>\n	<name>Export/Import Tool (V3.3) for OpenCart 2.x</name>\n	<code>Export/Import Tool (V3.3) for OpenCart 2.x</code>\n	<version>2.x-3.3</version>\n	<author>mhccorp.com</author>\n	<file path=\"admin/controller/common/menu.php\">\n		<operation>\n			<search><![CDATA[$data[\'text_backup\'] = $this->language->get(\'text_backup\');]]></search>\n			<add position=\"after\"><![CDATA[\n		$data[\'text_export_import\'] = $this->language->get(\'text_export_import\');\n			]]></add>\n		</operation>\n		<operation>\n			<search><![CDATA[$data[\'backup\'] = $this->url->link(\'tool/backup\', \'token=\' . $this->session->data[\'token\'],]]></search>\n			<add position=\"after\"><![CDATA[\n		$data[\'export_import\'] = $this->url->link(\'tool/export_import\', \'token=\' . $this->session->data[\'token\'], (version_compare(PHP_VERSION, \'2.2.0.0\') >= 0) ? true : \'SSL\');\n			]]></add>\n		</operation>\n	</file>\n	<file path=\"admin/language/*/common/menu.php\">\n		<operation>\n			<search><![CDATA[$_[\'text_backup\']]]></search>\n			<add position=\"after\"><![CDATA[\n$_[\'text_export_import\']               = \'Export / Import\';\n			]]></add>\n		</operation>\n	</file>\n	<file path=\"admin/view/template/common/menu.tpl\">\n		<operation>\n			<search><![CDATA[<li><a href=\"<?php echo $backup; ?>\"><?php echo $text_backup; ?></a></li>]]></search>\n			<add position=\"replace\"><![CDATA[<li><a href=\"<?php echo $backup; ?>\"><?php echo $text_backup; ?></a></li><li><a href=\"<?php echo $export_import; ?>\"><?php echo $text_export_import; ?></a></li>]]></add>\n		</operation>\n	</file>\n</modification>\n',0,'2016-06-02 10:51:12'),(56,'QuickCommerce Search','quickcommerce_search','lucaslopatka@gmail.com','1.0','','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<modification>\n	<name>QuickCommerce Search</name>\n	<version>1.0</version>\n	<code>quickcommerce_search</code>\n	<author>lucaslopatka@gmail.com</author>\n	<file path=\"catalog/model/catalog/product.php\">\n		<operation>\n			<search><![CDATA[\n			$sql = \"SELECT p.product_id, (SELECT AVG(rating) AS total FROM \" . DB_PREFIX . \"review r1 WHERE r1.product_id = p.product_id AND r1.status = \'1\' GROUP BY r1.product_id) AS rating, (SELECT price FROM \" . DB_PREFIX . \"product_discount pd2 WHERE pd2.product_id = p.product_id AND pd2.customer_group_id = \'\" . (int)$this->config->get(\'config_customer_group_id\') . \"\' AND pd2.quantity = \'1\' AND ((pd2.date_start = \'0000-00-00\' OR pd2.date_start < NOW()) AND (pd2.date_end = \'0000-00-00\' OR pd2.date_end > NOW())) ORDER BY pd2.priority ASC, pd2.price ASC LIMIT 1) AS discount, (SELECT price FROM \" . DB_PREFIX . \"product_special ps WHERE ps.product_id = p.product_id AND ps.customer_group_id = \'\" . (int)$this->config->get(\'config_customer_group_id\') . \"\' AND ((ps.date_start = \'0000-00-00\' OR ps.date_start < NOW()) AND (ps.date_end = \'0000-00-00\' OR ps.date_end > NOW())) ORDER BY ps.priority ASC, ps.price ASC LIMIT 1) AS special\";\n			]]></search>\n			<add position=\"replace\"><![CDATA[\n	if (!empty($data[\'filter_name\']) || !empty($data[\'filter_tag\'])) {\n		$sql = \"SELECT p.product_id, m.name AS manufacturer, pd.name, p.model, MATCH (pd.name) AGAINST (\'*\" . $this->db->escape($data[\'filter_name\']) . \"*\' IN BOOLEAN MODE) AS rel1, MATCH (p.model) AGAINST (\'*\" . $this->db->escape($data[\'filter_name\']) . \"*\' IN BOOLEAN MODE) AS rel2, MATCH (m.name) AGAINST (\'*\" . $this->db->escape($data[\'filter_name\']) .\"*\' IN BOOLEAN MODE) AS rel3, (SELECT AVG(rating) AS total FROM \" . DB_PREFIX . \"review r1 WHERE r1.product_id = p.product_id AND r1.status = \'1\' GROUP BY r1.product_id) AS rating, (SELECT price FROM \" . DB_PREFIX . \"product_discount pd2 WHERE pd2.product_id = p.product_id AND pd2.customer_group_id = \'\" . (int)$this->config->get(\'config_customer_group_id\') . \"\' AND pd2.quantity = \'1\' AND ((pd2.date_start = \'0000-00-00\' OR pd2.date_start < NOW()) AND (pd2.date_end = \'0000-00-00\' OR pd2.date_end > NOW())) ORDER BY pd2.priority ASC, pd2.price ASC LIMIT 1) AS discount, (SELECT price FROM \" . DB_PREFIX . \"product_special ps WHERE ps.product_id = p.product_id AND ps.customer_group_id = \'\" . (int)$this->config->get(\'config_customer_group_id\') . \"\' AND ((ps.date_start = \'0000-00-00\' OR ps.date_start < NOW()) AND (ps.date_end = \'0000-00-00\' OR ps.date_end > NOW())) ORDER BY ps.priority ASC, ps.price ASC LIMIT 1) AS special\";\n	} else {\n		$sql = \"SELECT p.product_id, (SELECT AVG(rating) AS total FROM \" . DB_PREFIX . \"review r1 WHERE r1.product_id = p.product_id AND r1.status = \'1\' GROUP BY r1.product_id) AS rating, (SELECT price FROM \" . DB_PREFIX . \"product_discount pd2 WHERE pd2.product_id = p.product_id AND pd2.customer_group_id = \'\" . (int)$this->config->get(\'config_customer_group_id\') . \"\' AND pd2.quantity = \'1\' AND ((pd2.date_start = \'0000-00-00\' OR pd2.date_start < NOW()) AND (pd2.date_end = \'0000-00-00\' OR pd2.date_end > NOW())) ORDER BY pd2.priority ASC, pd2.price ASC LIMIT 1) AS discount, (SELECT price FROM \" . DB_PREFIX . \"product_special ps WHERE ps.product_id = p.product_id AND ps.customer_group_id = \'\" . (int)$this->config->get(\'config_customer_group_id\') . \"\' AND ((ps.date_start = \'0000-00-00\' OR ps.date_start < NOW()) AND (ps.date_end = \'0000-00-00\' OR ps.date_end > NOW())) ORDER BY ps.priority ASC, ps.price ASC LIMIT 1) AS special\";\n	}\n		]]></add>\n		</operation>\n		<operation>\n			<search><![CDATA[\n			$sql .= \" LEFT JOIN \" . DB_PREFIX . \"product_description pd ON (p.product_id = pd.product_id) LEFT JOIN \" . DB_PREFIX . \"product_to_store p2s ON (p.product_id = p2s.product_id) WHERE pd.language_id = \'\" . (int)$this->config->get(\'config_language_id\') . \"\' AND p.status = \'1\' AND p.date_available <= NOW() AND p2s.store_id = \'\" . (int)$this->config->get(\'config_store_id\') . \"\'\";\n			]]></search>\n			<add position=\"replace\"><![CDATA[\n		$sql .= \" LEFT JOIN \" . DB_PREFIX . \"product_description pd ON (p.product_id = pd.product_id) LEFT JOIN \" . DB_PREFIX . \"product_to_store p2s ON (p.product_id = p2s.product_id) LEFT JOIN \" . DB_PREFIX . \"manufacturer m ON (p.manufacturer_id = m.manufacturer_id) WHERE pd.language_id = \'\" . (int)$this->config->get(\'config_language_id\') . \"\' AND p.status = \'1\' AND p.date_available <= NOW() AND p2s.store_id = \'\" . (int)$this->config->get(\'config_store_id\') . \"\'\";\n			]]></add>\n		</operation>\n		<operation>\n			<search><![CDATA[\n			if (!empty($data[\'filter_name\'])) {\n				$implode = array();\n			]]></search>\n			<add position=\"replace\" offset=\"16\"><![CDATA[\n			/*if (!empty($data[\'filter_name\'])) {\n				$implode = array();\n\n				$words = explode(\' \', trim(preg_replace(\'/\\s+/\', \' \', $data[\'filter_name\'])));\n\n				foreach ($words as $word) {\n					$implode[] = \"pd.name LIKE \'%\" . $this->db->escape($word) . \"%\'\";\n				}\n\n				if ($implode) {\n					$sql .= \" \" . implode(\" AND \", $implode) . \"\";\n				}\n\n				if (!empty($data[\'filter_description\'])) {\n					$sql .= \" OR pd.description LIKE \'%\" . $this->db->escape($data[\'filter_name\']) . \"%\'\";\n				}\n			}*/\n			\n			if (!empty($data[\'filter_description\'])) {\n				$sql .= \"pd.description LIKE \'%\" . $this->db->escape($data[\'filter_name\']) . \"%\'\";\n			}\n			]]></add>\n		</operation>\n		<operation>\n			<search><![CDATA[\n			$sql .= \" OR LCASE(p.model) = \'\" . $this->db->escape(utf8_strtolower($data[\'filter_name\'])) . \"\'\";\n			]]></search>\n			<add position=\"replace\"><![CDATA[\n			//$sql .= \" OR LCASE(p.model) = \'\" . $this->db->escape(utf8_strtolower($data[\'filter_name\'])) . \"\'\";\n			]]></add>\n		</operation>\n		<operation>\n			<search><![CDATA[\n			$sql .= \" AND (\";\n			]]></search>\n			<add position=\"replace\"><![CDATA[\n			$sql .= \" OR (\";\n			]]></add>\n		</operation>\n		<operation>\n			<search><![CDATA[\n			$sql .= \" GROUP BY p.product_id\";\n			]]></search>\n			<add position=\"replace\"><![CDATA[\n		if (!empty($data[\'filter_name\']) || !empty($data[\'filter_tag\'])) {\n			$sql .= \" GROUP BY p.product_id HAVING (rel1 + rel2 + rel3) > 0\"; // Make sure to only return results that have a relevance score greater than 0\n		} else {\n			$sql .= \" GROUP BY p.product_id\";\n		}\n			]]></add>\n		</operation>\n		<operation>\n			<search><![CDATA[\n			$sql .= \" ORDER BY p.sort_order\";\n			]]></search>\n			<add position=\"replace\"><![CDATA[\n		if (!empty($data[\'filter_name\']) || !empty($data[\'filter_tag\'])) {\n			$sql .= \" ORDER BY (rel1 + rel2 + rel3)\";\n		} else {\n			$sql .= \" ORDER BY p.sort_order\";\n		}\n			]]></add>\n		</operation>\n		<operation>\n			<search><![CDATA[\n			$sql .= \" ASC, LCASE(pd.name) ASC\";\n			]]></search>\n			<add position=\"replace\"><![CDATA[\n		if (!empty($data[\'filter_name\']) || !empty($data[\'filter_tag\'])) {\n			$sql .= \" DESC, LCASE(pd.name) ASC\";\n		} else {\n			$sql .= \" ASC, LCASE(pd.name) ASC\";\n		}\n			]]></add>\n		</operation>\n		<operation>\n			<search><![CDATA[\n			$product_data[$result[\'product_id\']] = $this->getProduct($result[\'product_id\']);\n			]]></search>\n			<add position=\"replace\"><![CDATA[\n			$product_data[$result[\'product_id\']] = $this->getProduct($result[\'product_id\']); // TODO: Find out what\'s making some products fail to load - probably a missing field somewhere\n			if ($product_data[$result[\'product_id\']] == false) unset($product_data[$result[\'product_id\']]); // If the product didn\'t load unset the key\n			]]></add>\n		</operation>\n	</file>\n</modification>',1,'2016-06-03 22:17:44'),(83,'QuickCommerce Quote','quickcommerce_quote','lucaslopatka@gmail.com','1.0','','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<modification>\r\n	<name>QuickCommerce Quote</name>\r\n	<version>1.0</version>\r\n	<code>quickcommerce_quote</code>\r\n	<author>lucaslopatka@gmail.com</author>\r\n	<file path=\"admin/language/*/catalog/product.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n				$_\r\n			]]></search>\r\n			<add position=\"after\" index=\"1\"><![CDATA[\r\n				$_[\'entry_display_mode\'] = \'Display Mode\';\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	\r\n	<file path=\"admin/model/catalog/product.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n				if (isset($data[\'image\'])) {\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n		$this->db->query(\"UPDATE \" . DB_PREFIX . \"product SET display_mode = \'\" . (float)$data[\'display_mode\'] . \"\' WHERE product_id = \'\" . (int)$product_id . \"\'\");\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	\r\n	<file path=\"admin/view/template/catalog/product_form.tpl\">\r\n		<operation>\r\n			<search><![CDATA[\r\n				<?php echo $price; ?>\r\n			]]></search>\r\n			<add position=\"after\" offset=\"2\"><![CDATA[\r\n		<div class=\"form-group\">\r\n		  <label class=\"col-sm-2 control-label\" for=\"input-display-mode\"><?php echo $entry_display_mode; ?></label>\r\n		  <div class=\"col-sm-10\">\r\n			<select name=\"display_mode\" id=\"input-display-mode\" class=\"form-control\">\r\n				<?php if ($display_mode) { ?>\r\n				<option value=\"1\" selected=\"selected\"><?php echo \'Request Quote\'; ?></option>\r\n				<option value=\"0\"><?php echo \'Add to Cart\'; ?></option>\r\n				<?php } else { ?>\r\n				<option value=\"1\"><?php echo \'Request Quote\'; ?></option>\r\n				<option value=\"0\" selected=\"selected\"><?php echo \'Add to Cart\'; ?></option>\r\n				<?php } ?>\r\n			</select>\r\n		  </div>\r\n		</div>\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	\r\n	<file path=\"admin/controller/catalog/product.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n		if (isset($this->request->post[\'model\'])) {\r\n		]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n			$data[\'entry_display_mode\'] = $this->language->get(\'entry_display_mode\');\r\n\r\n			if (isset($this->request->post[\'display_mode\'])) {\r\n				$data[\'display_mode\'] = $this->request->post[\'display_mode\'];\r\n			} elseif (!empty($product_info)) {\r\n				$data[\'display_mode\'] = $product_info[\'display_mode\'];\r\n			} else {\r\n				$data[\'display_mode\'] = \'\';\r\n			}\r\n		]]></add>\r\n		</operation>\r\n	</file>\r\n	\r\n	<file path=\"catalog/controller/checkout/cart.php\">\r\n		<operation>\r\n			<search><![CDATA[if ($product_info) {]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n				$CFP = $this->config->get(\'callforprice\');\r\n				\r\n				if (isset($CFP) && ($CFP[\'Enabled\'] == \'yes\')) {\r\n					if ($CFP[\'Alert\']==\'default\') {\r\n						$json[\'CFP\'] = true;\r\n					} else if ($CFP[\'Alert\']==\'selected\') {\r\n						if (isset($CFP[\'Products\']) && (in_array($this->request->post[\'product_id\'],$CFP[\'Products\'])) )\r\n							$json[\'CFP\'] = true;\r\n					}\r\n				} \r\n		]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n	<file path=\"catalog/controller/product/manufacturer.php\">\r\n		<operation>\r\n			<search><![CDATA[if ($result[\'image\']) {]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n			$this->load->language(\'module/qc_quote\');\r\n			$qc_quote = $this->config->get(\'qc_quote\');\r\n\r\n			$display_mode = 0;\r\n			if ((bool)$qc_quote[\'status\'] == true) {\r\n				if ($qc_quote[\'display\'] == \'default\') {\r\n					// Request quote\r\n					$display_mode = 1;\r\n\r\n					$data[\'button_request_quote\'] = $this->language->get(\'CallForPrice_Button\');\r\n				} else if ($qc_quote[\'display\'] == \'selected\') {\r\n					if (isset($result) && !empty($result[\'display_mode\'])) {\r\n						if ((int)$result[\'display_mode\'] == 1) {\r\n							// Request quote\r\n							$display_mode = 1;\r\n\r\n							$data[\'button_request_quote\'] = $this->language->get(\'CallForPrice_Button\');\r\n						}\r\n					}\r\n				}\r\n			}\r\n\r\n			$data[\'display_mode\'] = $display_mode;\r\n		]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[$price = $this->currency->format($this->tax->calculate($result[\'price\'], $result[\'tax_class_id\'], $this->config->get(\'config_tax\')));]]></search>\r\n			<add position=\"replace\"><![CDATA[\r\n			if ($display_mode == 0) {\r\n				$price = $this->currency->format($this->tax->calculate($result[\'price\'], $result[\'tax_class_id\'], $this->config->get(\'config_tax\')));\r\n			} elseif ($display_mode == 1) {\r\n				$price = false;\r\n			}\r\n		]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n	<file path=\"catalog/controller/product/category.php\">\r\n		<operation>\r\n			<search><![CDATA[if ($result[\'image\']) {]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n			$this->load->language(\'module/qc_quote\');\r\n			$qc_quote = $this->config->get(\'qc_quote\');\r\n\r\n			$display_mode = 0;\r\n			if ((bool)$qc_quote[\'status\'] == true) {\r\n				if ($qc_quote[\'display\'] == \'default\') {\r\n					// Request quote\r\n					$display_mode = 1;\r\n\r\n					$data[\'button_request_quote\'] = $this->language->get(\'CallForPrice_Button\');\r\n				} else if ($qc_quote[\'display\'] == \'selected\') {\r\n					if (isset($result) && !empty($result[\'display_mode\'])) {\r\n						if ((int)$result[\'display_mode\'] == 1) {\r\n							// Request quote\r\n							$display_mode = 1;\r\n\r\n							$data[\'button_request_quote\'] = $this->language->get(\'CallForPrice_Button\');\r\n						}\r\n					}\r\n				}\r\n			}\r\n\r\n			$data[\'display_mode\'] = $display_mode;\r\n		]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[$price = $this->currency->format($this->tax->calculate($result[\'price\'], $result[\'tax_class_id\'], $this->config->get(\'config_tax\')));]]></search>\r\n			<add position=\"replace\"><![CDATA[\r\n			if ($display_mode == 0) {\r\n				$price = $this->currency->format($this->tax->calculate($result[\'price\'], $result[\'tax_class_id\'], $this->config->get(\'config_tax\')));\r\n			} elseif ($display_mode == 1) {\r\n				$price = false;\r\n			}\r\n		]]></add>\r\n		</operation>\r\n	</file>\r\n    \r\n    <file path=\"catalog/controller/product/search.php\">\r\n		<operation>\r\n			<search><![CDATA[if ($result[\'image\']) {]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n			$this->load->language(\'module/qc_quote\');\r\n			$qc_quote = $this->config->get(\'qc_quote\');\r\n\r\n			$display_mode = 0;\r\n			if ((bool)$qc_quote[\'status\'] == true) {\r\n				if ($qc_quote[\'display\'] == \'default\') {\r\n					// Request quote\r\n					$display_mode = 1;\r\n\r\n					$data[\'button_request_quote\'] = $this->language->get(\'CallForPrice_Button\');\r\n				} else if ($qc_quote[\'display\'] == \'selected\') {\r\n					if (isset($result) && !empty($result[\'display_mode\'])) {\r\n						if ((int)$result[\'display_mode\'] == 1) {\r\n							// Request quote\r\n							$display_mode = 1;\r\n\r\n							$data[\'button_request_quote\'] = $this->language->get(\'CallForPrice_Button\');\r\n						}\r\n					}\r\n				}\r\n			}\r\n\r\n			$data[\'display_mode\'] = $display_mode;\r\n		]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[$price = $this->currency->format($this->tax->calculate($result[\'price\'], $result[\'tax_class_id\'], $this->config->get(\'config_tax\')));]]></search>\r\n			<add position=\"replace\"><![CDATA[\r\n			if ($display_mode == 0) {\r\n				$price = $this->currency->format($this->tax->calculate($result[\'price\'], $result[\'tax_class_id\'], $this->config->get(\'config_tax\')));\r\n			} elseif ($display_mode == 1) {\r\n				$price = false;\r\n			}\r\n		]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n	<file path=\"catalog/controller/module/boss_filterproduct.php\">\r\n		<operation>\r\n			<search><![CDATA[if ($result[\'image\']) {]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n			$this->load->language(\'module/qc_quote\');\r\n			$qc_quote = $this->config->get(\'qc_quote\');\r\n\r\n			$display_mode = 0;\r\n			if ((bool)$qc_quote[\'status\'] == true) {\r\n				if ($qc_quote[\'display\'] == \'default\') {\r\n					// Request quote\r\n					$display_mode = 1;\r\n\r\n					$data[\'button_request_quote\'] = $this->language->get(\'CallForPrice_Button\');\r\n				} else if ($qc_quote[\'display\'] == \'selected\') {\r\n					if (isset($result) && !empty($result[\'display_mode\'])) {\r\n						if ((int)$result[\'display_mode\'] == 1) {\r\n							// Request quote\r\n							$display_mode = 1;\r\n\r\n							$data[\'button_request_quote\'] = $this->language->get(\'CallForPrice_Button\');\r\n						}\r\n					}\r\n				}\r\n			}\r\n\r\n			$data[\'display_mode\'] = $display_mode;\r\n		]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[$price = $this->currency->format($this->tax->calculate($result[\'price\'], $result[\'tax_class_id\'], $this->config->get(\'config_tax\')));]]></search>\r\n			<add position=\"replace\"><![CDATA[\r\n			if ($display_mode == 0) {\r\n				$price = $this->currency->format($this->tax->calculate($result[\'price\'], $result[\'tax_class_id\'], $this->config->get(\'config_tax\')));\r\n			} elseif ($display_mode == 1) {\r\n				$price = false;\r\n			}\r\n		]]></add>\r\n		</operation>\r\n	</file>\r\n  \r\n	<file path=\"catalog/controller/product/product.php\">\r\n		<operation>\r\n			<search><![CDATA[$data[\'button_cart\'] = $this->language->get(\'button_cart\');]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n			$this->load->language(\'module/qc_quote\');\r\n			$qc_quote = $this->config->get(\'qc_quote\');\r\n\r\n			$display_mode = 0;\r\n			if ((bool)$qc_quote[\'status\'] == true) {\r\n				if ($qc_quote[\'display\'] == \'default\') {\r\n					// Request quote\r\n					$display_mode = 1;\r\n\r\n					$data[\'button_request_quote\'] = $this->language->get(\'CallForPrice_Button\');\r\n				} else if ($qc_quote[\'display\'] == \'selected\') {\r\n					if (isset($product_info) && !empty($product_info[\'display_mode\'])) {\r\n						if ((int)$product_info[\'display_mode\'] == 1) {\r\n							// Request quote\r\n							$display_mode = 1;\r\n\r\n							$data[\'button_request_quote\'] = $this->language->get(\'CallForPrice_Button\');\r\n						}\r\n					}\r\n				}\r\n			}\r\n\r\n			$data[\'display_mode\'] = $display_mode;\r\n		]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[$data[\'price\'] = $this->currency->format($this->tax->calculate($product_info[\'price\'], $product_info[\'tax_class_id\'], $this->config->get(\'config_tax\')));]]></search>\r\n			<add position=\"replace\"><![CDATA[\r\n			if ($display_mode == 0) {\r\n				$data[\'price\'] = $this->currency->format($this->tax->calculate($product_info[\'price\'], $product_info[\'tax_class_id\'], $this->config->get(\'config_tax\')));\r\n			} elseif ($display_mode == 1) {\r\n				$data[\'price\'] = false;\r\n			}\r\n		]]></add>\r\n		</operation>\r\n	</file>\r\n  \r\n  	<file path=\"catalog/view/theme/*/template/product/product.tpl\">\r\n		<operation>\r\n			<search index=\"0\"><![CDATA[<?php echo $button_cart; ?>]]></search>\r\n			<add position=\"replace\"><![CDATA[\r\n			<?php echo ($display_mode == 1) ? $button_request_quote : $button_cart; ?>\r\n		]]></add>\r\n		</operation>\r\n      \r\n      	<operation>\r\n			<search><![CDATA[$(\'#button-cart\').on(\'click\', function() {]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n			<?php if ($display_mode == 1) { ?>\r\n				$(\'#CFP_popup\').detach().appendTo(\'body\');\r\n				var btn = this;\r\n\r\n				offset = $(btn).offset();\r\n				var leftOffset = offset.left + (parseInt($(btn).width()/2));\r\n				$(\'div#CFP_popup\').css({\r\n					top: offset.top,\r\n					left: ((offset.left-$(\'div#CFP_popup\').width()/2) + $(btn).width()/2)\r\n				});\r\n\r\n				$(\'div#CFP_popup\').fadeIn(\'slow\');\r\n				$(\".CFP_popover-content\").load(\"index.php?route=module/callforprice/showform&product_id=\"+<?php echo $product_id; ?>);\r\n				return;\r\n			<?php } ?>\r\n		]]></add>\r\n		</operation>\r\n	</file>\r\n  \r\n  	<file path=\"catalog/model/catalog/product.php\">\r\n		<operation>\r\n			<search index=\"0\"><![CDATA[if ($query->num_rows) {]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n		$qc_quote = $this->config->get(\'qc_quote\');\r\n\r\n		if (isset($qc_quote) && ((bool)$qc_quote[\'status\'] == true)) {\r\n			if ($qc_quote[\'display\'] == \'default\') {\r\n				$query->row[\'discount\'] = 0;\r\n				$query->row[\'price\'] = 0;\r\n				$query->row[\'special\'] = 0;\r\n				$query->row[\'tax_class_id\'] = 0;\r\n			} else if ($qc_quote[\'display\'] == \'selected\') {\r\n				if (isset($query->row[\'display_mode\'])) {\r\n					if ((int)$query->row[\'display_mode\'] == 1) {\r\n						$query->row[\'discount\'] = 0;\r\n						$query->row[\'price\'] = 0;\r\n						$query->row[\'special\'] = 0;\r\n						$query->row[\'tax_class_id\'] = 0;\r\n					}\r\n				}\r\n			}\r\n		}\r\n		]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search index=\"0\"><![CDATA[\'status\'           => $query->row[\'status\'],]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n				\'display_mode\'     => (int)$query->row[\'display_mode\'],\r\n		]]></add>\r\n		</operation>\r\n	</file>\r\n	\r\n	<file path=\"admin/language/english/common/menu.php\">\r\n		<operation>\r\n			<search><![CDATA[// Text]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n$_[\'text_quote_request\']               = \'Quote Requests\';\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	\r\n	<file path=\"admin/controller/common/menu.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n				$this->load->language(\'common/menu\');\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n		// QC Quote\r\n		$data[\'text_quote_request\'] = $this->language->get(\'text_quote_request\');\r\n		$data[\'quote_request\'] = $this->url->link(\'module/qc_quote/requests\', \'token=\' . $this->session->data[\'token\'], \'SSL\');\r\n		]]></add>\r\n		</operation>\r\n	</file>\r\n	\r\n	<file path=\"admin/view/template/common/menu.tpl\">\r\n		<operation>\r\n			<search><![CDATA[\r\n				<li id=\"sale\"><a class=\"parent\"><i class=\"fa fa-shopping-cart fa-fw\"></i> <span><?php echo $text_sale; ?></span></a>\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n  <li><a href=\"<?php echo $quote_request; ?>\"><i class=\"fa fa-stack-exchange\"></i> <span><?php echo $text_quote_request; ?></span></a></li>\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	\r\n	\r\n</modification>',1,'2016-09-21 17:00:53'),(97,'QuickCommerce Core - Customers','quickcommerce_core_customer','lucaslopatka@gmail.com','1.0','','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<modification>\n	<name>QuickCommerce Core - Customers</name>\n	<version>1.0</version>\n	<code>quickcommerce_core_customer</code>\n	<author>lucaslopatka@gmail.com</author>\n	\n	<!-- \n	This gets too crazy, I\'m gonna patch in events right in the controller.\n	Not my favorite solution, but it\'ll work... this should be easier in OC 2.2.\n	-->\n	<!--<file path=\"admin/model/customer/customer.php\">-->\n	<file path=\"admin/model/sale/customer.php\">\n		<operation>\n			<search><![CDATA[\n				$implode[] = \"CONCAT(c.firstname, \' \', c.lastname) LIKE \'%\" . $this->db->escape($data[\'filter_name\']) . \"%\'\";\n			]]>\n			</search>\n			<add position=\"replace\"><![CDATA[\n		if (!empty($data[\'filter_name\'])) {\n			$name = \"LOWER(CONCAT(c.firstname, \' \', c.lastname)) LIKE \'%\" . $this->db->escape(strtolower($data[\'filter_name\'])) . \"%\'\";\n			$name .= \"OR LOWER(c.company_name) LIKE \'%\" . strtolower($this->db->escape($data[\'filter_name\'])) . \"%\'\"; // QC tables and fields should exist so this is all good\n\n			$implode[] = $name;\n		}\n			]]>\n			</add>\n		</operation>\n		<operation>\n			<search><![CDATA[\n				$implode[] = \"c.email LIKE \'\" . $this->db->escape($data[\'filter_email\']) . \"%\'\";\n			]]>\n			</search>\n			<add position=\"replace\"><![CDATA[\n		$implode[] = \"c.email LIKE \'%\" . $this->db->escape($data[\'filter_email\']) . \"%\'\";\n			]]>\n			</add>\n		</operation>\n		<operation>\n			<search><![CDATA[\n				public function addCustomer($data) {	\n			]]>\n			</search>\n			<add position=\"replace\" offset=\"16\"><![CDATA[\n	public function addCustomer($data) {\n		$this->event->trigger(\'pre.customer.add\', $data);\n	\n		$this->db->query(\"INSERT INTO \" . DB_PREFIX . \"customer SET customer_group_id = \'\" . (int)$data[\'customer_group_id\'] . \"\', display_name = \'\" . $this->db->escape($data[\'email\']) . \"\', company_name = \'\" . $this->db->escape($data[\'company_name\']) . \"\', print_on_check_name = \'\" . $this->db->escape($data[\'print_on_check_name\']) . \"\', firstname = \'\" . $this->db->escape($data[\'firstname\']) . \"\', lastname = \'\" . $this->db->escape($data[\'lastname\']) . \"\', email = \'\" . $this->db->escape($data[\'email\']) . \"\', telephone = \'\" . $this->db->escape($data[\'telephone\']) . \"\', fax = \'\" . $this->db->escape($data[\'fax\']) . \"\', custom_field = \'\" . $this->db->escape(isset($data[\'custom_field\']) ? serialize($data[\'custom_field\']) : \'\') . \"\', newsletter = \'\" . (int)$data[\'newsletter\'] . \"\', salt = \'\" . $this->db->escape($salt = substr(md5(uniqid(rand(), true)), 0, 9)) . \"\', password = \'\" . $this->db->escape(sha1($salt . sha1($salt . sha1($data[\'password\'])))) . \"\', status = \'\" . (int)$data[\'status\'] . \"\', approved = \'\" . (int)$data[\'approved\'] . \"\', safe = \'\" . (int)$data[\'safe\'] . \"\', date_added = NOW()\");\n\n		$customer_id = $this->db->getLastId();\n\n		if (isset($data[\'address\'])) {\n			foreach ($data[\'address\'] as $address) {\n				$this->db->query(\"INSERT INTO \" . DB_PREFIX . \"address SET customer_id = \'\" . (int)$customer_id . \"\', firstname = \'\" . $this->db->escape($address[\'firstname\']) . \"\', lastname = \'\" . $this->db->escape($address[\'lastname\']) . \"\', company = \'\" . $this->db->escape($address[\'company\']) . \"\', address_1 = \'\" . $this->db->escape($address[\'address_1\']) . \"\', address_2 = \'\" . $this->db->escape($address[\'address_2\']) . \"\', city = \'\" . $this->db->escape($address[\'city\']) . \"\', postcode = \'\" . $this->db->escape($address[\'postcode\']) . \"\', country_id = \'\" . (int)$address[\'country_id\'] . \"\', zone_id = \'\" . (int)$address[\'zone_id\'] . \"\', custom_field = \'\" . $this->db->escape(isset($address[\'custom_field\']) ? serialize($address[\'custom_field\']) : \'\') . \"\'\");\n\n				if (isset($address[\'default\'])) {\n					$address_id = $this->db->getLastId();\n\n					$this->db->query(\"UPDATE \" . DB_PREFIX . \"customer SET address_id = \'\" . (int)$address_id . \"\' WHERE customer_id = \'\" . (int)$customer_id . \"\'\");\n				}\n			}\n		}\n		\n		$this->event->trigger(\'post.customer.add\', $customer_id);\n	}\n			]]>\n			</add>\n		</operation>\n		<operation>\n			<search><![CDATA[\n				public function editCustomer($customer_id, $data) {	\n			]]>\n			</search>\n			<add position=\"replace\" offset=\"28\"><![CDATA[\n	public function editCustomer($customer_id, $data) {\n		$this->event->trigger(\'pre.customer.edit\', $data);\n		\n		if (!isset($data[\'custom_field\'])) {\n			$data[\'custom_field\'] = array();\n		}\n\n		$this->db->query(\"UPDATE \" . DB_PREFIX . \"customer SET customer_group_id = \'\" . (int)$data[\'customer_group_id\'] . \"\', display_name = \'\" . $this->db->escape($data[\'email\']) . \"\', company_name = \'\" . $this->db->escape($data[\'company_name\']) . \"\', print_on_check_name = \'\" . $this->db->escape($data[\'print_on_check_name\']) . \"\', firstname = \'\" . $this->db->escape($data[\'firstname\']) . \"\', lastname = \'\" . $this->db->escape($data[\'lastname\']) . \"\', email = \'\" . $this->db->escape($data[\'email\']) . \"\', telephone = \'\" . $this->db->escape($data[\'telephone\']) . \"\', fax = \'\" . $this->db->escape($data[\'fax\']) . \"\', custom_field = \'\" . $this->db->escape(isset($data[\'custom_field\']) ? json_encode($data[\'custom_field\']) : \'\') . \"\', newsletter = \'\" . (int)$data[\'newsletter\'] . \"\', status = \'\" . (int)$data[\'status\'] . \"\', approved = \'\" . (int)$data[\'approved\'] . \"\', safe = \'\" . (int)$data[\'safe\'] . \"\' WHERE customer_id = \'\" . (int)$customer_id . \"\'\");\n\n		if ($data[\'password\']) {\n			$this->db->query(\"UPDATE \" . DB_PREFIX . \"customer SET salt = \'\" . $this->db->escape($salt = $this->db->escape($salt = substr(md5(uniqid(rand(), true)), 0, 9))) . \"\', password = \'\" . $this->db->escape(sha1($salt . sha1($salt . sha1($data[\'password\'])))) . \"\' WHERE customer_id = \'\" . (int)$customer_id . \"\'\");\n			// This must be the new OC way post 2.3\n			//$this->db->query(\"UPDATE \" . DB_PREFIX . \"customer SET salt = \'\" . $this->db->escape($salt = token(9)) . \"\', password = \'\" . $this->db->escape(sha1($salt . sha1($salt . sha1($data[\'password\'])))) . \"\' WHERE customer_id = \'\" . (int)$customer_id . \"\'\");\n		}\n\n		$this->db->query(\"DELETE FROM \" . DB_PREFIX . \"address WHERE customer_id = \'\" . (int)$customer_id . \"\'\");\n\n		if (isset($data[\'address\'])) {\n			foreach ($data[\'address\'] as $address) {\n				if (!isset($address[\'custom_field\'])) {\n					$address[\'custom_field\'] = array();\n				}\n\n				$this->db->query(\"INSERT INTO \" . DB_PREFIX . \"address SET address_id = \'\" . (int)$address[\'address_id\'] . \"\', customer_id = \'\" . (int)$customer_id . \"\', firstname = \'\" . $this->db->escape($address[\'firstname\']) . \"\', lastname = \'\" . $this->db->escape($address[\'lastname\']) . \"\', company = \'\" . $this->db->escape($address[\'company\']) . \"\', address_1 = \'\" . $this->db->escape($address[\'address_1\']) . \"\', address_2 = \'\" . $this->db->escape($address[\'address_2\']) . \"\', city = \'\" . $this->db->escape($address[\'city\']) . \"\', postcode = \'\" . $this->db->escape($address[\'postcode\']) . \"\', country_id = \'\" . (int)$address[\'country_id\'] . \"\', zone_id = \'\" . (int)$address[\'zone_id\'] . \"\', custom_field = \'\" . $this->db->escape(isset($address[\'custom_field\']) ? json_encode($address[\'custom_field\']) : \'\') . \"\'\");\n\n				if (isset($address[\'default\'])) {\n					$address_id = $this->db->getLastId();\n\n					$this->db->query(\"UPDATE \" . DB_PREFIX . \"customer SET address_id = \'\" . (int)$address_id . \"\' WHERE customer_id = \'\" . (int)$customer_id . \"\'\");\n				}\n			}\n		}\n		\n		$this->event->trigger(\'post.customer.edit\', $customer_id);\n	}\n			]]>\n			</add>\n		</operation>\n	</file>\n	\n	<file path=\"admin/controller/sale/customer.php\">\n		<operation>\n			<search><![CDATA[\n				$this->getList();\n			]]>\n			</search>\n			<add position=\"before\">\n			<![CDATA[\n			$this->document->addScript(\'view/javascript/quickcommerce/qc_customer.js\');\n			]]>\n			</add>\n		</operation>\n		<operation>\n			<search><![CDATA[\n				$data[\'entry_customer_group\'] = $this->language->get(\'entry_customer_group\');\n			]]>\n			</search>\n			<add position=\"after\">\n			<![CDATA[\n			$data[\'entry_display_name\'] = $this->language->get(\'entry_display_name\');\n			$data[\'entry_company_name\'] = $this->language->get(\'entry_company_name\');\n			$data[\'entry_print_on_check_name\'] = $this->language->get(\'entry_print_on_check_name\');\n			]]>\n			</add>\n		</operation>\n		<operation>\n			<search><![CDATA[\n				if (isset($this->error[\'firstname\'])) {\n			]]>\n			</search>\n			<add position=\"before\">\n			<![CDATA[\n			if (isset($this->error[\'display_name\'])) {\n				$data[\'error_display_name\'] = $this->error[\'display_name\'];\n			} else {\n				$data[\'error_display_name\'] = \'\';\n			}\n			\n			if (isset($this->error[\'company_name\'])) {\n				$data[\'error_company_name\'] = $this->error[\'company_name\'];\n			} else {\n				$data[\'error_company_name\'] = \'\';\n			}\n			\n			if (isset($this->error[\'print_on_check_name\'])) {\n				$data[\'error_print_on_check_name\'] = $this->error[\'print_on_check_name\'];\n			} else {\n				$data[\'error_print_on_check_name\'] = \'\';\n			}\n			]]>\n			</add>\n		</operation>\n		<operation>\n			<search><![CDATA[\n				if (isset($this->request->post[\'firstname\'])) {\n			]]>\n			</search>\n			<add position=\"before\">\n			<![CDATA[\n			if (isset($this->request->post[\'display_name\'])) {\n				$data[\'display_name\'] = $this->request->post[\'display_name\'];\n			} elseif (!empty($customer_info)) {\n				$data[\'display_name\'] = $customer_info[\'display_name\'];\n			} else {\n				$data[\'display_name\'] = \'\';\n			}\n			\n			if (isset($this->request->post[\'company_name\'])) {\n				$data[\'company_name\'] = $this->request->post[\'company_name\'];\n			} elseif (!empty($customer_info)) {\n				$data[\'company_name\'] = $customer_info[\'company_name\'];\n			} else {\n				$data[\'company_name\'] = \'\';\n			}\n			\n			if (isset($this->request->post[\'print_on_check_name\'])) {\n				$data[\'print_on_check_name\'] = $this->request->post[\'print_on_check_name\'];\n			} elseif (!empty($customer_info)) {\n				$data[\'print_on_check_name\'] = $customer_info[\'print_on_check_name\'];\n			} else {\n				$data[\'print_on_check_name\'] = \'\';\n			}\n			]]>\n			</add>\n		</operation>\n		<operation>\n			<search><![CDATA[\n				\'customer_group_id\' => $result[\'customer_group_id\'],\n			]]>\n			</search>\n			<add position=\"after\"><![CDATA[\n		\'company_name\' => (isset($result[\'company_name\'])) ? $result[\'company_name\'] : \'\',\n			]]>\n			</add>\n		</operation>\n	</file>\n	\n	<file path=\"admin/language/english/sale/customer.php\">\n		<operation>\n			<search><![CDATA[\n$_[\'entry_customer_group\']  = \'Customer Group\';\n			]]>\n			</search>\n			<add position=\"after\">\n			<![CDATA[\n$_[\'entry_display_name\']           = \'Display Name\';\n$_[\'entry_company_name\']           = \'Company Name\';\n$_[\'entry_print_on_check_name\']    = \'Print on Check Name\';\n			]]>\n			</add>\n		</operation>\n	</file>\n	\n	<file path=\"admin/view/template/sale/customer_list.tpl\">\n		<operation>\n			<search><![CDATA[\n				<a href=\"<?php echo $add; ?>\" data-toggle=\"tooltip\" title=\"<?php echo $button_add; ?>\" class=\"btn btn-primary\"><i class=\"fa fa-plus\"></i></a>\n			]]></search>\n			<add position=\"replace\"><![CDATA[\n			<a id=\"qc-qbo-import\" data-token=\"<?php echo $token; ?>\" data-toggle=\"tooltip\" title=\"Import from QuickBooks\" class=\"btn btn-success\"><i class=\"fa fa-cloud-download\"></i> Import from QBO</a> <a id=\"qc-qbo-export\" data-token=\"<?php echo $token; ?>\" data-toggle=\"tooltip\" title=\"Export to QuickBooks\" class=\"btn btn-info\"><i class=\"fa fa-cloud-upload\"></i> Export to QBO</a> <a href=\"<?php echo $add; ?>\" data-toggle=\"tooltip\" title=\"<?php echo $button_add; ?>\" class=\"btn btn-primary\"><i class=\"fa fa-plus\"></i></a>\n			]]></add>\n		</operation>\n		<operation>\n			<search><![CDATA[\n				<a href=\"<?php echo $customer[\'edit\']; ?>\" data-toggle=\"tooltip\" title=\"<?php echo $button_edit; ?>\" class=\"btn btn-primary\"><i class=\"fa fa-pencil\"></i></a>\n			]]></search>\n			<add position=\"replace\"><![CDATA[\n				<a href=\"<?php echo $customer[\'edit\']; ?>\" data-id=\"<?php echo $customer[\'customer_id\']; ?>\" data-token=\"<?php echo $token; ?>\" data-toggle=\"tooltip\" title=\"Sync with QuickBooks\" class=\"btn btn-default\"><i class=\"fa fa-refresh\"></i></a> <a href=\"<?php echo $customer[\'edit\']; ?>\" data-toggle=\"tooltip\" title=\"<?php echo $button_edit; ?>\" class=\"btn btn-primary\"><i class=\"fa fa-pencil\"></i></a>\n			]]></add>\n		</operation>\n		<operation>\n			<search><![CDATA[\n				label: item[\'name\'],\n			]]></search>\n			<add position=\"replace\"><![CDATA[\n				label: (typeof item[\'company_name\'] === \'string\' && item[\'company_name\'] !== \'\') ? item[\'name\'] + \' (\' + item[\'company_name\'] + \')\' : item[\'name\'],\n			]]></add>\n		</operation>\n        <operation>\n			<search><![CDATA[\n		<td class=\"text-left\"><?php echo $customer[\'date_added\']; ?></td>\n            ]]></search>\n			<add position=\"after\"><![CDATA[\n        <td class=\"text-center\">\n            <span data-id=\"<?php echo $customer[\'customer_id\']; ?>\" class=\"label label-default\"><i class=\"fa fa-question\"></i></span>\n        </td>\n            ]]></add>\n		</operation>\n        <operation>\n			<search><![CDATA[\n		<td class=\"text-right\"><?php echo $column_action; ?></td>\n            ]]></search>\n			<add position=\"before\"><![CDATA[\n        <td class=\"text-center\"><?php echo \'Sync\'; ?></td>\n            ]]></add>\n		</operation>\n	</file>\n	\n	<file path=\"admin/view/template/sale/customer_form.tpl\">\n		<operation>\n			<search><![CDATA[\n				<div class=\"tab-pane active\" id=\"tab-customer\">\n			]]></search>\n			<add position=\"replace\" offset=\"14\"><![CDATA[\n				<div class=\"tab-pane active\" id=\"tab-customer\">\n				  <div class=\"form-group\">\n					<label class=\"col-sm-2 control-label\" for=\"input-customer-group\"><?php echo $entry_customer_group; ?></label>\n					<div class=\"col-sm-10\">\n					  <select name=\"customer_group_id\" id=\"input-customer-group\" class=\"form-control\">\n						<?php foreach ($customer_groups as $customer_group) { ?>\n						<?php if ($customer_group[\'customer_group_id\'] == $customer_group_id) { ?>\n						<option value=\"<?php echo $customer_group[\'customer_group_id\']; ?>\" selected=\"selected\"><?php echo $customer_group[\'name\']; ?></option>\n						<?php } else { ?>\n						<option value=\"<?php echo $customer_group[\'customer_group_id\']; ?>\"><?php echo $customer_group[\'name\']; ?></option>\n						<?php } ?>\n						<?php } ?>\n					  </select>\n					</div>\n				  </div>\n				  <div class=\"form-group required\">\n					<label class=\"col-sm-2 control-label\" for=\"input-display_name\"><?php echo $entry_display_name; ?></label>\n					<div class=\"col-sm-10\">\n					  <input type=\"text\" name=\"display_name\" value=\"<?php echo $display_name; ?>\" readonly=\"readonly\" placeholder=\"<?php echo $entry_display_name; ?>\" id=\"input-display_name\" class=\"form-control\" />\n					  <?php if ($error_display_name) { ?>\n					  <div class=\"text-danger\"><?php echo $error_display_name; ?></div>\n					  <?php  } ?>\n					</div>\n				  </div>\n				  <div class=\"form-group\">\n					<label class=\"col-sm-2 control-label\" for=\"input-company_name\"><?php echo $entry_company_name; ?></label>\n					<div class=\"col-sm-10\">\n					  <input type=\"text\" name=\"company_name\" value=\"<?php echo $company_name; ?>\" placeholder=\"<?php echo $entry_company_name; ?>\" id=\"input-company_name\" class=\"form-control\" />\n					  <?php if ($error_company_name) { ?>\n					  <div class=\"text-danger\"><?php echo $error_company_name; ?></div>\n					  <?php  } ?>\n					</div>\n				  </div>\n				  <div class=\"form-group\">\n					<label class=\"col-sm-2 control-label\" for=\"input-print_on_check_name\"><?php echo $entry_print_on_check_name; ?></label>\n					<div class=\"col-sm-10\">\n					  <input type=\"text\" name=\"print_on_check_name\" value=\"<?php echo $print_on_check_name; ?>\" placeholder=\"<?php echo $entry_print_on_check_name; ?>\" id=\"input-print_on_check_name\" class=\"form-control\" />\n					  <?php if ($error_print_on_check_name) { ?>\n					  <div class=\"text-danger\"><?php echo $error_print_on_check_name; ?></div>\n					  <?php  } ?>\n					</div>\n				  </div>\n			]]></add>\n		</operation>\n	</file>\n</modification>',1,'2016-10-06 03:48:45'),(121,'QuickCommerce Menu','quickcommerce_menu_23x','lucaslopatka@gmail.com','1.0','','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<modification>\r\n	<name>QuickCommerce Menu</name>\r\n	<version>1.0</version>\r\n	<code>quickcommerce_menu_23x</code>\r\n	<author>lucaslopatka@gmail.com</author>	\r\n	<file path=\"admin/controller/common/column_left.php\">\r\n        <operation>\r\n			<search><![CDATA[\r\n            $this->load->language(\'common/column_left\');\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n            $this->load->language(\'quickcommerce/common/menu\');\r\n            ]]></add>\r\n        </operation>\r\n		<operation>\r\n			<search><![CDATA[\r\n            // Customer\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n            // Transactions\r\n			$transaction = array();\r\n			\r\n			if ($this->user->hasPermission(\'access\', \'transaction/invoice\')) {\r\n				$transaction[] = array(\r\n					\'name\'	   => $this->language->get(\'text_transaction_invoice\'),\r\n					\'href\'     => $this->url->link(\'transaction/invoice\', \'token=\' . $this->session->data[\'token\'], true),\r\n					\'children\' => array()		\r\n				);	\r\n			}\r\n			\r\n			if ($this->user->hasPermission(\'access\', \'transaction/sale\')) {	\r\n				$transaction[] = array(\r\n					\'name\'	   => $this->language->get(\'text_transaction_sale\'),\r\n					\'href\'     => $this->url->link(\'transaction/sale\', \'token=\' . $this->session->data[\'token\'], true),\r\n					\'children\' => array()		\r\n				);	\r\n			}\r\n			\r\n			if ($transaction) {\r\n				$data[\'menus\'][] = array(\r\n					\'id\'       => \'menu-transaction\',\r\n					\'icon\'	   => \'fa-clipboard\', \r\n					\'name\'	   => $this->language->get(\'text_transaction\'),\r\n					\'href\'     => \'\',\r\n					\'children\' => $transaction\r\n				);\r\n			}\r\n            ]]></add>\r\n        </operation>\r\n        <operation>\r\n			<search><![CDATA[\r\n            if ($attribute) {\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n            if ($this->user->hasPermission(\'access\', \'catalog/attribute_template\')) {\r\n				$attribute[] = array(\r\n					\'name\'	   => $this->language->get(\'text_attribute_template\'),\r\n					\'href\'     => $this->url->link(\'catalog/attribute_template\', \'token=\' . $this->session->data[\'token\'], true),\r\n					\'children\' => array()		\r\n				);\r\n			}\r\n            ]]></add>\r\n        </operation>\r\n        <operation>\r\n			<search><![CDATA[\r\n            // Users\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n            // Chart of Accounts\r\n			$accounts = array();\r\n			\r\n			if ($this->user->hasPermission(\'access\', \'qc/account\')) {\r\n				$system[] = array(\r\n					\'name\'	   => $this->language->get(\'text_list_account\'),\r\n					\'href\'     => $this->url->link(\'qc/account\', \'token=\' . $this->session->data[\'token\'], true),\r\n					\'children\' => array()		\r\n				);	\r\n			}\r\n            ]]></add>\r\n        </operation>\r\n	</file>\r\n</modification>',1,'2017-08-09 21:21:15'),(110,'CallForPrice by iSenseLabs','isenselabs_callforprice','iSenseLabs','1.0 (Initial)','http://isenselabs.com','<modification>\r\n	<name>CallForPrice by iSenseLabs</name>\r\n	<version>1.0 (Initial)</version>\r\n	<link>http://isenselabs.com</link>\r\n	<author>iSenseLabs</author>\r\n	<code>isenselabs_callforprice</code>\r\n\r\n	<file path=\"catalog/controller/checkout/cart.php\">\r\n		<operation>\r\n			<search><![CDATA[if ($product_info) {]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n				$CFP = $this->config->get(\'callforprice\');\r\n				\r\n				if (isset($CFP) && ($CFP[\'Enabled\'] == \'yes\')) {\r\n					if ($CFP[\'Alert\']==\'default\') {\r\n						$json[\'CFP\'] = true;\r\n					} else if ($CFP[\'Alert\']==\'selected\') {\r\n						if (isset($CFP[\'Products\']) && (in_array($this->request->post[\'product_id\'],$CFP[\'Products\'])) )\r\n							$json[\'CFP\'] = true;\r\n					}\r\n				} \r\n		]]></add>\r\n		</operation>\r\n	</file>\r\n  \r\n	<file path=\"catalog/controller/product/product.php\">\r\n		<operation>\r\n			<search><![CDATA[$data[\'button_cart\'] = $this->language->get(\'button_cart\');]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n			////		\r\n			$this->load->language(\'module/callforprice\');\r\n			$CFP = $this->config->get(\'callforprice\');\r\n			$data[\'CFP_show\'] = false;\r\n			if (isset($CFP) && ($CFP[\'Enabled\'] == \'yes\')) {\r\n				if ($CFP[\'Alert\']==\'default\') {\r\n					$data[\'CFP_show\'] = true;\r\n				} else if ($CFP[\'Alert\']==\'selected\') {\r\n					if (isset($CFP[\'Products\']) && (in_array($product_id,$CFP[\'Products\'])) )\r\n						$data[\'CFP_show\'] = true;\r\n				}\r\n				\r\n				if ($data[\'CFP_show\']) {\r\n					$data[\'CFP_button_cart\'] = $this->language->get(\'CallForPrice_Button\');\r\n				}\r\n			} 	\r\n			////	\r\n		]]></add>\r\n		</operation>\r\n	</file>\r\n  \r\n  	<file path=\"catalog/view/theme/*/template/product/product.tpl\">\r\n		<operation>\r\n			<search index=\"0\"><![CDATA[<?php echo $button_cart; ?>]]></search>\r\n			<add position=\"replace\"><![CDATA[\r\n			<?php if ($CFP_show) echo $CFP_button_cart; else echo $button_cart; ?>\r\n		]]></add>\r\n		</operation>\r\n      \r\n      	<operation>\r\n			<search><![CDATA[$(\'#button-cart\').on(\'click\', function() {]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n			<?php if ($CFP_show) { ?>\r\n				$(\'#CFP_popup\').detach().appendTo(\'body\');\r\n				var btn = this;\r\n\r\n				offset = $(btn).offset();\r\n				var leftOffset = offset.left + (parseInt($(btn).width()/2));\r\n				$(\'div#CFP_popup\').css({\r\n					top: offset.top,\r\n					left: ((offset.left-$(\'div#CFP_popup\').width()/2) + $(btn).width()/2)\r\n				});\r\n\r\n				$(\'div#CFP_popup\').fadeIn(\'slow\');\r\n				$(\".CFP_popover-content\").load(\"index.php?route=module/callforprice/showform&product_id=\"+<?php echo $product_id; ?>);\r\n				return;\r\n			<?php } ?>\r\n		]]></add>\r\n		</operation>\r\n	</file>\r\n  \r\n  	<file path=\"catalog/model/catalog/product.php\">\r\n		<operation>\r\n			<search index=\"0\"><![CDATA[if ($query->num_rows) {]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n				$this->load->language(\'module/callforprice\');\r\n				$CFP = $this->config->get(\'callforprice\');\r\n				$data[\'CFP_show\'] = false;\r\n				if (isset($CFP) && ($CFP[\'Enabled\'] == \'yes\')) {\r\n					if ($CFP[\'Alert\']==\'default\') {\r\n						$data[\'CFP_show\'] = true;\r\n					} else if ($CFP[\'Alert\']==\'selected\') {\r\n						if (isset($CFP[\'Products\']) && (in_array($product_id,$CFP[\'Products\'])) )\r\n							$data[\'CFP_show\'] = true;\r\n					}\r\n				\r\n					if ($data[\'CFP_show\']) {\r\n						$query->row[\'discount\'] = 0;\r\n						$query->row[\'price\'] = 0;\r\n						$query->row[\'special\'] = 0;\r\n						$query->row[\'tax_class_id\'] = 0;\r\n					}\r\n				} \r\n		]]></add>\r\n		</operation>\r\n	</file>\r\n  \r\n    <file path=\"admin/controller/common/header.php\">\r\n      	<operation>\r\n			<search><![CDATA[$data[\'text_logout\'] = $this->language->get(\'text_logout\');]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n          		$CFP = $this->config->get(\'callforprice\');\r\n				$data[\'cfp_enabled\'] = false; \r\n				if (isset($CFP) && ($CFP[\'Enabled\'] == \'yes\') && isset($this->session->data[\'token\'])) {\r\n				  $data[\'cfp_enabled\'] = true;\r\n                  $this->load->language(\'module/callforprice\');\r\n                  $data[\'cfp_text\'] 			= $this->language->get(\'cfp_title_notif\');\r\n                  $data[\'cfp_waiting_list\'] 	= $this->language->get(\'tab_waitinglist\');\r\n                  $data[\'cfp_url\'] 			= $this->url->link(\'module/callforprice\', \'token=\' . $this->session->data[\'token\'], \'SSL\');\r\n                  $cfp_query = $this->db->query(\"SELECT COUNT(*) as `count`  FROM `\" . DB_PREFIX . \"callforprice` WHERE customer_notified=0\");\r\n                  $data[\'cfp_total\'] 			= $cfp_query->row[\'count\']; \r\n				}\r\n		]]></add>\r\n		</operation>\r\n      			\r\n     	<operation>\r\n			<search><![CDATA[$data[\'stores\'] = array();]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n				if (isset($CFP) && ($CFP[\'Enabled\'] == \'yes\')) {\r\n          			$data[\'alerts\'] = $data[\'alerts\'] + $data[\'cfp_total\'];\r\n				}\r\n		]]></add>\r\n		</operation>\r\n	</file>\r\n  \r\n  	<file path=\"admin/view/template/common/header.tpl\">\r\n         <operation>\r\n			<search><![CDATA[<li class=\"dropdown-header\"><?php echo $text_affiliate; ?></li>]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n				<?php if ($cfp_enabled) { ?>\r\n	  	     	  <li class=\"dropdown-header\"><?php echo $cfp_text; ?></li>\r\n                  <li><a href=\"<?php echo $cfp_url; ?>\"><span class=\"label label-danger pull-right\"><?php echo $cfp_total; ?></span><?php echo $cfp_waiting_list; ?></a></li>\r\n                  <li class=\"divider\"></li>\r\n				<?php } ?>\r\n		]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n</modification>',1,'2017-08-09 16:42:52'),(106,'QuickCommerce Core','quickcommerce_core','lucaslopatka@gmail.com','1.0','','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<modification>\n	<name>QuickCommerce Core</name>\n	<version>1.0</version>\n	<code>quickcommerce_core</code>\n	<author>lucaslopatka@gmail.com</author>\n	\n	<file path=\"admin/language/*/catalog/product.php\">\n		<operation>\n			<search><![CDATA[\n				$_\n			]]></search>\n			<add position=\"after\" index=\"1\"><![CDATA[\n				$_[\'entry_po_cost\'] = \'Cost\';\n				$_[\'entry_po_model\'] = \'Vendor Model\';\n				$_[\'entry_po_title\'] = \'Vendor Product\';\n			]]></add>\n		</operation>\n	</file>\n	\n	<file path=\"admin/model/catalog/product.php\">\n		<operation>\n			<search><![CDATA[\n				if (!empty($data[\'filter_name\'])) {\n			]]>\n			</search>\n			<add position=\"before\"><![CDATA[\n		if (!empty($data[\'filter_mpn\'])) {\n			$sql .= \" AND p.mpn LIKE \'\" . $this->db->escape($data[\'filter_mpn\']) . \"%\'\";\n		}\n				\n			]]>\n			</add>\n		</operation>\n		<operation>\n			<search><![CDATA[\n				$sql .= \" AND pd.name LIKE \'\" . $this->db->escape($data[\'filter_name\']) . \"%\'\";\n			]]>\n			</search>\n			<add position=\"replace\"><![CDATA[\n		$sql .= \" AND pd.name LIKE \'%\" . $this->db->escape($data[\'filter_name\']) . \"%\'\";	\n			]]>\n			</add>\n		</operation>\n		<operation>\n			<search><![CDATA[\n				$sql .= \" AND p.model LIKE \'\" . $this->db->escape($data[\'filter_model\']) . \"%\'\";\n			]]>\n			</search>\n			<add position=\"replace\"><![CDATA[\n		$sql .= \" AND p.model LIKE \'%\" . $this->db->escape($data[\'filter_model\']) . \"%\'\";	\n			]]>\n			</add>\n		</operation>\n		<operation>\n			<search><![CDATA[\n				if (isset($data[\'image\'])) {\n			]]></search>\n			<add position=\"before\"><![CDATA[\n		$this->db->query(\"UPDATE \" . DB_PREFIX . \"product SET po_cost = \'\" . (float)$data[\'po_cost\'] . \"\', po_model = \'\" . $this->db->escape($data[\'po_model\']) . \"\', po_title = \'\" . $this->db->escape($data[\'po_title\']) . \"\' WHERE product_id = \'\" . (int)$product_id . \"\'\");\n			]]></add>\n		</operation>\n	</file>\n	\n	<file path=\"admin/view/template/catalog/product_form.tpl\">\n		<operation>\n			<search><![CDATA[\n				<?php echo $price; ?>\n			]]></search>\n			<add position=\"after\" offset=\"2\"><![CDATA[\n				<div class=\"form-group\">\n				  <label class=\"col-sm-2 control-label\" for=\"input-po-cost\"><?php echo $entry_po_cost; ?></label>\n                  <div class=\"col-sm-10\">\n					<input type=\"text\" path=\"po_cost\" value=\"<?php echo $po_cost; ?>\" placeholder=\"<?php echo $entry_po_cost; ?>\" id=\"input-po-cost\" class=\"form-control\" />\n				  </div>\n				</div>\n				<div class=\"form-group\">\n				  <label class=\"col-sm-2 control-label\" for=\"input-po-cost\"><?php echo $entry_po_title; ?></label>\n                  <div class=\"col-sm-10\">\n					<input type=\"text\" path=\"po_title\" value=\"<?php echo $po_title; ?>\" placeholder=\"<?php echo $entry_po_title; ?>\" id=\"input-po-cost\" class=\"form-control\" />\n				  </div>\n				</div>\n				<div class=\"form-group\">\n				  <label class=\"col-sm-2 control-label\" for=\"input-po-cost\"><?php echo $entry_po_model; ?></label>\n                  <div class=\"col-sm-10\">\n					<input type=\"text\" path=\"po_model\" value=\"<?php echo $po_model; ?>\" placeholder=\"<?php echo $entry_po_model; ?>\" id=\"input-po-cost\" class=\"form-control\" />\n				  </div>\n				</div>\n			]]></add>\n		</operation>\n		<operation>\n			<search><![CDATA[\n		<?php echo $error_warning; ?>\n            ]]></search>\n			<add position=\"before\"><![CDATA[\n        <?php if (is_array($error_warning)) {\n            if (isset($error_warning[\'message\'])) {\n                $msg = \'<b>\' . $error_warning[\'error\'] . \'</b> \' . $error_warning[\'message\'] . \'.<br>\';\n                $msg .= \'<ul style=\"list-style-type: none; padding-left: 12px\"><li><b>\' . $error_warning[\'code\'] . \'</b>: \' . $error_warning[\'detail\'] . \'</li></ul>\';\n                \n                $error_warning = $msg;\n                unset($msg);\n            } else {\n                $error_warning = $error_warning[\'error\'];\n            }\n        } ?>\n            ]]></add>\n		</operation>\n	</file>\n\n	<file path=\"admin/view/template/catalog/product_list.tpl\">\n		<operation>\n			<search><![CDATA[\n		<div class=\"well\">\n            ]]></search>\n			<add position=\"replace\"><![CDATA[\n        <?php if (isset($product_filters)) {\n            echo $product_filters;\n        } ?>\n        <div class=\"well\" style=\"display: none\">\n            ]]></add>\n		</operation>\n        <operation>\n			<search><![CDATA[\n		<?php echo $error_warning; ?>\n            ]]></search>\n			<add position=\"before\"><![CDATA[\n        <?php if (is_array($error_warning)) {\n            if (isset($error_warning[\'message\'])) {\n                $msg = \'<b>\' . $error_warning[\'error\'] . \'</b> \' . $error_warning[\'message\'] . \'.<br>\';\n                $msg .= \'<ul style=\"list-style-type: none; padding-left: 12px\"><li><b>\' . $error_warning[\'code\'] . \'</b>: \' . $error_warning[\'detail\'] . \'</li></ul>\';\n                \n                $error_warning = $msg;\n                unset($msg);\n            } else {\n                $error_warning = $error_warning[\'error\'];\n            }\n        } ?>\n            ]]></add>\n		</operation>\n        <operation>\n			<search><![CDATA[\n		<td class=\"text-left\"><?php echo $product[\'status\']; ?></td>\n            ]]></search>\n			<add position=\"after\"><![CDATA[\n        <td class=\"text-center\">\n            <span data-id=\"<?php echo $product[\'product_id\']; ?>\" class=\"label label-default\"><i class=\"fa fa-question\"></i></span>\n        </td>\n            ]]></add>\n		</operation>\n        <operation>\n			<search><![CDATA[\n		<td class=\"text-right\"><?php echo $column_action; ?></td>\n            ]]></search>\n			<add position=\"before\"><![CDATA[\n        <td class=\"text-center\"><?php echo \'Sync\'; ?></td>\n            ]]></add>\n		</operation>\n	</file>\n    \n    <file path=\"admin/controller/catalog/product.php\">\n		<operation>\n            <search><![CDATA[\n        if (isset($this->session->data[\'success\'])) {\n            ]]></search>\n            <add position=\"replace\" offset=\"6\"><![CDATA[\n        if (isset($this->session->data[\'ipp_error\'])) {\n            $this->error = array_merge($this->error, $this->session->data[\'ipp_error\']);\n            unset($this->session->data[\'ipp_error\']);\n        }\n        \n        $data[\'success\'] = \'\';\n        if (isset($this->error[\'warning\'])) {\n			$data[\'error_warning\'] = $this->error[\'warning\'];\n		} else {\n			$data[\'error_warning\'] = \'\';\n\n			if (isset($this->session->data[\'success\'])) {\n				$data[\'success\'] = $this->session->data[\'success\'];\n\n				unset($this->session->data[\'success\']);\n			}\n		}\n            ]]></add>\n        </operation>\n        <operation>\n			<search><![CDATA[\n		\'product_id\' => $result[\'product_id\'],\n            ]]></search>\n			<add position=\"after\"><![CDATA[\n		\'tax_class_id\' => $result[\'tax_class_id\'],\n			]]></add>\n		</operation>\n		<operation>\n			<search><![CDATA[\n		if (isset($this->request->post[\'model\'])) {\n            ]]></search>\n			<add position=\"before\"><![CDATA[\n			$data[\'entry_po_cost\'] = $this->language->get(\'entry_po_cost\');\n			$data[\'entry_po_model\'] = $this->language->get(\'entry_po_model\');\n			$data[\'entry_po_title\'] = $this->language->get(\'entry_po_title\');\n\n			if (isset($this->request->post[\'po_cost\'])) {\n				$data[\'po_cost\'] = $this->request->post[\'po_cost\'];\n			} elseif (!empty($product_info)) {\n				$data[\'po_cost\'] = $product_info[\'po_cost\'];\n			} else {\n				$data[\'po_cost\'] = \'\';\n			}\n\n			if (isset($this->request->post[\'po_model\'])) {\n				$data[\'po_model\'] = $this->request->post[\'po_model\'];\n			} elseif (!empty($product_info)) {\n				$data[\'po_model\'] = $product_info[\'po_model\'];\n			} else {\n				$data[\'po_model\'] = \'\';\n			}\n\n			if (isset($this->request->post[\'po_title\'])) {\n				$data[\'po_title\'] = $this->request->post[\'po_title\'];\n			} elseif (!empty($product_info)) {\n				$data[\'po_title\'] = $product_info[\'po_title\'];\n			} else {\n				$data[\'po_title\'] = \'\';\n			}\n		]]></add>\n		</operation>\n        <operation>\n			<search><![CDATA[\n		\'edit\'       => $this->url->link(\'catalog/product/edit\', \'token=\' . $this->session->data[\'token\'] . \'&product_id=\' . $result[\'product_id\'] . $url, \'SSL\')\n            ]]></search>\n			<add position=\"replace\"><![CDATA[\n		\'edit\'       => $this->url->link(\'catalog/qc_product/edit\', \'token=\' . $this->session->data[\'token\'] . \'&product_id=\' . $result[\'product_id\'] . $url, \'SSL\')\n			]]></add>\n		</operation>\n	</file>\n	\n	<file path=\"admin/model/catalog/product.php\">\n		<operation>\n			<search><![CDATA[\n				public function getProducts($data = array()) {\n			]]></search>\n			<add position=\"before\"><![CDATA[\n    public function getQueryFilters() {\n        $sql  = \"SELECT f.filter_id AS `filter_id`, fd.name AS `name`, fgd.name AS `group` FROM \" . DB_PREFIX . \"filter f\";\n		$sql .= \" LEFT JOIN \" . DB_PREFIX . \"filter_description fd ON (f.filter_id = fd.filter_id)\";\n		$sql .= \" LEFT JOIN \" . DB_PREFIX . \"filter_group_description fgd ON (f.filter_group_id = fgd.filter_group_id)\";\n		$sql .= \" LEFT JOIN \" . DB_PREFIX . \"filter_group fg ON (f.filter_group_id = fg.filter_group_id)\";\n		$sql .= \" WHERE fd.language_id = \'\" . (int)$this->config->get(\'config_language_id\') . \"\'\";\n		$sql .= \" AND fgd.language_id = \'\" . (int)$this->config->get(\'config_language_id\') . \"\'\";\n		$sql .= \" ORDER BY fg.sort_order, fgd.name, f.sort_order, fd.name\";\n\n		$query = $this->db->query($sql);\n		return $query->rows;\n    }\n    \n    public function getQueryOptions() {\n        $sql  = \"SELECT od.option_id, od.name\";\n		$sql .= \" FROM \" . DB_PREFIX . \"option_description od\";\n		$sql .= \" WHERE od.language_id = \'\" . (int)$this->config->get(\'config_language_id\') . \"\' ORDER BY od.name\";\n        \n        $query = $this->db->query($sql);\n		return $query->rows;\n    }\n    \n    public function getQueryOptionValues() {\n        $sql  = \"SELECT ovd.option_value_id, ovd.name AS ov_name, od.name AS o_name\";\n		$sql .= \" FROM \" . DB_PREFIX . \"option_value_description ovd\";\n		$sql .= \" LEFT JOIN \" . DB_PREFIX . \"option_description od ON (ovd.option_id = od.option_id)\";\n		$sql .= \" WHERE ovd.language_id = \'\" . (int)$this->config->get(\'config_language_id\') . \"\' GROUP BY ovd.option_value_id ORDER BY od.name, ovd.name\";\n        \n        $query = $this->db->query($sql);\n		return $query->rows;\n    }\n    \n    public function getTotalQueryProducts($data = array()) {\n		$prefix = \'\';\n		$join = \'\';\n		$where = \'\';\n\n		$buildWhere = function (&$where, $condition) {\n			$prefix = (empty($where)) ? \" WHERE \" : \" AND \";\n			return $where .= $prefix . $condition;\n		};\n\n		if (count($data[\'product_category\']) > 0) {\n			$join = \" LEFT JOIN \" . DB_PREFIX . \"product_to_category p2c ON (p.product_id = p2c.product_id)\";\n\n			if (in_array(0,$data[\'product_category\'])) {\n				$join .= \" LEFT JOIN \" . DB_PREFIX . \"product_to_category p2c0x ON (p.product_id = p2c0x.product_id)\";\n				$buildWhere($where, \"(p2c.category_id IN (\'\" .implode(\"\', \'\", $data[\'product_category\']). \"\') OR p2c0x.category_id IS NULL)\");\n			} else {\n				$buildWhere($where, \"p2c.category_id IN (\'\" .implode(\"\', \'\", $data[\'product_category\']). \"\')\");\n			}\n		}\n\n		if (count($data[\'manufacturer_ids\']) > 0) {\n			$buildWhere($where, \"p.manufacturer_id IN (\'\" .implode(\"\', \'\", $data[\'manufacturer_ids\']). \"\')\");\n		}\n\n		if (count($data[\'filters_ids\']) > 0) {\n			$join .= \" LEFT JOIN \" . DB_PREFIX . \"product_filter prfil ON (p.product_id = prfil.product_id)\";\n\n			if (in_array(0,$data[\'filters_ids\'])) {\n				$join.=\" LEFT JOIN \" . DB_PREFIX . \"product_filter pf0x ON (p.product_id = pf0x.product_id)\";\n				$buildWhere($where, \"(prfil.filter_id IN (\'\" .implode(\"\', \'\", $data[\'filters_ids\']). \"\') OR pf0x.filter_id IS NULL)\");\n			} else {\n				$buildWhere($where, \"prfil.filter_id IN (\'\" .implode(\"\', \'\", $data[\'filters_ids\']). \"\')\");\n			}\n		}\n\n		if ($data[\'price_min\'] != \'\') {\n			$buildWhere($where, \"p.price >= \'\" . (float)$data[\'price_min\'] . \"\'\");\n		}\n\n		if ($data[\'price_max\'] != \'\') {\n			$buildWhere($where, \"p.price <= \'\" . (float)$data[\'price_max\'] . \"\'\");\n		}\n\n		// Discounts\n		if ($data[\'d_price_min\'] != \'\' OR $data[\'d_price_max\'] != \'\' OR $data[\'d_cust_group_filter\'] != \'any\') {\n			$join .= \" LEFT JOIN \" . DB_PREFIX . \"product_discount pdisc ON (p.product_id = pdisc.product_id)\";\n		}\n		if ($data[\'d_cust_group_filter\'] != \'any\') {\n			$buildWhere($where, \"pdisc.customer_group_id = \'\" . (int)$data[\'d_cust_group_filter\'] . \"\'\");\n		}\n		if ($data[\'d_price_min\'] != \'\') {\n			$buildWhere($where, \"pdisc.price >= \'\" . (float)$data[\'d_price_min\'] . \"\'\");\n		}\n\n		if ($data[\'d_price_max\'] != \'\') {\n			$buildWhere($where, \"pdisc.price <= \'\" . (float)$data[\'d_price_max\'] . \"\'\");\n		}\n\n		// Specials\n		if ($data[\'s_price_min\'] != \'\' OR $data[\'s_price_max\'] != \'\' OR $data[\'s_cust_group_filter\'] != \'any\') {\n			$join .= \" LEFT JOIN \" . DB_PREFIX . \"product_special pspec ON (p.product_id = pspec.product_id)\";\n		}\n\n		if ($data[\'s_cust_group_filter\'] != \'any\') {\n			$buildWhere($where, \"pspec.customer_group_id = \'\" . (int)$data[\'s_cust_group_filter\'] . \"\'\");\n		}\n		if ($data[\'s_price_min\'] != \'\') {\n			$buildWhere($where, \"pspec.price >= \'\" . (float)$data[\'s_price_min\'] . \"\'\");\n		}\n\n		if ($data[\'s_price_max\'] != \'\') {\n			$buildWhere($where, \"pspec.price <= \'\" . (float)$data[\'s_price_max\'] . \"\'\");\n		}\n\n		if ($data[\'tax_class_filter\'] != \'any\') {\n			$buildWhere($where, \"p.tax_class_id = \'\" . (int)$data[\'tax_class_filter\'] . \"\'\");\n		}\n\n		if ($data[\'stock_min\'] != \'\') {\n			$buildWhere($where, \"p.quantity >= \'\" . (int)$data[\'stock_min\'] . \"\'\");\n		}\n\n		if ($data[\'stock_max\'] != \'\') {\n			$buildWhere($where, \"p.quantity <= \'\" . (int)$data[\'stock_max\'] . \"\'\");\n		}\n\n		if ($data[\'min_q_min\'] != \'\') {\n			$buildWhere($where, \"p.minimum >= \'\" . (int)$data[\'min_q_min\'] . \"\'\");\n		}\n\n		if ($data[\'min_q_max\'] != \'\') {\n			$buildWhere($where, \"p.minimum <= \'\" . (int)$data[\'min_q_max\'] . \"\'\");\n		}\n\n		if ($data[\'stock_status_filter\'] != \'any\') {\n			$buildWhere($where, \"p.stock_status_id = \'\" . (int)$data[\'stock_status_filter\'] . \"\'\");\n		}\n\n		if ($data[\'subtract_filter\'] != \'any\') {\n			$buildWhere($where, \"p.subtract = \'\" . (int)$data[\'subtract_filter\'] . \"\'\");\n		}\n\n		if ($data[\'shipping_filter\'] != \'any\') {\n			$buildWhere($where, \"p.shipping = \'\" . (int)$data[\'shipping_filter\'] . \"\'\");\n		}\n\n		if ($data[\'date_min\'] != \'\') {\n			$buildWhere($where, \"p.date_available >= \'\" . $this->db->escape($data[\'date_min\']) . \"\'\");\n		}\n\n		if ($data[\'date_max\'] != \'\') {\n			$buildWhere($where, \"p.date_available <= \'\" . $this->db->escape($data[\'date_max\']) . \"\'\");\n		}\n\n		if ($data[\'date_added_min\'] != \'\') {\n			$buildWhere($where, \"p.date_added >= \'\" . $this->db->escape($data[\'date_added_min\']) . \"\'\");\n		}\n\n		if ($data[\'date_added_max\'] != \'\') {\n			$buildWhere($where, \"p.date_added <= \'\" . $this->db->escape($data[\'date_added_max\']) . \"\'\");\n		}\n\n		if ($data[\'date_modified_min\'] != \'\') {\n			$buildWhere($where, \"p.date_modified >= \'\" . $this->db->escape($data[\'date_modified_min\']) . \"\'\");\n		}\n\n		if ($data[\'date_modified_max\'] != \'\') {\n			$buildWhere($where, \"p.date_modified <= \'\" . $this->db->escape($data[\'date_modified_max\']) . \"\'\");\n		}\n\n		if ($data[\'filter_status\'] != \'any\') {\n			$buildWhere($where, \"p.status = \'\" . (int)$data[\'filter_status\'] . \"\'\");\n		}\n\n		if ($data[\'store_filter\'] != \'any\') {\n			$join .= \" LEFT JOIN \" . DB_PREFIX . \"product_to_store pts ON (p.product_id = pts.product_id)\";\n			$buildWhere($where, \"pts.store_id = \'\" . (int)$data[\'store_filter\'] . \"\'\");\n		}\n\n		if ($data[\'filter_attr\'] != \'any\') {\n            $join .= \" LEFT JOIN \" . DB_PREFIX . \"product_attribute pattr ON (p.product_id = pattr.product_id)\";\n			$buildWhere($where, \"pattr.attribute_id = \'\" . (int)$data[\'filter_attr\'] . \"\'\");\n		}\n\n		if ($data[\'filter_opti\'] != \'any\') {\n			$join.=\" LEFT JOIN \" . DB_PREFIX . \"product_option po ON (p.product_id = po.product_id)\";\n			$buildWhere($where, \"po.option_id = \'\" . (int)$data[\'filter_opti\'] . \"\'\");\n		}\n\n		if ($data[\'filter_attr_val\'] != \'\') {\n			if ($data[\'filter_attr\']==\"any\") {\n				$join .= \" LEFT JOIN \" . DB_PREFIX . \"product_attribute pattr ON (p.product_id = pattr.product_id)\";\n			}\n\n			$buildWhere($where, \"pattr.text LIKE \'%\" . $this->db->escape($data[\'filter_attr_val\']) . \"%\'\");\n		}\n\n		if ($data[\'filter_opti_val\'] != \'any\') {\n			$join .= \" LEFT JOIN \" . DB_PREFIX . \"product_option_value pov ON (p.product_id = pov.product_id)\";\n			$buildWhere($where, \"pov.option_value_id = \'\" . (int)$data[\'filter_opti_val\'] . \"\'\");\n		}\n\n		if ($data[\'filter_name\']!= \'\') {\n			if (version_compare(VERSION, \'1.5.4.1\', \'>\')) {\n				$buildWhere($where, \"pd.name LIKE \'%\" . $this->db->escape($data[\'filter_name\']) . \"%\'\");\n			}\n		}\n\n		if ($data[\'filter_model\'] != \'\') {\n			if (version_compare(VERSION, \'1.5.4.1\', \'>\')) {\n				$buildWhere($where, \"p.model LIKE \'%\" . $this->db->escape($data[\'filter_model\']) . \"%\'\");\n			} elseif (version_compare(VERSION, \'1.5.1.2\', \'>\')) {\n				$buildWhere($where, \"LCASE(p.model) LIKE \'%\" . $this->db->escape(utf8_strtolower($data[\'filter_model\'])) . \"%\'\");\n			} else {\n				$buildWhere($where, \"LCASE(p.model) LIKE \'%\" . $this->db->escape(strtolower($data[\'filter_model\'])) . \"%\'\");\n			}\n		}\n\n		if ($data[\'filter_tag\'] != \'\') {\n			if (version_compare(VERSION, \'1.5.3.1\', \'>\')) {\n				$buildWhere($where, \"LCASE(pd.tag) LIKE \'%\" . $this->db->escape(utf8_strtolower($data[\'filter_tag\'])) . \"%\'\");\n			}\n		}\n\n		$buildWhere($where, \"pd.language_id = \'\" . (int)$this->config->get(\'config_language_id\') . \"\'\");\n\n		$sql  = \"SELECT COUNT(DISTINCT p.product_id) AS total\";\n		$sql .= \" FROM \" . DB_PREFIX . \"product p LEFT JOIN \" . DB_PREFIX . \"product_description pd ON (p.product_id = pd.product_id)\";\n		$sql .= $join . $where;\n        \n		$query = $this->db->query($sql);\n\n		return $query->row[\'total\'];\n	}\n            ]]></add>\n		</operation>\n        <operation>\n			<search><![CDATA[\n				public function getProducts($data = array()) {\n			]]></search>\n			<add position=\"before\"><![CDATA[\n    public function getQueryProducts($data = array()) {\n		$prefix = \'\';\n		$join = \'\';\n		$where = \'\';\n\n		$buildWhere = function (&$where, $condition) {\n			$prefix = (empty($where)) ? \" WHERE \" : \" AND \";\n			return $where .= $prefix . $condition;\n		};\n\n		if (count($data[\'product_category\']) > 0) {\n			$join = \" LEFT JOIN \" . DB_PREFIX . \"product_to_category p2c ON (p.product_id = p2c.product_id)\";\n\n			if (in_array(0,$data[\'product_category\'])) {\n				$join .= \" LEFT JOIN \" . DB_PREFIX . \"product_to_category p2c0x ON (p.product_id = p2c0x.product_id)\";\n				$buildWhere($where, \"(p2c.category_id IN (\'\" .implode(\"\', \'\", $data[\'product_category\']). \"\') OR p2c0x.category_id IS NULL)\");\n			} else {\n				$buildWhere($where, \"p2c.category_id IN (\'\" .implode(\"\', \'\", $data[\'product_category\']). \"\')\");\n			}\n		}\n\n		if (count($data[\'manufacturer_ids\']) > 0) {\n			$buildWhere($where, \"p.manufacturer_id IN (\'\" .implode(\"\', \'\", $data[\'manufacturer_ids\']). \"\')\");\n		}\n\n		if (count($data[\'filters_ids\']) > 0) {\n			$join .= \" LEFT JOIN \" . DB_PREFIX . \"product_filter prfil ON (p.product_id = prfil.product_id)\";\n\n			if (in_array(0,$data[\'filters_ids\'])) {\n				$join.=\" LEFT JOIN \" . DB_PREFIX . \"product_filter pf0x ON (p.product_id = pf0x.product_id)\";\n				$buildWhere($where, \"(prfil.filter_id IN (\'\" .implode(\"\', \'\", $data[\'filters_ids\']). \"\') OR pf0x.filter_id IS NULL)\");\n			} else {\n				$buildWhere($where, \"prfil.filter_id IN (\'\" .implode(\"\', \'\", $data[\'filters_ids\']). \"\')\");\n			}\n		}\n\n		if ($data[\'price_min\'] != \'\') {\n			$buildWhere($where, \"p.price >= \'\" . (float)$data[\'price_min\'] . \"\'\");\n		}\n\n		if ($data[\'price_max\'] != \'\') {\n			$buildWhere($where, \"p.price <= \'\" . (float)$data[\'price_max\'] . \"\'\");\n		}\n\n		// Discounts\n		if ($data[\'d_price_min\'] != \'\' OR $data[\'d_price_max\'] != \'\' OR $data[\'d_cust_group_filter\'] != \'any\') {\n			$join .= \" LEFT JOIN \" . DB_PREFIX . \"product_discount pdisc ON (p.product_id = pdisc.product_id)\";\n		}\n		if ($data[\'d_cust_group_filter\'] != \'any\') {\n			$buildWhere($where, \"pdisc.customer_group_id = \'\" . (int)$data[\'d_cust_group_filter\'] . \"\'\");\n		}\n		if ($data[\'d_price_min\'] != \'\') {\n			$buildWhere($where, \"pdisc.price >= \'\" . (float)$data[\'d_price_min\'] . \"\'\");\n		}\n\n		if ($data[\'d_price_max\'] != \'\') {\n			$buildWhere($where, \"pdisc.price <= \'\" . (float)$data[\'d_price_max\'] . \"\'\");\n		}\n\n		// Specials\n		if ($data[\'s_price_min\'] != \'\' OR $data[\'s_price_max\'] != \'\' OR $data[\'s_cust_group_filter\'] != \'any\') {\n			$join .= \" LEFT JOIN \" . DB_PREFIX . \"product_special pspec ON (p.product_id = pspec.product_id)\";\n		}\n\n		if ($data[\'s_cust_group_filter\'] != \'any\') {\n			$buildWhere($where, \"pspec.customer_group_id = \'\" . (int)$data[\'s_cust_group_filter\'] . \"\'\");\n		}\n		if ($data[\'s_price_min\'] != \'\') {\n			$buildWhere($where, \"pspec.price >= \'\" . (float)$data[\'s_price_min\'] . \"\'\");\n		}\n\n		if ($data[\'s_price_max\'] != \'\') {\n			$buildWhere($where, \"pspec.price <= \'\" . (float)$data[\'s_price_max\'] . \"\'\");\n		}\n\n		if ($data[\'tax_class_filter\'] != \'any\') {\n			$buildWhere($where, \"p.tax_class_id = \'\" . (int)$data[\'tax_class_filter\'] . \"\'\");\n		}\n\n		if ($data[\'stock_min\'] != \'\') {\n			$buildWhere($where, \"p.quantity >= \'\" . (int)$data[\'stock_min\'] . \"\'\");\n		}\n\n		if ($data[\'stock_max\'] != \'\') {\n			$buildWhere($where, \"p.quantity <= \'\" . (int)$data[\'stock_max\'] . \"\'\");\n		}\n\n		if ($data[\'min_q_min\'] != \'\') {\n			$buildWhere($where, \"p.minimum >= \'\" . (int)$data[\'min_q_min\'] . \"\'\");\n		}\n\n		if ($data[\'min_q_max\'] != \'\') {\n			$buildWhere($where, \"p.minimum <= \'\" . (int)$data[\'min_q_max\'] . \"\'\");\n		}\n\n		if ($data[\'stock_status_filter\'] != \'any\') {\n			$buildWhere($where, \"p.stock_status_id = \'\" . (int)$data[\'stock_status_filter\'] . \"\'\");\n		}\n\n		if ($data[\'subtract_filter\'] != \'any\') {\n			$buildWhere($where, \"p.subtract = \'\" . (int)$data[\'subtract_filter\'] . \"\'\");\n		}\n\n		if ($data[\'shipping_filter\'] != \'any\') {\n			$buildWhere($where, \"p.shipping = \'\" . (int)$data[\'shipping_filter\'] . \"\'\");\n		}\n\n		if ($data[\'date_min\'] != \'\') {\n			$buildWhere($where, \"p.date_available >= \'\" . $this->db->escape($data[\'date_min\']) . \"\'\");\n		}\n\n		if ($data[\'date_max\'] != \'\') {\n			$buildWhere($where, \"p.date_available <= \'\" . $this->db->escape($data[\'date_max\']) . \"\'\");\n		}\n\n		if ($data[\'date_added_min\'] != \'\') {\n			$buildWhere($where, \"p.date_added >= \'\" . $this->db->escape($data[\'date_added_min\']) . \"\'\");\n		}\n\n		if ($data[\'date_added_max\'] != \'\') {\n			$buildWhere($where, \"p.date_added <= \'\" . $this->db->escape($data[\'date_added_max\']) . \"\'\");\n		}\n\n		if ($data[\'date_modified_min\'] != \'\') {\n			$buildWhere($where, \"p.date_modified >= \'\" . $this->db->escape($data[\'date_modified_min\']) . \"\'\");\n		}\n\n		if ($data[\'date_modified_max\'] != \'\') {\n			$buildWhere($where, \"p.date_modified <= \'\" . $this->db->escape($data[\'date_modified_max\']) . \"\'\");\n		}\n\n		if ($data[\'filter_status\'] != \'any\') {\n			$buildWhere($where, \"p.status = \'\" . (int)$data[\'filter_status\'] . \"\'\");\n		}\n\n		if ($data[\'store_filter\'] != \'any\') {\n			$join .= \" LEFT JOIN \" . DB_PREFIX . \"product_to_store pts ON (p.product_id = pts.product_id)\";\n			$buildWhere($where, \"pts.store_id = \'\" . (int)$data[\'store_filter\'] . \"\'\");\n		}\n\n		if ($data[\'filter_attr\'] != \'any\') {\n            $join .= \" LEFT JOIN \" . DB_PREFIX . \"product_attribute pattr ON (p.product_id = pattr.product_id)\";\n			$buildWhere($where, \"pattr.attribute_id = \'\" . (int)$data[\'filter_attr\'] . \"\'\");\n		}\n\n		if ($data[\'filter_opti\'] != \'any\') {\n			$join.=\" LEFT JOIN \" . DB_PREFIX . \"product_option po ON (p.product_id = po.product_id)\";\n			$buildWhere($where, \"po.option_id = \'\" . (int)$data[\'filter_opti\'] . \"\'\");\n		}\n\n		if ($data[\'filter_attr_val\'] != \'\') {\n			if ($data[\'filter_attr\']==\"any\") {\n				$join .= \" LEFT JOIN \" . DB_PREFIX . \"product_attribute pattr ON (p.product_id = pattr.product_id)\";\n			}\n\n			$buildWhere($where, \"pattr.text LIKE \'%\" . $this->db->escape($data[\'filter_attr_val\']) . \"%\'\");\n		}\n\n		if ($data[\'filter_opti_val\'] != \'any\') {\n			$join .= \" LEFT JOIN \" . DB_PREFIX . \"product_option_value pov ON (p.product_id = pov.product_id)\";\n			$buildWhere($where, \"pov.option_value_id = \'\" . (int)$data[\'filter_opti_val\'] . \"\'\");\n		}\n\n		if ($data[\'filter_name\']!= \'\') {\n			if (version_compare(VERSION, \'1.5.4.1\', \'>\')) {\n				$buildWhere($where, \"pd.name LIKE \'%\" . $this->db->escape($data[\'filter_name\']) . \"%\'\");\n			}\n		}\n\n		if ($data[\'filter_model\'] != \'\') {\n			if (version_compare(VERSION, \'1.5.4.1\', \'>\')) {\n				$buildWhere($where, \"p.model LIKE \'%\" . $this->db->escape($data[\'filter_model\']) . \"%\'\");\n			} elseif (version_compare(VERSION, \'1.5.1.2\', \'>\')) {\n				$buildWhere($where, \"LCASE(p.model) LIKE \'%\" . $this->db->escape(utf8_strtolower($data[\'filter_model\'])) . \"%\'\");\n			} else {\n				$buildWhere($where, \"LCASE(p.model) LIKE \'%\" . $this->db->escape(strtolower($data[\'filter_model\'])) . \"%\'\");\n			}\n		}\n\n		if ($data[\'filter_tag\'] != \'\') {\n			if (version_compare(VERSION, \'1.5.3.1\', \'>\')) {\n				$buildWhere($where, \"LCASE(pd.tag) LIKE \'%\" . $this->db->escape(utf8_strtolower($data[\'filter_tag\'])) . \"%\'\");\n			}\n		}\n\n		$buildWhere($where, \"pd.language_id = \'\" . (int)$this->config->get(\'config_language_id\') . \"\'\");\n\n		$sql  = \"SELECT p.*, pd.name\";\n		$sql .= \" FROM \" . DB_PREFIX . \"product p LEFT JOIN \" . DB_PREFIX . \"product_description pd ON (p.product_id = pd.product_id)\";\n		$sql .= $join . $where . \" GROUP BY p.product_id\";\n        \n        if (isset($data[\'sort\'])) {\n			$sort = $data[\'sort\'];\n		} else {\n			$sort = \'pd.name\';\n		}\n		if (isset($data[\'order\'])) {\n			$order = $data[\'order\'];\n		} else {\n			$order = \'ASC\';\n		}\n		if (isset($data[\'page\'])) {\n			$page = $data[\'page\'];\n		} else {\n			$page = 1;\n		}\n        if (isset($data[\'max_results\'])) {\n            $max_results = $data[\'max_results\'];\n        } else {\n            $max_results = 150; // Default from config should be passed in anyway\n        }\n        \n        $settings = array(\n			\'sort\'            => $sort,\n			\'order\'           => $order,\n			\'start\'           => ($page - 1) * $max_results,\n			\'limit\'           => $max_results\n		);\n\n        $sort_data = array(\n            \'pd.name\',\n            \'p.model\',\n            \'p.price\',\n            \'p.quantity\',\n            \'p.status\',\n            \'p.product_id\',\n            \'p.date_added\',\n            \'p.date_modified\',\n            \'p.viewed\',\n            \'p.sort_order\'\n        );\n\n        if (isset($settings[\'sort\']) && in_array($settings[\'sort\'], $sort_data)) {\n            $sql .= \" ORDER BY \" . $settings[\'sort\'];	\n        } else {\n            $sql .= \" ORDER BY pd.name\";	\n        }\n        \n        if (isset($settings[\'order\']) && ($settings[\'order\'] == \'DESC\')) {\n            $sql .= \" DESC\";\n        } else {\n            $sql .= \" ASC\";\n        }\n    \n        if (isset($settings[\'start\']) || isset($settings[\'limit\'])) {\n            if ($settings[\'start\'] < 0) {\n                $settings[\'start\'] = 0;\n            }				\n\n            if ($settings[\'limit\'] < 1) {\n                $settings[\'limit\'] = 20;\n            }	\n        \n            $sql .= \" LIMIT \" . (int)$settings[\'start\'] . \",\" . (int)$settings[\'limit\'];\n        }\n        \n		$query = $this->db->query($sql);\n\n		return $query->rows;\n	}\n            ]]></add>\n		</operation>\n        <operation>\n			<search><![CDATA[\n				public function getProductOptions($product_id) {\n			]]></search>\n			<add position=\"before\">\n			<![CDATA[\n	// QC Mod\n	public function getProductAttributeByName($product_id, $group_name, $attribute_name) {\n		$product_attribute_data = array();\n\n		$product_attribute_query = $this->db->query(\"SELECT DISTINCT a.attribute_id, ad.name, agd.name, pa.text FROM \" . DB_PREFIX . \"product_attribute pa LEFT JOIN \" . DB_PREFIX . \"attribute a ON (pa.attribute_id = a.attribute_id) LEFT JOIN \" . DB_PREFIX . \"attribute_description ad ON (a.attribute_id = ad.attribute_id) LEFT JOIN \" . DB_PREFIX . \"attribute_group_description agd ON (a.attribute_group_id = agd.attribute_group_id) WHERE pa.product_id = \'\" . (int)$product_id . \"\' AND ad.name = \'\" . $attribute_name . \"\' AND agd.name = \'\" . $group_name . \"\' AND ad.language_id = \'\" . (int)$this->config->get(\'config_language_id\') . \"\' AND agd.language_id = \'\" . (int)$this->config->get(\'config_language_id\') . \"\' AND pa.language_id = \'\" . (int)$this->config->get(\'config_language_id\') . \"\' ORDER BY a.sort_order, ad.name LIMIT 1\");\n		\n		if (count($product_attribute_query->rows) > 0) {\n			$product_attribute_data = $product_attribute_query->rows[0];\n		}\n		\n		return $product_attribute_data;\n	}\n			]]></add>\n		</operation>\n		<operation>\n			<search><![CDATA[sku = \'\" . $this->db->escape($data[\'sku\']) . \"\',]]></search>\n			<add position=\"replace\"><![CDATA[\n            sku = \'\" . $this->db->escape($data[\'sku\']) . \"\', qbname = \'\" . $this->db->escape($data[\'qbname\']) . \"\', parent_id = \'\" . $this->db->escape($data[\'parent_id\']) . \"\',\n            ]]></add>\n		</operation>\n	</file>\n	\n	<file path=\"admin/language/english/catalog/product.php\">\n		<operation>\n			<search><![CDATA[\n$_[\'entry_model\']            = \'Model\';\n			]]>\n			</search>\n			<add position=\"replace\">\n			<![CDATA[\n$_[\'entry_model\']            = \'QuickBooks Name\';\n			]]>\n			</add>\n		</operation>\n		<operation>\n			<search><![CDATA[\n				// Entry\n			]]>\n			</search>\n			<add position=\"before\">\n			<![CDATA[\n$_[\'entry_qbname\']          = \'Fully Qualified Name\';\n$_[\'entry_parent\']        	= \'Parent Item\';\n			]]>\n			</add>\n		</operation>\n		<operation>\n			<search><![CDATA[\n				// Help\n			]]>\n			</search>\n			<add position=\"before\">\n			<![CDATA[\n$_[\'help_qbname\']           = \'QuickBooks Fully Qualified Name\';\n$_[\'help_parent\']        	= \'Is this item a variant or sub-item of another?\';\n			]]>\n			</add>\n		</operation>\n	</file>\n	\n	<file path=\"admin/controller/catalog/product.php\">\n        <operation>\n			<search><![CDATA[\n		$this->response->setOutput($this->load->view(\'catalog/product_list.tpl\', $data));\n			]]></search>\n			<add position=\"before\">\n			<![CDATA[\n        // Extra product filters\n        if ($this->request->server[\'REQUEST_METHOD\'] == \'POST\') {\n            $this->session->data[\'qc_product_filters\'] = $this->request->post;\n		}\n		\n		if (isset($this->request->post[\'reset_filters\']) || isset($this->request->get[\'reset_filters\'])) {\n            unset($this->session->data[\'qc_product_filters\']);\n			// Clear post vars\n			unset($this->request->post);\n		}\n		\n		if (isset($this->session->data[\'qc_product_filters\'])) {\n            foreach ($this->session->data[\'qc_product_filters\'] as $filter => $value) {\n                $this->request->post[$filter] = $value;\n            }\n		}\n        \n        $data[\'filter_action\'] = $this->url->link(\'catalog/product\', \'token=\' . $this->session->data[\'token\'] . $url, \'SSL\');\n        \n		// Load filter items\n		$this->load->model(\'catalog/category\');\n		$this->load->model(\'catalog/manufacturer\');\n		$this->load->model(\'localisation/tax_class\');\n		$this->load->model(\'localisation/stock_status\');\n		$this->load->model(\'localisation/language\');\n		$this->load->model(\'catalog/attribute\');\n		$this->load->model(\'setting/store\');\n\n		if (version_compare(VERSION, \'2.0.3.1\', \'>\')) {\n			$this->load->model(\'customer/customer_group\');\n		} else {\n			$this->load->model(\'sale/customer_group\');\n		}\n\n		if (version_compare(VERSION, \'2.0.3.1\', \'>\')) {\n			$data[\'customer_groups\'] = $this->model_customer_customer_group->getCustomerGroups();\n		} else {\n			$data[\'customer_groups\'] = $this->model_sale_customer_group->getCustomerGroups();\n		}\n        \n		$data[\'apftxt_p_filters\'] = $this->language->get(\'apftxt_p_filters\');\n		$data[\'apftxt_p_filters_none\'] = $this->language->get(\'apftxt_p_filters_none\');\n        \n        $post[\'filters_ids\'] = $this->getPostVar(\'filters_ids\', array());\n		$post[\'filter_name\'] = $this->getPostVar(\'filter_name\', \'\');\n		$post[\'filter_namex\'] = $this->getPostVar(\'filter_namex\', \'\');\n		$post[\'filter_model\'] = $this->getPostVar(\'filter_model\', \'\');\n		$post[\'filter_modelx\'] = $this->getPostVar(\'filter_modelx\', \'\');\n		$post[\'filter_status\'] = $this->getPostVar(\'filter_status\', \'\');\n		$post[\'filter_tag\'] = $this->getPostVar(\'filter_tag\', \'\');\n		$post[\'product_id_to_attr\'] = $this->getPostVar(\'product_id_to_attr\', \'\');\n        \n        $post[\'categories\'] = $this->model_catalog_category->getCategories(0);\n		$post[\'manufacturers\'] = $this->model_catalog_manufacturer->getManufacturers();\n        $post[\'tax_classes\'] = $this->model_localisation_tax_class->getTaxClasses();\n		$post[\'stock_statuses\'] = $this->model_localisation_stock_status->getStockStatuses();\n		$post[\'languages\'] = $this->model_localisation_language->getLanguages();\n		$post[\'all_attributes\'] = $this->model_catalog_attribute->getAttributes();\n		$post[\'stores\'] = $this->model_setting_store->getStores();\n        $post[\'p_filters\'] = $this->model_catalog_product->getQueryFilters();\n		\n		$post[\'product_category\'] = $this->getPostVar(\'product_category\', array());\n\n		$post[\'manufacturer_ids\'] = $this->getPostVar(\'manufacturer_ids\', array());\n\n		$post[\'price_min\'] = $this->getPostVar(\'price_min\', \'\');\n		$post[\'price_max\'] = $this->getPostVar(\'price_max\', \'\');\n\n		$post[\'d_cust_group_filter\'] = $this->getPostVar(\'d_cust_group_filter\', \'any\');\n		$post[\'s_cust_group_filter\'] = $this->getPostVar(\'s_cust_group_filter\', \'any\');\n\n		$post[\'d_price_min\'] = $this->getPostVar(\'d_price_min\', \'\');\n		$post[\'d_price_max\'] = $this->getPostVar(\'d_price_max\', \'\');\n\n		$post[\'s_price_min\'] = $this->getPostVar(\'s_price_min\', \'\');\n		$post[\'s_price_max\'] = $this->getPostVar(\'s_price_max\', \'\');\n\n		$post[\'tax_class_filter\'] = $this->getPostVar(\'tax_class_filter\', \'any\');\n\n		$post[\'stock_min\'] = $this->getPostVar(\'stock_min\', \'\');\n		$post[\'stock_max\'] = $this->getPostVar(\'stock_max\', \'\');\n\n		$post[\'min_q_min\'] = $this->getPostVar(\'min_q_min\', \'\');\n		$post[\'min_q_max\'] = $this->getPostVar(\'min_q_max\', \'\');\n\n		$post[\'subtract_filter\'] = $this->getPostVar(\'subtract_filter\', \'any\');\n		$post[\'stock_status_filter\'] = $this->getPostVar(\'stock_status_filter\', \'any\');\n		$post[\'shipping_filter\'] = $this->getPostVar(\'shipping_filter\', \'any\');\n\n		$post[\'date_min\'] = $this->getPostVar(\'date_min\', \'\');\n		$post[\'date_max\'] = $this->getPostVar(\'date_max\', \'\');\n		$post[\'date_added_min\'] = $this->getPostVar(\'date_added_min\', \'\');\n		$post[\'date_added_max\'] = $this->getPostVar(\'date_added_max\', \'\');\n		$post[\'date_modified_min\'] = $this->getPostVar(\'date_modified_min\', \'\');\n		$post[\'date_modified_max\'] = $this->getPostVar(\'date_modified_min\', \'\');\n        \n		$post[\'store_filter\'] = $this->getPostVar(\'store_filter\', \'any\');\n		$post[\'filter_attr\'] = $this->getPostVar(\'filter_attr\', \'any\');\n		$post[\'filter_opti\'] = $this->getPostVar(\'filter_opti\', \'any\');\n\n		$post[\'filter_attr_val\'] = $this->getPostVar(\'filter_attr_val\', \'\');\n		$post[\'filter_opti_val\'] = $this->getPostVar(\'filter_opti_val\', \'any\');\n\n		$post[\'max_results\'] = $this->getPostVar(\'max_results\', $this->config->get(\'config_limit_admin\'));\n        \n\n\n		if (isset($this->request->get[\'sort\'])) {\n			$sort = $this->request->get[\'sort\'];\n		} else {\n			$sort = \'pd.name\';\n		}\n		if (isset($this->request->get[\'order\'])) {\n			$order = $this->request->get[\'order\'];\n		} else {\n			$order = \'ASC\';\n		}\n		if (isset($this->request->get[\'page\'])) {\n			$page = $this->request->get[\'page\'];\n		} else {\n			$page = 1;\n		}\n\n		$settings[\'sort\'] = $sort;\n		$settings[\'order\'] = $order;\n		$settings[\'page\'] = $page;\n\n        $product_total = $this->model_catalog_product->getTotalQueryProducts($post);\n		$results = $this->model_catalog_product->getQueryProducts(array_merge($post, $settings));\n\n        if (count($results) > 0) { // TODO: What is the standard OpenCart var for these results?\n            $this->load->model(\'tool/image\');\n            $this->load->model(\'catalog/product\');\n            \n            for ($i = 0; $i < count($results);$i++) {\n                // Thumbs\n                if ($results[$i][\'image\'] && file_exists(DIR_IMAGE . $results[$i][\'image\'])) {\n                    $results[$i][\'image\'] = $this->model_tool_image->resize($results[$i][\'image\'], 40, 40);\n                } else {\n                    $results[$i][\'image\'] = $this->model_tool_image->resize(\'no_image.jpg\', 40, 40);\n                }\n                \n                $results[$i][\'edit\'] = $this->url->link(\'catalog/qc_product/edit\', \'token=\' . $this->session->data[\'token\'] . \'&product_id=\' . $results[$i][\'product_id\'], \'SSL\');\n                $results[$i][\'status\'] = ((bool)$results[$i][\'status\']) ? $this->language->get(\'text_enabled\') : $this->language->get(\'text_disabled\');\n            \n                // Specials\n                $special = false;\n                $product_specials = $this->model_catalog_product->getProductSpecials($results[$i][\'product_id\']);\n                foreach ($product_specials  as $product_special) {\n                    if (($product_special[\'date_start\'] == \'0000-00-00\' || strtotime($product_special[\'date_start\']) < time()) && ($product_special[\'date_end\'] == \'0000-00-00\' || strtotime($product_special[\'date_end\']) > time())) {\n                        $special = $product_special[\'price\'];\n                        break;\n                    }\n                }\n                \n                $results[$i][\'special\'] = $special;\n            \n            }\n        }\n        \n        $data[\'products\'] = $results;\n\n		// TODO: Improve implementation so we don\'t have to grab products twice and redo paging\n		$pagination = new Pagination();\n		$pagination->total = $product_total;\n		$pagination->page = $page;\n		$pagination->limit = $this->config->get(\'config_limit_admin\');\n		$pagination->url = $this->url->link(\'catalog/product\', \'token=\' . $this->session->data[\'token\'] . $url . \'&page={page}\', \'SSL\');\n\n		$data[\'pagination\'] = $pagination->render();\n\n		$data[\'results\'] = sprintf($this->language->get(\'text_pagination\'), ($product_total) ? (($page - 1) * $this->config->get(\'config_limit_admin\')) + 1 : 0, ((($page - 1) * $this->config->get(\'config_limit_admin\')) > ($product_total - $this->config->get(\'config_limit_admin\'))) ? $product_total : ((($page - 1) * $this->config->get(\'config_limit_admin\')) + $this->config->get(\'config_limit_admin\')), $product_total, ceil($product_total / $this->config->get(\'config_limit_admin\')));\n        \n        $data = array_merge($data, $post);\n\n		$data[\'product_filters\'] = $this->load->view(\'catalog/product_filter.tpl\', $data);\n			]]></add>\n		</operation>\n        <operation>\n			<search><![CDATA[\n				protected function getList() {\n			]]></search>\n			<add position=\"after\">\n			<![CDATA[\n        $this->document->addScript(\'view/javascript/quickcommerce/qc_product.js\');\n        \n        // Load product filter styles\n		$this->document->addStyle(\'view/stylesheet/quickcommerce/product_filters.css\');\n        \n		$data = $this->load->language(\'quickcommerce/product_filter\');\n			]]></add>\n		</operation>\n		<operation>\n			<search><![CDATA[\n				$this->getForm();\n			]]>\n			</search>\n			<add position=\"before\">\n			<![CDATA[\n		$this->document->addScript(\'view/javascript/quickcommerce/qc_product.js\');\n			]]></add>\n		</operation>\n		<operation>\n			<search><![CDATA[\n				$data[\'help_sku\'] = $this->language->get(\'help_sku\');\n			]]></search>\n			<add position=\"before\"><![CDATA[\n		$data[\'help_qbname\'] = $this->language->get(\'help_qbname\');\n		$data[\'help_parent\'] = $this->language->get(\'help_parent\');\n			]]></add>\n		</operation>\n		<operation>\n			<search><![CDATA[\n				$data[\'entry_model\'] = $this->language->get(\'entry_model\');\n			]]></search>\n			<add position=\"before\"><![CDATA[\n		$data[\'entry_qbname\'] = $this->language->get(\'entry_qbname\');\n		$data[\'entry_parent\'] = $this->language->get(\'entry_parent\');\n			]]></add>\n		</operation>\n		<operation>\n			<search><![CDATA[\n				if (isset($this->request->post[\'model\'])) {\n			]]></search>\n			<add position=\"before\"><![CDATA[\n		if (isset($this->request->post[\'qbname\'])) {\n			$data[\'qbname\'] = $this->request->post[\'qbname\'];\n		} elseif (!empty($product_info)) {\n			$data[\'qbname\'] = (isset($product_info[\'qbname\'])) ? $product_info[\'qbname\'] : \'\';\n		} else {\n			$data[\'qbname\'] = \'\';\n		}\n		\n		if (isset($this->request->post[\'parent_id\'])) {\n			$data[\'parent_id\'] = $this->request->post[\'parent_id\'];\n		} elseif (!empty($product_info)) {\n			$data[\'parent_id\'] = (isset($product_info[\'parent_id\'])) ? $product_info[\'parent_id\'] : null;\n		} else {\n			$data[\'parent_id\'] = null;\n		}\n		\n		if (isset($this->request->post[\'parent\'])) {\n			$data[\'parent\'] = $this->request->post[\'parent\'];\n		} elseif (!empty($product_info)) {\n			$parent_info = (isset($product_info[\'parent_id\'])) ? $this->model_catalog_product->getProduct($product_info[\'parent_id\']) : false;\n\n			if ($parent_info) {\n				$data[\'parent\'] = $parent_info[\'name\'];\n			} else {\n				$data[\'parent\'] = \'\';\n			}\n		} else {\n			$data[\'parent\'] = \'\';\n		}\n		\n			]]></add>\n		</operation>\n	</file>\n	\n	<file path=\"admin/view/template/catalog/product_list.tpl\">\n		<operation>\n			<search><![CDATA[\n				<a href=\"<?php echo $add; ?>\" data-toggle=\"tooltip\" title=\"<?php echo $button_add; ?>\" class=\"btn btn-primary\"><i class=\"fa fa-plus\"></i></a>\n			]]></search>\n			<add position=\"replace\"><![CDATA[\n		<button id=\"qc-peer-import\" data-token=\"<?php echo $token; ?>\" data-toggle=\"tooltip\" title=\"Import from Peer\" class=\"btn btn-warning\"><i class=\"fa fa-list-alt\"></i> Import from Peer</button> <button id=\"qc-qbo-import\" data-token=\"<?php echo $token; ?>\" data-toggle=\"tooltip\" title=\"Import from QuickBooks\" class=\"btn btn-success\"><i class=\"fa fa-cloud-download\"></i> Import from QBO</button> <button id=\"qc-qbo-export\" data-token=\"<?php echo $token; ?>\" data-toggle=\"tooltip\" title=\"Export to QuickBooks\" class=\"btn btn-info\"><i class=\"fa fa-cloud-upload\"></i> Export to QBO</button> <a href=\"<?php echo $add; ?>\" data-toggle=\"tooltip\" title=\"<?php echo $button_add; ?>\" class=\"btn btn-primary\"><i class=\"fa fa-plus\"></i></a>\n			]]></add>\n		</operation>\n		<operation>\n			<search><![CDATA[\n				<a href=\"<?php echo $product[\'edit\']; ?>\" data-toggle=\"tooltip\" title=\"<?php echo $button_edit; ?>\" class=\"btn btn-primary\"><i class=\"fa fa-pencil\"></i></a>\n			]]></search>\n			<add position=\"replace\"><![CDATA[\n				<a href=\"#\" data-id=\"<?php echo $product[\'product_id\']; ?>\" data-token=\"<?php echo $token; ?>\" data-toggle=\"tooltip\" title=\"Sync with QuickBooks\" class=\"btn btn-default\"><i class=\"fa fa-refresh\"></i></a> <a href=\"<?php echo $product[\'edit\']; ?>\" data-toggle=\"tooltip\" title=\"<?php echo $button_edit; ?>\" class=\"btn btn-primary\"><i class=\"fa fa-pencil\"></i></a>\n			]]></add>\n		</operation>\n		<operation>\n			<search><![CDATA[\n				<form action=\"<?php echo $delete; ?>\" method=\"post\" enctype=\"multipart/form-data\" id=\"form-product\">\n			]]></search>\n			<add position=\"before\"><![CDATA[\n		<div class=\"well\">\n          <div class=\"row\">\n            <div class=\"col-sm-9\"></div>\n            <div class=\"col-sm-3 pull-right\">\n			  <div class=\"form-group\">\n                <label class=\"control-label\" for=\"input-batch-action\"><?php echo \'Batch Actions\'; ?></label>\n                <div class=\"input-group\">\n				<select name=\"batch_action\" id=\"batch-action\" class=\"form-control\" style=\"font-family: \'FontAwesome\', Arial\" data-token=\"<?php echo $token; ?>\">\n                  <option value=\"sync\" selected=\"selected\"><!--<i class=\"fa fa-refresh\"></i>-->&#xf021; <?php echo \'&nbsp;&nbsp;Sync With QuickBooks\'; ?></option>\n                  <option value=\"delete\"><!--<i class=\"fa fa-trash\"></i>-->&#xf1f8; <?php echo \'&nbsp;&nbsp;Delete From QuickBooks\'; ?></option>\n                  <option value=\"assign_accounts\"><!--<i class=\"fa fa-external-link-square\"></i>-->&#xf14c; <?php echo \'&nbsp;&nbsp;Assign Accounts\'; ?></option>\n                  <option value=\"generate_seo_urls\"><!--<i class=\"fa fa-underline\"></i>-->&#xf0cd; <?php echo \'&nbsp;&nbsp;Generate SEO URLs\'; ?></option>\n                </select>\n				<span class=\"input-group-btn\">\n				  <button type=\"button\" id=\"button-batch-action\" class=\"btn btn-success pull-right\"><i class=\"fa fa-list\"></i> <?php echo \'Batch\'; ?></button>\n				</span>\n				</div>\n              </div>\n			</div>\n		  </div>\n		</div>\n			]]></add>\n		</operation>\n		<operation>\n			<search><![CDATA[\n				<?php echo $footer; ?>\n			]]></search>\n			<add position=\"before\"><![CDATA[\n	<div class=\"modal fade\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"mySmallModalLabel\" aria-hidden=\"true\" id=\"batch-assign-accounts-modal\" data-token=\"<?php echo $token; ?>\">\n		<div class=\"modal-dialog modal-lg\">\n		<div class=\"modal-content\">\n			<!--<div class=\"modal-header\">\n			  <button aria-hidden=\"true\" data-dismiss=\"modal\" class=\"close\" type=\"button\">×</button>\n			  <h4 id=\"mySmallModalLabel\" class=\"modal-title\">Edit Address</h4>\n			</div>-->\n			<style scoped>\n			.modal-body {\n				padding: 0;\n			}\n			</style>\n			<div class=\"modal-body\">\n			  <div class=\"panel panel-default\">\n				<div class=\"panel-heading\">	\n					<h3 class=\"panel-title\"><i class=\"fa fa-list-alt\"></i> Assign Accounts to Products</h3>\n					<button style=\"float: right\" aria-hidden=\"true\" data-dismiss=\"modal\" class=\"close\" type=\"button\">×</button>\n				</div>\n				<div class=\"panel-body\">\n					<div class=\"row\">\n						<div class=\"col-sm-12\">\n							<div class=\"well\">\n								<form class=\"form-horizontal\" id=\"form-assign-product-account\">\n									<div class=\"row\">\n										<fieldset>\n											<div class=\"col-sm-12\">\n												<div class=\"form-group\">\n												<label class=\"col-sm-2 control-label\" for=\"input-mode\">Income Account</label>\n												<div class=\"col-sm-10\">\n													<select name=\"qc_income_account\" id=\"input-mode\" class=\"form-control\">\n													<?php if (isset($accounts)) { ?>\n													<?php foreach ($accounts as $account) { ?>\n													<?php\n													$account_name = $account[\'name\'];\n													$selected = ($income_account == (int)$account[\'account_id\']) ? \'selected=\"selected\"\' : \'\';\n													if (isset($account[\'account_num\']) && !empty($account[\'account_num\'])) {\n														$account_name = $account[\'account_num\'] . \' - \' . $account_name;\n													}\n													?>\n													<option value=\"<?php echo $account[\'account_id\']; ?>\" <?php echo $selected; ?>><?php echo $account_name; ?></option>\n													<?php } ?>\n													<?php } ?>\n													</select>\n												</div>\n												</div>\n												<div class=\"form-group\">\n													<label class=\"col-sm-2 control-label\" for=\"input-mode\">COGS Account</label>\n													<div class=\"col-sm-10\">\n														<select name=\"qc_cogs_account\" id=\"input-mode\" class=\"form-control\">\n														<?php if (isset($accounts)) { ?>\n														<?php foreach ($accounts as $account) { ?>\n														<?php\n														$account_name = $account[\'name\'];\n														$selected = ($cogs_account == (int)$account[\'account_id\']) ? \'selected=\"selected\"\' : \'\';\n														if (isset($account[\'account_num\']) && !empty($account[\'account_num\'])) {\n															$account_name = $account[\'account_num\'] . \' - \' . $account_name;\n														}\n														?>\n														<option value=\"<?php echo $account[\'account_id\']; ?>\" <?php echo $selected; ?>><?php echo $account_name; ?></option>\n														<?php } ?>\n														<?php } ?>\n														</select>\n													</div>\n												</div>\n												<div class=\"form-group\">\n													<label class=\"col-sm-2 control-label\" for=\"input-mode\">Asset Account</label>\n													<div class=\"col-sm-10\">\n														<select name=\"qc_asset_account\" id=\"input-asset-account\" class=\"form-control\">\n														<?php if (isset($accounts)) { ?>\n														<?php foreach ($accounts as $account) { ?>\n														<?php\n														$account_name = $account[\'name\'];\n														$selected = ($asset_account == (int)$account[\'account_id\']) ? \'selected=\"selected\"\' : \'\';\n														if (isset($account[\'account_num\']) && !empty($account[\'account_num\'])) {\n															$account_name = $account[\'account_num\'] . \' - \' . $account_name;\n														}\n														?>\n														<option value=\"<?php echo $account[\'account_id\']; ?>\" <?php echo $selected; ?>><?php echo $account_name; ?></option>\n														<?php } ?>\n														<?php } ?>\n														</select>\n													</div>\n												</div>\n											</div>\n										</fieldset>\n									</div>\n								</form>\n							</div>\n						</div>\n					</div>\n					<div class=\"row\">\n						<div class=\"col-xs-12 text-right\">\n							<button class=\"btn btn-primary button-payment-address-apply\" data-loading-text=\"Loading...\" type=\"button\">Apply</button>\n							<button id=\"button-payment-address-cancel\" class=\"btn btn-default\" data-action=\"close\" data-loading-text=\"Loading...\" type=\"button\">Close</button>\n						</div>\n					</div>\n					<div style=\"clear: both\"></div>\n				</div>\n			  </div>\n			</div>\n		</div>\n		</div>\n	</div>\n			]]></add>\n		</operation>\n	</file>\n	\n	<file path=\"admin/view/template/catalog/product_form.tpl\">\n		<operation>\n			<search><![CDATA[\n				<div class=\"tab-pane\" id=\"tab-data\">\n			]]></search>\n			<add position=\"after\"><![CDATA[\n			  <div class=\"form-group\">\n			    <label class=\"col-sm-2 control-label\" for=\"input-parent\"><span data-toggle=\"tooltip\" title=\"<?php echo $help_parent; ?>\"><?php echo $entry_parent; ?></span></label>\n			    <div class=\"col-sm-10\">\n				  <input type=\"text\" name=\"parent\" value=\"<?php echo $parent ?>\" placeholder=\"<?php echo $entry_parent; ?>\" id=\"input-parent\" class=\"form-control\" data-token=\"<?php echo $token; ?>\" />\n				  <input type=\"hidden\" name=\"parent_id\" value=\"<?php echo $parent_id; ?>\" />\n			    </div>\n			  </div>\n			  <div class=\"form-group\">\n			    <label class=\"col-sm-2 control-label\" for=\"input-qbname\"><span data-toggle=\"tooltip\" title=\"<?php echo $help_qbname; ?>\"><?php echo $entry_qbname; ?></span></label>\n			    <div class=\"col-sm-10\">\n				  <input type=\"text\" name=\"qbname\" value=\"<?php echo $qbname; ?>\" placeholder=\"<?php echo $entry_qbname; ?>\" id=\"input-qbname\" class=\"form-control\" readonly=\"readonly\" />\n			    </div>\n			  </div>\n			]]></add>\n		</operation>\n	</file>\n	\n	<file path=\"admin/view/template/sale/order_list.tpl\">\n		<operation>\n			<search><![CDATA[\n				<a href=\"<?php echo $order[\'view\']; ?>\" data-toggle=\"tooltip\" title=\"<?php echo $button_view; ?>\" class=\"btn btn-info\"><i class=\"fa fa-eye\"></i></a>\n			]]></search>\n			<add position=\"replace\"><![CDATA[\n				<a href=\"<?php echo $order[\'convert\']; ?>\" data-toggle=\"tooltip\" title=\"<?php echo $button_convert; ?>\" class=\"btn btn-success\"><i class=\"fa fa-sign-in\"></i></a> <a href=\"<?php echo $order[\'view\']; ?>\" data-toggle=\"tooltip\" title=\"<?php echo $button_view; ?>\" class=\"btn btn-info\"><i class=\"fa fa-eye\"></i></a>\n			]]></add>\n		</operation>\n	</file>\n	\n	<file path=\"admin/view/template/sale/order_info.tpl\">\n		<operation>\n			<search><![CDATA[\n				<a href=\"<?php echo $invoice; ?>\" target=\"_blank\" data-toggle=\"tooltip\" title=\"<?php echo $button_invoice_print; ?>\" class=\"btn btn-info\"><i class=\"fa fa-print\"></i></a>\n			]]></search>\n			<add position=\"replace\"><![CDATA[\n				<a href=\"<?php echo $convert; ?>\" data-toggle=\"tooltip\" title=\"<?php echo $button_convert; ?>\" class=\"btn btn-success\"><i class=\"fa fa-sign-in\"></i></a>\n			]]></add>\n		</operation>\n	</file>\n	\n	<file path=\"admin/controller/sale/order.php\">\n		<operation>\n			<search><![CDATA[\n				\'view\'          => $this->url->link(\'sale/order/info\', \'token=\' . $this->session->data[\'token\'] . \'&order_id=\' . $result[\'order_id\'] . $url, \'SSL\'),\n			]]></search>\n			<add position=\"before\"><![CDATA[\n				\'convert\'          => $this->url->link(\'transaction/invoice/convertOrder\', \'token=\' . $this->session->data[\'token\'] . \'&order_id=\' . $result[\'order_id\'] . $url, \'SSL\'),\n			]]></add>\n		</operation>\n		<operation>\n			<search><![CDATA[\n				$data[\'shipping\'] = $this->url->link(\'sale/order/shipping\', \'token=\' . $this->session->data[\'token\'] . \'&order_id=\' . (int)$this->request->get[\'order_id\'], \'SSL\');\n			]]></search>\n			<add position=\"before\"><![CDATA[\n				$data[\'convert\'] = $this->url->link(\'transaction/invoice/convertOrder\', \'token=\' . $this->session->data[\'token\'] . \'&order_id=\' . $order_id . $url, \'SSL\');\n			]]></add>\n		</operation>\n		<operation>\n			<search><![CDATA[\n				$data[\'button_view\'] = $this->language->get(\'button_view\');\n			]]></search>\n			<add position=\"after\"><![CDATA[\n		$data[\'button_convert\'] = $this->language->get(\'button_convert\');\n			]]></add>\n		</operation>\n		<operation>\n			<search><![CDATA[\n				$data[\'button_invoice_print\'] = $this->language->get(\'button_invoice_print\');\n			]]></search>\n			<add position=\"before\"><![CDATA[\n		$data[\'button_convert\'] = $this->language->get(\'button_convert\');\n			]]></add>\n		</operation>\n	</file>\n    \n    <file path=\"system/engine/controller.php\">\n		<operation>\n			<search><![CDATA[\n		protected $registry;\n            ]]></search>\n			<add position=\"after\"><![CDATA[\n    // These have been included via mod in the base controller class\n    // They are redeclared/overridden in QCController\n	protected function getPostVar($key, $default = null) {\n		return $this->getRequestVar($key, $default, \'post\');\n	}\n\n	protected function getRequestVar($key, $default = null, $type = \'get\') {\n		$types = array(\'get\', \'post\');\n		if (!in_array($type, $types)) {\n			throw new Exception(\'Invalid request type\');\n		}\n\n		if (isset($this->request->{$type}[$key])) {\n			if (isset($this->request->{$type}[$key])) {\n				return $this->request->{$type}[$key];\n			}\n		}\n\n		return $default;\n	}\n            ]]></add>\n		</operation>\n	</file>\n</modification>',1,'2016-10-06 06:36:50'),(98,'QuickCommerce Core - Taxes','quickcommerce_core_tax','lucaslopatka@gmail.com','1.0','','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<modification>\r\n	<name>QuickCommerce Core - Taxes</name>\r\n	<version>1.0</version>\r\n	<code>quickcommerce_core_tax</code>\r\n	<author>lucaslopatka@gmail.com</author>\r\n	\r\n	<file path=\"admin/controller/localisation/tax_class.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n				if (isset($this->error[\'warning\'])) {\r\n			]]>\r\n			</search>\r\n			<add position=\"before\">\r\n			<![CDATA[\r\n			$data[\'token\'] = $this->session->data[\'token\'];\r\n			]]>\r\n			</add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[\r\n				if (!isset($this->request->get[\'tax_class_id\'])) {\r\n			]]>\r\n			</search>\r\n			<add position=\"before\">\r\n			<![CDATA[\r\n			$data[\'tax_class_id\'] = (isset($this->request->get[\'tax_class_id\'])) ? $this->request->get[\'tax_class_id\'] : \'\';\r\n			]]>\r\n			</add>\r\n		</operation>\r\n		\r\n		<operation>\r\n			<search><![CDATA[\r\n				$this->getList();\r\n			]]>\r\n			</search>\r\n			<add position=\"before\">\r\n			<![CDATA[\r\n			$this->document->addScript(\'view/javascript/quickcommerce/qc_tax_class.js\');\r\n			]]>\r\n			</add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[\r\n				$this->getForm();\r\n			]]>\r\n			</search>\r\n			<add position=\"before\">\r\n			<![CDATA[\r\n			$this->document->addScript(\'view/javascript/quickcommerce/qc_tax_class.js\');\r\n			]]>\r\n			</add>\r\n		</operation>\r\n	</file>\r\n	\r\n	<file path=\"admin/controller/localisation/tax_rate.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n				if (isset($this->error[\'warning\'])) {\r\n			]]>\r\n			</search>\r\n			<add position=\"before\">\r\n			<![CDATA[\r\n			$data[\'token\'] = $this->session->data[\'token\'];\r\n			]]>\r\n			</add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[\r\n				$this->getList();\r\n			]]>\r\n			</search>\r\n			<add position=\"before\">\r\n			<![CDATA[\r\n			$this->document->addScript(\'view/javascript/quickcommerce/qc_tax_rate.js\');\r\n			]]>\r\n			</add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[\r\n				$this->getForm();\r\n			]]>\r\n			</search>\r\n			<add position=\"before\">\r\n			<![CDATA[\r\n			$this->document->addScript(\'view/javascript/quickcommerce/qc_tax_rate.js\');\r\n			]]>\r\n			</add>\r\n		</operation>\r\n	</file>\r\n	\r\n	<file path=\"admin/view/template/localisation/tax_rate_form.tpl\">\r\n		<operation>\r\n			<search><![CDATA[\r\n				<button type=\"submit\" form=\"form-tax-rate\" data-toggle=\"tooltip\" title=\"<?php echo $button_save; ?>\" class=\"btn btn-primary\"><i class=\"fa fa-save\"></i></button>\r\n			]]></search>\r\n			<add position=\"replace\"><![CDATA[\r\n			<a id=\"qc-qbo-import\" data-token=\"<?php echo $token; ?>\" data-toggle=\"tooltip\" title=\"Import from QuickBooks\" class=\"btn btn-success\"><i class=\"fa fa-cloud-download\"></i> Import from QBO</a> <a id=\"qc-qbo-export\" data-token=\"<?php echo $token; ?>\" data-toggle=\"tooltip\" title=\"Export to QuickBooks\" class=\"btn btn-info\"><i class=\"fa fa-cloud-upload\"></i> Export to QBO</a> <button type=\"submit\" form=\"form-tax-rate\" data-toggle=\"tooltip\" title=\"<?php echo $button_save; ?>\" class=\"btn btn-primary\"><i class=\"fa fa-save\"></i></button>\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	\r\n	<file path=\"admin/view/template/localisation/tax_rate_list.tpl\">\r\n		<operation>\r\n			<search><![CDATA[\r\n				<a href=\"<?php echo $add; ?>\" data-toggle=\"tooltip\" title=\"<?php echo $button_add; ?>\" class=\"btn btn-primary\"><i class=\"fa fa-plus\"></i></a>\r\n			]]></search>\r\n			<add position=\"replace\"><![CDATA[\r\n			<a id=\"qc-qbo-import\" data-token=\"<?php echo $token; ?>\" data-toggle=\"tooltip\" title=\"Import from QuickBooks\" class=\"btn btn-success\"><i class=\"fa fa-cloud-download\"></i> Import from QBO</a> <a id=\"qc-qbo-export\" data-token=\"<?php echo $token; ?>\" data-toggle=\"tooltip\" title=\"Export to QuickBooks\" class=\"btn btn-info\"><i class=\"fa fa-cloud-upload\"></i> Export to QBO</a> <a href=\"<?php echo $add; ?>\" data-toggle=\"tooltip\" title=\"<?php echo $button_add; ?>\" class=\"btn btn-primary\"><i class=\"fa fa-plus\"></i></a>\r\n			]]></add>\r\n		</operation>\r\n		\r\n		<operation>\r\n			<search><![CDATA[\r\n				<a href=\"<?php echo $tax_rate[\'edit\']; ?>\" data-toggle=\"tooltip\" title=\"<?php echo $button_edit; ?>\" class=\"btn btn-primary\"><i class=\"fa fa-pencil\"></i></a>\r\n			]]></search>\r\n			<add position=\"replace\"><![CDATA[\r\n				<a href=\"<?php echo $tax_rate[\'edit\']; ?>\" data-id=\"<?php echo $tax_rate[\'tax_rate_id\']; ?>\" data-token=\"<?php echo $token; ?>\" data-toggle=\"tooltip\" title=\"Sync with QuickBooks\" class=\"btn btn-default\"><i class=\"fa fa-refresh\"></i></a> <a href=\"<?php echo $tax_rate[\'edit\']; ?>\" data-toggle=\"tooltip\" title=\"<?php echo $button_edit; ?>\" class=\"btn btn-primary\"><i class=\"fa fa-pencil\"></i></a>\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	\r\n	<file path=\"admin/view/template/localisation/tax_class_form.tpl\">\r\n		<operation>\r\n			<search><![CDATA[\r\n				<button type=\"submit\" form=\"form-tax-class\" data-toggle=\"tooltip\" title=\"<?php echo $button_save; ?>\" class=\"btn btn-primary\"><i class=\"fa fa-save\"></i></button>\r\n			]]></search>\r\n			<add position=\"replace\"><![CDATA[\r\n			<a id=\"qc-qbo-import\" data-token=\"<?php echo $token; ?>\" data-toggle=\"tooltip\" title=\"Import from QuickBooks\" class=\"btn btn-success\"><i class=\"fa fa-cloud-download\"></i> Import from QBO</a> <a id=\"qc-qbo-export\" data-token=\"<?php echo $token; ?>\" data-toggle=\"tooltip\" title=\"Export to QuickBooks\" class=\"btn btn-info\"><i class=\"fa fa-cloud-upload\"></i> Export to QBO</a> <button type=\"submit\" form=\"form-tax-class\" data-toggle=\"tooltip\" title=\"<?php echo $button_save; ?>\" class=\"btn btn-primary\"><i class=\"fa fa-save\"></i></button>\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[\r\n				<input type=\"text\" name=\"title\" value=\"<?php echo $title; ?>\" placeholder=\"<?php echo $entry_title; ?>\" id=\"input-title\" class=\"form-control\" />\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n				<input type=\"hidden\" name=\"tax_class_id\" value=\"<?php echo $tax_class_id; ?>\" id=\"input-tax-class-id\" class=\"form-control\" />\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	\r\n	<file path=\"admin/view/template/localisation/tax_class_list.tpl\">\r\n		<operation>\r\n			<search><![CDATA[\r\n				<a href=\"<?php echo $add; ?>\" data-toggle=\"tooltip\" title=\"<?php echo $button_add; ?>\" class=\"btn btn-primary\"><i class=\"fa fa-plus\"></i></a>\r\n			]]></search>\r\n			<add position=\"replace\"><![CDATA[\r\n			<a id=\"qc-qbo-import\" data-token=\"<?php echo $token; ?>\" data-toggle=\"tooltip\" title=\"Import from QuickBooks\" class=\"btn btn-success\"><i class=\"fa fa-cloud-download\"></i> Import from QBO</a> <a id=\"qc-qbo-export\" data-token=\"<?php echo $token; ?>\" data-toggle=\"tooltip\" title=\"Export to QuickBooks\" class=\"btn btn-info\"><i class=\"fa fa-cloud-upload\"></i> Export to QBO</a> <a href=\"<?php echo $add; ?>\" data-toggle=\"tooltip\" title=\"<?php echo $button_add; ?>\" class=\"btn btn-primary\"><i class=\"fa fa-plus\"></i></a>\r\n			]]></add>\r\n		</operation>\r\n		\r\n		<operation>\r\n			<search><![CDATA[\r\n				<a href=\"<?php echo $tax_class[\'edit\']; ?>\" data-toggle=\"tooltip\" title=\"<?php echo $button_edit; ?>\" class=\"btn btn-primary\"><i class=\"fa fa-pencil\"></i></a>\r\n			]]></search>\r\n			<add position=\"replace\"><![CDATA[\r\n				<a href=\"<?php echo $tax_class[\'edit\']; ?>\" data-id=\"<?php echo $tax_class[\'tax_class_id\']; ?>\" data-token=\"<?php echo $token; ?>\" data-toggle=\"tooltip\" title=\"Sync with QuickBooks\" class=\"btn btn-default\"><i class=\"fa fa-refresh\"></i></a> <a href=\"<?php echo $tax_class[\'edit\']; ?>\" data-toggle=\"tooltip\" title=\"<?php echo $button_edit; ?>\" class=\"btn btn-primary\"><i class=\"fa fa-pencil\"></i></a>\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n</modification>',1,'2016-10-06 03:48:47'),(107,'QuickCommerce Theme','quickcommerce_theme','lucaslopatka@gmail.com','1.0','','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<modification>\r\n	<name>QuickCommerce Theme</name>\r\n	<version>1.0</version>\r\n	<code>quickcommerce_theme</code>\r\n	<author>lucaslopatka@gmail.com</author>\r\n    \r\n    <file path=\"catalog/controller/product/category.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n            \'product_id\'  => $result[\'product_id\'],\r\n            ]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n			\'manufacturer\'  => $result[\'manufacturer\'],	\r\n		]]></add>\r\n		</operation>\r\n	</file>\r\n    \r\n    <file path=\"catalog/controller/product/manufacturer.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n            \'product_id\'  => $result[\'product_id\'],\r\n            ]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n			\'manufacturer\'  => $result[\'manufacturer\'],	\r\n		]]></add>\r\n		</operation>\r\n	</file>\r\n    \r\n    <file path=\"catalog/controller/product/search.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n            \'product_id\'  => $result[\'product_id\'],\r\n            ]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n			\'manufacturer\'  => $result[\'manufacturer\'],	\r\n		]]></add>\r\n		</operation>\r\n	</file>\r\n    \r\n    <file path=\"catalog/controller/product/special.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n            \'product_id\'  => $result[\'product_id\'],\r\n            ]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n			\'manufacturer\'  => $result[\'manufacturer\'],	\r\n		]]></add>\r\n		</operation>\r\n	</file>\r\n</modification>',0,'2016-10-10 22:27:15');
/*!40000 ALTER TABLE `oc2_modification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_module`
--

DROP TABLE IF EXISTS `oc2_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_module` (
  `module_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL,
  PRIMARY KEY (`module_id`)
) ENGINE=MyISAM AUTO_INCREMENT=139 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_module`
--

LOCK TABLES `oc2_module` WRITE;
/*!40000 ALTER TABLE `oc2_module` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_oe_modules`
--

DROP TABLE IF EXISTS `oc2_oe_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_oe_modules` (
  `oe_module_id` int(11) NOT NULL AUTO_INCREMENT,
  `module_name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `module_code` varchar(255) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`oe_module_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_oe_modules`
--

LOCK TABLES `oc2_oe_modules` WRITE;
/*!40000 ALTER TABLE `oc2_oe_modules` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_oe_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_oe_order`
--

DROP TABLE IF EXISTS `oc2_oe_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_oe_order` (
  `oe_order_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  PRIMARY KEY (`oe_order_id`),
  UNIQUE KEY `order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_oe_order`
--

LOCK TABLES `oc2_oe_order` WRITE;
/*!40000 ALTER TABLE `oc2_oe_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_oe_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_oe_order_product`
--

DROP TABLE IF EXISTS `oc2_oe_order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_oe_order_product` (
  `oe_order_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `oe_order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `notax` tinyint(1) NOT NULL,
  PRIMARY KEY (`oe_order_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_oe_order_product`
--

LOCK TABLES `oc2_oe_order_product` WRITE;
/*!40000 ALTER TABLE `oc2_oe_order_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_oe_order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_oe_payment_processor`
--

DROP TABLE IF EXISTS `oc2_oe_payment_processor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_oe_payment_processor` (
  `oe_payment_processor_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `cardholder` varchar(255) CHARACTER SET utf8 NOT NULL,
  `last_four` int(4) NOT NULL,
  `expiration` varchar(7) CHARACTER SET utf8 NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `transaction_id` varchar(255) CHARACTER SET utf8 NOT NULL,
  `type` int(1) NOT NULL,
  `process_date` int(11) NOT NULL,
  `new_order` tinyint(1) NOT NULL,
  PRIMARY KEY (`oe_payment_processor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_oe_payment_processor`
--

LOCK TABLES `oc2_oe_payment_processor` WRITE;
/*!40000 ALTER TABLE `oc2_oe_payment_processor` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_oe_payment_processor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_openbay_faq`
--

DROP TABLE IF EXISTS `oc2_openbay_faq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_openbay_faq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `route` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_openbay_faq`
--

LOCK TABLES `oc2_openbay_faq` WRITE;
/*!40000 ALTER TABLE `oc2_openbay_faq` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_openbay_faq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_option`
--

DROP TABLE IF EXISTS `oc2_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_option` (
  `option_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_option`
--

LOCK TABLES `oc2_option` WRITE;
/*!40000 ALTER TABLE `oc2_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_option_description`
--

DROP TABLE IF EXISTS `oc2_option_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_option_description`
--

LOCK TABLES `oc2_option_description` WRITE;
/*!40000 ALTER TABLE `oc2_option_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_option_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_option_value`
--

DROP TABLE IF EXISTS `oc2_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_option_value` (
  `option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL,
  `download_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`option_value_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_option_value`
--

LOCK TABLES `oc2_option_value` WRITE;
/*!40000 ALTER TABLE `oc2_option_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_option_value_description`
--

DROP TABLE IF EXISTS `oc2_option_value_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_option_value_description`
--

LOCK TABLES `oc2_option_value_description` WRITE;
/*!40000 ALTER TABLE `oc2_option_value_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_option_value_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_order`
--

DROP TABLE IF EXISTS `oc2_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_no` int(11) NOT NULL DEFAULT '0',
  `invoice_prefix` varchar(26) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `store_name` varchar(64) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) DEFAULT NULL,
  `lastname` varchar(32) DEFAULT NULL,
  `email` varchar(96) DEFAULT NULL,
  `telephone` varchar(32) DEFAULT NULL,
  `fax` varchar(32) DEFAULT NULL,
  `custom_field` text,
  `payment_firstname` varchar(32) DEFAULT NULL,
  `payment_lastname` varchar(32) DEFAULT NULL,
  `payment_company` varchar(40) DEFAULT NULL,
  `payment_address_1` varchar(128) DEFAULT NULL,
  `payment_address_2` varchar(128) DEFAULT NULL,
  `payment_city` varchar(128) DEFAULT NULL,
  `payment_postcode` varchar(10) DEFAULT NULL,
  `payment_country` varchar(128) DEFAULT NULL,
  `payment_country_id` int(11) DEFAULT NULL,
  `payment_zone` varchar(128) DEFAULT NULL,
  `payment_zone_id` int(11) DEFAULT NULL,
  `payment_address_format` text,
  `payment_custom_field` text,
  `payment_method` varchar(128) DEFAULT NULL,
  `payment_code` varchar(128) DEFAULT NULL,
  `shipping_firstname` varchar(32) DEFAULT NULL,
  `shipping_lastname` varchar(32) DEFAULT NULL,
  `shipping_company` varchar(40) DEFAULT NULL,
  `shipping_address_1` varchar(128) DEFAULT NULL,
  `shipping_address_2` varchar(128) DEFAULT NULL,
  `shipping_city` varchar(128) DEFAULT NULL,
  `shipping_postcode` varchar(10) DEFAULT NULL,
  `shipping_country` varchar(128) DEFAULT NULL,
  `shipping_country_id` int(11) DEFAULT NULL,
  `shipping_zone` varchar(128) DEFAULT NULL,
  `shipping_zone_id` int(11) DEFAULT NULL,
  `shipping_address_format` text,
  `shipping_custom_field` text,
  `shipping_method` varchar(128) DEFAULT NULL,
  `shipping_code` varchar(128) DEFAULT NULL,
  `comment` text,
  `total` decimal(15,4) DEFAULT '0.0000',
  `order_status_id` int(11) DEFAULT '0',
  `affiliate_id` int(11) DEFAULT NULL,
  `commission` decimal(15,4) DEFAULT NULL,
  `marketing_id` int(11) DEFAULT NULL,
  `tracking` varchar(64) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `currency_code` varchar(3) DEFAULT NULL,
  `currency_value` decimal(15,8) DEFAULT '1.00000000',
  `ip` varchar(40) DEFAULT NULL,
  `forwarded_ip` varchar(40) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `accept_language` varchar(255) DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=169 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_order`
--

LOCK TABLES `oc2_order` WRITE;
/*!40000 ALTER TABLE `oc2_order` DISABLE KEYS */;
INSERT INTO `oc2_order` (`order_id`, `invoice_no`, `invoice_prefix`, `store_id`, `store_name`, `store_url`, `customer_id`, `customer_group_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `custom_field`, `payment_firstname`, `payment_lastname`, `payment_company`, `payment_address_1`, `payment_address_2`, `payment_city`, `payment_postcode`, `payment_country`, `payment_country_id`, `payment_zone`, `payment_zone_id`, `payment_address_format`, `payment_custom_field`, `payment_method`, `payment_code`, `shipping_firstname`, `shipping_lastname`, `shipping_company`, `shipping_address_1`, `shipping_address_2`, `shipping_city`, `shipping_postcode`, `shipping_country`, `shipping_country_id`, `shipping_zone`, `shipping_zone_id`, `shipping_address_format`, `shipping_custom_field`, `shipping_method`, `shipping_code`, `comment`, `total`, `order_status_id`, `affiliate_id`, `commission`, `marketing_id`, `tracking`, `language_id`, `currency_id`, `currency_code`, `currency_value`, `ip`, `forwarded_ip`, `user_agent`, `accept_language`, `date_added`, `date_modified`) VALUES (1,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-24 07:12:12','2017-10-24 07:12:12'),(2,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-24 07:13:46','2017-10-24 07:13:46'),(3,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-24 07:14:07','2017-10-24 07:14:07'),(4,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-24 14:56:31','2017-10-24 14:56:31'),(5,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-24 15:06:27','2017-10-24 15:06:27'),(6,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-24 15:11:56','2017-10-24 15:11:56'),(7,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-24 15:12:08','2017-10-24 15:12:08'),(8,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-24 16:09:35','2017-10-24 16:09:35'),(9,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-24 16:13:23','2017-10-24 16:13:23'),(10,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-24 16:16:52','2017-10-24 16:16:52'),(11,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-24 16:23:18','2017-10-24 16:23:18'),(12,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-24 16:40:43','2017-10-24 16:40:43'),(13,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-24 16:46:44','2017-10-24 16:46:44'),(14,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-24 16:46:50','2017-10-24 16:46:50'),(15,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-24 16:47:47','2017-10-24 16:47:47'),(16,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-24 16:47:51','2017-10-24 16:47:51'),(17,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-24 16:49:07','2017-10-24 16:49:07'),(18,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-24 16:49:14','2017-10-24 16:49:14'),(19,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-24 16:49:56','2017-10-24 16:49:56'),(20,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-24 16:50:53','2017-10-24 16:50:53'),(21,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-24 16:58:31','2017-10-24 16:58:31'),(22,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-24 17:02:15','2017-10-24 17:02:15'),(23,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-24 17:02:17','2017-10-24 17:02:17'),(24,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-24 17:02:32','2017-10-24 17:02:32'),(25,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-24 17:04:33','2017-10-24 17:04:33'),(26,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-24 17:04:40','2017-10-24 17:04:40'),(27,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-24 17:05:17','2017-10-24 17:05:17'),(28,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-24 17:05:25','2017-10-24 17:05:25'),(29,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-24 17:05:39','2017-10-24 17:05:39'),(30,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-24 17:06:18','2017-10-24 17:06:18'),(31,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-24 17:06:48','2017-10-24 17:06:48'),(32,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-24 17:07:25','2017-10-24 17:07:25'),(33,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-24 17:08:00','2017-10-24 17:08:00'),(34,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-24 17:12:10','2017-10-24 17:12:10'),(35,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-24 17:12:17','2017-10-24 17:12:17'),(36,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-24 17:14:53','2017-10-24 17:14:53'),(37,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-24 17:15:41','2017-10-24 17:15:41'),(38,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-24 17:22:36','2017-10-24 17:22:36'),(39,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-24 17:30:41','2017-10-24 17:30:41'),(40,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-24 17:31:29','2017-10-24 17:31:29'),(41,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-24 17:37:53','2017-10-24 17:37:53'),(42,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-24 17:40:44','2017-10-24 17:40:44'),(43,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-24 17:41:25','2017-10-24 17:41:25'),(44,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-24 17:47:15','2017-10-24 17:47:15'),(45,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-24 17:48:41','2017-10-24 17:48:41'),(46,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-24 17:50:41','2017-10-24 17:50:41'),(47,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-24 17:53:24','2017-10-24 17:53:24'),(48,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-24 17:55:18','2017-10-24 17:55:18'),(49,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-24 17:55:59','2017-10-24 17:55:59'),(50,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-24 17:56:23','2017-10-24 17:56:23'),(51,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-24 17:56:44','2017-10-24 17:56:44'),(52,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-24 17:57:14','2017-10-24 17:57:14'),(53,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-24 18:00:06','2017-10-24 18:00:06'),(54,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-24 18:00:31','2017-10-24 18:00:31'),(55,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-24 18:02:24','2017-10-24 18:02:24'),(56,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-24 18:03:22','2017-10-24 18:03:22'),(57,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-24 18:04:13','2017-10-24 18:04:13'),(58,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-24 18:05:08','2017-10-24 18:05:08'),(59,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-24 18:06:16','2017-10-24 18:06:16'),(60,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-24 18:13:26','2017-10-24 18:13:26'),(61,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-24 18:13:48','2017-10-24 18:13:48'),(62,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-24 18:30:53','2017-10-24 18:30:53'),(63,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-24 18:31:47','2017-10-24 18:31:47'),(64,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-24 21:12:21','2017-10-24 21:12:21'),(65,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-24 23:31:39','2017-10-24 23:31:39'),(66,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-25 07:22:02','2017-10-25 07:22:02'),(67,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-25 07:30:05','2017-10-25 07:30:05'),(68,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-25 07:30:56','2017-10-25 07:30:56'),(69,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-25 07:34:29','2017-10-25 07:34:29'),(70,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-25 07:34:51','2017-10-25 07:34:51'),(71,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-25 07:35:08','2017-10-25 07:35:08'),(72,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-25 07:38:59','2017-10-25 07:38:59'),(73,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-25 07:40:38','2017-10-25 07:40:38'),(74,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-25 07:41:48','2017-10-25 07:41:48'),(75,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-25 07:44:59','2017-10-25 07:44:59'),(76,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-25 07:47:25','2017-10-25 07:47:25'),(77,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-25 07:48:07','2017-10-25 07:48:07'),(78,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-25 07:50:34','2017-10-25 07:50:34'),(79,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-25 07:51:32','2017-10-25 07:51:32'),(80,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-25 08:00:11','2017-10-25 08:00:11'),(81,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-25 08:00:52','2017-10-25 08:00:52'),(82,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-25 08:01:42','2017-10-25 08:01:42'),(83,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-25 08:02:32','2017-10-25 08:02:32'),(84,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-25 08:02:47','2017-10-25 08:02:47'),(85,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-25 08:04:15','2017-10-25 08:04:15'),(86,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-25 08:10:06','2017-10-25 08:10:06'),(87,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-25 08:10:31','2017-10-25 08:10:31'),(88,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-25 08:11:18','2017-10-25 08:11:18'),(89,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-25 08:17:40','2017-10-25 08:17:40'),(90,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-25 08:18:15','2017-10-25 08:18:15'),(91,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-25 08:19:37','2017-10-25 08:19:37'),(92,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-25 08:20:48','2017-10-25 08:20:48'),(93,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-25 08:24:59','2017-10-25 08:24:59'),(94,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-25 08:25:44','2017-10-25 08:25:44'),(95,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-25 08:25:52','2017-10-25 08:25:52'),(96,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-25 08:26:38','2017-10-25 08:26:38'),(97,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-25 08:26:43','2017-10-25 08:26:43'),(98,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-25 08:26:50','2017-10-25 08:26:50'),(99,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-25 08:28:02','2017-10-25 08:28:02'),(100,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-25 08:28:49','2017-10-25 08:28:49'),(101,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-25 08:29:16','2017-10-25 08:29:16'),(102,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-25 08:30:28','2017-10-25 08:30:28'),(103,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-25 08:35:20','2017-10-25 08:35:20'),(104,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-25 08:36:39','2017-10-25 08:36:39'),(105,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-25 08:39:29','2017-10-25 08:39:29'),(106,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-25 08:41:07','2017-10-25 08:41:07'),(107,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-25 08:41:16','2017-10-25 08:41:16'),(108,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-25 08:41:24','2017-10-25 08:41:24'),(109,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-25 08:41:47','2017-10-25 08:41:47'),(110,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-25 08:43:26','2017-10-25 08:43:26'),(111,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-25 08:44:28','2017-10-25 08:44:28'),(112,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-25 08:44:56','2017-10-25 08:44:56'),(113,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-25 08:45:30','2017-10-25 08:45:30'),(114,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-25 08:46:14','2017-10-25 08:46:14'),(115,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-25 08:47:33','2017-10-25 08:47:33'),(116,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-25 08:48:48','2017-10-25 08:48:48'),(117,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-25 08:51:08','2017-10-25 08:51:08'),(118,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-25 16:57:03','2017-10-25 16:57:03'),(119,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-26 04:23:46','2017-10-26 04:23:46'),(120,0,'pos',0,'','http://199.167.47.136/~devct/phobulous/upload',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-27 00:42:37','2017-10-27 00:42:37'),(121,0,'pos',0,'','http://phobulous/',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-28 13:34:19','2017-10-28 13:34:19'),(122,0,'pos',0,'','http://phobulous/',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-28 13:35:40','2017-10-28 13:35:40'),(123,0,'pos',0,'','http://phobulous/',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-28 13:41:15','2017-10-28 13:41:15'),(124,0,'pos',0,'','http://phobulous/',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-28 13:41:21','2017-10-28 13:41:21'),(125,0,'pos',0,'','http://phobulous/',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-28 13:41:24','2017-10-28 13:41:24'),(126,0,'pos',0,'','http://phobulous/',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-28 13:41:40','2017-10-28 13:41:40'),(127,0,'pos',0,'','http://phobulous/',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-28 13:42:35','2017-10-28 13:42:35'),(128,0,'pos',0,'','http://phobulous/',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-28 13:44:14','2017-10-28 13:44:14'),(129,0,'pos',0,'','http://phobulous/',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-28 13:44:17','2017-10-28 13:44:17'),(130,0,'pos',0,'','http://phobulous/',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-28 13:44:20','2017-10-28 13:44:20'),(131,0,'pos',0,'','http://phobulous/',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-28 13:51:33','2017-10-28 13:51:33'),(132,0,'pos',0,'','http://phobulous/',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-28 13:51:52','2017-10-28 13:51:52'),(133,0,'pos',0,'','http://phobulous/',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-28 13:54:12','2017-10-28 13:54:12'),(134,0,'pos',0,'','http://phobulous/',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-28 14:00:48','2017-10-28 14:00:48'),(135,0,'pos',0,'','http://phobulous/',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-28 14:06:25','2017-10-28 14:06:25'),(136,0,'pos',0,'','http://phobulous/',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-28 14:08:34','2017-10-28 14:08:34'),(137,0,'pos',0,'','http://phobulous/',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-28 14:12:04','2017-10-28 14:12:04'),(138,0,'pos',0,'','http://phobulous/',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-28 14:12:15','2017-10-28 14:12:15'),(139,0,'pos',0,'','http://phobulous/',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-28 15:04:23','2017-10-28 15:04:23'),(140,0,'pos',0,'','http://phobulous/',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-28 15:05:34','2017-10-28 15:05:34'),(141,0,'pos',0,'','http://phobulous/',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-28 15:13:47','2017-10-28 15:13:47'),(142,0,'pos',0,'','http://phobulous/',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-28 15:15:13','2017-10-28 15:15:13'),(143,0,'pos',0,'','http://phobulous/',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-28 15:15:20','2017-10-28 15:15:20'),(144,0,'pos',0,'','http://phobulous/',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-28 15:15:32','2017-10-28 15:15:32'),(145,0,'pos',0,'','http://phobulous/',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-28 15:22:52','2017-10-28 15:22:52'),(146,0,'pos',0,'','http://phobulous/',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-28 15:23:02','2017-10-28 15:23:02'),(147,0,'pos',0,'','http://phobulous/',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-28 15:23:16','2017-10-28 15:23:16'),(148,0,'pos',0,'','http://phobulous/',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-28 15:25:27','2017-10-28 15:25:27'),(149,0,'pos',0,'','http://phobulous/',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-28 15:30:21','2017-10-28 15:30:21'),(150,0,'pos',0,'','http://phobulous/',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-28 15:46:28','2017-10-28 15:46:28'),(151,0,'pos',0,'','http://phobulous/',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-28 15:48:54','2017-10-28 15:48:54'),(152,0,'pos',0,'','http://phobulous/',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-28 16:03:34','2017-10-28 16:03:34'),(153,0,'pos',0,'','http://phobulous/',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-28 16:06:23','2017-10-28 16:06:23'),(154,0,'pos',0,'','http://phobulous/',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-28 16:06:26','2017-10-28 16:06:26'),(155,0,'pos',0,'','http://phobulous/',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-28 16:15:01','2017-10-28 16:15:01'),(156,0,'pos',0,'','http://phobulous/',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-28 16:16:42','2017-10-28 16:16:42'),(157,0,'pos',0,'','http://phobulous/',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-28 16:16:51','2017-10-28 16:16:51'),(158,0,'pos',0,'','http://phobulous/',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-28 16:27:39','2017-10-28 16:27:39'),(159,0,'pos',0,'','http://phobulous/',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-28 16:29:21','2017-10-28 16:29:21'),(160,0,'pos',0,'','http://phobulous/',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-28 16:30:42','2017-10-28 16:30:42'),(161,0,'pos',0,'','http://phobulous/',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-28 16:33:32','2017-10-28 16:33:32'),(162,0,'pos',0,'','http://phobulous/',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-28 22:33:22','2017-10-28 22:33:22'),(163,0,'pos',0,'','http://phobulous/',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-29 00:12:00','2017-10-29 00:12:00'),(164,0,'pos',0,'','http://phobulous/',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-29 00:12:11','2017-10-29 00:12:11'),(165,0,'pos',0,'','http://phobulous/',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-29 00:12:33','2017-10-29 00:12:33'),(166,0,'pos',0,'','http://phobulous/',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-29 00:32:01','2017-10-29 00:32:01'),(167,0,'pos',0,'','http://phobulous/',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-29 00:34:33','2017-10-29 00:34:33'),(168,0,'pos',0,'','http://phobulous/',0,1,'In-Store','Customer','instore.customer@dummy.com','1600','',NULL,'In-store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','In Store','in_store','In-Store','Customer','','customer address','','customer city','1600','Canada',38,'Alberta',602,'','','instore','instore.instore','',0.0000,1,0,0.0000,0,'',1,5,'CAD',1.00000000,NULL,NULL,NULL,'','2017-10-29 00:34:49','2017-10-29 00:34:49');
/*!40000 ALTER TABLE `oc2_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_order_custom_field`
--

DROP TABLE IF EXISTS `oc2_order_custom_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_order_custom_field` (
  `order_custom_field_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `custom_field_value_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  `location` varchar(16) NOT NULL,
  PRIMARY KEY (`order_custom_field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_order_custom_field`
--

LOCK TABLES `oc2_order_custom_field` WRITE;
/*!40000 ALTER TABLE `oc2_order_custom_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_order_custom_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_order_history`
--

DROP TABLE IF EXISTS `oc2_order_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_order_history` (
  `order_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_order_history`
--

LOCK TABLES `oc2_order_history` WRITE;
/*!40000 ALTER TABLE `oc2_order_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_order_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_order_option`
--

DROP TABLE IF EXISTS `oc2_order_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_order_option` (
  `order_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  PRIMARY KEY (`order_option_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_order_option`
--

LOCK TABLES `oc2_order_option` WRITE;
/*!40000 ALTER TABLE `oc2_order_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_order_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_order_option_download`
--

DROP TABLE IF EXISTS `oc2_order_option_download`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_order_option_download` (
  `order_option_download_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_option_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL,
  `constraint` tinyint(1) NOT NULL DEFAULT '0',
  `remaining` int(3) NOT NULL DEFAULT '0',
  `duration` int(11) NOT NULL DEFAULT '0',
  `end_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_accessed` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`order_option_download_id`),
  UNIQUE KEY `uq_ood_ooi_di` (`order_option_id`,`download_id`),
  KEY `fk_ood_op` (`order_option_id`),
  KEY `fk_ood_d` (`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_order_option_download`
--

LOCK TABLES `oc2_order_option_download` WRITE;
/*!40000 ALTER TABLE `oc2_order_option_download` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_order_option_download` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_order_product`
--

DROP TABLE IF EXISTS `oc2_order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_order_product` (
  `order_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `reward` int(8) NOT NULL,
  PRIMARY KEY (`order_product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_order_product`
--

LOCK TABLES `oc2_order_product` WRITE;
/*!40000 ALTER TABLE `oc2_order_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_order_product_download`
--

DROP TABLE IF EXISTS `oc2_order_product_download`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_order_product_download` (
  `order_product_download_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL,
  `constraint` tinyint(1) NOT NULL DEFAULT '0',
  `remaining` int(3) NOT NULL DEFAULT '0',
  `duration` int(11) NOT NULL DEFAULT '0',
  `end_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_accessed` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`order_product_download_id`),
  UNIQUE KEY `uq_opd_opi_di` (`order_product_id`,`download_id`),
  KEY `fk_opd_op` (`order_product_id`),
  KEY `fk_opd_d` (`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_order_product_download`
--

LOCK TABLES `oc2_order_product_download` WRITE;
/*!40000 ALTER TABLE `oc2_order_product_download` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_order_product_download` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_order_recurring`
--

DROP TABLE IF EXISTS `oc2_order_recurring`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_order_recurring` (
  `order_recurring_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `recurring_name` varchar(255) NOT NULL,
  `recurring_description` varchar(255) NOT NULL,
  `recurring_frequency` varchar(25) NOT NULL,
  `recurring_cycle` smallint(6) NOT NULL,
  `recurring_duration` smallint(6) NOT NULL,
  `recurring_price` decimal(10,4) NOT NULL,
  `trial` tinyint(1) NOT NULL,
  `trial_frequency` varchar(25) NOT NULL,
  `trial_cycle` smallint(6) NOT NULL,
  `trial_duration` smallint(6) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_recurring_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_order_recurring`
--

LOCK TABLES `oc2_order_recurring` WRITE;
/*!40000 ALTER TABLE `oc2_order_recurring` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_order_recurring` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_order_recurring_transaction`
--

DROP TABLE IF EXISTS `oc2_order_recurring_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_order_recurring_transaction` (
  `order_recurring_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_recurring_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` decimal(10,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_recurring_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_order_recurring_transaction`
--

LOCK TABLES `oc2_order_recurring_transaction` WRITE;
/*!40000 ALTER TABLE `oc2_order_recurring_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_order_recurring_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_order_status`
--

DROP TABLE IF EXISTS `oc2_order_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_order_status` (
  `order_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`order_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_order_status`
--

LOCK TABLES `oc2_order_status` WRITE;
/*!40000 ALTER TABLE `oc2_order_status` DISABLE KEYS */;
INSERT INTO `oc2_order_status` (`order_status_id`, `language_id`, `name`) VALUES (2,1,'Processing'),(3,1,'Shipped'),(7,1,'Canceled'),(5,1,'Complete'),(8,1,'Denied'),(9,1,'Canceled Reversal'),(10,1,'Failed'),(11,1,'Refunded'),(12,1,'Reversed'),(13,1,'Chargeback'),(1,1,'Pending'),(16,1,'Voided'),(15,1,'Processed'),(14,1,'Expired'),(17,1,'Fraud'),(18,1,'Fraud Review');
/*!40000 ALTER TABLE `oc2_order_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_order_total`
--

DROP TABLE IF EXISTS `oc2_order_total`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_order_total` (
  `order_total_id` int(10) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sort_order` int(3) DEFAULT NULL,
  PRIMARY KEY (`order_total_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=505 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_order_total`
--

LOCK TABLES `oc2_order_total` WRITE;
/*!40000 ALTER TABLE `oc2_order_total` DISABLE KEYS */;
INSERT INTO `oc2_order_total` (`order_total_id`, `order_id`, `code`, `title`, `value`, `sort_order`) VALUES (2,1,'sub_total','Sub-Total',0.0000,1),(3,1,'total','Total',0.0000,9),(5,2,'sub_total','Sub-Total',0.0000,1),(6,2,'total','Total',0.0000,9),(8,3,'sub_total','Sub-Total',0.0000,1),(9,3,'total','Total',0.0000,9),(11,4,'sub_total','Sub-Total',0.0000,1),(12,4,'total','Total',0.0000,9),(14,5,'sub_total','Sub-Total',0.0000,1),(15,5,'total','Total',0.0000,9),(17,6,'sub_total','Sub-Total',0.0000,1),(18,6,'total','Total',0.0000,9),(20,7,'sub_total','Sub-Total',0.0000,1),(21,7,'total','Total',0.0000,9),(23,8,'sub_total','Sub-Total',0.0000,1),(24,8,'total','Total',0.0000,9),(26,9,'sub_total','Sub-Total',0.0000,1),(27,9,'total','Total',0.0000,9),(29,10,'sub_total','Sub-Total',0.0000,1),(30,10,'total','Total',0.0000,9),(32,11,'sub_total','Sub-Total',0.0000,1),(33,11,'total','Total',0.0000,9),(35,12,'sub_total','Sub-Total',0.0000,1),(36,12,'total','Total',0.0000,9),(38,13,'sub_total','Sub-Total',0.0000,1),(39,13,'total','Total',0.0000,9),(41,14,'sub_total','Sub-Total',0.0000,1),(42,14,'total','Total',0.0000,9),(44,15,'sub_total','Sub-Total',0.0000,1),(45,15,'total','Total',0.0000,9),(47,16,'sub_total','Sub-Total',0.0000,1),(48,16,'total','Total',0.0000,9),(50,17,'sub_total','Sub-Total',0.0000,1),(51,17,'total','Total',0.0000,9),(53,18,'sub_total','Sub-Total',0.0000,1),(54,18,'total','Total',0.0000,9),(56,19,'sub_total','Sub-Total',0.0000,1),(57,19,'total','Total',0.0000,9),(59,20,'sub_total','Sub-Total',0.0000,1),(60,20,'total','Total',0.0000,9),(62,21,'sub_total','Sub-Total',0.0000,1),(63,21,'total','Total',0.0000,9),(65,22,'sub_total','Sub-Total',0.0000,1),(66,22,'total','Total',0.0000,9),(68,23,'sub_total','Sub-Total',0.0000,1),(69,23,'total','Total',0.0000,9),(71,24,'sub_total','Sub-Total',0.0000,1),(72,24,'total','Total',0.0000,9),(74,25,'sub_total','Sub-Total',0.0000,1),(75,25,'total','Total',0.0000,9),(77,26,'sub_total','Sub-Total',0.0000,1),(78,26,'total','Total',0.0000,9),(80,27,'sub_total','Sub-Total',0.0000,1),(81,27,'total','Total',0.0000,9),(83,28,'sub_total','Sub-Total',0.0000,1),(84,28,'total','Total',0.0000,9),(86,29,'sub_total','Sub-Total',0.0000,1),(87,29,'total','Total',0.0000,9),(89,30,'sub_total','Sub-Total',0.0000,1),(90,30,'total','Total',0.0000,9),(92,31,'sub_total','Sub-Total',0.0000,1),(93,31,'total','Total',0.0000,9),(95,32,'sub_total','Sub-Total',0.0000,1),(96,32,'total','Total',0.0000,9),(98,33,'sub_total','Sub-Total',0.0000,1),(99,33,'total','Total',0.0000,9),(101,34,'sub_total','Sub-Total',0.0000,1),(102,34,'total','Total',0.0000,9),(104,35,'sub_total','Sub-Total',0.0000,1),(105,35,'total','Total',0.0000,9),(107,36,'sub_total','Sub-Total',0.0000,1),(108,36,'total','Total',0.0000,9),(110,37,'sub_total','Sub-Total',0.0000,1),(111,37,'total','Total',0.0000,9),(113,38,'sub_total','Sub-Total',0.0000,1),(114,38,'total','Total',0.0000,9),(116,39,'sub_total','Sub-Total',0.0000,1),(117,39,'total','Total',0.0000,9),(119,40,'sub_total','Sub-Total',0.0000,1),(120,40,'total','Total',0.0000,9),(122,41,'sub_total','Sub-Total',0.0000,1),(123,41,'total','Total',0.0000,9),(125,42,'sub_total','Sub-Total',0.0000,1),(126,42,'total','Total',0.0000,9),(128,43,'sub_total','Sub-Total',0.0000,1),(129,43,'total','Total',0.0000,9),(131,44,'sub_total','Sub-Total',0.0000,1),(132,44,'total','Total',0.0000,9),(134,45,'sub_total','Sub-Total',0.0000,1),(135,45,'total','Total',0.0000,9),(137,46,'sub_total','Sub-Total',0.0000,1),(138,46,'total','Total',0.0000,9),(140,47,'sub_total','Sub-Total',0.0000,1),(141,47,'total','Total',0.0000,9),(143,48,'sub_total','Sub-Total',0.0000,1),(144,48,'total','Total',0.0000,9),(146,49,'sub_total','Sub-Total',0.0000,1),(147,49,'total','Total',0.0000,9),(149,50,'sub_total','Sub-Total',0.0000,1),(150,50,'total','Total',0.0000,9),(152,51,'sub_total','Sub-Total',0.0000,1),(153,51,'total','Total',0.0000,9),(155,52,'sub_total','Sub-Total',0.0000,1),(156,52,'total','Total',0.0000,9),(158,53,'sub_total','Sub-Total',0.0000,1),(159,53,'total','Total',0.0000,9),(161,54,'sub_total','Sub-Total',0.0000,1),(162,54,'total','Total',0.0000,9),(164,55,'sub_total','Sub-Total',0.0000,1),(165,55,'total','Total',0.0000,9),(167,56,'sub_total','Sub-Total',0.0000,1),(168,56,'total','Total',0.0000,9),(170,57,'sub_total','Sub-Total',0.0000,1),(171,57,'total','Total',0.0000,9),(173,58,'sub_total','Sub-Total',0.0000,1),(174,58,'total','Total',0.0000,9),(176,59,'sub_total','Sub-Total',0.0000,1),(177,59,'total','Total',0.0000,9),(179,60,'sub_total','Sub-Total',0.0000,1),(180,60,'total','Total',0.0000,9),(182,61,'sub_total','Sub-Total',0.0000,1),(183,61,'total','Total',0.0000,9),(185,62,'sub_total','Sub-Total',0.0000,1),(186,62,'total','Total',0.0000,9),(188,63,'sub_total','Sub-Total',0.0000,1),(189,63,'total','Total',0.0000,9),(191,64,'sub_total','Sub-Total',0.0000,1),(192,64,'total','Total',0.0000,9),(194,65,'sub_total','Sub-Total',0.0000,1),(195,65,'total','Total',0.0000,9),(197,66,'sub_total','Sub-Total',0.0000,1),(198,66,'total','Total',0.0000,9),(200,67,'sub_total','Sub-Total',0.0000,1),(201,67,'total','Total',0.0000,9),(203,68,'sub_total','Sub-Total',0.0000,1),(204,68,'total','Total',0.0000,9),(206,69,'sub_total','Sub-Total',0.0000,1),(207,69,'total','Total',0.0000,9),(209,70,'sub_total','Sub-Total',0.0000,1),(210,70,'total','Total',0.0000,9),(212,71,'sub_total','Sub-Total',0.0000,1),(213,71,'total','Total',0.0000,9),(215,72,'sub_total','Sub-Total',0.0000,1),(216,72,'total','Total',0.0000,9),(218,73,'sub_total','Sub-Total',0.0000,1),(219,73,'total','Total',0.0000,9),(221,74,'sub_total','Sub-Total',0.0000,1),(222,74,'total','Total',0.0000,9),(224,75,'sub_total','Sub-Total',0.0000,1),(225,75,'total','Total',0.0000,9),(227,76,'sub_total','Sub-Total',0.0000,1),(228,76,'total','Total',0.0000,9),(230,77,'sub_total','Sub-Total',0.0000,1),(231,77,'total','Total',0.0000,9),(233,78,'sub_total','Sub-Total',0.0000,1),(234,78,'total','Total',0.0000,9),(236,79,'sub_total','Sub-Total',0.0000,1),(237,79,'total','Total',0.0000,9),(239,80,'sub_total','Sub-Total',0.0000,1),(240,80,'total','Total',0.0000,9),(242,81,'sub_total','Sub-Total',0.0000,1),(243,81,'total','Total',0.0000,9),(245,82,'sub_total','Sub-Total',0.0000,1),(246,82,'total','Total',0.0000,9),(248,83,'sub_total','Sub-Total',0.0000,1),(249,83,'total','Total',0.0000,9),(251,84,'sub_total','Sub-Total',0.0000,1),(252,84,'total','Total',0.0000,9),(254,85,'sub_total','Sub-Total',0.0000,1),(255,85,'total','Total',0.0000,9),(257,86,'sub_total','Sub-Total',0.0000,1),(258,86,'total','Total',0.0000,9),(260,87,'sub_total','Sub-Total',0.0000,1),(261,87,'total','Total',0.0000,9),(263,88,'sub_total','Sub-Total',0.0000,1),(264,88,'total','Total',0.0000,9),(266,89,'sub_total','Sub-Total',0.0000,1),(267,89,'total','Total',0.0000,9),(269,90,'sub_total','Sub-Total',0.0000,1),(270,90,'total','Total',0.0000,9),(272,91,'sub_total','Sub-Total',0.0000,1),(273,91,'total','Total',0.0000,9),(275,92,'sub_total','Sub-Total',0.0000,1),(276,92,'total','Total',0.0000,9),(278,93,'sub_total','Sub-Total',0.0000,1),(279,93,'total','Total',0.0000,9),(281,94,'sub_total','Sub-Total',0.0000,1),(282,94,'total','Total',0.0000,9),(284,95,'sub_total','Sub-Total',0.0000,1),(285,95,'total','Total',0.0000,9),(287,96,'sub_total','Sub-Total',0.0000,1),(288,96,'total','Total',0.0000,9),(290,97,'sub_total','Sub-Total',0.0000,1),(291,97,'total','Total',0.0000,9),(293,98,'sub_total','Sub-Total',0.0000,1),(294,98,'total','Total',0.0000,9),(296,99,'sub_total','Sub-Total',0.0000,1),(297,99,'total','Total',0.0000,9),(299,100,'sub_total','Sub-Total',0.0000,1),(300,100,'total','Total',0.0000,9),(302,101,'sub_total','Sub-Total',0.0000,1),(303,101,'total','Total',0.0000,9),(305,102,'sub_total','Sub-Total',0.0000,1),(306,102,'total','Total',0.0000,9),(308,103,'sub_total','Sub-Total',0.0000,1),(309,103,'total','Total',0.0000,9),(311,104,'sub_total','Sub-Total',0.0000,1),(312,104,'total','Total',0.0000,9),(314,105,'sub_total','Sub-Total',0.0000,1),(315,105,'total','Total',0.0000,9),(317,106,'sub_total','Sub-Total',0.0000,1),(318,106,'total','Total',0.0000,9),(320,107,'sub_total','Sub-Total',0.0000,1),(321,107,'total','Total',0.0000,9),(323,108,'sub_total','Sub-Total',0.0000,1),(324,108,'total','Total',0.0000,9),(326,109,'sub_total','Sub-Total',0.0000,1),(327,109,'total','Total',0.0000,9),(329,110,'sub_total','Sub-Total',0.0000,1),(330,110,'total','Total',0.0000,9),(332,111,'sub_total','Sub-Total',0.0000,1),(333,111,'total','Total',0.0000,9),(335,112,'sub_total','Sub-Total',0.0000,1),(336,112,'total','Total',0.0000,9),(338,113,'sub_total','Sub-Total',0.0000,1),(339,113,'total','Total',0.0000,9),(341,114,'sub_total','Sub-Total',0.0000,1),(342,114,'total','Total',0.0000,9),(344,115,'sub_total','Sub-Total',0.0000,1),(345,115,'total','Total',0.0000,9),(347,116,'sub_total','Sub-Total',0.0000,1),(348,116,'total','Total',0.0000,9),(350,117,'sub_total','Sub-Total',0.0000,1),(351,117,'total','Total',0.0000,9),(353,118,'sub_total','Sub-Total',0.0000,1),(354,118,'total','Total',0.0000,9),(356,119,'sub_total','Sub-Total',0.0000,1),(357,119,'total','Total',0.0000,9),(359,120,'sub_total','Sub-Total',0.0000,1),(360,120,'total','Total',0.0000,9),(362,121,'sub_total','Sub-Total',0.0000,1),(363,121,'total','Total',0.0000,9),(365,122,'sub_total','Sub-Total',0.0000,1),(366,122,'total','Total',0.0000,9),(368,123,'sub_total','Sub-Total',0.0000,1),(369,123,'total','Total',0.0000,9),(371,124,'sub_total','Sub-Total',0.0000,1),(372,124,'total','Total',0.0000,9),(374,125,'sub_total','Sub-Total',0.0000,1),(375,125,'total','Total',0.0000,9),(377,126,'sub_total','Sub-Total',0.0000,1),(378,126,'total','Total',0.0000,9),(380,127,'sub_total','Sub-Total',0.0000,1),(381,127,'total','Total',0.0000,9),(383,128,'sub_total','Sub-Total',0.0000,1),(384,128,'total','Total',0.0000,9),(386,129,'sub_total','Sub-Total',0.0000,1),(387,129,'total','Total',0.0000,9),(389,130,'sub_total','Sub-Total',0.0000,1),(390,130,'total','Total',0.0000,9),(392,131,'sub_total','Sub-Total',0.0000,1),(393,131,'total','Total',0.0000,9),(395,132,'sub_total','Sub-Total',0.0000,1),(396,132,'total','Total',0.0000,9),(398,133,'sub_total','Sub-Total',0.0000,1),(399,133,'total','Total',0.0000,9),(401,134,'sub_total','Sub-Total',0.0000,1),(402,134,'total','Total',0.0000,9),(404,135,'sub_total','Sub-Total',0.0000,1),(405,135,'total','Total',0.0000,9),(407,136,'sub_total','Sub-Total',0.0000,1),(408,136,'total','Total',0.0000,9),(410,137,'sub_total','Sub-Total',0.0000,1),(411,137,'total','Total',0.0000,9),(413,138,'sub_total','Sub-Total',0.0000,1),(414,138,'total','Total',0.0000,9),(416,139,'sub_total','Sub-Total',0.0000,1),(417,139,'total','Total',0.0000,9),(419,140,'sub_total','Sub-Total',0.0000,1),(420,140,'total','Total',0.0000,9),(422,141,'sub_total','Sub-Total',0.0000,1),(423,141,'total','Total',0.0000,9),(425,142,'sub_total','Sub-Total',0.0000,1),(426,142,'total','Total',0.0000,9),(428,143,'sub_total','Sub-Total',0.0000,1),(429,143,'total','Total',0.0000,9),(431,144,'sub_total','Sub-Total',0.0000,1),(432,144,'total','Total',0.0000,9),(434,145,'sub_total','Sub-Total',0.0000,1),(435,145,'total','Total',0.0000,9),(437,146,'sub_total','Sub-Total',0.0000,1),(438,146,'total','Total',0.0000,9),(440,147,'sub_total','Sub-Total',0.0000,1),(441,147,'total','Total',0.0000,9),(443,148,'sub_total','Sub-Total',0.0000,1),(444,148,'total','Total',0.0000,9),(446,149,'sub_total','Sub-Total',0.0000,1),(447,149,'total','Total',0.0000,9),(449,150,'sub_total','Sub-Total',0.0000,1),(450,150,'total','Total',0.0000,9),(452,151,'sub_total','Sub-Total',0.0000,1),(453,151,'total','Total',0.0000,9),(455,152,'sub_total','Sub-Total',0.0000,1),(456,152,'total','Total',0.0000,9),(458,153,'sub_total','Sub-Total',0.0000,1),(459,153,'total','Total',0.0000,9),(461,154,'sub_total','Sub-Total',0.0000,1),(462,154,'total','Total',0.0000,9),(464,155,'sub_total','Sub-Total',0.0000,1),(465,155,'total','Total',0.0000,9),(467,156,'sub_total','Sub-Total',0.0000,1),(468,156,'total','Total',0.0000,9),(470,157,'sub_total','Sub-Total',0.0000,1),(471,157,'total','Total',0.0000,9),(473,158,'sub_total','Sub-Total',0.0000,1),(474,158,'total','Total',0.0000,9),(476,159,'sub_total','Sub-Total',0.0000,1),(477,159,'total','Total',0.0000,9),(479,160,'sub_total','Sub-Total',0.0000,1),(480,160,'total','Total',0.0000,9),(482,161,'sub_total','Sub-Total',0.0000,1),(483,161,'total','Total',0.0000,9),(485,162,'sub_total','Sub-Total',0.0000,1),(486,162,'total','Total',0.0000,9),(488,163,'sub_total','Sub-Total',0.0000,1),(489,163,'total','Total',0.0000,9),(491,164,'sub_total','Sub-Total',0.0000,1),(492,164,'total','Total',0.0000,9),(494,165,'sub_total','Sub-Total',0.0000,1),(495,165,'total','Total',0.0000,9),(497,166,'sub_total','Sub-Total',0.0000,1),(498,166,'total','Total',0.0000,9),(500,167,'sub_total','Sub-Total',0.0000,1),(501,167,'total','Total',0.0000,9),(503,168,'sub_total','Sub-Total',0.0000,1),(504,168,'total','Total',0.0000,9);
/*!40000 ALTER TABLE `oc2_order_total` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_order_voucher`
--

DROP TABLE IF EXISTS `oc2_order_voucher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_order_voucher` (
  `order_voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  PRIMARY KEY (`order_voucher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_order_voucher`
--

LOCK TABLES `oc2_order_voucher` WRITE;
/*!40000 ALTER TABLE `oc2_order_voucher` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_order_voucher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_product`
--

DROP TABLE IF EXISTS `oc2_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `jan` varchar(13) NOT NULL,
  `isbn` varchar(17) NOT NULL,
  `mpn` varchar(64) NOT NULL,
  `location` varchar(128) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `stock_status_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `points` int(8) NOT NULL DEFAULT '0',
  `tax_class_id` int(11) NOT NULL,
  `date_available` date NOT NULL DEFAULT '0000-00-00',
  `weight` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `weight_class_id` int(11) NOT NULL DEFAULT '0',
  `length` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `width` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `height` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `length_class_id` int(11) NOT NULL DEFAULT '0',
  `subtract` tinyint(1) NOT NULL DEFAULT '1',
  `minimum` int(11) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `viewed` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `po_title` varchar(255) DEFAULT NULL,
  `po_model` varchar(255) DEFAULT NULL,
  `po_cost` decimal(15,4) DEFAULT NULL,
  `cost` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `qbname` varchar(255) DEFAULT '',
  `parent_id` int(11) DEFAULT NULL,
  `display_mode` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=90 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_product`
--

LOCK TABLES `oc2_product` WRITE;
/*!40000 ALTER TABLE `oc2_product` DISABLE KEYS */;
INSERT INTO `oc2_product` (`product_id`, `model`, `sku`, `upc`, `ean`, `jan`, `isbn`, `mpn`, `location`, `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`, `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`, `length_class_id`, `subtract`, `minimum`, `sort_order`, `status`, `viewed`, `date_added`, `date_modified`, `po_title`, `po_model`, `po_cost`, `cost`, `qbname`, `parent_id`, `display_mode`) VALUES (1,'Goi Dodu Bo Kho','','','','','','','',1,6,'catalog/products/fhd/',0,1,12.9500,0,0,'2017-10-24',0.00000000,5,0.00000000,0.00000000,0.00000000,3,1,1,1,1,0,'2017-10-24 00:05:55','2017-10-24 12:26:08','','',0.0000,0.0000,'',0,0),(2,'Goi Ngo Sen','','','','','','','',1,6,'catalog/products/fhd/',0,1,12.9500,0,0,'2017-10-24',0.00000000,5,0.00000000,0.00000000,0.00000000,3,1,1,2,1,3,'2017-10-24 00:08:21','2017-10-24 12:29:17','','',0.0000,0.0000,'',0,0),(3,'Goi Cuon Tom Thit','','','','','','','',1,6,'catalog/products/fhd/20170911-DSCF5532.jpg',0,1,13.5000,0,0,'2017-10-24',0.00000000,5,0.00000000,0.00000000,0.00000000,3,1,1,1,1,0,'2017-10-24 00:11:59','2018-08-25 13:51:04','','',0.0000,0.0000,'',0,0),(4,'Goi Cuon Ga Nuong','','','','','','','',1,6,'catalog/products/fhd/20170911-DSCF5532.jpg',0,1,12.6500,0,0,'2017-10-24',0.00000000,5,0.00000000,0.00000000,0.00000000,3,1,1,2,1,1,'2017-10-24 00:13:24','2018-08-25 13:51:23','','',0.0000,0.0000,'',0,0),(5,'Goi Cuon La Lop','','','','','','','',1,6,'catalog/products/fhd/20170911-DSCF5532.jpg',0,1,13.5000,0,0,'2017-10-24',0.00000000,5,0.00000000,0.00000000,0.00000000,3,1,1,3,1,2,'2017-10-24 00:14:40','2018-08-25 13:51:50','','',0.0000,0.0000,'',0,0),(6,'Goi Cuon Chay','','','','','','','',1,6,'catalog/products/fhd/20170911-DSCF5532.jpg',0,1,11.5000,0,0,'2017-10-24',0.00000000,5,0.00000000,0.00000000,0.00000000,3,1,1,4,1,0,'2017-10-24 00:15:45','2018-08-25 13:52:16','','',0.0000,0.0000,'',0,0),(7,'Goi Cuon Bo Nuong','','','','','','','',1,6,'catalog/products/fhd/20170911-DSCF5532.jpg',0,1,12.6500,0,0,'2017-10-24',0.00000000,5,0.00000000,0.00000000,0.00000000,3,1,1,5,1,0,'2017-10-24 00:16:59','2018-08-25 13:52:41','','',0.0000,0.0000,'',0,0),(8,'Cha Gio','','','','','','','',1,6,'catalog/products/fhd/20170911-DSCF5512.jpg',0,1,8.9500,0,0,'2017-10-24',0.00000000,5,0.00000000,0.00000000,0.00000000,3,1,1,1,1,3,'2017-10-24 00:18:08','2018-08-25 13:54:05','','',0.0000,0.0000,'',0,0),(9,'Cha Gio Chay','','','','','','','',1,6,'catalog/products/fhd/20170911-DSCF5512.jpg',0,1,8.9500,0,0,'2017-10-24',0.00000000,5,0.00000000,0.00000000,0.00000000,3,1,1,2,1,4,'2017-10-24 00:19:23','2018-08-25 13:54:32','','',0.0000,0.0000,'',0,0),(10,'Tom Chien Dua','','','','','','','',1,6,'catalog/products/fhd/',0,1,13.7500,0,0,'2017-10-24',0.00000000,5,0.00000000,0.00000000,0.00000000,3,1,1,3,1,4,'2017-10-24 00:20:32','2018-08-25 13:54:51','','',0.0000,0.0000,'',0,0),(11,'Green Onion Cake','','','','','','','',1,6,'catalog/products/fhd/',0,1,4.9500,0,0,'2017-10-24',0.00000000,5,0.00000000,0.00000000,0.00000000,3,1,1,4,1,0,'2017-10-24 00:22:18','2017-10-24 12:25:56','','',0.0000,0.0000,'',0,0),(12,'Pho-apas as in Tapas','','','','','','','',1,6,'catalog/products/fhd/',0,1,15.9500,0,0,'2017-10-24',0.00000000,5,0.00000000,0.00000000,0.00000000,3,1,1,7,1,2,'2017-10-24 00:23:24','2018-08-25 13:55:31','','',0.0000,0.0000,'',0,0),(13,'Panfried Dumplings','','','','','','','',1,6,'catalog/products/fhd/20170911-DSCF5556.jpg',0,1,8.7500,0,0,'2017-10-24',0.00000000,5,0.00000000,0.00000000,0.00000000,3,1,1,5,1,5,'2017-10-24 00:24:19','2017-10-24 12:33:33','','',0.0000,0.0000,'',0,0),(14,'Pho Dac Biet','','','','','','','',1,6,'catalog/products/fhd/20170911-DSCF5603.jpg',0,1,15.3500,0,0,'2017-10-24',0.00000000,5,0.00000000,0.00000000,0.00000000,3,1,1,1,1,4,'2017-10-24 00:25:35','2018-08-25 13:56:38','','',0.0000,0.0000,'',0,0),(15,'Pho Tai','','','','','','','',1,6,'catalog/products/fhd/20170911-DSCF5603.jpg',0,1,13.9500,0,0,'2017-10-24',0.00000000,5,0.00000000,0.00000000,0.00000000,3,1,1,2,1,4,'2017-10-24 00:26:33','2018-08-25 13:56:54','','',0.0000,0.0000,'',0,0),(16,'Pho Tai, Bo Vien','','','','','','','',1,6,'catalog/products/fhd/20170911-DSCF5603.jpg',0,1,14.4500,0,0,'2017-10-24',0.00000000,5,0.00000000,0.00000000,0.00000000,3,1,1,3,1,2,'2017-10-24 00:27:35','2018-08-25 14:10:11','','',0.0000,0.0000,'',0,0),(17,'Pho Tai Chin','','','','','','','',1,6,'catalog/products/fhd/20170911-DSCF5603.jpg',0,1,14.4500,0,0,'2017-10-24',0.00000000,5,0.00000000,0.00000000,0.00000000,3,1,1,4,1,3,'2017-10-24 00:28:49','2018-08-25 13:57:26','','',0.0000,0.0000,'',0,0),(18,'Pho Tai, Nam, Bo Vien','','','','','','','',1,6,'catalog/products/fhd/20170911-DSCF5603.jpg',0,1,14.4500,0,0,'2017-10-24',0.00000000,5,0.00000000,0.00000000,0.00000000,3,1,1,5,1,2,'2017-10-24 00:29:52','2018-08-25 13:57:59','','',0.0000,0.0000,'',0,0),(19,'Pho Chin','','','','','','','',1,6,'catalog/products/fhd/20170911-DSCF5603.jpg',0,1,14.2500,0,0,'2017-10-24',0.00000000,5,0.00000000,0.00000000,0.00000000,3,1,1,6,1,4,'2017-10-24 00:30:46','2018-08-25 13:57:09','','',0.0000,0.0000,'',0,0),(20,'Pho Ga','','','','','','','',1,6,'catalog/products/fhd/20170911-DSCF5603.jpg',0,1,14.2500,0,0,'2017-10-24',0.00000000,5,0.00000000,0.00000000,0.00000000,3,1,1,7,1,6,'2017-10-24 00:31:38','2018-08-25 14:06:55','','',0.0000,0.0000,'',0,0),(21,'Shrimp Pho','','','','','','','',1,6,'catalog/products/fhd/20170911-DSCF5603.jpg',0,1,15.3500,0,0,'2017-10-24',0.00000000,5,0.00000000,0.00000000,0.00000000,3,1,1,9,1,2,'2017-10-24 00:33:20','2018-08-25 13:57:44','','',0.0000,0.0000,'',0,0),(22,'Pho Bo Vien','','','','','','','',1,6,'catalog/products/fhd/20170911-DSCF5603.jpg',0,1,14.2500,0,0,'2017-10-24',0.00000000,5,0.00000000,0.00000000,0.00000000,3,1,1,8,1,4,'2017-10-24 00:34:23','2018-08-25 14:09:47','','',0.0000,0.0000,'',0,0),(23,'Tofu Pho ','','','','','','','',1,6,'catalog/products/fhd/20170911-DSCF5603.jpg',0,1,12.9500,0,0,'2017-10-24',0.00000000,5,0.00000000,0.00000000,0.00000000,3,1,1,10,1,4,'2017-10-24 00:35:31','2018-01-16 22:43:02','','',0.0000,0.0000,'',0,0),(24,' Hu Tieu Dac Biet','','','','','','','',1,6,'catalog/products/fhd/20170911-DSCF5664.jpg',0,1,16.7500,0,0,'2017-10-24',0.00000000,5,0.00000000,0.00000000,0.00000000,3,1,1,1,1,3,'2017-10-24 00:37:17','2018-08-25 13:59:21','','',0.0000,0.0000,'',0,0),(25,'Hu Tieu','','','','','','','',1,6,'catalog/products/fhd/20170911-DSCF5664.jpg',0,1,16.2500,0,0,'2017-10-24',0.00000000,5,0.00000000,0.00000000,0.00000000,3,1,1,2,1,6,'2017-10-24 00:38:19','2018-08-25 13:59:46','','',0.0000,0.0000,'',0,0),(26,'Hu Tieu Do Bien','','','','','','','',1,6,'catalog/products/fhd/20170911-DSCF5664.jpg',0,1,17.2500,0,0,'2017-10-24',0.00000000,5,0.00000000,0.00000000,0.00000000,3,1,1,3,1,5,'2017-10-24 00:39:12','2018-08-25 14:11:03','','',0.0000,0.0000,'',0,0),(27,'Hu Tieu Ga','','','','','','','',1,6,'catalog/products/fhd/20170911-DSCF5664.jpg',0,1,14.7500,0,0,'2017-10-24',0.00000000,5,0.00000000,0.00000000,0.00000000,3,1,1,4,1,10,'2017-10-24 00:40:14','2018-08-25 14:11:25','','',0.0000,0.0000,'',0,0),(28,'Hu Tieu Sate','','','','','','','',1,6,'catalog/products/fhd/20170911-DSCF5664.jpg',0,1,15.7500,0,0,'2017-10-24',0.00000000,5,0.00000000,0.00000000,0.00000000,3,1,1,5,1,1,'2017-10-24 00:41:08','2018-08-25 14:11:40','','',0.0000,0.0000,'',0,0),(29,'Hu Tieu Ca ','','','','','','','',1,6,'catalog/products/fhd/20170911-DSCF5664.jpg',0,1,15.7500,0,0,'2017-10-24',0.00000000,5,0.00000000,0.00000000,0.00000000,3,1,1,6,1,4,'2017-10-24 00:42:26','2018-08-25 14:12:00','','',0.0000,0.0000,'',0,0),(30,'Veggie Pho','','','','','','','',1,6,'catalog/products/fhd/20170911-DSCF5603.jpg',0,1,13.7500,0,0,'2017-10-24',0.00000000,5,0.00000000,0.00000000,0.00000000,3,1,1,11,1,11,'2017-10-24 00:44:44','2018-08-25 14:12:15','','',0.0000,0.0000,'',0,0),(31,'Ca-ri Ga ','','','','','','','',1,6,'catalog/products/fhd/',0,1,16.7500,0,0,'2017-10-24',0.00000000,5,0.00000000,0.00000000,0.00000000,3,1,1,1,1,5,'2017-10-24 00:45:53','2018-08-25 14:14:15','','',0.0000,0.0000,'',0,0),(32,'Banh Mi Sate','','','','','','','',1,6,'catalog/products/fhd/',0,1,12.9500,0,0,'2017-10-24',0.00000000,5,0.00000000,0.00000000,0.00000000,3,1,1,9,1,2,'2017-10-24 00:46:45','2018-08-25 14:14:31','','',0.0000,0.0000,'',0,0),(33,'Bo Khu','','','','','','','',1,6,'catalog/products/fhd/',0,1,14.7500,0,0,'2017-10-24',0.00000000,5,0.00000000,0.00000000,0.00000000,3,1,1,2,1,3,'2017-10-24 00:47:43','2018-01-07 20:35:07','','',0.0000,0.0000,'',0,0),(34,'Bun Bo Hue','','','','','','','',1,6,'catalog/products/fhd/20170911-DSCF5701.jpg',0,1,16.2500,0,0,'2017-10-24',0.00000000,5,0.00000000,0.00000000,0.00000000,3,1,1,3,1,2,'2017-10-24 00:48:54','2018-08-25 14:22:22','','',0.0000,0.0000,'',0,0),(35,'Bun Thit Nuong Cha Gio','','','','','','','',1,6,'catalog/products/fhd/20170911-DSCF5701.jpg',0,1,16.9500,0,0,'2017-10-24',0.00000000,5,0.00000000,0.00000000,0.00000000,3,1,1,1,1,2,'2017-10-24 00:49:42','2018-08-25 14:22:56','','',0.0000,0.0000,'',0,0),(36,' Bun Thit Nuong, Tom Nuong, Cha Gio','','','','','','','',1,6,'catalog/products/fhd/20170911-DSCF5701.jpg',0,1,18.6500,0,0,'2017-10-24',0.00000000,5,0.00000000,0.00000000,0.00000000,3,1,1,2,1,0,'2017-10-24 00:50:43','2018-08-25 14:23:56','','',0.0000,0.0000,'',0,0),(37,'Bun Ga Nuong Sa, Cha Gio','','','','','','','',1,6,'catalog/products/fhd/20170911-DSCF5701.jpg',0,1,16.9500,0,0,'2017-10-24',0.00000000,5,0.00000000,0.00000000,0.00000000,3,1,1,3,1,0,'2017-10-24 00:51:35','2018-08-25 14:24:55','','',0.0000,0.0000,'',0,0),(38,'Bun Tom Nuong Cha Gio','','','','','','','',1,6,'catalog/products/fhd/20170911-DSCF5701.jpg',0,1,18.6500,0,0,'2017-10-24',0.00000000,5,0.00000000,0.00000000,0.00000000,3,1,1,4,1,1,'2017-10-24 00:52:23','2018-08-25 14:25:10','','',0.0000,0.0000,'',0,0),(39,'Bo Nuong La Lop, Tom Nuong, Cha Gio','','','','','','','',1,6,'catalog/products/fhd/20170911-DSCF5701.jpg',0,1,18.6500,0,0,'2017-10-24',0.00000000,5,0.00000000,0.00000000,0.00000000,3,1,1,6,1,1,'2017-10-24 00:53:20','2018-08-25 14:26:18','','',0.0000,0.0000,'',0,0),(40,' Bun Dau Hu Chay, Cha Gio Chay','','','','','','','',1,6,'catalog/products/fhd/20170911-DSCF5701.jpg',0,1,16.4500,0,0,'2017-10-24',0.00000000,5,0.00000000,0.00000000,0.00000000,3,1,1,7,1,0,'2017-10-24 00:54:20','2018-08-25 14:26:34','','',0.0000,0.0000,'',0,0),(41,'Meat Lover Bowl','','','','','','','',1,6,'catalog/products/fhd/20170911-DSCF5701.jpg',0,1,18.6500,0,0,'2017-10-24',0.00000000,5,0.00000000,0.00000000,0.00000000,3,1,1,8,1,0,'2017-10-24 00:55:16','2018-08-25 14:30:10','','',0.0000,0.0000,'',0,0),(88,' Extra Spring Roll ','','','','','','','',1,6,'catalog/products/fhd/',0,1,1.8500,0,0,'2017-10-24',0.00000000,5,0.00000000,0.00000000,0.00000000,3,1,1,1,0,0,'2018-01-17 01:00:39','0000-00-00 00:00:00',NULL,NULL,NULL,0.0000,'',NULL,0),(44,'Pan-Fried Spicy Curry Tofu','','','','','','','',1,6,'catalog/products/fhd/',0,1,15.9500,0,0,'2017-10-24',0.00000000,5,0.00000000,0.00000000,0.00000000,3,1,1,1,1,1,'2017-10-24 00:57:09','2018-08-25 14:30:26','','',0.0000,0.0000,'',0,0),(45,'Pan-Fried Spicy Curry Lemongrass Chicken','','','','','','','',1,6,'catalog/products/fhd/',0,1,16.9500,0,0,'2017-10-24',0.00000000,5,0.00000000,0.00000000,0.00000000,3,1,1,1,1,1,'2017-10-24 00:57:55','2018-08-25 14:30:47','','',0.0000,0.0000,'',0,0),(46,'Pan-Fried Spicy Curry Lemongrass Jumbo Prawns  ','','','','','','','',1,6,'catalog/products/fhd/',0,1,18.9500,0,0,'2017-10-24',0.00000000,5,0.00000000,0.00000000,0.00000000,3,1,1,1,1,5,'2017-10-24 00:58:43','2018-08-25 14:31:18','','',0.0000,0.0000,'',0,0),(47,'Com Suong Nuong','','','','','','','',1,6,'catalog/products/fhd/',0,1,17.9500,0,0,'2017-10-24',0.00000000,5,0.00000000,0.00000000,0.00000000,3,1,1,1,1,3,'2017-10-24 01:00:16','2018-08-25 14:33:26','','',0.0000,0.0000,'',0,0),(48,'Com Bo Luc Lac','','','','','','','',1,6,'catalog/products/fhd/',0,1,18.9500,0,0,'2017-10-24',0.00000000,5,0.00000000,0.00000000,0.00000000,3,1,1,1,1,2,'2017-10-24 01:01:10','2018-08-25 14:34:01','','',0.0000,0.0000,'',0,0),(49,'Bun Rieu','','','','','','','',1,6,'catalog/products/fhd/',0,1,14.9500,0,0,'2017-10-24',0.00000000,5,0.00000000,0.00000000,0.00000000,3,1,1,7,1,4,'2017-10-24 01:02:13','2018-08-25 14:34:23','','',0.0000,0.0000,'',0,0),(50,'Grilled Steak Sandwich with Mixed Vegetables','','','','','','','',1,6,'catalog/products/fhd/',0,1,17.8500,0,0,'2017-10-24',0.00000000,5,0.00000000,0.00000000,0.00000000,3,1,1,1,1,1,'2017-10-24 01:02:44','2018-01-09 22:49:31','','',0.0000,0.0000,'',0,0),(51,'Grilled Salmon on Rice with Mixed Vegetables','','','','','','','',1,6,'catalog/products/fhd/',0,1,17.8500,0,0,'2017-10-24',0.00000000,5,0.00000000,0.00000000,0.00000000,3,1,1,1,1,5,'2017-10-24 01:03:14','2018-01-09 22:49:52','','',0.0000,0.0000,'',0,0),(52,'BBQ Pork Fried Rice ','','','','','','','',1,6,'catalog/products/fhd/',0,1,13.7500,0,0,'2017-10-24',0.00000000,5,0.00000000,0.00000000,0.00000000,3,1,1,7,1,5,'2017-10-24 01:03:47','2018-08-25 14:35:37','','',0.0000,0.0000,'',0,0),(54,'BBQ Pork Salad Roll','','','','','','','',1,6,'catalog/products/fhd/',0,1,13.2500,0,0,'2017-10-24',0.00000000,5,0.00000000,0.00000000,0.00000000,3,1,1,6,1,1,'2017-10-24 01:05:44','2018-08-25 13:53:48','','',0.0000,0.0000,'',0,0),(55,'BBQ Pork Skewers Vermicelli Bowl','','','','','','','',1,6,'catalog/products/fhd/',0,1,15.4500,0,0,'2017-10-24',0.00000000,5,0.00000000,0.00000000,0.00000000,3,1,1,9,1,0,'2017-10-24 01:06:04','2018-01-17 22:50:30','','',0.0000,0.0000,'',0,0),(57,'BBQ Pork Shanghai Noodles','','','','','','','',1,6,'catalog/products/fhd/',0,1,13.7500,0,0,'2017-10-24',0.00000000,5,0.00000000,0.00000000,0.00000000,3,1,1,8,1,3,'2017-10-24 01:07:30','2018-08-25 14:37:02','','',0.0000,0.0000,'',0,0),(58,'Chicken Fried Rice','','','','','','','',1,6,'catalog/products/fhd/',0,1,13.7500,0,0,'2017-10-24',0.00000000,5,0.00000000,0.00000000,0.00000000,3,1,1,6,1,10,'2017-10-24 01:08:08','2018-08-25 14:35:58','','',0.0000,0.0000,'',0,0),(60,'Jasmine Rice','','','','','','','',1,6,'catalog/products/fhd/',0,1,2.5000,0,0,'2017-10-24',0.00000000,5,0.00000000,0.00000000,0.00000000,3,1,1,6,1,2,'2017-10-24 01:09:12','2018-01-16 22:29:33','','',0.0000,0.0000,'',0,0),(61,' Extra Salad Roll ','','','','','','','',1,6,'catalog/products/fhd/',0,1,3.0000,0,0,'2017-10-24',0.00000000,5,0.00000000,0.00000000,0.00000000,3,1,1,1,1,0,'2017-10-24 01:09:34','2018-01-17 01:01:02','','',0.0000,0.0000,'',0,0),(62,'Extra Meat in Soup','','','','','','','',1,6,'catalog/products/fhd/',0,1,3.5000,0,0,'2017-10-24',0.00000000,5,0.00000000,0.00000000,0.00000000,3,1,1,2,1,0,'2017-10-24 01:09:56','2018-08-25 14:38:57','','',0.0000,0.0000,'',0,0),(63,'Extra Noodles','','','','','','','',1,6,'catalog/products/fhd/',0,1,1.7500,0,0,'2017-10-24',0.00000000,5,0.00000000,0.00000000,0.00000000,3,1,1,3,1,1,'2017-10-24 01:10:21','2018-08-25 14:38:05','','',0.0000,0.0000,'',0,0),(64,' Extra Beef or Chicken Skewer','','','','','','','',1,6,'catalog/products/fhd/',0,1,3.8500,0,0,'2017-10-24',0.00000000,5,0.00000000,0.00000000,0.00000000,3,1,1,4,1,0,'2017-10-24 01:11:18','2018-08-25 14:37:36','','',0.0000,0.0000,'',0,0),(66,'Extra Jumbo Prawn each','','','','','','','',1,6,'catalog/products/fhd/',0,1,1.7500,0,0,'2017-10-24',0.00000000,5,0.00000000,0.00000000,0.00000000,3,1,1,5,1,0,'2017-10-24 01:12:43','2017-10-24 12:24:50','','',0.0000,0.0000,'',0,0),(67,'Small Side Order Broth ','','','','','','','',1,6,'catalog/products/fhd/',0,1,3.0000,0,0,'2017-10-24',0.00000000,5,0.00000000,0.00000000,0.00000000,3,1,1,7,1,0,'2017-10-24 01:13:10','2018-08-25 14:38:26','','',0.0000,0.0000,'',0,0),(68,' Vietnamese Coffee','','','','','','','',1,6,'catalog/products/fhd/',0,1,5.2500,0,0,'2017-10-24',0.00000000,5,0.00000000,0.00000000,0.00000000,3,1,1,1,1,4,'2017-10-24 01:14:12','2017-10-24 12:18:24','','',0.0000,0.0000,'',0,0),(69,' Green Tea','','','','','','','',1,6,'catalog/products/fhd/',0,1,1.5000,0,0,'2017-10-24',0.00000000,5,0.00000000,0.00000000,0.00000000,3,1,1,3,1,1,'2017-10-24 01:15:33','2017-10-24 12:07:47','','',0.0000,0.0000,'',0,0),(70,' Hot Sake','','','','','','','',1,6,'catalog/products/fhd/',0,1,7.2500,0,0,'2017-10-24',0.00000000,5,0.00000000,0.00000000,0.00000000,3,1,1,4,1,3,'2017-10-24 01:16:30','2018-01-04 11:08:42','','',0.0000,0.0000,'',0,0),(71,' Hot Sake','','','','','','','',1,6,'catalog/products/fhd/',0,1,11.5000,0,0,'2017-10-24',0.00000000,5,0.00000000,0.00000000,0.00000000,3,1,1,5,1,2,'2017-10-24 01:16:55','2018-01-04 11:09:06','','',0.0000,0.0000,'',0,0),(72,'Vietnamese Iced Coffee','','','','','','','',1,6,'catalog/products/fhd/',0,1,5.2500,0,0,'2017-10-24',0.00000000,5,0.00000000,0.00000000,0.00000000,3,1,1,2,1,2,'2017-10-24 01:18:23','2017-12-13 00:16:16','','',0.0000,0.0000,'',0,0),(73,'Mango Slush','','','','','','','',1,6,'catalog/products/fhd/',0,1,5.0000,0,0,'2017-10-24',0.00000000,5,0.00000000,0.00000000,0.00000000,3,1,1,30,1,0,'2017-10-24 01:23:51','2017-10-24 12:30:05','','',0.0000,0.0000,'',0,0),(74,'Jackfruit Slush','','','','','','','',1,6,'catalog/products/fhd/',0,1,5.0000,0,0,'2017-10-24',0.00000000,5,0.00000000,0.00000000,0.00000000,3,1,1,32,1,2,'2017-10-24 01:24:27','2017-10-24 12:28:24','','',0.0000,0.0000,'',0,0),(75,'Lychee Slush','','','','','','','',1,6,'catalog/products/fhd/',0,1,5.0000,0,0,'2017-10-24',0.00000000,5,0.00000000,0.00000000,0.00000000,3,1,1,31,1,1,'2017-10-24 01:24:56','2017-10-24 12:29:36','','',0.0000,0.0000,'',0,0),(76,'Mango Shake','','','','','','','',1,6,'catalog/products/fhd/',0,1,5.7500,0,0,'2017-10-24',0.00000000,5,0.00000000,0.00000000,0.00000000,3,1,1,50,1,3,'2017-10-24 01:25:26','2017-10-24 12:29:52','','',0.0000,0.0000,'',0,0),(77,'Avocado Shake','','','','','','','',1,6,'catalog/products/fhd/',0,1,5.7500,0,0,'2017-10-24',0.00000000,5,0.00000000,0.00000000,0.00000000,3,1,1,54,1,1,'2017-10-24 01:25:50','2017-10-24 12:19:10','','',0.0000,0.0000,'',0,0),(78,'Jackfruit Shake','','','','','','','',1,6,'catalog/products/fhd/',0,1,5.7500,0,0,'2017-10-24',0.00000000,5,0.00000000,0.00000000,0.00000000,3,1,1,52,1,4,'2017-10-24 01:26:14','2017-10-24 12:28:14','','',0.0000,0.0000,'',0,0),(79,'Lychee Shake','','','','','','','',1,6,'catalog/products/fhd/',0,1,5.7500,0,0,'2017-10-24',0.00000000,5,0.00000000,0.00000000,0.00000000,3,1,1,51,1,1,'2017-10-24 01:26:40','2017-10-24 12:29:27','','',0.0000,0.0000,'',0,0),(80,'Coconut Shake','','','','','','','',1,6,'catalog/products/fhd/',0,1,5.7500,0,0,'2017-10-24',0.00000000,5,0.00000000,0.00000000,0.00000000,3,1,1,53,1,1,'2017-10-24 01:28:01','2017-10-24 12:22:34','','',0.0000,0.0000,'',0,0),(81,'Mango Pudding','','','','','','','',1,6,'catalog/products/fhd/',0,1,3.8500,0,0,'2017-10-24',0.00000000,5,0.00000000,0.00000000,0.00000000,3,1,1,1,1,1,'2017-10-24 01:28:24','2017-10-24 12:29:44','','',0.0000,0.0000,'',0,0),(82,'Coconut Pudding ','','','','','','','',1,6,'catalog/products/fhd/',0,1,3.8500,0,0,'2017-10-24',0.00000000,5,0.00000000,0.00000000,0.00000000,3,1,1,2,1,2,'2017-10-24 01:28:49','2017-10-24 12:22:41','','',0.0000,0.0000,'',0,0),(83,'Deep Fried Ice Cream','','','','','','','',1,6,'catalog/products/fhd/',0,1,4.2500,0,0,'2017-10-24',0.00000000,5,0.00000000,0.00000000,0.00000000,3,1,1,3,1,3,'2017-10-24 01:29:19','2017-10-24 12:21:38','','',0.0000,0.0000,'',0,0),(84,'Deep Fried Banana','','','','','','','',1,6,'catalog/products/fhd/',0,1,4.2500,0,0,'2017-10-24',0.00000000,5,0.00000000,0.00000000,0.00000000,3,1,1,4,1,1,'2017-10-24 01:29:43','2017-10-24 12:21:33','','',0.0000,0.0000,'',0,0),(85,'BBQ Pork Appetizer','','','','','','','',1,6,'catalog/products/fhd/',0,1,13.5000,0,0,'2017-10-24',0.00000000,5,0.00000000,0.00000000,0.00000000,3,1,1,6,0,0,'2018-01-04 11:14:10','2018-08-25 13:55:52',NULL,NULL,NULL,0.0000,'',NULL,0),(89,'Four Pork Skewers on Rice with Vegetables','','','','','','','',1,6,'catalog/products/fhd/',0,1,16.9500,0,0,'2017-10-24',0.00000000,5,0.00000000,0.00000000,0.00000000,3,1,1,5,1,4,'2018-01-17 22:35:21','2018-08-25 14:29:31',NULL,NULL,NULL,0.0000,'',NULL,0),(87,'Bun Tom Nuong Cha Gio','','','','','','','',1,6,'catalog/products/fhd/20170911-DSCF5701.jpg',0,1,17.6500,0,0,'2017-10-24',0.00000000,5,0.00000000,0.00000000,0.00000000,3,1,1,5,1,0,'2018-01-09 22:58:33','2018-08-25 14:25:59',NULL,NULL,NULL,0.0000,'',NULL,0);
/*!40000 ALTER TABLE `oc2_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_product_attribute`
--

DROP TABLE IF EXISTS `oc2_product_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`product_id`,`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_product_attribute`
--

LOCK TABLES `oc2_product_attribute` WRITE;
/*!40000 ALTER TABLE `oc2_product_attribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_product_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_product_description`
--

DROP TABLE IF EXISTS `oc2_product_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_product_description` (
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `tag` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`product_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_product_description`
--

LOCK TABLES `oc2_product_description` WRITE;
/*!40000 ALTER TABLE `oc2_product_description` DISABLE KEYS */;
INSERT INTO `oc2_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES (1,1,'Green Papaya Salad with Beef Jerky','&lt;p&gt;In a Vietnamese kitchen green papaya is treated like a vegetable rather than a fruit.&amp;nbsp; The flavour of the young fruit is subtle and crunchy, which gives it a perfect base for the wonderful aromatic &quot;nuoc mum&quot; (fish sauce) dressing.&amp;nbsp; Shredded Papaya, Shredded Carrots, Vietnamese Coriander, Basil, Vietnamese Beef Jerky and Roasted Peanuts.&lt;br&gt;&lt;/p&gt;','','Green Papaya Salad with Beef Jerky','',''),(2,1,'Lotus Root Salad','&lt;p&gt;Originating in Saigon this is a house specialty.&amp;nbsp; White tree fungus is soaked in water to soften and is then chopped and added to this delectable lotus root salad.&amp;nbsp; Once, long ago, white tree fungus was only reserved for Vietnamese royalty and the very wealthy because of the cost.&amp;nbsp; Today it is more affordable and the crunchy texture and gelatinous, mild flavour in this salad is truly delicious and not to be missed.&amp;nbsp; Lotus Root, Carrots, Daikon Radish, Basil, Lime, Fish Sauce, White Ear Fungus, Tender Pork Slivers and Shrimp topped with Roasted Peanuts.&lt;/p&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;','','Lotus Root Salad','',''),(3,1,'Pork and Shrimp Salad Rolls','&lt;p&gt;Vermicelli, Cilantro, Bean Sprouts, Lettuce, Pork and Shrimp&lt;br&gt;&lt;/p&gt;','','Pork and Shrimp Salad Rolls','',''),(4,1,'Grilled Chicken Salad Rolls','&lt;p&gt;Vermicelli, Cilantro, Bean Sprouts, Cucumber, Lettuce and Carrot&lt;br&gt;&lt;/p&gt;','','Grilled Chicken Salad Rolls','',''),(5,1,'Grilled La Lop Salad Rolls','&lt;p&gt;Grilled La Lop Leaves wrapped around Spiced Ground Beef, Vermicelli, Cilantro, Bean Sprouts, Cucumber and Lettuce&lt;br&gt;&lt;/p&gt;','','Grilled La Lop Salad Rolls','',''),(6,1,'Vegetarian Salad Rolls','&lt;p&gt;Vermicelli, Cilantro, Bean Sprouts, Cucumber, Lettuce and Carrot&lt;br&gt;&lt;/p&gt;','','Vegetarian Salad Rolls','',''),(7,1,'Grilled Beef Salad Rolls','&lt;p&gt;Vermicelli, Cilantro, Bean Sprouts, Cucumber, Lettuce and Carrot&lt;br&gt;&lt;/p&gt;','','Grilled Beef Salad Rolls','',''),(8,1,'Spring Rolls','&lt;p&gt;Pork, Shrimp, Crab Meat, Carrots, Taro Root, Cellophane Noodles and Onions&lt;br&gt;&lt;/p&gt;','','Spring Rolls','',''),(9,1,'Vegetarian Spring Rolls','&lt;p&gt;Carrots, Taro Root, Cellophane Noodle, Onions and Tofu&lt;br&gt;&lt;/p&gt;','','Vegetarian Spring Rolls','',''),(10,1,'Coconut Shrimp','&lt;p&gt;Crisp Breaded Coconut Prawns Served with Sweet Chili Sauce&lt;br&gt;&lt;/p&gt;','','Coconut Shrimp','',''),(11,1,'Green Onion Cake','','','Green Onion Cake','',''),(12,1,' &quot;Pho-apas&quot; as in &quot;Tapas&quot;','&lt;p&gt;An Extraordinary Combination of our Appetizers that consists of Fluffy Green Onion Cakes with Minced Chicken, Crispy Spring Rolls and Sweet Coconut Prawns&lt;br&gt;&lt;/p&gt;','',' &quot;Pho-apas&quot; as in &quot;Tapas&quot;','',''),(13,1,'Panfried Dumplings','&lt;p&gt;Pork, Suchoy&lt;br&gt;&lt;/p&gt;','','Panfried Dumplings','',''),(14,1,'Mother Pho','&lt;p&gt;Rare Steak, Brisket, Flank, Tendon, Beef Balls and Tripe&lt;br&gt;&lt;/p&gt;','','Mother Pho','',''),(15,1,'Pho Real','&lt;p&gt;Rare Steak&lt;br&gt;&lt;/p&gt;','','Pho Real','',''),(16,1,'Phonomenon','&lt;p&gt;Rare Steak and Beef Balls&lt;br&gt;&lt;/p&gt;','','Phonomenon','',''),(17,1,'Phovarite','&lt;p&gt;&amp;nbsp;Rare Beef and Brisket&lt;br&gt;&lt;/p&gt;','','Phovarite','',''),(18,1,'Pho Shizzle','&lt;p&gt;Flank, Rare Steak, and Beef Balls&lt;br&gt;&lt;/p&gt;','','Pho Shizzle?','',''),(19,1,'Pholicious','&lt;p&gt;Well Done Steak&lt;br&gt;&lt;/p&gt;','','Pholicious','',''),(20,1,'Pho Out Fowl','&lt;p&gt;Chicken Pho&lt;br&gt;&lt;/p&gt;','','Pho Out Fowl','',''),(21,1,'Shrimp Pho','&lt;p&gt;Shrimp&lt;br&gt;&lt;/p&gt;','','Shrimp Pho','',''),(22,1,' Photastic','&lt;p&gt;Beef Balls&lt;br&gt;&lt;/p&gt;','',' Photastic','',''),(23,1,'Tofu Pho ','&lt;p&gt;Tofu&lt;br&gt;&lt;/p&gt;','','Tofu Pho ','',''),(24,1,'Special','&lt;p&gt;Shrimp, Squid, Pork and Chicken&lt;br&gt;&lt;/p&gt;','','Special','',''),(25,1,'Original','&lt;p&gt;Pork and Shrimp&lt;br&gt;&lt;/p&gt;','','Original','',''),(27,1,'Chicken','&lt;p&gt;Tender Chicken Breast&lt;br&gt;&lt;/p&gt;','','Chicken','ChickenChicken',''),(28,1,'Chicken','&lt;p&gt;&amp;nbsp;Chicken in a Sate Hu Tieu Broth&lt;br&gt;&lt;/p&gt;','','Chicken','',''),(29,1,'Salmon','Salmon, Baby Spinach, Chives, Shallots','','Salmon','',''),(30,1,'Veggie Pho','','','Veggie Pho','',''),(31,1,'Vietnamese Chicken Curry Noodle Soup','&lt;p&gt;&amp;nbsp;A blend of Mild Curry Spices, Coconut Milk and a hint of Lemongrass are infused in a Broth-like Consistency with Potatoes, Carrots and Chicken&lt;br&gt;&lt;/p&gt;','','Vietnamese Chicken Curry Noodle Soup','',''),(32,1,'Vietnamese Sate Sub','&lt;p&gt;Sate Beef or Chicken, Pickled Daikon and Carrots, Fresh Cucumbers and Cilantro tucked into a Toasted Baguette, moistened with Creamy Butter&lt;br&gt;&lt;/p&gt;','','Vietnamese Sate Sub','',''),(34,1,'Spicy Rice Noodle Soup','&lt;p&gt;This Chili Infused Beef Broth along with Citrus Tones of Lemongrass will arouse your taste buds!&amp;nbsp; Served with Thick Rice Noodles, Brisket, Shank, Pork and Homemade Vietnamese Sausage (Cha Hue).&lt;br&gt;&lt;/p&gt;','','Spicy Hue Noodle Soup','',''),(38,1,'Grilled Lemongrass Chicken and Jumbo Prawns Bowl','&lt;p&gt;Grilled Lemongrass Chicken, Jumbo Prawns with Spring Rolls&lt;br&gt;&lt;/p&gt;','','Grilled Lemongrass Chicken and Jumbo Prawns Bowl','',''),(41,1,'Meat Lover Bowl','&lt;p&gt;Grilled Jumbo Prawns, Beef, and Chicken with Spring Rolls&lt;br&gt;&lt;/p&gt;','','Meat Lover Bowl','',''),(88,1,' Extra Spring Roll ','','',' Extra Spring Roll ','',''),(89,1,'Four Pork Skewers on Rice with Vegetables','','','Four Pork Skewers on Rice with Vegetables','',''),(44,1,'Pan-Fried Spicy Curry Tofu','&lt;p&gt;Served with steamed Jasmine Rice and can be made Mild, Medium Hot, or Very Spicy&lt;br&gt;&lt;/p&gt;','','Pan-Fried Spicy Curry Tofu','',''),(45,1,'Pan-Fried Spicy Curry Lemongrass Chicken','&lt;p&gt;Served with steamed Jasmine Rice and can be made Mild, Medium Hot, or Very Spicy&lt;br&gt;&lt;/p&gt;','','Pan-Fried Spicy Curry Lemongrass Chicken','',''),(46,1,'Pan-Fried Spicy Curry Lemongrass Jumbo Prawns  ','&lt;p&gt;Served with steamed Jasmine Rice and can be made Mild, Medium Hot, or Very Spicy&lt;br&gt;&lt;/p&gt;','','Pan-Fried Spicy Curry Lemongrass Jumbo Prawns  ','',''),(47,1,'Pork Chop with Rice','&lt;p&gt;Grilled Lemongrass pork chop, spring roll (Extra Egg $1.00)&lt;br&gt;&lt;/p&gt;','','Pork Chop with Rice','',''),(48,1,'Beef Tenderloin','&lt;p&gt;Served with rice, Beef tenderloin stir-fried with Sake sauce, mushroom, bell pepper, onion&lt;br&gt;&lt;/p&gt;','','Beef Tenderloin','',''),(49,1,'Crabmeat','&lt;p&gt;A flavourful combination of crabmeat, shrimp and egg nestled in a rich tomato and chicken broth soup.&amp;nbsp; Our wonderful rendition of Bun Rieu is from North Vietnam&lt;br&gt;&lt;/p&gt;','','Crabmeat Vermicelli Noodle Soup','',''),(50,1,'Grilled Steak Sandwich with Mixed Vegetables','','','Grilled Steak Sandwich with Mixed Vegetables','',''),(51,1,'Grilled Salmon on Rice with Mixed Vegetables','','','Grilled Salmon on Rice with Mixed Vegetables','',''),(52,1,'BBQ Pork Fried Rice ','','','BBQ Pork Fried Rice ','',''),(55,1,'BBQ Pork Skewers Bowl','BBQ Pork on Vericelli','','BBQ Pork Skewers Vermicelli Bowl','',''),(58,1,'Chicken Fried Rice','','','Chicken Fried Rice','',''),(60,1,'Jasmine Rice','','','Jasmine Rice','',''),(61,1,' Extra Salad Roll ','','',' Extra Salad Roll ','',''),(62,1,'Extra Meat in Soup','','','Extra Meat in Soup','',''),(63,1,'Extra Noodles','','','Extra Noodles','',''),(64,1,' Extra Beef or Chicken Skewer','','',' Extra Beef or Chicken Skewer','',''),(57,1,'BBQ Pork Shanghai Noodles','','','BBQ Pork Shanghai Noodles','',''),(66,1,'Extra Jumbo Prawn each','','','Extra Jumbo Prawn each','',''),(67,1,'Small Side Order Broth ','','','Small Side Order Broth ','',''),(68,1,' Vietnamese Coffee','&lt;p&gt;Vietnam is not normally associated as being the second largest exporter of coffee in the world, but once you\'ve tried Vietnamese coffee you will certainly understand why.&amp;nbsp; It is rich, robust and aromatic.&amp;nbsp; We proudly bring you other delicious coffee varieties from the highlands of Vietnam.&lt;/p&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;','',' Vietnamese Coffee','',''),(69,1,' Green Tea','&lt;p&gt;$1.50/person&lt;/p&gt;','',' Green Tea','',''),(70,1,' Hot Sake - Small','&lt;p&gt;Small&lt;/p&gt;','',' Hot Sake - Small','',''),(71,1,' Hot Sake - Medium','&lt;p&gt;Medium&lt;/p&gt;','',' Hot Sake - Medium','',''),(72,1,'Vietnamese Iced Coffee','','','Vietnamese Iced Coffee','',''),(73,1,'Mango Slush','','','Mango Slush','',''),(74,1,'Jackfruit Slush','','','Jackfruit Slush','',''),(75,1,'Lychee Slush','','','Lychee Slush','',''),(76,1,'Mango Shake','','','Mango Shake','',''),(77,1,'Avocado Shake','','','Avocado Shake','',''),(78,1,'Jackfruit Shake','','','Jackfruit Shake','',''),(79,1,'Lychee Shake','','','Lychee Shake','',''),(80,1,'Coconut Shake','','','Coconut Shake','',''),(81,1,'Mango Pudding','','','Mango Pudding','',''),(82,1,'Coconut Pudding ','','','Coconut Pudding ','',''),(83,1,'Deep Fried Ice Cream','','','Deep Fried Ice Cream','',''),(84,1,'Deep Fried Banana','','','Deep Fried Banana','',''),(85,1,'BBQ Pork Appetizer','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','','BBQ Pork Appetizer','',''),(26,1,'Seafood','&lt;p&gt;&amp;nbsp;Shrimp, Scallops, and Squid&lt;br&gt;&lt;/p&gt;','','Seafood','',''),(54,1,'BBQ Pork Salad Roll','&lt;p&gt;Vermicelli, Cilantro, Bean Sprouts, Cucumber, Lettuce, and Carrot&lt;/p&gt;','','BBQ Pork Salad Roll','',''),(33,1,'Vietnamese Beef Stew Rice Noodle Soup','&lt;p&gt;A Fragrant Blend of Star Anise, Lemongrass, Carrots and Tender Beef Briskey in a Rich Tomato Broth served with Rice Noodles&lt;br&gt;&lt;/p&gt;','','Vietnamese Beef Stew Rice Noodle Soup','',''),(35,1,'Grilled Beef Bowl','&lt;p&gt;Grilled Beef with Spring Rolls on Vermicelli&lt;br&gt;&lt;/p&gt;','','Grilled Beef Bowl','',''),(36,1,'Grilled Beef and Jumbo Prawns Bowl','&lt;p&gt;Grilled Beef, Jumbo Prawns with Spring Rolls&lt;br&gt;&lt;/p&gt;','','Grilled Beef and Jumbo Prawns Bowl','',''),(37,1,'Grilled Lemongrass Chicken Bowl','&lt;p&gt;Grilled Lemongrass Chicken with Spring Rolls on Vermicelli&lt;br&gt;&lt;/p&gt;','','Grilled Lemongrass Chicken Bowl','',''),(39,1,'Grilled La Lop &amp; Prawns Bowl','&lt;p&gt;Grilled La Lop Leaves wrapped around Spiced Ground Beef, Jumbo Prawns and Spring Rolls on Vermicelli&lt;br&gt;&lt;/p&gt;','','Grilled La Lop &amp; Prawns Bowl','',''),(87,1,'Grilled Jumbo Prawns Bowl','&lt;p&gt;Grilled Jumbo Prawns with Spring Rolls on Vermicelli&lt;br&gt;&lt;/p&gt;','','Grilled Jumbo Prawns Bowl','',''),(40,1,'Fried Tofu Bowl','&lt;p&gt;Fried Tofu and Vegetarian Spring Rolls on Vermicelli.&amp;nbsp; This Delectable Dish will satisfy even the most Discriminating Vegetarians.&amp;nbsp; Served with Chili and Lime Soy Sauce.&lt;br&gt;&lt;/p&gt;','','Tofu Bowl','','');
/*!40000 ALTER TABLE `oc2_product_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_product_discount`
--

DROP TABLE IF EXISTS `oc2_product_discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_product_discount` (
  `product_discount_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `packs` varchar(20) NOT NULL,
  PRIMARY KEY (`product_discount_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_product_discount`
--

LOCK TABLES `oc2_product_discount` WRITE;
/*!40000 ALTER TABLE `oc2_product_discount` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_product_discount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_product_filter`
--

DROP TABLE IF EXISTS `oc2_product_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_product_filter` (
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_product_filter`
--

LOCK TABLES `oc2_product_filter` WRITE;
/*!40000 ALTER TABLE `oc2_product_filter` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_product_filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_product_image`
--

DROP TABLE IF EXISTS `oc2_product_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_product_image` (
  `product_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_image_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_product_image`
--

LOCK TABLES `oc2_product_image` WRITE;
/*!40000 ALTER TABLE `oc2_product_image` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_product_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_product_option`
--

DROP TABLE IF EXISTS `oc2_product_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_product_option` (
  `product_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `value` text NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`product_option_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_product_option`
--

LOCK TABLES `oc2_product_option` WRITE;
/*!40000 ALTER TABLE `oc2_product_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_product_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_product_option_value`
--

DROP TABLE IF EXISTS `oc2_product_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_product_option_value` (
  `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `quantity` int(3) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) NOT NULL,
  `points` int(8) NOT NULL,
  `points_prefix` varchar(1) NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) NOT NULL,
  PRIMARY KEY (`product_option_value_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_product_option_value`
--

LOCK TABLES `oc2_product_option_value` WRITE;
/*!40000 ALTER TABLE `oc2_product_option_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_product_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_product_recurring`
--

DROP TABLE IF EXISTS `oc2_product_recurring`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_product_recurring` (
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`recurring_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_product_recurring`
--

LOCK TABLES `oc2_product_recurring` WRITE;
/*!40000 ALTER TABLE `oc2_product_recurring` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_product_recurring` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_product_related`
--

DROP TABLE IF EXISTS `oc2_product_related`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`related_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_product_related`
--

LOCK TABLES `oc2_product_related` WRITE;
/*!40000 ALTER TABLE `oc2_product_related` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_product_related` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_product_reward`
--

DROP TABLE IF EXISTS `oc2_product_reward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_product_reward` (
  `product_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `points` int(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_reward_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_product_reward`
--

LOCK TABLES `oc2_product_reward` WRITE;
/*!40000 ALTER TABLE `oc2_product_reward` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_product_reward` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_product_special`
--

DROP TABLE IF EXISTS `oc2_product_special`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_product_special` (
  `product_special_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_special_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_product_special`
--

LOCK TABLES `oc2_product_special` WRITE;
/*!40000 ALTER TABLE `oc2_product_special` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_product_special` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_product_to_category`
--

DROP TABLE IF EXISTS `oc2_product_to_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `category_id` (`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_product_to_category`
--

LOCK TABLES `oc2_product_to_category` WRITE;
/*!40000 ALTER TABLE `oc2_product_to_category` DISABLE KEYS */;
INSERT INTO `oc2_product_to_category` (`product_id`, `category_id`) VALUES (1,1),(2,1),(3,2),(4,2),(5,2),(6,2),(7,2),(8,3),(9,3),(10,3),(11,3),(12,3),(13,3),(14,4),(15,4),(16,4),(17,4),(18,4),(19,4),(20,4),(21,4),(22,4),(23,4),(24,5),(25,5),(26,5),(27,5),(28,5),(29,5),(30,4),(30,8),(31,8),(32,8),(33,8),(34,8),(35,7),(36,7),(37,7),(38,7),(39,7),(40,7),(41,7),(44,6),(45,6),(46,6),(47,6),(48,6),(49,5),(50,6),(51,6),(52,8),(54,2),(55,7),(57,8),(58,8),(60,10),(61,10),(62,10),(63,10),(64,10),(66,10),(67,10),(68,11),(69,11),(70,11),(71,11),(72,11),(73,11),(73,13),(74,11),(74,13),(75,11),(75,13),(76,11),(76,14),(77,11),(77,14),(78,11),(78,14),(79,11),(79,14),(80,11),(80,14),(81,15),(82,15),(83,15),(84,15),(85,3),(87,7),(88,10),(89,8);
/*!40000 ALTER TABLE `oc2_product_to_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_product_to_download`
--

DROP TABLE IF EXISTS `oc2_product_to_download`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_product_to_download` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_product_to_download`
--

LOCK TABLES `oc2_product_to_download` WRITE;
/*!40000 ALTER TABLE `oc2_product_to_download` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_product_to_download` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_product_to_layout`
--

DROP TABLE IF EXISTS `oc2_product_to_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_product_to_layout` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_product_to_layout`
--

LOCK TABLES `oc2_product_to_layout` WRITE;
/*!40000 ALTER TABLE `oc2_product_to_layout` DISABLE KEYS */;
INSERT INTO `oc2_product_to_layout` (`product_id`, `store_id`, `layout_id`) VALUES (1,0,0),(1,8,0),(2,0,0),(2,8,0),(3,0,0),(4,0,0),(5,0,0),(6,0,0),(7,0,0),(8,0,0),(9,0,0),(10,0,0),(11,8,0),(11,0,0),(12,0,0),(13,8,0),(13,0,0),(14,0,0),(15,0,0),(16,0,0),(17,0,0),(18,0,0),(19,0,0),(20,0,0),(21,0,0),(22,0,0),(23,0,0),(88,0,0),(24,0,0),(25,0,0),(26,0,0),(89,0,0),(27,0,0),(28,0,0),(29,0,0),(30,0,0),(31,0,0),(32,0,0),(33,0,0),(34,0,0),(35,0,0),(36,0,0),(37,0,0),(38,0,0),(39,0,0),(87,0,0),(40,0,0),(41,0,0),(44,0,0),(45,0,0),(46,0,0),(47,0,0),(48,0,0),(49,0,0),(50,0,0),(51,0,0),(52,0,0),(54,0,0),(55,0,0),(57,0,0),(58,0,0),(60,0,0),(61,0,0),(62,0,0),(63,0,0),(64,0,0),(66,8,0),(66,0,0),(67,0,0),(88,8,0),(68,8,0),(68,0,0),(69,8,0),(69,0,0),(70,0,0),(71,0,0),(85,0,0),(72,0,0),(73,8,0),(73,0,0),(74,8,0),(74,0,0),(75,8,0),(75,0,0),(76,8,0),(76,0,0),(77,8,0),(77,0,0),(78,8,0),(78,0,0),(79,8,0),(79,0,0),(80,8,0),(80,0,0),(81,8,0),(81,0,0),(82,8,0),(82,0,0),(83,8,0),(83,0,0),(84,8,0),(84,0,0);
/*!40000 ALTER TABLE `oc2_product_to_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_product_to_store`
--

DROP TABLE IF EXISTS `oc2_product_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_product_to_store`
--

LOCK TABLES `oc2_product_to_store` WRITE;
/*!40000 ALTER TABLE `oc2_product_to_store` DISABLE KEYS */;
INSERT INTO `oc2_product_to_store` (`product_id`, `store_id`) VALUES (1,0),(2,0),(3,0),(4,0),(5,0),(6,0),(7,0),(8,0),(9,0),(10,0),(11,0),(12,0),(13,0),(14,0),(15,0),(16,0),(17,0),(18,0),(19,0),(20,0),(21,0),(22,0),(23,0),(24,0),(25,0),(26,0),(27,0),(28,0),(29,0),(30,0),(31,0),(32,0),(33,0),(34,0),(35,0),(36,0),(37,0),(38,0),(39,0),(40,0),(41,0),(44,0),(45,0),(46,0),(47,0),(48,0),(49,0),(50,0),(51,0),(52,0),(54,0),(55,0),(57,0),(58,0),(60,0),(61,0),(62,0),(63,0),(64,0),(66,0),(67,0),(68,0),(69,0),(70,0),(71,0),(72,0),(73,0),(74,0),(75,0),(76,0),(77,0),(78,0),(79,0),(80,0),(81,0),(82,0),(83,0),(84,0),(85,0),(87,0),(88,0),(89,0);
/*!40000 ALTER TABLE `oc2_product_to_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_purchase_order`
--

DROP TABLE IF EXISTS `oc2_purchase_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_purchase_order` (
  `purchase_order_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_name` varchar(255) NOT NULL,
  `status_id` int(11) NOT NULL,
  `purchase_order_vendor_id` int(11) NOT NULL,
  `purchase_order_payment_id` int(11) NOT NULL,
  `purchase_order_shipping_id` int(11) NOT NULL,
  `total` decimal(15,2) NOT NULL,
  `comment` text NOT NULL,
  `date_arrival` datetime NOT NULL,
  `date_received` datetime NOT NULL,
  `date_added` datetime NOT NULL,
  `received` tinyint(1) NOT NULL,
  PRIMARY KEY (`purchase_order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_purchase_order`
--

LOCK TABLES `oc2_purchase_order` WRITE;
/*!40000 ALTER TABLE `oc2_purchase_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_purchase_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_purchase_order_history`
--

DROP TABLE IF EXISTS `oc2_purchase_order_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_purchase_order_history` (
  `purchase_order_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `status_id` int(11) NOT NULL,
  `paid` decimal(15,2) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`purchase_order_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_purchase_order_history`
--

LOCK TABLES `oc2_purchase_order_history` WRITE;
/*!40000 ALTER TABLE `oc2_purchase_order_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_purchase_order_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_purchase_order_option`
--

DROP TABLE IF EXISTS `oc2_purchase_order_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_purchase_order_option` (
  `purchase_order_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order_id` int(11) NOT NULL,
  `purchase_order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`purchase_order_option_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_purchase_order_option`
--

LOCK TABLES `oc2_purchase_order_option` WRITE;
/*!40000 ALTER TABLE `oc2_purchase_order_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_purchase_order_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_purchase_order_payment`
--

DROP TABLE IF EXISTS `oc2_purchase_order_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_purchase_order_payment` (
  `purchase_order_payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `language_id` int(11) NOT NULL,
  PRIMARY KEY (`purchase_order_payment_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_purchase_order_payment`
--

LOCK TABLES `oc2_purchase_order_payment` WRITE;
/*!40000 ALTER TABLE `oc2_purchase_order_payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_purchase_order_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_purchase_order_product`
--

DROP TABLE IF EXISTS `oc2_purchase_order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_purchase_order_product` (
  `purchase_order_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  PRIMARY KEY (`purchase_order_product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_purchase_order_product`
--

LOCK TABLES `oc2_purchase_order_product` WRITE;
/*!40000 ALTER TABLE `oc2_purchase_order_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_purchase_order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_purchase_order_shipping`
--

DROP TABLE IF EXISTS `oc2_purchase_order_shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_purchase_order_shipping` (
  `purchase_order_shipping_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) CHARACTER SET latin1 NOT NULL,
  `language_id` int(11) NOT NULL,
  PRIMARY KEY (`purchase_order_shipping_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_purchase_order_shipping`
--

LOCK TABLES `oc2_purchase_order_shipping` WRITE;
/*!40000 ALTER TABLE `oc2_purchase_order_shipping` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_purchase_order_shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_purchase_order_total`
--

DROP TABLE IF EXISTS `oc2_purchase_order_total`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_purchase_order_total` (
  `purchase_order_total_id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `value` decimal(15,4) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`purchase_order_total_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_purchase_order_total`
--

LOCK TABLES `oc2_purchase_order_total` WRITE;
/*!40000 ALTER TABLE `oc2_purchase_order_total` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_purchase_order_total` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_purchase_order_vendor`
--

DROP TABLE IF EXISTS `oc2_purchase_order_vendor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_purchase_order_vendor` (
  `purchase_order_vendor_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  PRIMARY KEY (`purchase_order_vendor_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_purchase_order_vendor`
--

LOCK TABLES `oc2_purchase_order_vendor` WRITE;
/*!40000 ALTER TABLE `oc2_purchase_order_vendor` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_purchase_order_vendor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_purchase_order_vendor_to_manufacturer`
--

DROP TABLE IF EXISTS `oc2_purchase_order_vendor_to_manufacturer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_purchase_order_vendor_to_manufacturer` (
  `purchase_order_vendor_id` int(11) NOT NULL AUTO_INCREMENT,
  `manufacturer_id` int(11) NOT NULL,
  PRIMARY KEY (`purchase_order_vendor_id`,`manufacturer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_purchase_order_vendor_to_manufacturer`
--

LOCK TABLES `oc2_purchase_order_vendor_to_manufacturer` WRITE;
/*!40000 ALTER TABLE `oc2_purchase_order_vendor_to_manufacturer` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_purchase_order_vendor_to_manufacturer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_qc_account`
--

DROP TABLE IF EXISTS `oc2_qc_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_qc_account` (
  `account_id` int(11) NOT NULL AUTO_INCREMENT,
  `account_num` varchar(15) DEFAULT NULL,
  `name` varchar(128) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `classification` varchar(255) DEFAULT NULL,
  `account_type` varchar(255) DEFAULT NULL,
  `account_sub_type` varchar(255) DEFAULT NULL,
  `parent_ref_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`account_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_qc_account`
--

LOCK TABLES `oc2_qc_account` WRITE;
/*!40000 ALTER TABLE `oc2_qc_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_qc_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_qc_event_status`
--

DROP TABLE IF EXISTS `oc2_qc_event_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_qc_event_status` (
  `event_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_qc_event_status`
--

LOCK TABLES `oc2_qc_event_status` WRITE;
/*!40000 ALTER TABLE `oc2_qc_event_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_qc_event_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_qc_vendor`
--

DROP TABLE IF EXISTS `oc2_qc_vendor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_qc_vendor` (
  `vendor_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) DEFAULT '0',
  `display_name` varchar(96) DEFAULT NULL,
  `company_name` varchar(96) DEFAULT NULL,
  `print_on_check_name` varchar(96) DEFAULT NULL,
  `firstname` varchar(32) NOT NULL,
  `middlename` varchar(32) DEFAULT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) DEFAULT NULL,
  `fax` varchar(32) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `salt` varchar(9) DEFAULT NULL,
  `cart` text,
  `wishlist` text,
  `newsletter` tinyint(1) DEFAULT '0',
  `address_id` int(11) DEFAULT '0',
  `custom_field` text,
  `ip` varchar(40) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `safe` tinyint(1) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`vendor_id`),
  UNIQUE KEY `display_name_UNIQUE` (`display_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_qc_vendor`
--

LOCK TABLES `oc2_qc_vendor` WRITE;
/*!40000 ALTER TABLE `oc2_qc_vendor` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_qc_vendor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_qc_vendor_address`
--

DROP TABLE IF EXISTS `oc2_qc_vendor_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_qc_vendor_address` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `vendor_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `company` varchar(40) DEFAULT NULL,
  `address_1` varchar(128) DEFAULT NULL,
  `address_2` varchar(128) DEFAULT NULL,
  `city` varchar(128) DEFAULT NULL,
  `postcode` varchar(10) DEFAULT NULL,
  `country_id` int(11) NOT NULL DEFAULT '0',
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text,
  PRIMARY KEY (`address_id`),
  KEY `vendor_id` (`vendor_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_qc_vendor_address`
--

LOCK TABLES `oc2_qc_vendor_address` WRITE;
/*!40000 ALTER TABLE `oc2_qc_vendor_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_qc_vendor_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_qc_vendor_login`
--

DROP TABLE IF EXISTS `oc2_qc_vendor_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_qc_vendor_login` (
  `vendor_login_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`vendor_login_id`),
  KEY `email` (`email`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_qc_vendor_login`
--

LOCK TABLES `oc2_qc_vendor_login` WRITE;
/*!40000 ALTER TABLE `oc2_qc_vendor_login` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_qc_vendor_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_qc_vendor_to_manufacturer`
--

DROP TABLE IF EXISTS `oc2_qc_vendor_to_manufacturer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_qc_vendor_to_manufacturer` (
  `vendor_id` int(11) NOT NULL AUTO_INCREMENT,
  `manufacturer_id` int(11) NOT NULL,
  PRIMARY KEY (`vendor_id`,`manufacturer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_qc_vendor_to_manufacturer`
--

LOCK TABLES `oc2_qc_vendor_to_manufacturer` WRITE;
/*!40000 ALTER TABLE `oc2_qc_vendor_to_manufacturer` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_qc_vendor_to_manufacturer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_qcli`
--

DROP TABLE IF EXISTS `oc2_qcli`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_qcli` (
  `resource_id` int(11) NOT NULL AUTO_INCREMENT,
  `oc_entity_id` int(11) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`resource_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_qcli`
--

LOCK TABLES `oc2_qcli` WRITE;
/*!40000 ALTER TABLE `oc2_qcli` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_qcli` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_qcli_account`
--

DROP TABLE IF EXISTS `oc2_qcli_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_qcli_account` (
  `feed_id` int(11) NOT NULL,
  `oc_entity_id` int(11) NOT NULL,
  `sync` tinyint(1) DEFAULT '1',
  `parent_ref_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT '' COMMENT 'Used for reference only',
  `type` varchar(255) DEFAULT '',
  `current_balance` int(11) DEFAULT NULL,
  `current_balance_with_sub_accounts` int(11) DEFAULT NULL,
  `currency_ref` int(11) DEFAULT NULL,
  PRIMARY KEY (`feed_id`,`oc_entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_qcli_account`
--

LOCK TABLES `oc2_qcli_account` WRITE;
/*!40000 ALTER TABLE `oc2_qcli_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_qcli_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_qcli_customer`
--

DROP TABLE IF EXISTS `oc2_qcli_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_qcli_customer` (
  `feed_id` int(11) NOT NULL,
  `oc_entity_id` int(11) NOT NULL,
  `sync` tinyint(1) DEFAULT '1',
  `parent_ref_id` int(11) DEFAULT NULL,
  `fully_qualified_name` varchar(110) DEFAULT NULL,
  `currency_ref` varchar(64) DEFAULT NULL,
  `sales_term_ref` varchar(64) DEFAULT NULL,
  `tax_code_ref` varchar(64) DEFAULT NULL,
  `is_job` tinyint(1) DEFAULT '0',
  `level` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`feed_id`,`oc_entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_qcli_customer`
--

LOCK TABLES `oc2_qcli_customer` WRITE;
/*!40000 ALTER TABLE `oc2_qcli_customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_qcli_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_qcli_product`
--

DROP TABLE IF EXISTS `oc2_qcli_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_qcli_product` (
  `feed_id` int(11) NOT NULL,
  `oc_entity_id` int(11) NOT NULL,
  `sync` tinyint(1) DEFAULT '1',
  `parent_ref_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT '' COMMENT 'Used for reference only',
  `track_inventory` tinyint(1) DEFAULT NULL,
  `type` varchar(255) DEFAULT '',
  `income_account_ref` int(11) DEFAULT NULL,
  `expense_account_ref` int(11) DEFAULT NULL,
  `asset_account_ref` int(11) DEFAULT NULL,
  PRIMARY KEY (`feed_id`,`oc_entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_qcli_product`
--

LOCK TABLES `oc2_qcli_product` WRITE;
/*!40000 ALTER TABLE `oc2_qcli_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_qcli_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_qcli_tax_code`
--

DROP TABLE IF EXISTS `oc2_qcli_tax_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_qcli_tax_code` (
  `feed_id` int(11) NOT NULL,
  `oc_entity_id` int(11) NOT NULL,
  `sync` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`feed_id`,`oc_entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_qcli_tax_code`
--

LOCK TABLES `oc2_qcli_tax_code` WRITE;
/*!40000 ALTER TABLE `oc2_qcli_tax_code` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_qcli_tax_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_qcli_tax_rate`
--

DROP TABLE IF EXISTS `oc2_qcli_tax_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_qcli_tax_rate` (
  `feed_id` int(11) NOT NULL,
  `oc_entity_id` int(11) NOT NULL,
  `sync` tinyint(1) DEFAULT '1',
  `agency_ref` int(11) DEFAULT NULL,
  `tax_return_line_ref` int(11) DEFAULT NULL,
  `special_tax_type` varchar(45) DEFAULT NULL,
  `display_type` varchar(45) DEFAULT NULL,
  `effective_tax_rate` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`feed_id`,`oc_entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_qcli_tax_rate`
--

LOCK TABLES `oc2_qcli_tax_rate` WRITE;
/*!40000 ALTER TABLE `oc2_qcli_tax_rate` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_qcli_tax_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_qcli_tax_rule`
--

DROP TABLE IF EXISTS `oc2_qcli_tax_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_qcli_tax_rule` (
  `feed_id` int(11) NOT NULL,
  `oc_entity_id` int(11) NOT NULL,
  `sync` tinyint(1) DEFAULT '1',
  `tax_rate_ref` int(11) DEFAULT NULL,
  `tax_type_applicable` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`feed_id`,`oc_entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_qcli_tax_rule`
--

LOCK TABLES `oc2_qcli_tax_rule` WRITE;
/*!40000 ALTER TABLE `oc2_qcli_tax_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_qcli_tax_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_qcli_vendor`
--

DROP TABLE IF EXISTS `oc2_qcli_vendor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_qcli_vendor` (
  `feed_id` int(11) NOT NULL,
  `oc_entity_id` int(11) NOT NULL,
  `sync` tinyint(1) DEFAULT '1',
  `parent_ref_id` int(11) DEFAULT NULL,
  `fully_qualified_name` varchar(110) DEFAULT NULL,
  `currency_ref` varchar(64) DEFAULT NULL,
  `sales_term_ref` varchar(64) DEFAULT NULL,
  `tax_code_ref` varchar(64) DEFAULT NULL,
  `is_job` tinyint(1) DEFAULT '0',
  `level` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`feed_id`,`oc_entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_qcli_vendor`
--

LOCK TABLES `oc2_qcli_vendor` WRITE;
/*!40000 ALTER TABLE `oc2_qcli_vendor` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_qcli_vendor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_qctr`
--

DROP TABLE IF EXISTS `oc2_qctr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_qctr` (
  `transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `oc_entity_id` int(11) DEFAULT NULL,
  `store_id` int(11) DEFAULT '0',
  `store_name` varchar(64) DEFAULT NULL,
  `store_url` varchar(255) DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `currency_code` varchar(3) DEFAULT NULL,
  `currency_value` decimal(15,8) DEFAULT '1.00000000',
  `ip` varchar(40) DEFAULT NULL,
  `forwarded_ip` varchar(40) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `accept_language` varchar(255) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_qctr`
--

LOCK TABLES `oc2_qctr` WRITE;
/*!40000 ALTER TABLE `oc2_qctr` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_qctr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_qctr_bill`
--

DROP TABLE IF EXISTS `oc2_qctr_bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_qctr_bill` (
  `feed_id` int(11) NOT NULL,
  `oc_entity_id` int(11) NOT NULL,
  `sync` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`feed_id`,`oc_entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_qctr_bill`
--

LOCK TABLES `oc2_qctr_bill` WRITE;
/*!40000 ALTER TABLE `oc2_qctr_bill` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_qctr_bill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_qctr_bill_payment`
--

DROP TABLE IF EXISTS `oc2_qctr_bill_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_qctr_bill_payment` (
  `feed_id` int(11) NOT NULL,
  `oc_entity_id` int(11) NOT NULL,
  `sync` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`feed_id`,`oc_entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_qctr_bill_payment`
--

LOCK TABLES `oc2_qctr_bill_payment` WRITE;
/*!40000 ALTER TABLE `oc2_qctr_bill_payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_qctr_bill_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_qctr_credit_memo`
--

DROP TABLE IF EXISTS `oc2_qctr_credit_memo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_qctr_credit_memo` (
  `feed_id` int(11) NOT NULL,
  `oc_entity_id` int(11) NOT NULL,
  `sync` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`feed_id`,`oc_entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_qctr_credit_memo`
--

LOCK TABLES `oc2_qctr_credit_memo` WRITE;
/*!40000 ALTER TABLE `oc2_qctr_credit_memo` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_qctr_credit_memo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_qctr_deposit`
--

DROP TABLE IF EXISTS `oc2_qctr_deposit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_qctr_deposit` (
  `feed_id` int(11) NOT NULL,
  `oc_entity_id` int(11) NOT NULL,
  `sync` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`feed_id`,`oc_entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_qctr_deposit`
--

LOCK TABLES `oc2_qctr_deposit` WRITE;
/*!40000 ALTER TABLE `oc2_qctr_deposit` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_qctr_deposit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_qctr_estimate`
--

DROP TABLE IF EXISTS `oc2_qctr_estimate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_qctr_estimate` (
  `feed_id` int(11) NOT NULL,
  `oc_entity_id` int(11) NOT NULL,
  `sync` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`feed_id`,`oc_entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_qctr_estimate`
--

LOCK TABLES `oc2_qctr_estimate` WRITE;
/*!40000 ALTER TABLE `oc2_qctr_estimate` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_qctr_estimate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_qctr_invoice`
--

DROP TABLE IF EXISTS `oc2_qctr_invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_qctr_invoice` (
  `invoice_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `transaction_id` bigint(20) NOT NULL,
  `feed_id` int(11) DEFAULT NULL,
  `oc_entity_id` int(11) DEFAULT NULL,
  `invoice_no` int(11) DEFAULT NULL,
  `invoice_prefix` varchar(255) DEFAULT '',
  `customer_id` int(11) DEFAULT NULL,
  `customer_ref` bigint(20) DEFAULT NULL,
  `department_ref` int(11) DEFAULT NULL,
  `class_ref` varchar(255) DEFAULT NULL,
  `sales_term_ref` varchar(64) DEFAULT NULL,
  `tracking_no` varchar(128) DEFAULT NULL,
  `sync` tinyint(1) DEFAULT '1',
  `payment_method` varchar(255) DEFAULT NULL,
  `payment_code` varchar(255) DEFAULT NULL,
  `bill_addr_line1` varchar(128) DEFAULT NULL,
  `bill_addr_line2` varchar(128) DEFAULT NULL,
  `bill_addr_line3` varchar(500) DEFAULT NULL,
  `bill_addr_line4` varchar(500) DEFAULT NULL,
  `bill_addr_line5` varchar(500) DEFAULT NULL,
  `bill_addr_city` varchar(500) DEFAULT NULL,
  `bill_addr_country` varchar(255) DEFAULT NULL,
  `bill_addr_country_id` int(11) DEFAULT NULL,
  `bill_addr_zone` varchar(31) DEFAULT NULL,
  `bill_addr_zone_id` int(11) DEFAULT NULL,
  `bill_addr_postcode` varchar(31) DEFAULT NULL,
  `shipping_method_ref` varchar(128) DEFAULT NULL,
  `shipping_method` varchar(255) DEFAULT NULL,
  `shipping_code` varchar(255) DEFAULT NULL,
  `ship_addr_line1` varchar(128) DEFAULT NULL,
  `ship_addr_line2` varchar(128) DEFAULT NULL,
  `ship_addr_line3` varchar(500) DEFAULT NULL,
  `ship_addr_line4` varchar(500) DEFAULT NULL,
  `ship_addr_line5` varchar(500) DEFAULT NULL,
  `ship_addr_city` varchar(500) DEFAULT NULL,
  `ship_addr_country` varchar(255) DEFAULT NULL,
  `ship_addr_country_id` int(11) DEFAULT NULL,
  `ship_addr_zone` varchar(31) DEFAULT NULL,
  `ship_addr_zone_id` int(11) DEFAULT NULL,
  `ship_addr_postcode` varchar(31) DEFAULT NULL,
  `customer_memo` varchar(1000) DEFAULT NULL,
  `statement_memo` varchar(1000) DEFAULT NULL,
  `invoice_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `ship_date` varchar(45) DEFAULT NULL,
  `total` decimal(15,4) DEFAULT NULL,
  `balance` decimal(15,4) DEFAULT NULL,
  `deposit` decimal(15,4) DEFAULT NULL,
  `deposit_account_ref` varchar(255) DEFAULT NULL COMMENT 'This is read-only',
  `print_status` tinyint(2) DEFAULT NULL,
  `email_status` tinyint(2) DEFAULT NULL,
  `bill_email` varchar(100) DEFAULT NULL,
  `bill_telephone` varchar(32) DEFAULT NULL,
  `bill_fax` varchar(32) DEFAULT NULL,
  `delivery_info` text,
  `firstname` varchar(32) DEFAULT NULL,
  `lastname` varchar(32) DEFAULT NULL,
  `bill_addr_firstname` varchar(32) DEFAULT NULL,
  `bill_addr_lastname` varchar(32) DEFAULT NULL,
  `bill_addr_company` varchar(40) DEFAULT NULL,
  `ship_addr_firstname` varchar(32) DEFAULT NULL,
  `ship_addr_lastname` varchar(32) DEFAULT NULL,
  `ship_addr_company` varchar(40) DEFAULT NULL,
  `invoice_status_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`invoice_id`,`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_qctr_invoice`
--

LOCK TABLES `oc2_qctr_invoice` WRITE;
/*!40000 ALTER TABLE `oc2_qctr_invoice` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_qctr_invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_qctr_invoice_line`
--

DROP TABLE IF EXISTS `oc2_qctr_invoice_line`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_qctr_invoice_line` (
  `line_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `invoice_id` bigint(20) DEFAULT NULL,
  `detail_type` varchar(64) DEFAULT '',
  `order_product_id` bigint(20) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `item_ref` int(11) DEFAULT NULL,
  `class_ref` int(11) DEFAULT NULL,
  `price_level_ref` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `model` varchar(64) DEFAULT NULL,
  `description` text,
  `quantity` int(11) DEFAULT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax_class_id` int(11) DEFAULT NULL,
  `tax_code_ref` int(11) DEFAULT NULL,
  `discount_ref` int(11) DEFAULT NULL,
  `percent_based` tinyint(4) DEFAULT NULL,
  `discount_percent` decimal(15,4) DEFAULT NULL,
  `discount_account_ref` int(11) DEFAULT NULL,
  `service_date` date DEFAULT NULL,
  `reward` int(8) DEFAULT NULL,
  `revenue` decimal(15,4) DEFAULT NULL,
  `royalty` decimal(15,4) DEFAULT NULL,
  `cost` decimal(15,4) DEFAULT NULL,
  PRIMARY KEY (`line_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_qctr_invoice_line`
--

LOCK TABLES `oc2_qctr_invoice_line` WRITE;
/*!40000 ALTER TABLE `oc2_qctr_invoice_line` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_qctr_invoice_line` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_qctr_invoice_status`
--

DROP TABLE IF EXISTS `oc2_qctr_invoice_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_qctr_invoice_status` (
  `invoice_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`invoice_status_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_qctr_invoice_status`
--

LOCK TABLES `oc2_qctr_invoice_status` WRITE;
/*!40000 ALTER TABLE `oc2_qctr_invoice_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_qctr_invoice_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_qctr_journal_entry`
--

DROP TABLE IF EXISTS `oc2_qctr_journal_entry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_qctr_journal_entry` (
  `feed_id` int(11) NOT NULL,
  `oc_entity_id` int(11) NOT NULL,
  `sync` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`feed_id`,`oc_entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_qctr_journal_entry`
--

LOCK TABLES `oc2_qctr_journal_entry` WRITE;
/*!40000 ALTER TABLE `oc2_qctr_journal_entry` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_qctr_journal_entry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_qctr_payment`
--

DROP TABLE IF EXISTS `oc2_qctr_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_qctr_payment` (
  `feed_id` int(11) NOT NULL,
  `oc_entity_id` int(11) NOT NULL,
  `sync` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`feed_id`,`oc_entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_qctr_payment`
--

LOCK TABLES `oc2_qctr_payment` WRITE;
/*!40000 ALTER TABLE `oc2_qctr_payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_qctr_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_qctr_purchase`
--

DROP TABLE IF EXISTS `oc2_qctr_purchase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_qctr_purchase` (
  `feed_id` int(11) NOT NULL,
  `oc_entity_id` int(11) NOT NULL,
  `sync` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`feed_id`,`oc_entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_qctr_purchase`
--

LOCK TABLES `oc2_qctr_purchase` WRITE;
/*!40000 ALTER TABLE `oc2_qctr_purchase` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_qctr_purchase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_qctr_purchase_order`
--

DROP TABLE IF EXISTS `oc2_qctr_purchase_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_qctr_purchase_order` (
  `purchase_order_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `transaction_id` bigint(20) NOT NULL,
  `feed_id` int(11) DEFAULT NULL,
  `oc_entity_id` int(11) DEFAULT NULL,
  `purchase_order_no` int(11) DEFAULT NULL,
  `purchase_order_prefix` varchar(255) DEFAULT '',
  `customer_id` int(11) DEFAULT NULL,
  `customer_ref` bigint(20) DEFAULT NULL,
  `department_ref` int(11) DEFAULT NULL,
  `class_ref` varchar(255) DEFAULT NULL,
  `sales_term_ref` varchar(64) DEFAULT NULL,
  `tracking_no` varchar(128) DEFAULT NULL,
  `sync` tinyint(1) DEFAULT '1',
  `payment_method` varchar(255) DEFAULT NULL,
  `payment_code` varchar(255) DEFAULT NULL,
  `bill_addr_line1` varchar(128) DEFAULT NULL,
  `bill_addr_line2` varchar(128) DEFAULT NULL,
  `bill_addr_line3` varchar(500) DEFAULT NULL,
  `bill_addr_line4` varchar(500) DEFAULT NULL,
  `bill_addr_line5` varchar(500) DEFAULT NULL,
  `bill_addr_city` varchar(500) DEFAULT NULL,
  `bill_addr_country` varchar(255) DEFAULT NULL,
  `bill_addr_country_id` int(11) DEFAULT NULL,
  `bill_addr_zone` varchar(31) DEFAULT NULL,
  `bill_addr_zone_id` int(11) DEFAULT NULL,
  `bill_addr_postcode` varchar(31) DEFAULT NULL,
  `shipping_method_ref` varchar(128) DEFAULT NULL,
  `shipping_method` varchar(255) DEFAULT NULL,
  `shipping_code` varchar(255) DEFAULT NULL,
  `ship_addr_line1` varchar(128) DEFAULT NULL,
  `ship_addr_line2` varchar(128) DEFAULT NULL,
  `ship_addr_line3` varchar(500) DEFAULT NULL,
  `ship_addr_line4` varchar(500) DEFAULT NULL,
  `ship_addr_line5` varchar(500) DEFAULT NULL,
  `ship_addr_city` varchar(500) DEFAULT NULL,
  `ship_addr_country` varchar(255) DEFAULT NULL,
  `ship_addr_country_id` int(11) DEFAULT NULL,
  `ship_addr_zone` varchar(31) DEFAULT NULL,
  `ship_addr_zone_id` int(11) DEFAULT NULL,
  `ship_addr_postcode` varchar(31) DEFAULT NULL,
  `customer_memo` varchar(1000) DEFAULT NULL,
  `statement_memo` varchar(1000) DEFAULT NULL,
  `purchase_order_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `ship_date` varchar(45) DEFAULT NULL,
  `total` decimal(15,4) DEFAULT NULL,
  `balance` decimal(15,4) DEFAULT NULL,
  `deposit` decimal(15,4) DEFAULT NULL,
  `deposit_account_ref` varchar(255) DEFAULT NULL COMMENT 'This is read-only',
  `print_status` tinyint(2) DEFAULT NULL,
  `email_status` tinyint(2) DEFAULT NULL,
  `bill_email` varchar(100) DEFAULT NULL,
  `bill_telephone` varchar(32) DEFAULT NULL,
  `bill_fax` varchar(32) DEFAULT NULL,
  `delivery_info` text,
  `firstname` varchar(32) DEFAULT NULL,
  `lastname` varchar(32) DEFAULT NULL,
  `bill_addr_firstname` varchar(32) DEFAULT NULL,
  `bill_addr_lastname` varchar(32) DEFAULT NULL,
  `bill_addr_company` varchar(40) DEFAULT NULL,
  `ship_addr_firstname` varchar(32) DEFAULT NULL,
  `ship_addr_lastname` varchar(32) DEFAULT NULL,
  `ship_addr_company` varchar(40) DEFAULT NULL,
  `purchase_order_status_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`purchase_order_id`,`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_qctr_purchase_order`
--

LOCK TABLES `oc2_qctr_purchase_order` WRITE;
/*!40000 ALTER TABLE `oc2_qctr_purchase_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_qctr_purchase_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_qctr_purchase_order_line`
--

DROP TABLE IF EXISTS `oc2_qctr_purchase_order_line`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_qctr_purchase_order_line` (
  `line_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `purchase_order_id` bigint(20) DEFAULT NULL,
  `detail_type` varchar(64) DEFAULT '',
  `order_product_id` bigint(20) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `item_ref` int(11) DEFAULT NULL,
  `class_ref` int(11) DEFAULT NULL,
  `price_level_ref` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `model` varchar(64) DEFAULT NULL,
  `description` text,
  `quantity` int(11) DEFAULT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax_class_id` int(11) DEFAULT NULL,
  `tax_code_ref` int(11) DEFAULT NULL,
  `discount_ref` int(11) DEFAULT NULL,
  `percent_based` tinyint(4) DEFAULT NULL,
  `discount_percent` decimal(15,4) DEFAULT NULL,
  `discount_account_ref` int(11) DEFAULT NULL,
  `service_date` date DEFAULT NULL,
  `reward` int(8) DEFAULT NULL,
  `revenue` decimal(15,4) DEFAULT NULL,
  `royalty` decimal(15,4) DEFAULT NULL,
  `cost` decimal(15,4) DEFAULT NULL,
  PRIMARY KEY (`line_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_qctr_purchase_order_line`
--

LOCK TABLES `oc2_qctr_purchase_order_line` WRITE;
/*!40000 ALTER TABLE `oc2_qctr_purchase_order_line` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_qctr_purchase_order_line` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_qctr_purchase_order_status`
--

DROP TABLE IF EXISTS `oc2_qctr_purchase_order_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_qctr_purchase_order_status` (
  `purchase_order_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`purchase_order_status_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_qctr_purchase_order_status`
--

LOCK TABLES `oc2_qctr_purchase_order_status` WRITE;
/*!40000 ALTER TABLE `oc2_qctr_purchase_order_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_qctr_purchase_order_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_qctr_qb_status`
--

DROP TABLE IF EXISTS `oc2_qctr_qb_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_qctr_qb_status` (
  `status_id` int(11) NOT NULL AUTO_INCREMENT,
  `lanugage_id` int(11) NOT NULL DEFAULT '0',
  `status_type` varchar(64) NOT NULL,
  `status` varchar(128) NOT NULL,
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_qctr_qb_status`
--

LOCK TABLES `oc2_qctr_qb_status` WRITE;
/*!40000 ALTER TABLE `oc2_qctr_qb_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_qctr_qb_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_qctr_refund_receipt`
--

DROP TABLE IF EXISTS `oc2_qctr_refund_receipt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_qctr_refund_receipt` (
  `feed_id` int(11) NOT NULL,
  `oc_entity_id` int(11) NOT NULL,
  `sync` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`feed_id`,`oc_entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_qctr_refund_receipt`
--

LOCK TABLES `oc2_qctr_refund_receipt` WRITE;
/*!40000 ALTER TABLE `oc2_qctr_refund_receipt` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_qctr_refund_receipt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_qctr_sales_receipt`
--

DROP TABLE IF EXISTS `oc2_qctr_sales_receipt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_qctr_sales_receipt` (
  `feed_id` int(11) NOT NULL,
  `oc_entity_id` int(11) NOT NULL,
  `sync` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`feed_id`,`oc_entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_qctr_sales_receipt`
--

LOCK TABLES `oc2_qctr_sales_receipt` WRITE;
/*!40000 ALTER TABLE `oc2_qctr_sales_receipt` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_qctr_sales_receipt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_qctr_time_activity`
--

DROP TABLE IF EXISTS `oc2_qctr_time_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_qctr_time_activity` (
  `feed_id` int(11) NOT NULL,
  `oc_entity_id` int(11) NOT NULL,
  `sync` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`feed_id`,`oc_entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_qctr_time_activity`
--

LOCK TABLES `oc2_qctr_time_activity` WRITE;
/*!40000 ALTER TABLE `oc2_qctr_time_activity` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_qctr_time_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_qctr_vendor_credit`
--

DROP TABLE IF EXISTS `oc2_qctr_vendor_credit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_qctr_vendor_credit` (
  `feed_id` int(11) NOT NULL,
  `oc_entity_id` int(11) NOT NULL,
  `sync` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`feed_id`,`oc_entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_qctr_vendor_credit`
--

LOCK TABLES `oc2_qctr_vendor_credit` WRITE;
/*!40000 ALTER TABLE `oc2_qctr_vendor_credit` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_qctr_vendor_credit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_qctr_work_order`
--

DROP TABLE IF EXISTS `oc2_qctr_work_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_qctr_work_order` (
  `work_order_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `transaction_id` bigint(20) NOT NULL,
  `feed_id` int(11) DEFAULT NULL,
  `oc_entity_id` int(11) DEFAULT NULL,
  `invoice_no` int(11) DEFAULT NULL,
  `invoice_prefix` varchar(255) DEFAULT '',
  `customer_id` int(11) DEFAULT NULL,
  `customer_ref` bigint(20) DEFAULT NULL,
  `department_ref` int(11) DEFAULT NULL,
  `class_ref` varchar(255) DEFAULT NULL,
  `sales_term_ref` varchar(64) DEFAULT NULL,
  `tracking_no` varchar(128) DEFAULT NULL,
  `sync` tinyint(1) DEFAULT '1',
  `payment_method` varchar(255) DEFAULT NULL,
  `payment_code` varchar(255) DEFAULT NULL,
  `bill_addr_line1` varchar(128) DEFAULT NULL,
  `bill_addr_line2` varchar(128) DEFAULT NULL,
  `bill_addr_line3` varchar(500) DEFAULT NULL,
  `bill_addr_line4` varchar(500) DEFAULT NULL,
  `bill_addr_line5` varchar(500) DEFAULT NULL,
  `bill_addr_city` varchar(500) DEFAULT NULL,
  `bill_addr_country` varchar(255) DEFAULT NULL,
  `bill_addr_country_id` int(11) DEFAULT NULL,
  `bill_addr_zone` varchar(31) DEFAULT NULL,
  `bill_addr_zone_id` int(11) DEFAULT NULL,
  `bill_addr_postcode` varchar(31) DEFAULT NULL,
  `shipping_method_ref` varchar(128) DEFAULT NULL,
  `shipping_method` varchar(255) DEFAULT NULL,
  `shipping_code` varchar(255) DEFAULT NULL,
  `ship_addr_line1` varchar(128) DEFAULT NULL,
  `ship_addr_line2` varchar(128) DEFAULT NULL,
  `ship_addr_line3` varchar(500) DEFAULT NULL,
  `ship_addr_line4` varchar(500) DEFAULT NULL,
  `ship_addr_line5` varchar(500) DEFAULT NULL,
  `ship_addr_city` varchar(500) DEFAULT NULL,
  `ship_addr_country` varchar(255) DEFAULT NULL,
  `ship_addr_country_id` int(11) DEFAULT NULL,
  `ship_addr_zone` varchar(31) DEFAULT NULL,
  `ship_addr_zone_id` int(11) DEFAULT NULL,
  `ship_addr_postcode` varchar(31) DEFAULT NULL,
  `customer_memo` varchar(1000) DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `ship_date` varchar(45) DEFAULT NULL,
  `total` decimal(15,4) DEFAULT NULL,
  `balance` decimal(15,4) DEFAULT NULL,
  `deposit` decimal(15,4) DEFAULT NULL,
  `deposit_account_ref` varchar(255) DEFAULT NULL COMMENT 'This is read-only',
  `print_status` tinyint(2) DEFAULT NULL,
  `email_status` tinyint(2) DEFAULT NULL,
  `bill_email` varchar(100) DEFAULT NULL,
  `bill_telephone` varchar(32) DEFAULT NULL,
  `bill_fax` varchar(32) DEFAULT NULL,
  `delivery_info` text,
  `firstname` varchar(32) DEFAULT NULL,
  `lastname` varchar(32) DEFAULT NULL,
  `bill_addr_firstname` varchar(32) DEFAULT NULL,
  `bill_addr_lastname` varchar(32) DEFAULT NULL,
  `bill_addr_company` varchar(40) DEFAULT NULL,
  `ship_addr_firstname` varchar(32) DEFAULT NULL,
  `ship_addr_lastname` varchar(32) DEFAULT NULL,
  `ship_addr_company` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`work_order_id`,`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_qctr_work_order`
--

LOCK TABLES `oc2_qctr_work_order` WRITE;
/*!40000 ALTER TABLE `oc2_qctr_work_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_qctr_work_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_recurring`
--

DROP TABLE IF EXISTS `oc2_recurring`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_recurring` (
  `recurring_id` int(11) NOT NULL AUTO_INCREMENT,
  `price` decimal(10,4) NOT NULL,
  `frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `duration` int(10) unsigned NOT NULL,
  `cycle` int(10) unsigned NOT NULL,
  `trial_status` tinyint(4) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `trial_frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `trial_duration` int(10) unsigned NOT NULL,
  `trial_cycle` int(10) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  `sort_order` int(11) NOT NULL,
  PRIMARY KEY (`recurring_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_recurring`
--

LOCK TABLES `oc2_recurring` WRITE;
/*!40000 ALTER TABLE `oc2_recurring` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_recurring` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_recurring_description`
--

DROP TABLE IF EXISTS `oc2_recurring_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_recurring_description` (
  `recurring_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`recurring_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_recurring_description`
--

LOCK TABLES `oc2_recurring_description` WRITE;
/*!40000 ALTER TABLE `oc2_recurring_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_recurring_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_return`
--

DROP TABLE IF EXISTS `oc2_return`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_return` (
  `return_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `product` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `opened` tinyint(1) NOT NULL,
  `return_reason_id` int(11) NOT NULL,
  `return_action_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `comment` text,
  `date_ordered` date NOT NULL DEFAULT '0000-00-00',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`return_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_return`
--

LOCK TABLES `oc2_return` WRITE;
/*!40000 ALTER TABLE `oc2_return` DISABLE KEYS */;
INSERT INTO `oc2_return` (`return_id`, `order_id`, `product_id`, `customer_id`, `firstname`, `lastname`, `email`, `telephone`, `product`, `model`, `quantity`, `opened`, `return_reason_id`, `return_action_id`, `return_status_id`, `comment`, `date_ordered`, `date_added`, `date_modified`) VALUES (1,34412,0,0,'Barnypok','YkPqLEXwiSGLspvXHdz','jfvynms4281rt@hotmail.com','25876643087','SLasvmwWbWy','ivxrHMCPUi',23,1,3,0,2,'ibrQGJ http://www.FyLitCl7Pf7ojQdDUOLQOuaxTXbj5iNG.com','0000-00-00','2016-12-29 03:31:08','2016-12-29 03:31:08'),(2,393023,0,0,'Barnypok','bPVrWGWYaCJMDYG','jfvynms4281rt@hotmail.com','90226746295','kyWPAyxxMGIv','MaMztdSdKreotX',6,0,5,0,2,'w8D3WJ http://www.FyLitCl7Pf7ojQdDUOLQOuaxTXbj5iNG.com','0000-00-00','2016-12-31 04:06:51','2016-12-31 04:06:51'),(3,42399,0,0,'Barnypok','xRVKCJDGKiO','jfvynms4281rt@hotmail.com','39975292704','mRjRxSvZqRt','halUXdGhepS',64,0,4,0,2,'NcywKC http://www.FyLitCl7Pf7ojQdDUOLQOuaxTXbj5iNG.com','0000-00-00','2016-12-31 06:21:05','2016-12-31 06:21:05'),(4,662750,0,0,'Barnypok','oUhICBeGBWtNYp','jfvynms4281rt@hotmail.com','33804391440','gORoLAcQvkMGnINNRX','TRhQsAMUuafOB',54,1,5,0,2,'m1HFMY http://www.FyLitCl7Pf7ojQdDUOLQOuaxTXbj5iNG.com','0000-00-00','2016-12-31 14:34:28','2016-12-31 14:34:28'),(5,607172,0,0,'Barnypok','LoHlAqcxsNKWS','jfvynms4281rt@hotmail.com','18716892278','UROElmATVVeoZnMG','eOfPyruuVYBYuJxUp',83,0,5,0,2,'QHwTKD http://www.FyLitCl7Pf7ojQdDUOLQOuaxTXbj5iNG.com','0000-00-00','2016-12-31 19:04:01','2016-12-31 19:04:01'),(6,93927,0,0,'Barnypok','QnBvYAAUXBGJphk','jfvynms4281rt@hotmail.com','15800449502','axsVUXAbRpYeCaCmY','CAtqpIAWSSXCadolLe',31,1,3,0,2,'UkCCoO http://www.FyLitCl7Pf7ojQdDUOLQOuaxTXbj5iNG.com','0000-00-00','2017-01-04 19:36:33','2017-01-04 19:36:33'),(7,663127,0,0,'bnmjstyv','bnmjstyv','gqgpec@kddtse.com','93560170846','TTNRTIwhccfCvgXd','NZHuYRQGatR',64,1,5,0,2,'THRZbG  &lt;a href=&quot;http://nkmwlvulpyar.com/&quot;&gt;nkmwlvulpyar&lt;/a&gt;, [url=http://lltevclywhom.com/]lltevclywhom[/url], [link=http://pxonyayozhem.com/]pxonyayozhem[/link], http://zsjlyqhcnojg.com/','0000-00-00','2017-01-16 14:50:23','2017-01-16 14:50:23'),(8,9412,0,0,'JimmiXzSw','sVscTZRwIQoEwtlk','jimos4581rt@hotmail.com','47034230489','qUURemVJkVjqDEsALU','obrDdofNvDbs',1,0,3,0,2,'jRWAz5 http://www.FyLitCl7Pf7ojQdDUOLQOuaxTXbj5iNG.com','0000-00-00','2017-02-19 01:38:10','2017-02-19 01:38:10'),(9,5249,0,0,'Barnypok','wPmibhpXMVuhOXS','jimos4581rt1@hotmail.com','84513893505','hZMvQXLIAqlsGaFXWGh','TxbHwZCspmguNhKIyNf',76,0,5,0,2,'tdJLRd http://www.LnAJ7K8QSpkiStk3sLL0hQP6MO2wQ8gO.com','0000-00-00','2017-03-31 21:35:08','2017-03-31 21:35:08'),(10,49756,0,0,'Barnypok','QWsYEYnZPWYsSvYJJjO','jimos4581rt1@hotmail.com','91883163701','gXJBBPjvJSZsobBK','VvZedwAgAAVvmXcTa',7,1,4,0,2,'Enwxlq http://www.LnAJ7K8QSpkiStk3sLL0hQP6MO2wQ8gO.com','0000-00-00','2017-04-01 03:36:51','2017-04-01 03:36:51'),(11,7405,0,0,'JimmiXzSq','HAymUHZkApfceYr','jimos45812rt1@hotmail.com','66284082091','KqHcxvodrxlER','TOVoBzIBHbRKl',3,0,3,0,2,'7D1NLE http://www.LnAJ7K8QSpkiStk3sLL0hQP6MO2wQ8gO.com','0000-00-00','2017-05-18 01:41:48','2017-05-18 01:41:48'),(12,203705,0,0,'JimmiXzSq','UwEcIkjzNKPTx','jimos45812rt1@hotmail.com','82057795838','ThpTEToiqlIoksoFPT','bQmkCTjfcWimeiRG',1,1,5,0,2,'xHTpTH http://www.LnAJ7K8QSpkiStk3sLL0hQP6MO2wQ8gO.com','0000-00-00','2017-05-18 08:21:31','2017-05-18 08:21:31'),(13,93573,0,0,'JimmiXzSq','zeETnhTXJikFVxGLl','jimos45812rt1@hotmail.com','88727415429','bhuiXDFnWmbLyNyj','NmmEOwfYVNF',37,0,5,0,2,'HAIpk6 http://www.LnAJ7K8QSpkiStk3sLL0hQP6MO2wQ8gO.com','0000-00-00','2017-05-21 05:00:23','2017-05-21 05:00:23');
/*!40000 ALTER TABLE `oc2_return` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_return_action`
--

DROP TABLE IF EXISTS `oc2_return_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_return_action` (
  `return_action_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`return_action_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_return_action`
--

LOCK TABLES `oc2_return_action` WRITE;
/*!40000 ALTER TABLE `oc2_return_action` DISABLE KEYS */;
INSERT INTO `oc2_return_action` (`return_action_id`, `language_id`, `name`) VALUES (1,1,'Refunded'),(2,1,'Credit Issued'),(3,1,'Replacement Sent');
/*!40000 ALTER TABLE `oc2_return_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_return_history`
--

DROP TABLE IF EXISTS `oc2_return_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_return_history` (
  `return_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `return_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`return_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_return_history`
--

LOCK TABLES `oc2_return_history` WRITE;
/*!40000 ALTER TABLE `oc2_return_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_return_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_return_reason`
--

DROP TABLE IF EXISTS `oc2_return_reason`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_return_reason` (
  `return_reason_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`return_reason_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_return_reason`
--

LOCK TABLES `oc2_return_reason` WRITE;
/*!40000 ALTER TABLE `oc2_return_reason` DISABLE KEYS */;
INSERT INTO `oc2_return_reason` (`return_reason_id`, `language_id`, `name`) VALUES (1,1,'Dead On Arrival'),(2,1,'Received Wrong Item'),(3,1,'Order Error'),(4,1,'Faulty, please supply details'),(5,1,'Other, please supply details');
/*!40000 ALTER TABLE `oc2_return_reason` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_return_status`
--

DROP TABLE IF EXISTS `oc2_return_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_return_status` (
  `return_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`return_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_return_status`
--

LOCK TABLES `oc2_return_status` WRITE;
/*!40000 ALTER TABLE `oc2_return_status` DISABLE KEYS */;
INSERT INTO `oc2_return_status` (`return_status_id`, `language_id`, `name`) VALUES (1,1,'Pending'),(3,1,'Complete'),(2,1,'Awaiting Products');
/*!40000 ALTER TABLE `oc2_return_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_review`
--

DROP TABLE IF EXISTS `oc2_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_review` (
  `review_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`review_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_review`
--

LOCK TABLES `oc2_review` WRITE;
/*!40000 ALTER TABLE `oc2_review` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_sagepay_direct_card`
--

DROP TABLE IF EXISTS `oc2_sagepay_direct_card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_sagepay_direct_card` (
  `card_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  `digits` varchar(4) NOT NULL,
  `expiry` varchar(5) NOT NULL,
  `type` varchar(50) NOT NULL,
  PRIMARY KEY (`card_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_sagepay_direct_card`
--

LOCK TABLES `oc2_sagepay_direct_card` WRITE;
/*!40000 ALTER TABLE `oc2_sagepay_direct_card` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_sagepay_direct_card` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_sagepay_direct_order`
--

DROP TABLE IF EXISTS `oc2_sagepay_direct_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_sagepay_direct_order` (
  `sagepay_direct_order_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `VPSTxId` varchar(50) DEFAULT NULL,
  `VendorTxCode` varchar(50) NOT NULL,
  `SecurityKey` char(50) NOT NULL,
  `TxAuthNo` int(50) DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `release_status` int(1) DEFAULT NULL,
  `void_status` int(1) DEFAULT NULL,
  `settle_type` int(1) DEFAULT NULL,
  `rebate_status` int(1) DEFAULT NULL,
  `currency_code` char(3) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  PRIMARY KEY (`sagepay_direct_order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_sagepay_direct_order`
--

LOCK TABLES `oc2_sagepay_direct_order` WRITE;
/*!40000 ALTER TABLE `oc2_sagepay_direct_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_sagepay_direct_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_sagepay_direct_order_recurring`
--

DROP TABLE IF EXISTS `oc2_sagepay_direct_order_recurring`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_sagepay_direct_order_recurring` (
  `sagepay_direct_order_recurring_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_recurring_id` int(11) NOT NULL,
  `VPSTxId` varchar(50) DEFAULT NULL,
  `VendorTxCode` varchar(50) NOT NULL,
  `SecurityKey` char(50) NOT NULL,
  `TxAuthNo` int(50) DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `next_payment` datetime NOT NULL,
  `trial_end` datetime DEFAULT NULL,
  `subscription_end` datetime DEFAULT NULL,
  `currency_code` char(3) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  PRIMARY KEY (`sagepay_direct_order_recurring_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_sagepay_direct_order_recurring`
--

LOCK TABLES `oc2_sagepay_direct_order_recurring` WRITE;
/*!40000 ALTER TABLE `oc2_sagepay_direct_order_recurring` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_sagepay_direct_order_recurring` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_sagepay_direct_order_transaction`
--

DROP TABLE IF EXISTS `oc2_sagepay_direct_order_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_sagepay_direct_order_transaction` (
  `sagepay_direct_order_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `sagepay_direct_order_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `type` enum('auth','payment','rebate','void') DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  PRIMARY KEY (`sagepay_direct_order_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_sagepay_direct_order_transaction`
--

LOCK TABLES `oc2_sagepay_direct_order_transaction` WRITE;
/*!40000 ALTER TABLE `oc2_sagepay_direct_order_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_sagepay_direct_order_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_sale`
--

DROP TABLE IF EXISTS `oc2_sale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_sale` (
  `sale_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_no` int(11) NOT NULL DEFAULT '0',
  `invoice_prefix` varchar(26) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `store_name` varchar(64) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `custom_field` text NOT NULL,
  `payment_firstname` varchar(32) NOT NULL,
  `payment_lastname` varchar(32) NOT NULL,
  `payment_company` varchar(40) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(10) NOT NULL,
  `payment_country` varchar(128) NOT NULL,
  `payment_country_id` int(11) NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_zone_id` int(11) NOT NULL,
  `payment_address_format` text NOT NULL,
  `payment_custom_field` text NOT NULL,
  `payment_method` varchar(128) NOT NULL,
  `payment_code` varchar(128) NOT NULL,
  `shipping_firstname` varchar(32) NOT NULL,
  `shipping_lastname` varchar(32) NOT NULL,
  `shipping_company` varchar(40) NOT NULL,
  `shipping_address_1` varchar(128) NOT NULL,
  `shipping_address_2` varchar(128) NOT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_postcode` varchar(10) NOT NULL,
  `shipping_country` varchar(128) NOT NULL,
  `shipping_country_id` int(11) NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_zone_id` int(11) NOT NULL,
  `shipping_address_format` text NOT NULL,
  `shipping_custom_field` text NOT NULL,
  `shipping_method` varchar(128) NOT NULL,
  `shipping_code` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sale_status_id` int(11) NOT NULL DEFAULT '0',
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `marketing_id` int(11) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT '1.00000000',
  `ip` varchar(40) NOT NULL,
  `forwarded_ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `accept_language` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`sale_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_sale`
--

LOCK TABLES `oc2_sale` WRITE;
/*!40000 ALTER TABLE `oc2_sale` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_sale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_sale_custom_field`
--

DROP TABLE IF EXISTS `oc2_sale_custom_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_sale_custom_field` (
  `sale_custom_field_id` int(11) NOT NULL AUTO_INCREMENT,
  `sale_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `custom_field_value_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  `location` varchar(16) NOT NULL,
  PRIMARY KEY (`sale_custom_field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_sale_custom_field`
--

LOCK TABLES `oc2_sale_custom_field` WRITE;
/*!40000 ALTER TABLE `oc2_sale_custom_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_sale_custom_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_sale_history`
--

DROP TABLE IF EXISTS `oc2_sale_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_sale_history` (
  `sale_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `sale_id` int(11) NOT NULL,
  `sale_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`sale_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_sale_history`
--

LOCK TABLES `oc2_sale_history` WRITE;
/*!40000 ALTER TABLE `oc2_sale_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_sale_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_sale_option`
--

DROP TABLE IF EXISTS `oc2_sale_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_sale_option` (
  `sale_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `sale_id` int(11) NOT NULL,
  `sale_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  PRIMARY KEY (`sale_option_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_sale_option`
--

LOCK TABLES `oc2_sale_option` WRITE;
/*!40000 ALTER TABLE `oc2_sale_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_sale_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_sale_product`
--

DROP TABLE IF EXISTS `oc2_sale_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_sale_product` (
  `sale_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `sale_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `reward` int(8) NOT NULL,
  PRIMARY KEY (`sale_product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_sale_product`
--

LOCK TABLES `oc2_sale_product` WRITE;
/*!40000 ALTER TABLE `oc2_sale_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_sale_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_sale_recurring`
--

DROP TABLE IF EXISTS `oc2_sale_recurring`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_sale_recurring` (
  `sale_recurring_id` int(11) NOT NULL AUTO_INCREMENT,
  `sale_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `recurring_name` varchar(255) NOT NULL,
  `recurring_description` varchar(255) NOT NULL,
  `recurring_frequency` varchar(25) NOT NULL,
  `recurring_cycle` smallint(6) NOT NULL,
  `recurring_duration` smallint(6) NOT NULL,
  `recurring_price` decimal(10,4) NOT NULL,
  `trial` tinyint(1) NOT NULL,
  `trial_frequency` varchar(25) NOT NULL,
  `trial_cycle` smallint(6) NOT NULL,
  `trial_duration` smallint(6) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`sale_recurring_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_sale_recurring`
--

LOCK TABLES `oc2_sale_recurring` WRITE;
/*!40000 ALTER TABLE `oc2_sale_recurring` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_sale_recurring` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_sale_recurring_transaction`
--

DROP TABLE IF EXISTS `oc2_sale_recurring_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_sale_recurring_transaction` (
  `sale_recurring_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `sale_recurring_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` decimal(10,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`sale_recurring_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_sale_recurring_transaction`
--

LOCK TABLES `oc2_sale_recurring_transaction` WRITE;
/*!40000 ALTER TABLE `oc2_sale_recurring_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_sale_recurring_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_sale_status`
--

DROP TABLE IF EXISTS `oc2_sale_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_sale_status` (
  `sale_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`sale_status_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_sale_status`
--

LOCK TABLES `oc2_sale_status` WRITE;
/*!40000 ALTER TABLE `oc2_sale_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_sale_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_sale_total`
--

DROP TABLE IF EXISTS `oc2_sale_total`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_sale_total` (
  `sale_total_id` int(10) NOT NULL AUTO_INCREMENT,
  `sale_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sort_sale` int(3) NOT NULL,
  PRIMARY KEY (`sale_total_id`),
  KEY `sale_id` (`sale_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_sale_total`
--

LOCK TABLES `oc2_sale_total` WRITE;
/*!40000 ALTER TABLE `oc2_sale_total` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_sale_total` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_sale_voucher`
--

DROP TABLE IF EXISTS `oc2_sale_voucher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_sale_voucher` (
  `sale_voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `sale_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  PRIMARY KEY (`sale_voucher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_sale_voucher`
--

LOCK TABLES `oc2_sale_voucher` WRITE;
/*!40000 ALTER TABLE `oc2_sale_voucher` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_sale_voucher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_setting`
--

DROP TABLE IF EXISTS `oc2_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_setting` (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `code` varchar(32) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=MyISAM AUTO_INCREMENT=32589 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_setting`
--

LOCK TABLES `oc2_setting` WRITE;
/*!40000 ALTER TABLE `oc2_setting` DISABLE KEYS */;
INSERT INTO `oc2_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES (1,0,'shipping','shipping_sort_order','3',0),(2,0,'sub_total','sub_total_sort_order','1',0),(3,0,'sub_total','sub_total_status','1',0),(4,0,'tax','tax_status','1',0),(5,0,'total','total_sort_order','9',0),(6,0,'total','total_status','1',0),(7,0,'tax','tax_sort_order','5',0),(8,0,'free_checkout','free_checkout_sort_order','1',0),(2701,0,'cheque','cheque_sort_order','',0),(2699,0,'cheque','cheque_geo_zone_id','0',0),(2700,0,'cheque','cheque_status','1',0),(14,0,'shipping','shipping_status','1',0),(15,0,'shipping','shipping_estimator','1',0),(27,0,'coupon','coupon_sort_order','4',0),(28,0,'coupon','coupon_status','1',0),(19202,0,'pickup','pickup_sort_order','2',0),(19201,0,'pickup','pickup_status','1',0),(19200,0,'pickup','pickup_geo_zone_id','4',0),(42,0,'credit','credit_sort_order','7',0),(43,0,'credit','credit_status','1',0),(53,0,'reward','reward_sort_order','2',0),(54,0,'reward','reward_status','1',0),(159,0,'affiliate','affiliate_status','1',0),(884,0,'ebay','ebay_default_addressformat','{firstname} {lastname}\n{company}\n{address_1}\n{address_2}\n{city}\n{zone}\n{postcode}\n{country}',0),(811,0,'openbay','openbay_version','2831',0),(7028,0,'qtylp','qtylp_cart_page_qty_text_en','',0),(17397,0,'free','free_sort_order','1',0),(94,0,'voucher','voucher_sort_order','8',0),(95,0,'voucher','voucher_status','1',0),(103,0,'free_checkout','free_checkout_status','1',0),(104,0,'free_checkout','free_checkout_order_status_id','1',0),(28641,0,'journal2_blog_comments','journal2_blog_comments_3142_status','1',0),(28640,0,'journal2_blog_comments','journal2_blog_comments_3141_status','1',0),(28637,0,'journal2_simple_slider','journal2_simple_slider_3138_status','0',0),(28636,0,'journal2_simple_slider','journal2_simple_slider_3137_status','0',0),(28635,0,'journal2_simple_slider','journal2_simple_slider_3136_status','0',0),(28634,0,'journal2_popup','journal2_popup_3135_status','0',0),(28633,0,'journal2_side_blocks','journal2_side_blocks_3134_status','1',0),(28632,0,'journal2_side_blocks','journal2_side_blocks_3133_status','1',0),(28631,0,'journal2_side_blocks','journal2_side_blocks_3132_status','1',0),(28630,0,'journal2_side_blocks','journal2_side_blocks_3131_status','0',0),(28629,0,'journal2_side_blocks','journal2_side_blocks_3130_status','0',0),(28628,0,'journal2_side_blocks','journal2_side_blocks_3129_status','0',0),(28625,0,'journal2_fullscreen_slider','journal2_fullscreen_slider_3126_status','0',0),(28624,0,'journal2_fullscreen_slider','journal2_fullscreen_slider_3125_status','0',0),(28623,0,'journal2_side_products','journal2_side_products_3124_status','0',0),(28622,0,'journal2_side_products','journal2_side_products_3123_status','0',0),(17447,0,'openbaypro','openbaypro_menu','1',0),(17446,0,'openbaypro','openbaypro_status','1',0),(17185,0,'config_bossblog','config_bossblog_image_article_width','270',0),(17184,0,'config_bossblog','config_bossblog_image_category_height','260',0),(30762,8,'theme_default','theme_default_image_location_height','180',0),(30756,8,'theme_default','theme_default_image_compare_height','90',0),(17183,0,'config_bossblog','config_bossblog_image_category_width','880',0),(17182,0,'config_bossblog','config_bossblog_approval_status','0',0),(17181,0,'config_bossblog','config_bossblog_comment_status','1',0),(17180,0,'config_bossblog','config_bossblog_admin_limit','5',0),(17179,0,'config_bossblog','config_bossblog_limit','5',0),(17178,0,'config_bossblog','config_bossblog_keyword','',0),(17177,0,'config_bossblog','config_bossblog_name','News &amp; Updates',0),(690,0,'fraudlabspro','fraudlabspro_score','80',0),(691,0,'fraudlabspro','fraudlabspro_order_status_id','17',0),(692,0,'fraudlabspro','fraudlabspro_review_status_id','18',0),(693,0,'fraudlabspro','fraudlabspro_approve_status_id','2',0),(694,0,'fraudlabspro','fraudlabspro_reject_status_id','8',0),(883,0,'ebay','ebay_time_offset','0',0),(882,0,'ebay','ebay_relistitems','0',0),(881,0,'ebay','ebay_itm_link','http://www.ebay.com/itm/',0),(880,0,'ebay','ebay_create_date','0',0),(879,0,'ebay','ebay_created_hours','48',0),(878,0,'ebay','ebay_confirmadmin_notify','1',0),(877,0,'ebay','ebay_confirm_notify','1',0),(876,0,'ebay','ebay_update_notify','1',0),(875,0,'ebay','ebay_stock_allocate','0',0),(874,0,'ebay','ebay_def_currency','GBP',0),(873,0,'ebay','ebay_status_refunded_id','11',0),(872,0,'ebay','ebay_status_cancelled_id','7',0),(871,0,'ebay','ebay_status_paid_id','2',0),(870,0,'ebay','ebay_status_shipped_id','3',0),(869,0,'ebay','ebay_status_import_id','1',0),(868,0,'ebay','ebay_payment_instruction','',0),(835,0,'etsy','etsy_token','',0),(836,0,'etsy','etsy_secret','',0),(837,0,'etsy','etsy_string1','',0),(838,0,'etsy','etsy_string2','',0),(867,0,'ebay','ebay_logging','1',0),(866,0,'ebay','ebay_enditems','0',0),(865,0,'ebay','ebay_string2','',0),(862,0,'ebay','ebay_token','',0),(863,0,'ebay','ebay_secret','',0),(864,0,'ebay','ebay_string1','',0),(2698,0,'cheque','cheque_order_status_id','1',0),(2697,0,'cheque','cheque_total','1',0),(2696,0,'cheque','cheque_payable','Caffe Tech 2004 Ltd.',0),(4802,0,'bank_transfer','bank_transfer_geo_zone_id','0',0),(4801,0,'bank_transfer','bank_transfer_order_status_id','7',0),(4800,0,'bank_transfer','bank_transfer_total','1',0),(4799,0,'bank_transfer','bank_transfer_bank1','Test',0),(28621,0,'journal2_side_products','journal2_side_products_3122_status','0',0),(28620,0,'journal2_side_products','journal2_side_products_3121_status','0',0),(28619,0,'journal2_cms_blocks','journal2_cms_blocks_3120_status','0',0),(28618,0,'journal2_cms_blocks','journal2_cms_blocks_3119_status','0',0),(28617,0,'journal2_cms_blocks','journal2_cms_blocks_3118_status','0',0),(28616,0,'journal2_side_category','journal2_side_category_3117_status','1',0),(28615,0,'journal2_side_category','journal2_side_category_3116_status','1',0),(28614,0,'journal2_side_category','journal2_side_category_3115_status','1',0),(28613,0,'journal2_carousel','journal2_carousel_3114_status','0',0),(28612,0,'journal2_carousel','journal2_carousel_3113_status','0',0),(28611,0,'journal2_carousel','journal2_carousel_3112_status','0',0),(28610,0,'journal2_carousel','journal2_carousel_3111_status','0',0),(28609,0,'journal2_carousel','journal2_carousel_3110_status','0',0),(17396,0,'free','free_status','1',0),(17395,0,'free','free_geo_zone_id','25',0),(17394,0,'free','free_total','500',0),(4803,0,'bank_transfer','bank_transfer_status','0',0),(4804,0,'bank_transfer','bank_transfer_sort_order','',0),(7027,0,'qtylp','qtylp_prod_page_qty_text_en','',0),(7025,0,'qtylp','qtylp_prod_page_qty_list_items','5',0),(7026,0,'qtylp','qtylp_cart_page_qty_list_items','5',0),(30761,8,'theme_default','theme_default_image_location_width','240',0),(30760,8,'theme_default','theme_default_image_cart_height','80',0),(30759,8,'theme_default','theme_default_image_cart_width','80',0),(30758,8,'theme_default','theme_default_image_wishlist_height','50',0),(30757,8,'theme_default','theme_default_image_wishlist_width','50',0),(28642,0,'journal2_blog_search','journal2_blog_search_3143_status','1',0),(30755,8,'theme_default','theme_default_image_compare_width','90',0),(28608,0,'journal2_slider','journal2_slider_3109_status','0',0),(28607,0,'journal2_slider','journal2_slider_3108_status','0',0),(28606,0,'journal2_photo_gallery','journal2_photo_gallery_3107_status','0',0),(28605,0,'journal2_newsletter','journal2_newsletter_3106_status','0',0),(28604,0,'journal2_newsletter','journal2_newsletter_3105_status','0',0),(28603,0,'journal2_newsletter','journal2_newsletter_3104_status','0',0),(28602,0,'journal2_text_rotator','journal2_text_rotator_3103_status','0',0),(28601,0,'journal2_text_rotator','journal2_text_rotator_3102_status','0',0),(28600,0,'journal2_text_rotator','journal2_text_rotator_3101_status','0',0),(32580,0,'config','config_password','1',0),(32581,0,'config','config_shared','0',0),(32582,0,'config','config_encryption','075bd0fc9bbb048da657ad8f21ff88b5',0),(32577,0,'config','config_robots','abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai\'hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg',0),(32588,0,'config','config_error_filename','error.log',0),(32587,0,'config','config_error_log','1',0),(32586,0,'config','config_error_display','0',0),(32585,0,'config','config_file_mime_allowed','text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/tiff\r\nimage/svg+xml\r\napplication/zip\r\n&quot;application/zip&quot;\r\napplication/x-zip\r\n&quot;application/x-zip&quot;\r\napplication/x-zip-compressed\r\n&quot;application/x-zip-compressed&quot;\r\napplication/rar\r\n&quot;application/rar&quot;\r\napplication/x-rar\r\n&quot;application/x-rar&quot;\r\napplication/x-rar-compressed\r\n&quot;application/x-rar-compressed&quot;\r\napplication/octet-stream\r\n&quot;application/octet-stream&quot;\r\naudio/mpeg\r\nvideo/quicktime\r\napplication/pdf',0),(28599,0,'journal2_static_banners','journal2_static_banners_3100_status','0',0),(32578,0,'config','config_compression','9',0),(32579,0,'config','config_secure','0',0),(13344,0,'google_sitemap','google_sitemap_status','1',0),(32148,0,'theme_default','theme_default_image_wishlist_width','47',0),(18851,0,'pd','pd_list_replace_price_with','{\"1\":\"\"}',1),(18850,0,'pd','pd_list_atc_action','0',0),(18849,0,'pd','pd_list_price_action','0',0),(18848,0,'pd','pd_product_replace_price_with','{\"1\":\"\"}',1),(18847,0,'pd','pd_product_atc_action','0',0),(18846,0,'pd','pd_module_replace_price_with','{\"1\":\"\"}',1),(18845,0,'pd','pd_module_price_action','0',0),(18844,0,'pd','pd_ba_download_status','1',0),(18843,0,'pd','pd_product_price_action','0',0),(18842,0,'pd','pd_aa_login','0',0),(18841,0,'pd','pd_aa_path_to_tags','1',0),(18840,0,'pd','pd_aa_file_tags','',0),(18839,0,'pd','pd_aa_recursive','1',0),(18837,0,'pd','pd_aa_excludes','',0),(18838,0,'pd','pd_ba_sort_order','0',0),(18836,0,'pd','pd_aa_free_download','1',0),(18835,0,'pd','pd_aa_file_types','pdf,rar,zip',0),(18834,0,'pd','pd_aa_all_types','0',0),(18833,0,'pd','pd_aa_duration','0',0),(18832,0,'pd','pd_aa_duration_unit','60',0),(18831,0,'pd','pd_show_purchasable_downloads','1',0),(18830,0,'pd','pd_differentiate_customers','0',0),(18829,0,'pd','pd_show_download_without_link','1',0),(18828,0,'pd','pd_require_login_free','0',0),(18827,0,'pd','pd_add_free_downloads_to_order','1',0),(18826,0,'pd','pd_show_free_download_count','1',0),(18824,0,'pd','pd_cadp_downloads_per_page','50',0),(18825,0,'pd','pd_cadp_show_expired_downloads','1',0),(18823,0,'pd','pd_cadp_show_icon','1',0),(18822,0,'pd','pd_cadp_status','1',0),(18821,0,'pd','pd_dp_name_as_link','1',0),(18820,0,'pd','pd_dp_delay_download','3000',0),(18819,0,'pd','pd_dp_show_icon','1',0),(18818,0,'pd','pd_dp_show_date_added','1',0),(18817,0,'pd','pd_dp_show_date_modified','1',0),(18816,0,'pd','pd_dp_show_file_size','1',0),(18815,0,'pd','pd_dp_show_search_bar','1',0),(18814,0,'pd','pd_dp_show_filter_tags','1',0),(18803,0,'pd','pd_dp_status','1',0),(18804,0,'pd','pd_aa_directory','/home/ctcanada/public_html/downloads/',0),(18805,0,'pd','pd_ba_login','0',0),(18806,0,'pd','pd_ds_seo_keyword','download-samples',0),(18807,0,'pd','pd_delay_download_sample','3000',0),(18808,0,'pd','pd_aa_total_downloads','-1',0),(18809,0,'pd','pd_use_fa_icons','0',0),(18810,0,'pd','pd_aa_constraint','0',0),(18811,0,'pd','pd_aa_status','0',0),(18812,0,'pd','pd_services','eyJzZXJ2aWNlcyI6W3siY29kZSI6IjQ5NjgtQ1RJIiwibmFtZSI6IlByb2R1Y3QgRG93bmxvYWRzIFBSTyBDdXN0b20gVGhlbWUgSW50ZWdyYXRpb24iLCJkZXNjcmlwdGlvbiI6IlByb2R1Y3QgRG93bmxvYWRzIFBSTyBpbnRlZ3JhdGlvbiB3aXRoIGEgPGVtPnNpbmdsZTxcL2VtPiBjdXN0b20gdGhlbWUuIEluY2x1ZGVzIGV4dGVuc2lvbiBpbnN0YWxsYXRpb24gYW5kIHRoZSBjcmVhdGlvbiAmYW1wOyBpbnN0YWxsYXRpb24gb2YgY3VzdG9tIHRhaWxvcmVkIHRlbXBsYXRlIGZpbGVzIChpZiBuZWVkZWQpIGFuZCBhIHNlcGFyYXRlIHZRbW9kIHBhdGNoIGZpbGUgdG8gbWF0Y2ggdGhlIGxvb2sgYW5kIGZlZWwgb2YgeW91ciB0aGVtZS4iLCJjdXJyZW5jeSI6IlVTRCIsInByaWNlIjoiNDAiLCJ0dXJuYXJvdW5kIjoiMS0yIGJ1c2luZXNzIGRheXMifSx7ImNvZGUiOiI0OTY4LTZNLVNTIiwibmFtZSI6IlByb2R1Y3QgRG93bmxvYWRzIFBSTyA2IG1vbnRoIHN1cHBvcnQgc2VydmljZSIsImRlc2NyaXB0aW9uIjoiSW5jbHVkZXMgUHJvZHVjdCBEb3dubG9hZHMgUFJPIGV4dGVuc2lvbiBpbnN0YWxsYXRpb25zLCB1cGdyYWRlcywgY3VzdG9tIHRoZW1lIGludGVncmF0aW9ucyAmYW1wOyB1cGRhdGVzIGFuZCByZXNvbHZpbmcgY29uZmxpY3RzIHdpdGggb3RoZXIgdGhpcmQgcGFydHkgZXh0ZW5zaW9ucyA8c3Ryb25nPmZvciBhIHNpbmdsZSB3ZWJzaXRlPFwvc3Ryb25nPiBkdXJpbmcgdGhpcyBwZXJpb2QuIiwiY3VycmVuY3kiOiJVU0QiLCJwcmljZSI6IjYwIiwidHVybmFyb3VuZCI6IiJ9LHsiY29kZSI6IjQ5NjgtMTJNLVNTIiwibmFtZSI6IlByb2R1Y3QgRG93bmxvYWRzIFBSTyAxMiBtb250aCBzdXBwb3J0IHNlcnZpY2UiLCJkZXNjcmlwdGlvbiI6IkluY2x1ZGVzIFByb2R1Y3QgRG93bmxvYWRzIFBSTyBleHRlbnNpb24gaW5zdGFsbGF0aW9ucywgdXBncmFkZXMsIGN1c3RvbSB0aGVtZSBpbnRlZ3JhdGlvbnMgJmFtcDsgdXBkYXRlcyBhbmQgcmVzb2x2aW5nIGNvbmZsaWN0cyB3aXRoIG90aGVyIHRoaXJkIHBhcnR5IGV4dGVuc2lvbnMgPHN0cm9uZz5mb3IgYSBzaW5nbGUgd2Vic2l0ZTxcL3N0cm9uZz4gZHVyaW5nIHRoaXMgcGVyaW9kLiIsImN1cnJlbmN5IjoiVVNEIiwicHJpY2UiOiIxMDAiLCJ0dXJuYXJvdW5kIjoiIn0seyJjb2RlIjoiNDk2OC0yNE0tU1MiLCJuYW1lIjoiUHJvZHVjdCBEb3dubG9hZHMgUFJPIDI0IG1vbnRoIHN1cHBvcnQgc2VydmljZSIsImRlc2NyaXB0aW9uIjoiSW5jbHVkZXMgUHJvZHVjdCBEb3dubG9hZHMgUFJPIGV4dGVuc2lvbiBpbnN0YWxsYXRpb25zLCB1cGdyYWRlcywgY3VzdG9tIHRoZW1lIGludGVncmF0aW9ucyAmYW1wOyB1cGRhdGVzIGFuZCByZXNvbHZpbmcgY29uZmxpY3RzIHdpdGggb3RoZXIgdGhpcmQgcGFydHkgZXh0ZW5zaW9ucyA8c3Ryb25nPmZvciBhIHNpbmdsZSB3ZWJzaXRlPFwvc3Ryb25nPiBkdXJpbmcgdGhpcyBwZXJpb2QuIiwiY3VycmVuY3kiOiJVU0QiLCJwcmljZSI6IjE1MCIsInR1cm5hcm91bmQiOiIifSx7ImNvZGUiOiJYMDFPUFQiLCJuYW1lIjoiT3BlbkNhcnQgRGF0YWJhc2UgT3B0aW1pemF0aW9ucyIsImRlc2NyaXB0aW9uIjoiRHJhbWF0aWNhbGx5IGJvb3N0cyBsb2FkIHBlcmZvcm1hbmNlIG9mIHByb2R1Y3RzIGFuZCBjYXRlZ29yaWVzIG9uIGxhcmdlIHN0b3Jlcy4gSW5jbHVkZXMgY29udmVyc2lvbiBvZiB0aGUgTXlTUUwgZGF0YWJhc2UgZW5naW5lIHRvIElubm9EQiBhbmQgYWRkaXRpb24gb2YgbWlzc2luZyBmb3JlaWduIGtleXMuIFBsZWFzZSBub3RlIHRoYXQgdGhpcyBvcHRpbWl6YXRpb24gbmVlZHMgdG8gYmUgZG9uZSBhZ2FpbiBhZnRlciBPcGVuQ2FydCBoYXMgYmVlbiB1cGdyYWRlZCBiZWNhdXNlIE9wZW5DYXJ0IHJlbW92ZXMgdGhlc2Ugb3B0aW1pemF0aW9ucyBkdXJpbmcgdXBncmFkZSBwcm9jZXNzLiIsImN1cnJlbmN5IjoiVVNEIiwicHJpY2UiOiIyNSIsInR1cm5hcm91bmQiOiIxIGJ1c2luZXNzIGRheSJ9XSwicmF0ZSI6IlVTRCA1MCIsImV4cGlyZXMiOjE0NjI5MDQzNDF9',0),(17186,0,'config_bossblog','config_bossblog_image_article_height','200',0),(17176,0,'twitterfeed','twitterfeed_border_color','#333333',0),(17174,0,'twitterfeed','twitterfeed_theme','light',0),(17175,0,'twitterfeed','twitterfeed_link_color','#333333',0),(17172,0,'twitterfeed','twitterfeed_transperancy','transparent',0),(17173,0,'twitterfeed','twitterfeed_footer','',0),(17171,0,'twitterfeed','twitterfeed_borders','noborders',0),(17169,0,'twitterfeed','twitterfeed_limit','',0),(17170,0,'twitterfeed','twitterfeed_scrollbar','noscrollbar',0),(17168,0,'twitterfeed','twitterfeed_widget_height','1000',0),(17167,0,'twitterfeed','twitterfeed_widget_title','',0),(17166,0,'twitterfeed','twitterfeed_widget_id','712699435340267520',0),(17165,0,'twitterfeed','twitterfeed_status','1',0),(17187,0,'config_bossblog','config_bossblog_image_related_width','205',0),(17188,0,'config_bossblog','config_bossblog_image_related_height','260',0),(32147,0,'theme_default','theme_default_image_compare_height','228',0),(32146,0,'theme_default','theme_default_image_compare_width','228',0),(32145,0,'theme_default','theme_default_image_related_height','228',0),(32144,0,'theme_default','theme_default_image_related_width','228',0),(32143,0,'theme_default','theme_default_image_additional_height','74',0),(32142,0,'theme_default','theme_default_image_additional_width','74',0),(18813,0,'pd','pd_ba_recursive','1',0),(18802,0,'pd','pd_dp_seo_keyword','docs',0),(18801,0,'pd','pd_dp_downloads_per_page','50',0),(18800,0,'pd','pd_db_widget_status','1',0),(18799,0,'pd','pd_db_display_downloads','360',0),(18798,0,'pd','pd_dp_header_link','1',0),(18797,0,'pd','pd_require_login_sample','1',0),(18796,0,'pd','pd_show_sample_constraint','1',0),(18795,0,'pd','pd_require_login_regular','0',0),(18794,0,'pd','pd_ba_path_to_tags','1',0),(18793,0,'pd','pd_ba_free_download','1',0),(18792,0,'pd','pd_hash_chars','lULg6SFGR0Kmp25HwrhCMJTy39x7ZuAtN1dBcQIzV8OjnqEskfvobW4XiaPDeY',0),(18791,0,'pd','pd_as','WyIwIl0=',0),(18790,0,'pd','pd_show_downloads_remaining','1',0),(18789,0,'pd','pd_force_download','0',0),(18788,0,'pd','pd_delete_file_from_system','1',0),(18787,0,'pd','pd_remove_sql_changes','0',0),(18786,0,'pd','pd_customer_groups','[]',1),(18785,0,'pd','pd_dp_footer_link','1',0),(18784,0,'pd','pd_show_login_required_text','1',0),(18783,0,'pd','pd_show_purchased_downloads','1',0),(18782,0,'pd','pd_installed_version','5.1.4',0),(18781,0,'pd','pd_add_to_previous_orders','1',0),(18780,0,'pd','pd_status','1',0),(18779,0,'pd','pd_require_login','0',0),(18778,0,'pd','pd_update_previous_orders','1',0),(18777,0,'pd','pd_installed','1',0),(18776,0,'pd','pd_aa_sort_order','0',0),(18775,0,'pd','pd_aa_download_status','1',0),(18774,0,'pd','pd_ba_constraint','0',0),(18773,0,'pd','pd_ba_directory','/home/ctcanada/public_html/downloads/',0),(18767,0,'pd','pd_ba_file_types','pdf,rar,zip',0),(18768,0,'pd','pd_ba_excludes','',0),(18769,0,'pd','pd_ba_duration_unit','60',0),(18770,0,'pd','pd_ba_duration','0',0),(18771,0,'pd','pd_ba_total_downloads','-1',0),(18772,0,'pd','pd_ba_status','1',0),(18766,0,'pd','pd_ba_file_tags','',0),(18765,0,'pd','pd_ba_all_types','0',0),(18764,0,'pd','pd_module_atc_action','0',0),(32141,0,'theme_default','theme_default_image_product_height','500',0),(32140,0,'theme_default','theme_default_image_product_width','500',0),(32139,0,'theme_default','theme_default_image_popup_height','500',0),(19701,0,'export_import','export_import_settings_use_option_id','1',0),(19702,0,'export_import','export_import_settings_use_option_value_id','1',0),(19703,0,'export_import','export_import_settings_use_attribute_group_id','1',0),(19704,0,'export_import','export_import_settings_use_attribute_id','1',0),(19705,0,'export_import','export_import_settings_use_filter_group_id','1',0),(19706,0,'export_import','export_import_settings_use_filter_id','1',0),(19707,0,'export_import','export_import_settings_use_export_cache','0',0),(19708,0,'export_import','export_import_settings_use_import_cache','0',0),(32138,0,'theme_default','theme_default_image_popup_width','500',0),(32137,0,'theme_default','theme_default_image_thumb_height','500',0),(32136,0,'theme_default','theme_default_image_thumb_width','500',0),(32575,0,'config','config_maintenance','0',0),(32576,0,'config','config_seo_url','1',0),(21122,0,'qc','qc_dev_ipp_secret','JNkhldnyRZy2rjddHkAoGotFCL9cG4ZFwsdzuecG',0),(21121,0,'qc','qc_dev_ipp_key','qyprdtru7WzjJF1iLVdDY1vrHsNdBz',0),(21120,0,'qc','qc_dev_ipp_token','80f55046bf639b46adb9fbab2f1def86d7ba',0),(21119,0,'qc','qc_enc_key','bcde1234',0),(21118,0,'qc','qc_dsn','mysqli://root:uxQ$W15H)hbb1-bO0Q@localhost/ctcanada_quickcommerce',0),(21117,0,'qc','qc_mode','0',0),(21116,0,'qc','qc_status','1',0),(21123,0,'qc','qc_prod_ipp_token','80f55046bf639b46adb9fbab2f1def86d7ba',0),(21124,0,'qc','qc_prod_ipp_key','qyprdtru7WzjJF1iLVdDY1vrHsNdBz',0),(21125,0,'qc','qc_prod_ipp_secret','JNkhldnyRZy2rjddHkAoGotFCL9cG4ZFwsdzuecG',0),(21126,0,'qc','qc_income_account','75',0),(21127,0,'qc','qc_cogs_account','38',0),(21128,0,'qc','qc_asset_account','127',0),(28598,0,'journal2_static_banners','journal2_static_banners_3099_status','0',0),(28597,0,'journal2_static_banners','journal2_static_banners_3098_status','0',0),(28596,0,'journal2_static_banners','journal2_static_banners_3097_status','0',0),(28595,0,'journal2_static_banners','journal2_static_banners_3096_status','0',0),(28594,0,'journal2_static_banners','journal2_static_banners_3095_status','0',0),(32583,0,'config','config_file_max_size','300000',0),(32584,0,'config','config_file_ext_allowed','zip\r\ntxt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc',0),(32574,0,'config','config_mail_alert_email','',0),(32573,0,'config','config_mail_smtp_timeout','',0),(32572,0,'config','config_mail_smtp_port','',0),(32571,0,'config','config_mail_smtp_password','',0),(32570,0,'config','config_mail_smtp_username','',0),(32569,0,'config','config_mail_smtp_hostname','',0),(32135,0,'theme_default','theme_default_image_category_height','500',0),(32568,0,'config','config_mail_parameter','',0),(32567,0,'config','config_mail_protocol','mail',0),(32566,0,'config','config_ftp_status','0',0),(32565,0,'config','config_ftp_root','',0),(30754,8,'theme_default','theme_default_image_related_height','80',0),(30753,8,'theme_default','theme_default_image_related_width','80',0),(30752,8,'theme_default','theme_default_image_additional_height','74',0),(30750,8,'theme_default','theme_default_image_product_height','80',0),(30751,8,'theme_default','theme_default_image_additional_width','74',0),(30749,8,'theme_default','theme_default_image_product_width','80',0),(30748,8,'theme_default','theme_default_image_popup_height','500',0),(30747,8,'theme_default','theme_default_image_popup_width','500',0),(30746,8,'theme_default','theme_default_image_thumb_height','228',0),(30745,8,'theme_default','theme_default_image_thumb_width','228',0),(30744,8,'theme_default','theme_default_image_category_height','80',0),(30743,8,'theme_default','theme_default_image_category_width','80',0),(32564,0,'config','config_ftp_password','',0),(32563,0,'config','config_ftp_username','',0),(32562,0,'config','config_ftp_port','21',0),(32561,0,'config','config_ftp_hostname','phobulous.ca',0),(32560,0,'config','config_icon','catalog/stores/ace/logo.icon.png',0),(32559,0,'config','config_logo','logo/logo.ace.png',0),(32558,0,'config','config_captcha','',0),(32557,0,'config','config_return_status_id','2',0),(32556,0,'config','config_return_id','0',0),(30728,8,'theme_default','theme_default_product_description_length','100',0),(30727,8,'theme_default','theme_default_product_limit','30',0),(32555,0,'config','config_affiliate_id','0',0),(32554,0,'config','config_affiliate_commission','5',0),(32553,0,'config','config_affiliate_auto','1',0),(32552,0,'config','config_affiliate_approval','0',0),(32551,0,'config','config_stock_checkout','1',0),(32550,0,'config','config_stock_warning','0',0),(32549,0,'config','config_stock_display','0',0),(32548,0,'config','config_api_id','1',0),(32547,0,'config','config_fraud_status_id','8',0),(28643,0,'journal2_blog_search','journal2_blog_search_3144_status','1',0),(28644,0,'journal2_blog_tags','journal2_blog_tags_3145_status','1',0),(28645,0,'journal2_blog_tags','journal2_blog_tags_3146_status','1',0),(31776,0,'journal2_blog_posts','journal2_blog_posts_3157_status','0',0),(28647,0,'journal2_super_filter','journal2_super_filter_3148_status','1',0),(28648,0,'journal2_super_filter','journal2_super_filter_3149_status','1',0),(28649,0,'journal2_super_filter','journal2_super_filter_3150_status','1',0),(28650,0,'journal2_super_filter','journal2_super_filter_3151_status','1',0),(28651,0,'journal2_super_filter','journal2_super_filter_3152_status','1',0),(31700,0,'journal2_header_notice','journal2_header_notice_3155_status','0',0),(28653,0,'journal2_custom_sections','journal2_custom_sections_3154_status','0',0),(32546,0,'config','config_complete_status','[\"5\"]',1),(32545,0,'config','config_processing_status','[\"2\"]',1),(32544,0,'config','config_order_status_id','2',0),(32543,0,'config','config_checkout_id','0',0),(32542,0,'config','config_checkout_guest','1',0),(32539,0,'config','config_account_id','0',0),(32540,0,'config','config_invoice_prefix','CT',0),(32541,0,'config','config_cart_weight','1',0),(32538,0,'config','config_login_attempts','10',0),(32134,0,'theme_default','theme_default_image_category_width','500',0),(32133,0,'theme_default','theme_default_product_description_length','140',0),(31780,0,'dashboard_activity','dashboard_activity_status','1',0),(31781,0,'dashboard_activity','dashboard_activity_sort_order','7',0),(31782,0,'dashboard_sale','dashboard_sale_status','1',0),(31783,0,'dashboard_sale','dashboard_sale_width','3',0),(31784,0,'dashboard_chart','dashboard_chart_status','1',0),(31785,0,'dashboard_chart','dashboard_chart_width','6',0),(31786,0,'dashboard_customer','dashboard_customer_status','1',0),(31787,0,'dashboard_customer','dashboard_customer_width','3',0),(31788,0,'dashboard_map','dashboard_map_status','1',0),(31789,0,'dashboard_map','dashboard_map_width','6',0),(31790,0,'dashboard_online','dashboard_online_status','1',0),(31791,0,'dashboard_online','dashboard_online_width','3',0),(31792,0,'dashboard_order','dashboard_order_sort_order','1',0),(31793,0,'dashboard_order','dashboard_order_status','1',0),(31794,0,'dashboard_order','dashboard_order_width','3',0),(31795,0,'dashboard_sale','dashboard_sale_sort_order','2',0),(31796,0,'dashboard_customer','dashboard_customer_sort_order','3',0),(31797,0,'dashboard_online','dashboard_online_sort_order','4',0),(31798,0,'dashboard_map','dashboard_map_sort_order','5',0),(31799,0,'dashboard_chart','dashboard_chart_sort_order','6',0),(31800,0,'dashboard_recent','dashboard_recent_status','1',0),(31801,0,'dashboard_recent','dashboard_recent_sort_order','8',0),(31802,0,'dashboard_activity','dashboard_activity_width','4',0),(31803,0,'dashboard_recent','dashboard_recent_width','8',0),(32132,0,'theme_default','theme_default_product_limit','30',0),(32131,0,'theme_default','theme_default_status','1',0),(32130,0,'theme_default','theme_default_directory','default',0),(32537,0,'config','config_customer_price','0',0),(32533,0,'config','config_tax_customer','shipping',0),(32536,0,'config','config_customer_search','0',0),(32535,0,'config','config_customer_activity','0',0),(32534,0,'config','config_customer_online','1',0),(32532,0,'config','config_tax_default','shipping',0),(32531,0,'config','config_tax','0',0),(32530,0,'config','config_voucher_max','1000',0),(32529,0,'config','config_voucher_min','1',0),(32528,0,'config','config_review_guest','0',0),(32527,0,'config','config_review_status','0',0),(32526,0,'config','config_limit_admin','150',0),(32525,0,'config','config_product_count','0',0),(32524,0,'config','config_weight_class_id','5',0),(32523,0,'config','config_length_class_id','3',0),(32522,0,'config','config_currency_auto','1',0),(32521,0,'config','config_currency','CAD',0),(32520,0,'config','config_admin_language','en-gb',0),(32519,0,'config','config_language','en-gb',0),(32518,0,'config','config_zone_id','602',0),(32517,0,'config','config_country_id','38',0),(32516,0,'config','config_comment','',0),(32515,0,'config','config_open','',0),(32514,0,'config','config_image','',0),(32513,0,'config','config_fax','',0),(32512,0,'config','config_telephone','5555555555',0),(32511,0,'config','config_email','info@phobulous.ca',0),(32510,0,'config','config_geocode','',0),(32509,0,'config','config_address','Edmonton',0),(32508,0,'config','config_owner','Phobulous',0),(32507,0,'config','config_name','Phobulous',0),(32506,0,'config','config_layout_id','10022',0),(32505,0,'config','config_theme','theme_default',0),(32149,0,'theme_default','theme_default_image_wishlist_height','47',0),(32150,0,'theme_default','theme_default_image_cart_width','47',0),(32151,0,'theme_default','theme_default_image_cart_height','47',0),(32152,0,'theme_default','theme_default_image_location_width','268',0),(32153,0,'theme_default','theme_default_image_location_height','50',0),(32504,0,'config','config_meta_keyword','Phobulous, Edmonton Alberta',0),(32503,0,'config','config_meta_description','Phobulous',0),(32502,0,'config','config_meta_title','Phobulous',0);
/*!40000 ALTER TABLE `oc2_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_stock_status`
--

DROP TABLE IF EXISTS `oc2_stock_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_stock_status` (
  `stock_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`stock_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_stock_status`
--

LOCK TABLES `oc2_stock_status` WRITE;
/*!40000 ALTER TABLE `oc2_stock_status` DISABLE KEYS */;
INSERT INTO `oc2_stock_status` (`stock_status_id`, `language_id`, `name`) VALUES (7,1,'In Stock'),(8,1,'Pre-Order'),(5,1,'Out Of Stock'),(6,1,'2-3 Days'),(9,1,'Special Order'),(10,1,'Clearance'),(11,1,'Discontinued');
/*!40000 ALTER TABLE `oc2_stock_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_store`
--

DROP TABLE IF EXISTS `oc2_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_store` (
  `store_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ssl` varchar(255) NOT NULL,
  PRIMARY KEY (`store_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_store`
--

LOCK TABLES `oc2_store` WRITE;
/*!40000 ALTER TABLE `oc2_store` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_subscribe`
--

DROP TABLE IF EXISTS `oc2_subscribe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_subscribe` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email_id` varchar(225) NOT NULL,
  `name` varchar(225) NOT NULL,
  `option1` varchar(225) NOT NULL,
  `option2` varchar(225) NOT NULL,
  `option3` varchar(225) NOT NULL,
  `option4` varchar(225) NOT NULL,
  `option5` varchar(225) NOT NULL,
  `option6` varchar(225) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Index_2` (`email_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_subscribe`
--

LOCK TABLES `oc2_subscribe` WRITE;
/*!40000 ALTER TABLE `oc2_subscribe` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_subscribe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_tax_class`
--

DROP TABLE IF EXISTS `oc2_tax_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_tax_class` (
  `tax_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`tax_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_tax_class`
--

LOCK TABLES `oc2_tax_class` WRITE;
/*!40000 ALTER TABLE `oc2_tax_class` DISABLE KEYS */;
INSERT INTO `oc2_tax_class` (`tax_class_id`, `title`, `description`, `date_added`, `date_modified`) VALUES (1,'GST','Federal goods and services tax','2016-08-16 11:56:13','2016-08-16 11:56:13'),(2,'Out of Scope','Out of scope','2016-08-16 11:56:13','2016-08-16 11:56:13'),(3,'Zero-rated','Zero-rated','2016-08-16 11:56:13','2016-08-16 11:56:13'),(4,'Exempt','Tax-exempt','2016-08-16 11:56:13','2016-08-16 11:56:13');
/*!40000 ALTER TABLE `oc2_tax_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_tax_rate`
--

DROP TABLE IF EXISTS `oc2_tax_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_tax_rate` (
  `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT,
  `geo_zone_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `type` char(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`tax_rate_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_tax_rate`
--

LOCK TABLES `oc2_tax_rate` WRITE;
/*!40000 ALTER TABLE `oc2_tax_rate` DISABLE KEYS */;
INSERT INTO `oc2_tax_rate` (`tax_rate_id`, `geo_zone_id`, `name`, `rate`, `type`, `date_added`, `date_modified`) VALUES (1,5,'NOTAXS',0.0000,'P','2016-08-16 11:56:45','2016-08-16 11:56:45'),(2,5,'NOTAXP',0.0000,'P','2016-08-16 11:56:45','2016-08-16 11:56:45'),(3,5,'GST/HST Line 405 Adjustment',0.0000,'P','2016-08-16 11:56:45','2016-08-16 11:56:45'),(4,5,'GST/HST Line 205 Adjustment',0.0000,'P','2016-08-16 11:56:45','2016-08-16 11:56:45'),(5,5,'GST/HST Line 111 Adjustment',0.0000,'P','2016-08-16 11:56:46','2016-08-16 11:56:46'),(6,5,'GST/HST Line 110 Adjustment',0.0000,'P','2016-08-16 11:56:46','2016-08-16 11:56:46'),(7,5,'GST/HST Line 107 Adjustment',0.0000,'P','2016-08-16 11:56:46','2016-08-16 11:56:46'),(8,5,'GST/HST Line 104 Adjustment',0.0000,'P','2016-08-16 11:56:46','2016-08-16 11:56:46'),(9,5,'GST',5.0000,'P','2016-08-16 11:56:46','2016-08-16 13:00:33'),(10,5,'GST (ITC)',5.0000,'P','2016-08-16 11:56:46','2016-08-16 11:56:46'),(11,5,'GST/HST ZR',0.0000,'P','2016-08-16 11:56:46','2016-08-16 11:56:46'),(12,5,'GST/HST (ITC) ZR',0.0000,'P','2016-08-16 11:56:46','2016-08-16 11:56:46'),(13,5,'GST ES',0.0000,'P','2016-08-16 11:56:46','2016-08-16 11:56:46'),(14,5,'GST EP',0.0000,'P','2016-08-16 11:56:46','2016-08-16 11:56:46');
/*!40000 ALTER TABLE `oc2_tax_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_tax_rate_to_customer_group`
--

DROP TABLE IF EXISTS `oc2_tax_rate_to_customer_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_tax_rate_to_customer_group` (
  `tax_rate_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`tax_rate_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_tax_rate_to_customer_group`
--

LOCK TABLES `oc2_tax_rate_to_customer_group` WRITE;
/*!40000 ALTER TABLE `oc2_tax_rate_to_customer_group` DISABLE KEYS */;
INSERT INTO `oc2_tax_rate_to_customer_group` (`tax_rate_id`, `customer_group_id`) VALUES (9,1),(9,2),(9,3),(9,4),(9,5),(9,6),(9,7),(9,8),(9,9);
/*!40000 ALTER TABLE `oc2_tax_rate_to_customer_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_tax_rule`
--

DROP TABLE IF EXISTS `oc2_tax_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_tax_rule` (
  `tax_rule_id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_class_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `based` varchar(10) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  PRIMARY KEY (`tax_rule_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_tax_rule`
--

LOCK TABLES `oc2_tax_rule` WRITE;
/*!40000 ALTER TABLE `oc2_tax_rule` DISABLE KEYS */;
INSERT INTO `oc2_tax_rule` (`tax_rule_id`, `tax_class_id`, `tax_rate_id`, `based`, `priority`) VALUES (1,4,13,'store',1),(2,1,9,'store',1),(3,2,1,'store',1),(4,3,11,'store',1);
/*!40000 ALTER TABLE `oc2_tax_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_theme`
--

DROP TABLE IF EXISTS `oc2_theme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_theme` (
  `theme_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `theme` varchar(64) NOT NULL,
  `route` varchar(64) NOT NULL,
  `code` text NOT NULL,
  PRIMARY KEY (`theme_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_theme`
--

LOCK TABLES `oc2_theme` WRITE;
/*!40000 ALTER TABLE `oc2_theme` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_theme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_translation`
--

DROP TABLE IF EXISTS `oc2_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_translation` (
  `translation_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`translation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_translation`
--

LOCK TABLES `oc2_translation` WRITE;
/*!40000 ALTER TABLE `oc2_translation` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_upload`
--

DROP TABLE IF EXISTS `oc2_upload`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_upload` (
  `upload_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`upload_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_upload`
--

LOCK TABLES `oc2_upload` WRITE;
/*!40000 ALTER TABLE `oc2_upload` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_upload` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_url_alias`
--

DROP TABLE IF EXISTS `oc2_url_alias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_url_alias` (
  `url_alias_id` int(11) NOT NULL AUTO_INCREMENT,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`url_alias_id`),
  KEY `query` (`query`),
  KEY `keyword` (`keyword`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_url_alias`
--

LOCK TABLES `oc2_url_alias` WRITE;
/*!40000 ALTER TABLE `oc2_url_alias` DISABLE KEYS */;
INSERT INTO `oc2_url_alias` (`url_alias_id`, `query`, `keyword`) VALUES (10,'category_id=10',''),(11,'category_id=11','');
/*!40000 ALTER TABLE `oc2_url_alias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_user`
--

DROP TABLE IF EXISTS `oc2_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_group_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `image` varchar(255) NOT NULL,
  `code` varchar(40) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_user`
--

LOCK TABLES `oc2_user` WRITE;
/*!40000 ALTER TABLE `oc2_user` DISABLE KEYS */;
INSERT INTO `oc2_user` (`user_id`, `user_group_id`, `username`, `password`, `salt`, `firstname`, `lastname`, `email`, `image`, `code`, `ip`, `status`, `date_added`) VALUES (1,1,'superadmin','d1c194daffb03fc2653027c87f76a12a4eaeac5f','x3x6r693j','Super','Admin','lucas@bluecollardev.com','','','50.99.80.18',1,'2015-07-25 20:49:49'),(8,11,'AlbertLeung','5eab163d07b3c86bf5ed78484d9205a70e1197c0','KNs9fMGgo','Albert','Leung','albertcanada@gmail.com','','','127.0.0.1',1,'2018-01-04 11:02:45');
/*!40000 ALTER TABLE `oc2_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_user_group`
--

DROP TABLE IF EXISTS `oc2_user_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_user_group` (
  `user_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL,
  PRIMARY KEY (`user_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_user_group`
--

LOCK TABLES `oc2_user_group` WRITE;
/*!40000 ALTER TABLE `oc2_user_group` DISABLE KEYS */;
INSERT INTO `oc2_user_group` (`user_group_id`, `name`, `permission`) VALUES (1,'Administrator','{\"access\":[\"antifraud\\/fraudlabspro\",\"antifraud\\/maxmind\",\"api\\/currency\",\"api\\/customer\",\"api\\/lines\",\"api\\/payment\",\"api\\/shipping\",\"batch_editor\\/data\",\"batch_editor\\/index\",\"batch_editor\\/setting\",\"batch_editor\\/template\",\"batch_editor\\/tool\",\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/attribute_template\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/purchase_order\",\"catalog\\/purchase_order_payment\",\"catalog\\/purchase_order_shipping\",\"catalog\\/purchase_order_vendor\",\"catalog\\/qc_product\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/filemanager\",\"common\\/menu\",\"common\\/profile\",\"common\\/stats\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_ban_ip\",\"customer\\/customer_group\",\"dashboard\\/activity\",\"dashboard\\/chart\",\"dashboard\\/customer\",\"dashboard\\/map\",\"dashboard\\/online\",\"dashboard\\/order\",\"dashboard\\/qc_datasync\",\"dashboard\\/recent\",\"dashboard\\/sale\",\"design\\/banner\",\"design\\/language\",\"design\\/layout\",\"design\\/menu\",\"design\\/theme\",\"design\\/translation\",\"event\\/compatibility\",\"event\\/theme\",\"extension\\/analytics\\/google_analytics\",\"extension\\/antifraud\",\"extension\\/captcha\\/basic_captcha\",\"extension\\/captcha\\/google_captcha\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/event\",\"extension\\/extension\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/feed\\/openbaypro\",\"extension\\/fraud\",\"extension\\/fraud\\/fraudlabspro\",\"extension\\/fraud\\/ip\",\"extension\\/fraud\\/maxmind\",\"extension\\/installer\",\"extension\\/modification\",\"extension\\/module\",\"extension\\/module\\/account\",\"extension\\/module\\/affiliate\",\"extension\\/module\\/amazon_login\",\"extension\\/module\\/amazon_pay\",\"extension\\/module\\/banner\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/divido_calculator\",\"extension\\/module\\/ebay_listing\",\"extension\\/module\\/featured\",\"extension\\/module\\/filter\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/html\",\"extension\\/module\\/information\",\"extension\\/module\\/klarna_checkout_module\",\"extension\\/module\\/latest\",\"extension\\/module\\/laybuy_layout\",\"extension\\/module\\/pilibaba_button\",\"extension\\/module\\/pp_button\",\"extension\\/module\\/pp_login\",\"extension\\/module\\/sagepay_direct_cards\",\"extension\\/module\\/sagepay_server_cards\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/special\",\"extension\\/module\\/store\",\"extension\\/openbay\",\"extension\\/openbay\\/amazon\",\"extension\\/openbay\\/amazon_listing\",\"extension\\/openbay\\/amazon_product\",\"extension\\/openbay\\/amazonus\",\"extension\\/openbay\\/amazonus_listing\",\"extension\\/openbay\\/amazonus_product\",\"extension\\/openbay\\/ebay\",\"extension\\/openbay\\/ebay_profile\",\"extension\\/openbay\\/ebay_template\",\"extension\\/openbay\\/etsy\",\"extension\\/openbay\\/etsy_product\",\"extension\\/openbay\\/etsy_shipping\",\"extension\\/openbay\\/etsy_shop\",\"extension\\/openbay\\/fba\",\"extension\\/payment\",\"extension\\/payment\\/amazon_login_pay\",\"extension\\/payment\\/authorizenet_aim\",\"extension\\/payment\\/authorizenet_sim\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/bluepay_hosted\",\"extension\\/payment\\/bluepay_redirect\",\"extension\\/payment\\/cardconnect\",\"extension\\/payment\\/cardinity\",\"extension\\/payment\\/cheque\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/divido\",\"extension\\/payment\\/eway\",\"extension\\/payment\\/firstdata\",\"extension\\/payment\\/firstdata_remote\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/g2apay\",\"extension\\/payment\\/globalpay\",\"extension\\/payment\\/globalpay_remote\",\"extension\\/payment\\/klarna_account\",\"extension\\/payment\\/klarna_checkout\",\"extension\\/payment\\/klarna_invoice\",\"extension\\/payment\\/laybuy\",\"extension\\/payment\\/liqpay\",\"extension\\/payment\\/nochex\",\"extension\\/payment\\/paymate\",\"extension\\/payment\\/paypoint\",\"extension\\/payment\\/payza\",\"extension\\/payment\\/perpetual_payments\",\"extension\\/payment\\/pilibaba\",\"extension\\/payment\\/pp_express\",\"extension\\/payment\\/pp_payflow\",\"extension\\/payment\\/pp_payflow_iframe\",\"extension\\/payment\\/pp_pro\",\"extension\\/payment\\/pp_pro_iframe\",\"extension\\/payment\\/pp_standard\",\"extension\\/payment\\/realex\",\"extension\\/payment\\/realex_remote\",\"extension\\/payment\\/sagepay_direct\",\"extension\\/payment\\/sagepay_server\",\"extension\\/payment\\/sagepay_us\",\"extension\\/payment\\/securetrading_pp\",\"extension\\/payment\\/securetrading_ws\",\"extension\\/payment\\/skrill\",\"extension\\/payment\\/twocheckout\",\"extension\\/payment\\/web_payment_software\",\"extension\\/payment\\/worldpay\",\"extension\\/shipping\",\"extension\\/shipping\\/auspost\",\"extension\\/shipping\\/citylink\",\"extension\\/shipping\\/fedex\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/parcelforce_48\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/royal_mail\",\"extension\\/shipping\\/ups\",\"extension\\/shipping\\/usps\",\"extension\\/shipping\\/weight\",\"extension\\/store\",\"extension\\/theme\\/theme_default\",\"extension\\/total\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/handling\",\"extension\\/total\\/klarna_fee\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/reward\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"feed\\/google_base\",\"feed\\/google_sitemap\",\"feed\\/openbaypro\",\"fraud\\/activity\",\"fraud\\/email\",\"fraud\\/fraudlabspro\",\"fraud\\/ip\",\"fraud\\/login\",\"fraud\\/maxmind\",\"fraud\\/password\",\"fraud\\/postcode\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/invoice_status\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"marketing\\/affiliate\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"module\\/account\",\"module\\/affiliate\",\"module\\/amazon_button\",\"module\\/amazon_login\",\"module\\/amazon_pay\",\"module\\/banner\",\"module\\/bestseller\",\"module\\/blogcategory\",\"module\\/blogrecentcomment\",\"module\\/blogrecentpost\",\"module\\/blogsearch\",\"module\\/blogtagcloud\",\"module\\/c2c\",\"module\\/callforprice\",\"module\\/carousel\",\"module\\/category\",\"module\\/ebay_listing\",\"module\\/ebaydisplay\",\"module\\/featured\",\"module\\/filter\",\"module\\/form_builder\",\"module\\/google_hangouts\",\"module\\/html\",\"module\\/information\",\"module\\/journal2\",\"module\\/latest\",\"module\\/newslettersubscribe\",\"module\\/order_entry\",\"module\\/payment_processor\",\"module\\/pp_button\",\"module\\/pp_login\",\"module\\/purchase_order\",\"module\\/qc_admin\",\"module\\/qc_kendopage\",\"module\\/qc_quote\",\"module\\/rest_api\",\"module\\/restadmin\",\"module\\/slideshow\",\"module\\/special\",\"module\\/store\",\"openbay\\/amazon\",\"openbay\\/amazon_listing\",\"openbay\\/amazon_product\",\"openbay\\/amazonus\",\"openbay\\/amazonus_listing\",\"openbay\\/amazonus_product\",\"openbay\\/ebay\",\"openbay\\/ebay_profile\",\"openbay\\/ebay_template\",\"openbay\\/etsy\",\"openbay\\/etsy_product\",\"openbay\\/etsy_shipping\",\"openbay\\/etsy_shop\",\"payment\\/amazon_checkout\",\"payment\\/amazon_login_pay\",\"payment\\/authorizenet_aim\",\"payment\\/authorizenet_sim\",\"payment\\/bank_transfer\",\"payment\\/bluepay_hosted\",\"payment\\/bluepay_hosted_form\",\"payment\\/bluepay_redirect\",\"payment\\/cheque\",\"payment\\/cod\",\"payment\\/firstdata\",\"payment\\/firstdata_remote\",\"payment\\/free_checkout\",\"payment\\/g2apay\",\"payment\\/globalpay\",\"payment\\/globalpay_remote\",\"payment\\/gtsecure\",\"payment\\/klarna_account\",\"payment\\/klarna_invoice\",\"payment\\/liqpay\",\"payment\\/moneybookers\",\"payment\\/nochex\",\"payment\\/paymate\",\"payment\\/paypoint\",\"payment\\/payza\",\"payment\\/perpetual_payments\",\"payment\\/pp_express\",\"payment\\/pp_payflow\",\"payment\\/pp_payflow_iframe\",\"payment\\/pp_pro\",\"payment\\/pp_pro_iframe\",\"payment\\/pp_standard\",\"payment\\/realex\",\"payment\\/realex_remote\",\"payment\\/sagepay_direct\",\"payment\\/sagepay_server\",\"payment\\/sagepay_us\",\"payment\\/securetrading_pp\",\"payment\\/securetrading_ws\",\"payment\\/skrill\",\"payment\\/twocheckout\",\"payment\\/web_payment_software\",\"payment\\/worldpay\",\"qc\\/account\",\"qc\\/app\",\"qc\\/config\",\"qc\\/currency\",\"qc\\/customer\",\"qc\\/diagnostics\",\"qc\\/disconnect\",\"qc\\/index\",\"qc\\/invoice\",\"qc\\/menu\",\"qc\\/oauth\",\"qc\\/payment\",\"qc\\/product\",\"qc\\/product_import_caffetech\",\"qc\\/product_import_iif\",\"qc\\/product_import_nexearn\",\"qc\\/purchase_order\",\"qc\\/reconnect\",\"qc\\/source\",\"qc\\/success\",\"qc\\/tax_class\",\"qc\\/tax_rate\",\"qc\\/tax_rule\",\"qc\\/vendor\",\"report\\/affiliate\",\"report\\/affiliate_activity\",\"report\\/affiliate_login\",\"report\\/customer_activity\",\"report\\/customer_credit\",\"report\\/customer_login\",\"report\\/customer_online\",\"report\\/customer_order\",\"report\\/customer_reward\",\"report\\/customer_search\",\"report\\/end_of_day\",\"report\\/marketing\",\"report\\/product_purchased\",\"report\\/product_viewed\",\"report\\/sale_coupon\",\"report\\/sale_order\",\"report\\/sale_return\",\"report\\/sale_shipping\",\"report\\/sale_tax\",\"sale\\/custom_field\",\"sale\\/customer\",\"sale\\/customer_ban_ip\",\"sale\\/customer_group\",\"sale\\/newssubscribers\",\"sale\\/order\",\"sale\\/order_entry\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/sale\",\"sale\\/sale_entry\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"shipping\\/auspost\",\"shipping\\/canada_post_ws_rest\",\"shipping\\/canada_post_ws_rest\",\"shipping\\/citylink\",\"shipping\\/fedex\",\"shipping\\/flat\",\"shipping\\/free\",\"shipping\\/item\",\"shipping\\/mdhl\",\"shipping\\/parcelforce_48\",\"shipping\\/pickup\",\"shipping\\/qc_purolator_soap\",\"shipping\\/qc_purolator_soap\",\"shipping\\/qc_purolator_soap_lib\\/ShipmentController\",\"shipping\\/royal_mail\",\"shipping\\/ups\",\"shipping\\/usps\",\"shipping\\/weight\",\"startup\\/compatibility\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"tool\\/backup\",\"tool\\/error_log\",\"tool\\/log\",\"tool\\/upload\",\"total\\/coupon\",\"total\\/credit\",\"total\\/handling\",\"total\\/klarna_fee\",\"total\\/low_order_fee\",\"total\\/reward\",\"total\\/shipping\",\"total\\/sub_total\",\"total\\/tax\",\"total\\/total\",\"total\\/voucher\",\"transaction\\/credit\",\"transaction\\/credit_entry\",\"transaction\\/invoice\",\"transaction\\/payment\",\"transaction\\/purchase_order\",\"transaction\\/sale\",\"transaction\\/sale_entry\",\"transaction\\/work_order\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\",\"vendor\\/vendor\",\"extension\\/module\\/journal2\",\"extension\\/module\\/journal2\",\"extension\\/module\\/restadmin\",\"extension\\/module\\/rest_api\",\"extension\\/module\\/qc_admin\",\"extension\\/module\\/qc_quote\",\"extension\\/module\\/rest_api\",\"extension\\/module\\/restadmin\",\"extension\\/module\\/rest_api\",\"extension\\/module\\/restadmin\",\"extension\\/module\\/rest_api\",\"extension\\/module\\/rest_api\",\"extension\\/module\\/restadmin\"],\"modify\":[\"antifraud\\/fraudlabspro\",\"antifraud\\/maxmind\",\"api\\/currency\",\"api\\/customer\",\"api\\/lines\",\"api\\/payment\",\"api\\/shipping\",\"batch_editor\\/data\",\"batch_editor\\/index\",\"batch_editor\\/setting\",\"batch_editor\\/template\",\"batch_editor\\/tool\",\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/attribute_template\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/purchase_order\",\"catalog\\/purchase_order_payment\",\"catalog\\/purchase_order_shipping\",\"catalog\\/purchase_order_vendor\",\"catalog\\/qc_product\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/filemanager\",\"common\\/menu\",\"common\\/profile\",\"common\\/stats\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_ban_ip\",\"customer\\/customer_group\",\"dashboard\\/activity\",\"dashboard\\/chart\",\"dashboard\\/customer\",\"dashboard\\/map\",\"dashboard\\/online\",\"dashboard\\/order\",\"dashboard\\/qc_datasync\",\"dashboard\\/recent\",\"dashboard\\/sale\",\"design\\/banner\",\"design\\/language\",\"design\\/layout\",\"design\\/menu\",\"design\\/theme\",\"design\\/translation\",\"event\\/compatibility\",\"event\\/theme\",\"extension\\/analytics\\/google_analytics\",\"extension\\/antifraud\",\"extension\\/captcha\\/basic_captcha\",\"extension\\/captcha\\/google_captcha\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/event\",\"extension\\/extension\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/feed\\/openbaypro\",\"extension\\/fraud\",\"extension\\/fraud\\/fraudlabspro\",\"extension\\/fraud\\/ip\",\"extension\\/fraud\\/maxmind\",\"extension\\/installer\",\"extension\\/modification\",\"extension\\/module\",\"extension\\/module\\/account\",\"extension\\/module\\/affiliate\",\"extension\\/module\\/amazon_login\",\"extension\\/module\\/amazon_pay\",\"extension\\/module\\/banner\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/divido_calculator\",\"extension\\/module\\/ebay_listing\",\"extension\\/module\\/featured\",\"extension\\/module\\/filter\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/html\",\"extension\\/module\\/information\",\"extension\\/module\\/klarna_checkout_module\",\"extension\\/module\\/latest\",\"extension\\/module\\/laybuy_layout\",\"extension\\/module\\/pilibaba_button\",\"extension\\/module\\/pp_button\",\"extension\\/module\\/pp_login\",\"extension\\/module\\/sagepay_direct_cards\",\"extension\\/module\\/sagepay_server_cards\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/special\",\"extension\\/module\\/store\",\"extension\\/openbay\",\"extension\\/openbay\\/amazon\",\"extension\\/openbay\\/amazon_listing\",\"extension\\/openbay\\/amazon_product\",\"extension\\/openbay\\/amazonus\",\"extension\\/openbay\\/amazonus_listing\",\"extension\\/openbay\\/amazonus_product\",\"extension\\/openbay\\/ebay\",\"extension\\/openbay\\/ebay_profile\",\"extension\\/openbay\\/ebay_template\",\"extension\\/openbay\\/etsy\",\"extension\\/openbay\\/etsy_product\",\"extension\\/openbay\\/etsy_shipping\",\"extension\\/openbay\\/etsy_shop\",\"extension\\/openbay\\/fba\",\"extension\\/payment\",\"extension\\/payment\\/amazon_login_pay\",\"extension\\/payment\\/authorizenet_aim\",\"extension\\/payment\\/authorizenet_sim\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/bluepay_hosted\",\"extension\\/payment\\/bluepay_redirect\",\"extension\\/payment\\/cardconnect\",\"extension\\/payment\\/cardinity\",\"extension\\/payment\\/cheque\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/divido\",\"extension\\/payment\\/eway\",\"extension\\/payment\\/firstdata\",\"extension\\/payment\\/firstdata_remote\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/g2apay\",\"extension\\/payment\\/globalpay\",\"extension\\/payment\\/globalpay_remote\",\"extension\\/payment\\/klarna_account\",\"extension\\/payment\\/klarna_checkout\",\"extension\\/payment\\/klarna_invoice\",\"extension\\/payment\\/laybuy\",\"extension\\/payment\\/liqpay\",\"extension\\/payment\\/nochex\",\"extension\\/payment\\/paymate\",\"extension\\/payment\\/paypoint\",\"extension\\/payment\\/payza\",\"extension\\/payment\\/perpetual_payments\",\"extension\\/payment\\/pilibaba\",\"extension\\/payment\\/pp_express\",\"extension\\/payment\\/pp_payflow\",\"extension\\/payment\\/pp_payflow_iframe\",\"extension\\/payment\\/pp_pro\",\"extension\\/payment\\/pp_pro_iframe\",\"extension\\/payment\\/pp_standard\",\"extension\\/payment\\/realex\",\"extension\\/payment\\/realex_remote\",\"extension\\/payment\\/sagepay_direct\",\"extension\\/payment\\/sagepay_server\",\"extension\\/payment\\/sagepay_us\",\"extension\\/payment\\/securetrading_pp\",\"extension\\/payment\\/securetrading_ws\",\"extension\\/payment\\/skrill\",\"extension\\/payment\\/twocheckout\",\"extension\\/payment\\/web_payment_software\",\"extension\\/payment\\/worldpay\",\"extension\\/shipping\",\"extension\\/shipping\\/auspost\",\"extension\\/shipping\\/citylink\",\"extension\\/shipping\\/fedex\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/parcelforce_48\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/royal_mail\",\"extension\\/shipping\\/ups\",\"extension\\/shipping\\/usps\",\"extension\\/shipping\\/weight\",\"extension\\/store\",\"extension\\/theme\\/theme_default\",\"extension\\/total\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/handling\",\"extension\\/total\\/klarna_fee\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/reward\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"feed\\/google_base\",\"feed\\/google_sitemap\",\"feed\\/openbaypro\",\"fraud\\/activity\",\"fraud\\/email\",\"fraud\\/fraudlabspro\",\"fraud\\/ip\",\"fraud\\/login\",\"fraud\\/maxmind\",\"fraud\\/password\",\"fraud\\/postcode\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/invoice_status\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"marketing\\/affiliate\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"module\\/account\",\"module\\/affiliate\",\"module\\/amazon_button\",\"module\\/amazon_login\",\"module\\/amazon_pay\",\"module\\/banner\",\"module\\/bestseller\",\"module\\/blogcategory\",\"module\\/blogrecentcomment\",\"module\\/blogrecentpost\",\"module\\/blogsearch\",\"module\\/blogtagcloud\",\"module\\/c2c\",\"module\\/callforprice\",\"module\\/carousel\",\"module\\/category\",\"module\\/ebay_listing\",\"module\\/ebaydisplay\",\"module\\/featured\",\"module\\/filter\",\"module\\/form_builder\",\"module\\/google_hangouts\",\"module\\/html\",\"module\\/information\",\"module\\/journal2\",\"module\\/latest\",\"module\\/newslettersubscribe\",\"module\\/order_entry\",\"module\\/payment_processor\",\"module\\/pp_button\",\"module\\/pp_login\",\"module\\/purchase_order\",\"module\\/qc_admin\",\"module\\/qc_kendopage\",\"module\\/qc_quote\",\"module\\/rest_api\",\"module\\/restadmin\",\"module\\/slideshow\",\"module\\/special\",\"module\\/store\",\"openbay\\/amazon\",\"openbay\\/amazon_listing\",\"openbay\\/amazon_product\",\"openbay\\/amazonus\",\"openbay\\/amazonus_listing\",\"openbay\\/amazonus_product\",\"openbay\\/ebay\",\"openbay\\/ebay_profile\",\"openbay\\/ebay_template\",\"openbay\\/etsy\",\"openbay\\/etsy_product\",\"openbay\\/etsy_shipping\",\"openbay\\/etsy_shop\",\"payment\\/amazon_checkout\",\"payment\\/amazon_login_pay\",\"payment\\/authorizenet_aim\",\"payment\\/authorizenet_sim\",\"payment\\/bank_transfer\",\"payment\\/bluepay_hosted\",\"payment\\/bluepay_hosted_form\",\"payment\\/bluepay_redirect\",\"payment\\/cheque\",\"payment\\/cod\",\"payment\\/firstdata\",\"payment\\/firstdata_remote\",\"payment\\/free_checkout\",\"payment\\/g2apay\",\"payment\\/globalpay\",\"payment\\/globalpay_remote\",\"payment\\/gtsecure\",\"payment\\/klarna_account\",\"payment\\/klarna_invoice\",\"payment\\/liqpay\",\"payment\\/moneybookers\",\"payment\\/nochex\",\"payment\\/paymate\",\"payment\\/paypoint\",\"payment\\/payza\",\"payment\\/perpetual_payments\",\"payment\\/pp_express\",\"payment\\/pp_payflow\",\"payment\\/pp_payflow_iframe\",\"payment\\/pp_pro\",\"payment\\/pp_pro_iframe\",\"payment\\/pp_standard\",\"payment\\/realex\",\"payment\\/realex_remote\",\"payment\\/sagepay_direct\",\"payment\\/sagepay_server\",\"payment\\/sagepay_us\",\"payment\\/securetrading_pp\",\"payment\\/securetrading_ws\",\"payment\\/skrill\",\"payment\\/twocheckout\",\"payment\\/web_payment_software\",\"payment\\/worldpay\",\"qc\\/account\",\"qc\\/app\",\"qc\\/config\",\"qc\\/currency\",\"qc\\/customer\",\"qc\\/diagnostics\",\"qc\\/disconnect\",\"qc\\/index\",\"qc\\/invoice\",\"qc\\/menu\",\"qc\\/oauth\",\"qc\\/payment\",\"qc\\/product\",\"qc\\/product_import_caffetech\",\"qc\\/product_import_iif\",\"qc\\/product_import_nexearn\",\"qc\\/purchase_order\",\"qc\\/reconnect\",\"qc\\/source\",\"qc\\/success\",\"qc\\/tax_class\",\"qc\\/tax_rate\",\"qc\\/tax_rule\",\"qc\\/vendor\",\"report\\/affiliate\",\"report\\/affiliate_activity\",\"report\\/affiliate_login\",\"report\\/customer_activity\",\"report\\/customer_credit\",\"report\\/customer_login\",\"report\\/customer_online\",\"report\\/customer_order\",\"report\\/customer_reward\",\"report\\/customer_search\",\"report\\/end_of_day\",\"report\\/marketing\",\"report\\/product_purchased\",\"report\\/product_viewed\",\"report\\/sale_coupon\",\"report\\/sale_order\",\"report\\/sale_return\",\"report\\/sale_shipping\",\"report\\/sale_tax\",\"sale\\/custom_field\",\"sale\\/customer\",\"sale\\/customer_ban_ip\",\"sale\\/customer_group\",\"sale\\/newssubscribers\",\"sale\\/order\",\"sale\\/order_entry\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/sale\",\"sale\\/sale_entry\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"shipping\\/auspost\",\"shipping\\/canada_post_ws_rest\",\"shipping\\/canada_post_ws_rest\",\"shipping\\/citylink\",\"shipping\\/fedex\",\"shipping\\/flat\",\"shipping\\/free\",\"shipping\\/item\",\"shipping\\/mdhl\",\"shipping\\/parcelforce_48\",\"shipping\\/pickup\",\"shipping\\/qc_purolator_soap\",\"shipping\\/qc_purolator_soap\",\"shipping\\/qc_purolator_soap_lib\\/ShipmentController\",\"shipping\\/royal_mail\",\"shipping\\/ups\",\"shipping\\/usps\",\"shipping\\/weight\",\"startup\\/compatibility\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"tool\\/backup\",\"tool\\/error_log\",\"tool\\/log\",\"tool\\/upload\",\"total\\/coupon\",\"total\\/credit\",\"total\\/handling\",\"total\\/klarna_fee\",\"total\\/low_order_fee\",\"total\\/reward\",\"total\\/shipping\",\"total\\/sub_total\",\"total\\/tax\",\"total\\/total\",\"total\\/voucher\",\"transaction\\/credit\",\"transaction\\/credit_entry\",\"transaction\\/invoice\",\"transaction\\/payment\",\"transaction\\/purchase_order\",\"transaction\\/sale\",\"transaction\\/sale_entry\",\"transaction\\/work_order\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\",\"vendor\\/vendor\",\"extension\\/module\\/journal2\",\"extension\\/module\\/journal2\",\"extension\\/module\\/restadmin\",\"extension\\/module\\/rest_api\",\"extension\\/module\\/qc_admin\",\"extension\\/module\\/qc_quote\",\"extension\\/module\\/rest_api\",\"extension\\/module\\/restadmin\",\"extension\\/module\\/rest_api\",\"extension\\/module\\/restadmin\",\"extension\\/module\\/rest_api\",\"extension\\/module\\/rest_api\",\"extension\\/module\\/restadmin\"]}'),(10,'Demonstration',''),(11,'Super Administrator','{\"access\":[\"antifraud\\/fraudlabspro\",\"antifraud\\/maxmind\",\"api\\/currency\",\"api\\/customer\",\"api\\/lines\",\"api\\/payment\",\"api\\/shipping\",\"batch_editor\\/data\",\"batch_editor\\/index\",\"batch_editor\\/setting\",\"batch_editor\\/template\",\"batch_editor\\/tool\",\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/attribute_template\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/purchase_order\",\"catalog\\/purchase_order_payment\",\"catalog\\/purchase_order_shipping\",\"catalog\\/purchase_order_vendor\",\"catalog\\/qc_product\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/filemanager\",\"common\\/menu\",\"common\\/profile\",\"common\\/stats\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_ban_ip\",\"customer\\/customer_group\",\"dashboard\\/activity\",\"dashboard\\/chart\",\"dashboard\\/customer\",\"dashboard\\/map\",\"dashboard\\/online\",\"dashboard\\/order\",\"dashboard\\/qc_datasync\",\"dashboard\\/recent\",\"dashboard\\/sale\",\"design\\/banner\",\"design\\/language\",\"design\\/layout\",\"design\\/menu\",\"design\\/theme\",\"design\\/translation\",\"event\\/compatibility\",\"event\\/theme\",\"extension\\/analytics\\/google_analytics\",\"extension\\/antifraud\",\"extension\\/captcha\\/basic_captcha\",\"extension\\/captcha\\/google_captcha\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/event\",\"extension\\/extension\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/feed\\/openbaypro\",\"extension\\/fraud\",\"extension\\/fraud\\/fraudlabspro\",\"extension\\/fraud\\/ip\",\"extension\\/fraud\\/maxmind\",\"extension\\/installer\",\"extension\\/modification\",\"extension\\/module\",\"extension\\/module\\/account\",\"extension\\/module\\/affiliate\",\"extension\\/module\\/amazon_login\",\"extension\\/module\\/amazon_pay\",\"extension\\/module\\/banner\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/divido_calculator\",\"extension\\/module\\/ebay_listing\",\"extension\\/module\\/featured\",\"extension\\/module\\/filter\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/html\",\"extension\\/module\\/information\",\"extension\\/module\\/klarna_checkout_module\",\"extension\\/module\\/latest\",\"extension\\/module\\/laybuy_layout\",\"extension\\/module\\/pilibaba_button\",\"extension\\/module\\/pp_button\",\"extension\\/module\\/pp_login\",\"extension\\/module\\/qc_admin\",\"extension\\/module\\/qc_kendopage\",\"extension\\/module\\/qc_quote\",\"extension\\/module\\/rest_api\",\"extension\\/module\\/restadmin\",\"extension\\/module\\/sagepay_direct_cards\",\"extension\\/module\\/sagepay_server_cards\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/special\",\"extension\\/module\\/store\",\"extension\\/openbay\",\"extension\\/openbay\\/amazon\",\"extension\\/openbay\\/amazon_listing\",\"extension\\/openbay\\/amazon_product\",\"extension\\/openbay\\/amazonus\",\"extension\\/openbay\\/amazonus_listing\",\"extension\\/openbay\\/amazonus_product\",\"extension\\/openbay\\/ebay\",\"extension\\/openbay\\/ebay_profile\",\"extension\\/openbay\\/ebay_template\",\"extension\\/openbay\\/etsy\",\"extension\\/openbay\\/etsy_product\",\"extension\\/openbay\\/etsy_shipping\",\"extension\\/openbay\\/etsy_shop\",\"extension\\/openbay\\/fba\",\"extension\\/payment\",\"extension\\/payment\\/amazon_login_pay\",\"extension\\/payment\\/authorizenet_aim\",\"extension\\/payment\\/authorizenet_sim\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/bluepay_hosted\",\"extension\\/payment\\/bluepay_redirect\",\"extension\\/payment\\/cardconnect\",\"extension\\/payment\\/cardinity\",\"extension\\/payment\\/cheque\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/divido\",\"extension\\/payment\\/eway\",\"extension\\/payment\\/firstdata\",\"extension\\/payment\\/firstdata_remote\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/g2apay\",\"extension\\/payment\\/globalpay\",\"extension\\/payment\\/globalpay_remote\",\"extension\\/payment\\/klarna_account\",\"extension\\/payment\\/klarna_checkout\",\"extension\\/payment\\/klarna_invoice\",\"extension\\/payment\\/laybuy\",\"extension\\/payment\\/liqpay\",\"extension\\/payment\\/nochex\",\"extension\\/payment\\/paymate\",\"extension\\/payment\\/paypoint\",\"extension\\/payment\\/payza\",\"extension\\/payment\\/perpetual_payments\",\"extension\\/payment\\/pilibaba\",\"extension\\/payment\\/pp_express\",\"extension\\/payment\\/pp_payflow\",\"extension\\/payment\\/pp_payflow_iframe\",\"extension\\/payment\\/pp_pro\",\"extension\\/payment\\/pp_pro_iframe\",\"extension\\/payment\\/pp_standard\",\"extension\\/payment\\/realex\",\"extension\\/payment\\/realex_remote\",\"extension\\/payment\\/sagepay_direct\",\"extension\\/payment\\/sagepay_server\",\"extension\\/payment\\/sagepay_us\",\"extension\\/payment\\/securetrading_pp\",\"extension\\/payment\\/securetrading_ws\",\"extension\\/payment\\/skrill\",\"extension\\/payment\\/twocheckout\",\"extension\\/payment\\/web_payment_software\",\"extension\\/payment\\/worldpay\",\"extension\\/shipping\",\"extension\\/shipping\\/auspost\",\"extension\\/shipping\\/citylink\",\"extension\\/shipping\\/fedex\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/parcelforce_48\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/royal_mail\",\"extension\\/shipping\\/ups\",\"extension\\/shipping\\/usps\",\"extension\\/shipping\\/weight\",\"extension\\/store\",\"extension\\/theme\\/theme_default\",\"extension\\/total\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/handling\",\"extension\\/total\\/klarna_fee\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/reward\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"feed\\/google_base\",\"feed\\/google_sitemap\",\"feed\\/openbaypro\",\"fraud\\/activity\",\"fraud\\/email\",\"fraud\\/fraudlabspro\",\"fraud\\/ip\",\"fraud\\/login\",\"fraud\\/maxmind\",\"fraud\\/password\",\"fraud\\/postcode\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/invoice_status\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"marketing\\/affiliate\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"openbay\\/amazon\",\"openbay\\/amazon_listing\",\"openbay\\/amazon_product\",\"openbay\\/amazonus\",\"openbay\\/amazonus_listing\",\"openbay\\/amazonus_product\",\"openbay\\/ebay\",\"openbay\\/ebay_profile\",\"openbay\\/ebay_template\",\"openbay\\/etsy\",\"openbay\\/etsy_product\",\"openbay\\/etsy_shipping\",\"openbay\\/etsy_shop\",\"qc\\/account\",\"qc\\/app\",\"qc\\/config\",\"qc\\/currency\",\"qc\\/customer\",\"qc\\/diagnostics\",\"qc\\/disconnect\",\"qc\\/index\",\"qc\\/invoice\",\"qc\\/menu\",\"qc\\/oauth\",\"qc\\/payment\",\"qc\\/product\",\"qc\\/product_import_caffetech\",\"qc\\/product_import_iif\",\"qc\\/product_import_nexearn\",\"qc\\/purchase_order\",\"qc\\/reconnect\",\"qc\\/source\",\"qc\\/success\",\"qc\\/tax_class\",\"qc\\/tax_rate\",\"qc\\/tax_rule\",\"qc\\/vendor\",\"report\\/affiliate\",\"report\\/affiliate_activity\",\"report\\/affiliate_login\",\"report\\/customer_activity\",\"report\\/customer_credit\",\"report\\/customer_login\",\"report\\/customer_online\",\"report\\/customer_order\",\"report\\/customer_reward\",\"report\\/customer_search\",\"report\\/end_of_day\",\"report\\/marketing\",\"report\\/product_purchased\",\"report\\/product_viewed\",\"report\\/sale_coupon\",\"report\\/sale_order\",\"report\\/sale_return\",\"report\\/sale_shipping\",\"report\\/sale_tax\",\"sale\\/custom_field\",\"sale\\/customer\",\"sale\\/customer_ban_ip\",\"sale\\/customer_group\",\"sale\\/newssubscribers\",\"sale\\/order\",\"sale\\/order_entry\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/sale\",\"sale\\/sale_entry\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"startup\\/compatibility\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"tool\\/backup\",\"tool\\/error_log\",\"tool\\/log\",\"tool\\/upload\",\"transaction\\/credit\",\"transaction\\/credit_entry\",\"transaction\\/invoice\",\"transaction\\/payment\",\"transaction\\/purchase_order\",\"transaction\\/sale\",\"transaction\\/sale_entry\",\"transaction\\/work_order\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\",\"vendor\\/vendor\"],\"modify\":[\"antifraud\\/fraudlabspro\",\"antifraud\\/maxmind\",\"api\\/currency\",\"api\\/customer\",\"api\\/lines\",\"api\\/payment\",\"api\\/shipping\",\"batch_editor\\/data\",\"batch_editor\\/index\",\"batch_editor\\/setting\",\"batch_editor\\/template\",\"batch_editor\\/tool\",\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/attribute_template\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/purchase_order\",\"catalog\\/purchase_order_payment\",\"catalog\\/purchase_order_shipping\",\"catalog\\/purchase_order_vendor\",\"catalog\\/qc_product\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/filemanager\",\"common\\/menu\",\"common\\/profile\",\"common\\/stats\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_ban_ip\",\"customer\\/customer_group\",\"dashboard\\/activity\",\"dashboard\\/chart\",\"dashboard\\/customer\",\"dashboard\\/map\",\"dashboard\\/online\",\"dashboard\\/order\",\"dashboard\\/qc_datasync\",\"dashboard\\/recent\",\"dashboard\\/sale\",\"design\\/banner\",\"design\\/language\",\"design\\/layout\",\"design\\/menu\",\"design\\/theme\",\"design\\/translation\",\"event\\/compatibility\",\"event\\/theme\",\"extension\\/analytics\\/google_analytics\",\"extension\\/antifraud\",\"extension\\/captcha\\/basic_captcha\",\"extension\\/captcha\\/google_captcha\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/event\",\"extension\\/extension\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/feed\\/openbaypro\",\"extension\\/fraud\",\"extension\\/fraud\\/fraudlabspro\",\"extension\\/fraud\\/ip\",\"extension\\/fraud\\/maxmind\",\"extension\\/installer\",\"extension\\/modification\",\"extension\\/module\",\"extension\\/module\\/account\",\"extension\\/module\\/affiliate\",\"extension\\/module\\/amazon_login\",\"extension\\/module\\/amazon_pay\",\"extension\\/module\\/banner\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/divido_calculator\",\"extension\\/module\\/ebay_listing\",\"extension\\/module\\/featured\",\"extension\\/module\\/filter\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/html\",\"extension\\/module\\/information\",\"extension\\/module\\/klarna_checkout_module\",\"extension\\/module\\/latest\",\"extension\\/module\\/laybuy_layout\",\"extension\\/module\\/pilibaba_button\",\"extension\\/module\\/pp_button\",\"extension\\/module\\/pp_login\",\"extension\\/module\\/qc_admin\",\"extension\\/module\\/qc_kendopage\",\"extension\\/module\\/qc_quote\",\"extension\\/module\\/rest_api\",\"extension\\/module\\/restadmin\",\"extension\\/module\\/sagepay_direct_cards\",\"extension\\/module\\/sagepay_server_cards\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/special\",\"extension\\/module\\/store\",\"extension\\/openbay\",\"extension\\/openbay\\/amazon\",\"extension\\/openbay\\/amazon_listing\",\"extension\\/openbay\\/amazon_product\",\"extension\\/openbay\\/amazonus\",\"extension\\/openbay\\/amazonus_listing\",\"extension\\/openbay\\/amazonus_product\",\"extension\\/openbay\\/ebay\",\"extension\\/openbay\\/ebay_profile\",\"extension\\/openbay\\/ebay_template\",\"extension\\/openbay\\/etsy\",\"extension\\/openbay\\/etsy_product\",\"extension\\/openbay\\/etsy_shipping\",\"extension\\/openbay\\/etsy_shop\",\"extension\\/openbay\\/fba\",\"extension\\/payment\",\"extension\\/payment\\/amazon_login_pay\",\"extension\\/payment\\/authorizenet_aim\",\"extension\\/payment\\/authorizenet_sim\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/bluepay_hosted\",\"extension\\/payment\\/bluepay_redirect\",\"extension\\/payment\\/cardconnect\",\"extension\\/payment\\/cardinity\",\"extension\\/payment\\/cheque\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/divido\",\"extension\\/payment\\/eway\",\"extension\\/payment\\/firstdata\",\"extension\\/payment\\/firstdata_remote\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/g2apay\",\"extension\\/payment\\/globalpay\",\"extension\\/payment\\/globalpay_remote\",\"extension\\/payment\\/klarna_account\",\"extension\\/payment\\/klarna_checkout\",\"extension\\/payment\\/klarna_invoice\",\"extension\\/payment\\/laybuy\",\"extension\\/payment\\/liqpay\",\"extension\\/payment\\/nochex\",\"extension\\/payment\\/paymate\",\"extension\\/payment\\/paypoint\",\"extension\\/payment\\/payza\",\"extension\\/payment\\/perpetual_payments\",\"extension\\/payment\\/pilibaba\",\"extension\\/payment\\/pp_express\",\"extension\\/payment\\/pp_payflow\",\"extension\\/payment\\/pp_payflow_iframe\",\"extension\\/payment\\/pp_pro\",\"extension\\/payment\\/pp_pro_iframe\",\"extension\\/payment\\/pp_standard\",\"extension\\/payment\\/realex\",\"extension\\/payment\\/realex_remote\",\"extension\\/payment\\/sagepay_direct\",\"extension\\/payment\\/sagepay_server\",\"extension\\/payment\\/sagepay_us\",\"extension\\/payment\\/securetrading_pp\",\"extension\\/payment\\/securetrading_ws\",\"extension\\/payment\\/skrill\",\"extension\\/payment\\/twocheckout\",\"extension\\/payment\\/web_payment_software\",\"extension\\/payment\\/worldpay\",\"extension\\/shipping\",\"extension\\/shipping\\/auspost\",\"extension\\/shipping\\/citylink\",\"extension\\/shipping\\/fedex\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/parcelforce_48\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/royal_mail\",\"extension\\/shipping\\/ups\",\"extension\\/shipping\\/usps\",\"extension\\/shipping\\/weight\",\"extension\\/store\",\"extension\\/theme\\/theme_default\",\"extension\\/total\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/handling\",\"extension\\/total\\/klarna_fee\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/reward\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"feed\\/google_base\",\"feed\\/google_sitemap\",\"feed\\/openbaypro\",\"fraud\\/activity\",\"fraud\\/email\",\"fraud\\/fraudlabspro\",\"fraud\\/ip\",\"fraud\\/login\",\"fraud\\/maxmind\",\"fraud\\/password\",\"fraud\\/postcode\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/invoice_status\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"marketing\\/affiliate\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"openbay\\/amazon\",\"openbay\\/amazon_listing\",\"openbay\\/amazon_product\",\"openbay\\/amazonus\",\"openbay\\/amazonus_listing\",\"openbay\\/amazonus_product\",\"openbay\\/ebay\",\"openbay\\/ebay_profile\",\"openbay\\/ebay_template\",\"openbay\\/etsy\",\"openbay\\/etsy_product\",\"openbay\\/etsy_shipping\",\"openbay\\/etsy_shop\",\"qc\\/account\",\"qc\\/app\",\"qc\\/config\",\"qc\\/currency\",\"qc\\/customer\",\"qc\\/diagnostics\",\"qc\\/disconnect\",\"qc\\/index\",\"qc\\/invoice\",\"qc\\/menu\",\"qc\\/oauth\",\"qc\\/payment\",\"qc\\/product\",\"qc\\/product_import_caffetech\",\"qc\\/product_import_iif\",\"qc\\/product_import_nexearn\",\"qc\\/purchase_order\",\"qc\\/reconnect\",\"qc\\/source\",\"qc\\/success\",\"qc\\/tax_class\",\"qc\\/tax_rate\",\"qc\\/tax_rule\",\"qc\\/vendor\",\"report\\/affiliate\",\"report\\/affiliate_activity\",\"report\\/affiliate_login\",\"report\\/customer_activity\",\"report\\/customer_credit\",\"report\\/customer_login\",\"report\\/customer_online\",\"report\\/customer_order\",\"report\\/customer_reward\",\"report\\/customer_search\",\"report\\/end_of_day\",\"report\\/marketing\",\"report\\/product_purchased\",\"report\\/product_viewed\",\"report\\/sale_coupon\",\"report\\/sale_order\",\"report\\/sale_return\",\"report\\/sale_shipping\",\"report\\/sale_tax\",\"sale\\/custom_field\",\"sale\\/customer\",\"sale\\/customer_ban_ip\",\"sale\\/customer_group\",\"sale\\/newssubscribers\",\"sale\\/order\",\"sale\\/order_entry\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/sale\",\"sale\\/sale_entry\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"startup\\/compatibility\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"tool\\/backup\",\"tool\\/error_log\",\"tool\\/log\",\"tool\\/upload\",\"transaction\\/credit\",\"transaction\\/credit_entry\",\"transaction\\/invoice\",\"transaction\\/payment\",\"transaction\\/purchase_order\",\"transaction\\/sale\",\"transaction\\/sale_entry\",\"transaction\\/work_order\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\",\"vendor\\/vendor\"]}'),(12,'Sales','{\"access\":[\"antifraud\\/fraudlabspro\",\"antifraud\\/maxmind\",\"api\\/currency\",\"api\\/customer\",\"api\\/lines\",\"api\\/payment\",\"api\\/shipping\",\"batch_editor\\/data\",\"batch_editor\\/index\",\"batch_editor\\/setting\",\"batch_editor\\/template\",\"batch_editor\\/tool\",\"bossblog\\/articles\",\"bossblog\\/category\",\"bossblog\\/comment\",\"bossblog\\/setting\",\"bossthemes\\/bossthemes\",\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/boss_refinesearch_setting\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/purchase_order\",\"catalog\\/purchase_order_payment\",\"catalog\\/purchase_order_shipping\",\"catalog\\/purchase_order_vendor\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/filemanager\",\"common\\/menu\",\"common\\/profile\",\"common\\/stats\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_ban_ip\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/boss_layout\",\"design\\/layout\",\"extension\\/antifraud\",\"extension\\/event\",\"fraud\\/activity\",\"fraud\\/email\",\"fraud\\/fraudlabspro\",\"fraud\\/ip\",\"fraud\\/login\",\"fraud\\/maxmind\",\"fraud\\/password\",\"fraud\\/postcode\",\"marketing\\/affiliate\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"module\\/account\",\"module\\/affiliate\",\"module\\/amazon_button\",\"module\\/amazon_login\",\"module\\/amazon_pay\",\"module\\/banner\",\"module\\/bestseller\",\"module\\/blogcategory\",\"module\\/blogrecentcomment\",\"module\\/blogrecentpost\",\"module\\/blogsearch\",\"module\\/blogtagcloud\",\"module\\/boss_alphabet\",\"module\\/boss_blogfeatured\",\"module\\/boss_category\",\"module\\/boss_facecomments\",\"module\\/boss_filterproduct\",\"module\\/boss_manager\",\"module\\/boss_manufacturer\",\"module\\/boss_newmegamenu\",\"module\\/boss_quickshop\",\"module\\/boss_refinesearch\",\"module\\/boss_revolutionslider\",\"module\\/boss_tagcloud\",\"module\\/boss_topcategory\",\"module\\/boss_zoom\",\"module\\/bossblog\",\"module\\/c2c\",\"module\\/callforprice\",\"module\\/carousel\",\"module\\/category\",\"module\\/ebay_listing\",\"module\\/ebaydisplay\",\"module\\/featured\",\"module\\/filter\",\"module\\/google_hangouts\",\"module\\/html\",\"module\\/information\",\"module\\/latest\",\"module\\/newslettersubscribe\",\"module\\/order_entry\",\"module\\/payment_processor\",\"module\\/pp_button\",\"module\\/pp_login\",\"module\\/purchase_order\",\"module\\/qc_kendopage\",\"module\\/rest_api\",\"module\\/restadmin\",\"module\\/slideshow\",\"module\\/special\",\"module\\/store\",\"openbay\\/amazon\",\"openbay\\/amazon_listing\",\"openbay\\/amazon_product\",\"openbay\\/amazonus\",\"openbay\\/amazonus_listing\",\"openbay\\/amazonus_product\",\"openbay\\/ebay\",\"openbay\\/ebay_profile\",\"openbay\\/ebay_template\",\"openbay\\/etsy\",\"openbay\\/etsy_product\",\"openbay\\/etsy_shipping\",\"openbay\\/etsy_shop\",\"payment\\/amazon_checkout\",\"payment\\/amazon_login_pay\",\"payment\\/authorizenet_aim\",\"payment\\/authorizenet_sim\",\"payment\\/bank_transfer\",\"payment\\/bluepay_hosted\",\"payment\\/bluepay_hosted_form\",\"payment\\/bluepay_redirect\",\"payment\\/cheque\",\"payment\\/cod\",\"payment\\/firstdata\",\"payment\\/firstdata_remote\",\"payment\\/free_checkout\",\"payment\\/g2apay\",\"payment\\/globalpay\",\"payment\\/globalpay_remote\",\"payment\\/gtsecure\",\"payment\\/klarna_account\",\"payment\\/klarna_invoice\",\"payment\\/liqpay\",\"payment\\/moneybookers\",\"payment\\/nochex\",\"payment\\/paymate\",\"payment\\/paypoint\",\"payment\\/payza\",\"payment\\/perpetual_payments\",\"payment\\/pp_express\",\"payment\\/pp_payflow\",\"payment\\/pp_payflow_iframe\",\"payment\\/pp_pro\",\"payment\\/pp_pro_iframe\",\"payment\\/pp_standard\",\"payment\\/realex\",\"payment\\/realex_remote\",\"payment\\/sagepay_direct\",\"payment\\/sagepay_server\",\"payment\\/sagepay_us\",\"payment\\/securetrading_pp\",\"payment\\/securetrading_ws\",\"payment\\/skrill\",\"payment\\/twocheckout\",\"payment\\/web_payment_software\",\"payment\\/worldpay\",\"qc\\/account\",\"qc\\/app\",\"qc\\/config\",\"qc\\/currency\",\"qc\\/customer\",\"qc\\/diagnostics\",\"qc\\/disconnect\",\"qc\\/index\",\"qc\\/invoice\",\"qc\\/menu\",\"qc\\/oauth\",\"qc\\/payment\",\"qc\\/product\",\"qc\\/product_import_caffetech\",\"qc\\/product_import_nexearn\",\"qc\\/purchase_order\",\"qc\\/reconnect\",\"qc\\/source\",\"qc\\/success\",\"qc\\/tax_class\",\"qc\\/tax_rate\",\"qc\\/tax_rule\",\"qc\\/vendor\",\"report\\/affiliate\",\"report\\/affiliate_activity\",\"report\\/affiliate_login\",\"report\\/customer_activity\",\"report\\/customer_credit\",\"report\\/customer_login\",\"report\\/customer_online\",\"report\\/customer_order\",\"report\\/customer_reward\",\"report\\/marketing\",\"report\\/product_purchased\",\"report\\/product_viewed\",\"report\\/sale_coupon\",\"report\\/sale_order\",\"report\\/sale_return\",\"report\\/sale_shipping\",\"report\\/sale_tax\",\"sale\\/custom_field\",\"sale\\/customer\",\"sale\\/customer_ban_ip\",\"sale\\/customer_group\",\"sale\\/newssubscribers\",\"sale\\/order\",\"sale\\/order_entry\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"shipping\\/auspost\",\"shipping\\/canada_post_ws_rest\",\"shipping\\/citylink\",\"shipping\\/fedex\",\"shipping\\/flat\",\"shipping\\/free\",\"shipping\\/item\",\"shipping\\/mdhl\",\"shipping\\/parcelforce_48\",\"shipping\\/pickup\",\"shipping\\/royal_mail\",\"shipping\\/ups\",\"shipping\\/usps\",\"shipping\\/weight\",\"tool\\/backup\",\"tool\\/error_log\",\"tool\\/upload\",\"total\\/coupon\",\"total\\/credit\",\"total\\/handling\",\"total\\/klarna_fee\",\"total\\/low_order_fee\",\"total\\/reward\",\"total\\/shipping\",\"total\\/sub_total\",\"total\\/tax\",\"total\\/total\",\"total\\/voucher\",\"transaction\\/invoice\",\"transaction\\/sale\",\"transaction\\/work_order\"],\"modify\":[\"antifraud\\/fraudlabspro\",\"antifraud\\/maxmind\",\"api\\/currency\",\"api\\/customer\",\"api\\/lines\",\"api\\/payment\",\"api\\/shipping\",\"batch_editor\\/data\",\"batch_editor\\/index\",\"batch_editor\\/setting\",\"batch_editor\\/template\",\"batch_editor\\/tool\",\"bossblog\\/articles\",\"bossblog\\/category\",\"bossblog\\/comment\",\"bossblog\\/setting\",\"bossthemes\\/bossthemes\",\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/boss_refinesearch_setting\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/purchase_order\",\"catalog\\/purchase_order_payment\",\"catalog\\/purchase_order_shipping\",\"catalog\\/purchase_order_vendor\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/filemanager\",\"common\\/menu\",\"common\\/profile\",\"common\\/stats\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_ban_ip\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/boss_layout\",\"design\\/layout\",\"fraud\\/activity\",\"fraud\\/email\",\"fraud\\/fraudlabspro\",\"fraud\\/ip\",\"fraud\\/login\",\"fraud\\/maxmind\",\"fraud\\/password\",\"fraud\\/postcode\",\"marketing\\/affiliate\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"module\\/account\",\"module\\/affiliate\",\"module\\/amazon_button\",\"module\\/amazon_login\",\"module\\/amazon_pay\",\"module\\/banner\",\"module\\/bestseller\",\"module\\/blogcategory\",\"module\\/blogrecentcomment\",\"module\\/blogrecentpost\",\"module\\/blogsearch\",\"module\\/blogtagcloud\",\"module\\/boss_alphabet\",\"module\\/boss_blogfeatured\",\"module\\/boss_category\",\"module\\/boss_facecomments\",\"module\\/boss_filterproduct\",\"module\\/boss_manager\",\"module\\/boss_manufacturer\",\"module\\/boss_newmegamenu\",\"module\\/boss_quickshop\",\"module\\/boss_refinesearch\",\"module\\/boss_revolutionslider\",\"module\\/boss_tagcloud\",\"module\\/boss_topcategory\",\"module\\/boss_zoom\",\"module\\/bossblog\",\"module\\/c2c\",\"module\\/callforprice\",\"module\\/carousel\",\"module\\/category\",\"module\\/ebay_listing\",\"module\\/ebaydisplay\",\"module\\/featured\",\"module\\/filter\",\"module\\/google_hangouts\",\"module\\/html\",\"module\\/information\",\"module\\/latest\",\"module\\/newslettersubscribe\",\"module\\/order_entry\",\"module\\/payment_processor\",\"module\\/pp_button\",\"module\\/pp_login\",\"module\\/purchase_order\",\"module\\/qc_kendopage\",\"module\\/rest_api\",\"module\\/restadmin\",\"module\\/slideshow\",\"module\\/special\",\"module\\/store\",\"openbay\\/amazon\",\"openbay\\/amazon_listing\",\"openbay\\/amazon_product\",\"openbay\\/amazonus\",\"openbay\\/amazonus_listing\",\"openbay\\/amazonus_product\",\"openbay\\/ebay\",\"openbay\\/ebay_profile\",\"openbay\\/ebay_template\",\"openbay\\/etsy\",\"openbay\\/etsy_product\",\"openbay\\/etsy_shipping\",\"openbay\\/etsy_shop\",\"payment\\/amazon_checkout\",\"payment\\/amazon_login_pay\",\"payment\\/authorizenet_aim\",\"payment\\/authorizenet_sim\",\"payment\\/bank_transfer\",\"payment\\/bluepay_hosted\",\"payment\\/bluepay_hosted_form\",\"payment\\/bluepay_redirect\",\"payment\\/cheque\",\"payment\\/cod\",\"payment\\/firstdata\",\"payment\\/firstdata_remote\",\"payment\\/free_checkout\",\"payment\\/g2apay\",\"payment\\/globalpay\",\"payment\\/globalpay_remote\",\"payment\\/gtsecure\",\"payment\\/klarna_account\",\"payment\\/klarna_invoice\",\"payment\\/liqpay\",\"payment\\/moneybookers\",\"payment\\/nochex\",\"payment\\/paymate\",\"payment\\/paypoint\",\"payment\\/payza\",\"payment\\/perpetual_payments\",\"payment\\/pp_express\",\"payment\\/pp_payflow\",\"payment\\/pp_payflow_iframe\",\"payment\\/pp_pro\",\"payment\\/pp_pro_iframe\",\"payment\\/pp_standard\",\"payment\\/realex\",\"payment\\/realex_remote\",\"payment\\/sagepay_direct\",\"payment\\/sagepay_server\",\"payment\\/sagepay_us\",\"payment\\/securetrading_pp\",\"payment\\/securetrading_ws\",\"payment\\/skrill\",\"payment\\/twocheckout\",\"payment\\/web_payment_software\",\"payment\\/worldpay\",\"qc\\/account\",\"qc\\/app\",\"qc\\/config\",\"qc\\/currency\",\"qc\\/customer\",\"qc\\/diagnostics\",\"qc\\/disconnect\",\"qc\\/index\",\"qc\\/invoice\",\"qc\\/menu\",\"qc\\/oauth\",\"qc\\/payment\",\"qc\\/product\",\"qc\\/product_import_caffetech\",\"qc\\/product_import_nexearn\",\"qc\\/purchase_order\",\"qc\\/reconnect\",\"qc\\/source\",\"qc\\/success\",\"qc\\/tax_class\",\"qc\\/tax_rate\",\"qc\\/tax_rule\",\"qc\\/vendor\",\"report\\/affiliate\",\"report\\/affiliate_activity\",\"report\\/affiliate_login\",\"report\\/customer_activity\",\"report\\/customer_credit\",\"report\\/customer_login\",\"report\\/customer_online\",\"report\\/customer_order\",\"report\\/customer_reward\",\"report\\/marketing\",\"report\\/product_purchased\",\"report\\/product_viewed\",\"report\\/sale_coupon\",\"report\\/sale_order\",\"report\\/sale_return\",\"report\\/sale_shipping\",\"report\\/sale_tax\",\"sale\\/custom_field\",\"sale\\/customer\",\"sale\\/customer_ban_ip\",\"sale\\/customer_group\",\"sale\\/newssubscribers\",\"sale\\/order\",\"sale\\/order_entry\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"shipping\\/auspost\",\"shipping\\/canada_post_ws_rest\",\"shipping\\/citylink\",\"shipping\\/fedex\",\"shipping\\/flat\",\"shipping\\/free\",\"shipping\\/item\",\"shipping\\/mdhl\",\"shipping\\/parcelforce_48\",\"shipping\\/pickup\",\"shipping\\/royal_mail\",\"shipping\\/ups\",\"shipping\\/usps\",\"shipping\\/weight\",\"tool\\/backup\",\"tool\\/error_log\",\"tool\\/upload\",\"total\\/coupon\",\"total\\/credit\",\"total\\/handling\",\"total\\/klarna_fee\",\"total\\/low_order_fee\",\"total\\/reward\",\"total\\/shipping\",\"total\\/sub_total\",\"total\\/tax\",\"total\\/total\",\"total\\/voucher\",\"transaction\\/invoice\",\"transaction\\/sale\",\"transaction\\/work_order\"]}');
/*!40000 ALTER TABLE `oc2_user_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_voucher`
--

DROP TABLE IF EXISTS `oc2_voucher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_voucher` (
  `voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`voucher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_voucher`
--

LOCK TABLES `oc2_voucher` WRITE;
/*!40000 ALTER TABLE `oc2_voucher` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_voucher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_voucher_history`
--

DROP TABLE IF EXISTS `oc2_voucher_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_voucher_history` (
  `voucher_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`voucher_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_voucher_history`
--

LOCK TABLES `oc2_voucher_history` WRITE;
/*!40000 ALTER TABLE `oc2_voucher_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_voucher_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_voucher_theme`
--

DROP TABLE IF EXISTS `oc2_voucher_theme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_voucher_theme` (
  `voucher_theme_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`voucher_theme_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_voucher_theme`
--

LOCK TABLES `oc2_voucher_theme` WRITE;
/*!40000 ALTER TABLE `oc2_voucher_theme` DISABLE KEYS */;
INSERT INTO `oc2_voucher_theme` (`voucher_theme_id`, `image`) VALUES (8,'catalog/demo/canon_eos_5d_2.jpg'),(7,'catalog/demo/gift-voucher-birthday.jpg'),(6,'catalog/demo/apple_logo.jpg');
/*!40000 ALTER TABLE `oc2_voucher_theme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_voucher_theme_description`
--

DROP TABLE IF EXISTS `oc2_voucher_theme_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_voucher_theme_description` (
  `voucher_theme_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`voucher_theme_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_voucher_theme_description`
--

LOCK TABLES `oc2_voucher_theme_description` WRITE;
/*!40000 ALTER TABLE `oc2_voucher_theme_description` DISABLE KEYS */;
INSERT INTO `oc2_voucher_theme_description` (`voucher_theme_id`, `language_id`, `name`) VALUES (6,1,'Christmas'),(7,1,'Birthday'),(8,1,'General');
/*!40000 ALTER TABLE `oc2_voucher_theme_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_weight_class`
--

DROP TABLE IF EXISTS `oc2_weight_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_weight_class` (
  `weight_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  PRIMARY KEY (`weight_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_weight_class`
--

LOCK TABLES `oc2_weight_class` WRITE;
/*!40000 ALTER TABLE `oc2_weight_class` DISABLE KEYS */;
INSERT INTO `oc2_weight_class` (`weight_class_id`, `value`) VALUES (1,1.00000000),(2,1000.00000000),(5,2.20460000),(6,35.27400000);
/*!40000 ALTER TABLE `oc2_weight_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_weight_class_description`
--

DROP TABLE IF EXISTS `oc2_weight_class_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_weight_class_description` (
  `weight_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`weight_class_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_weight_class_description`
--

LOCK TABLES `oc2_weight_class_description` WRITE;
/*!40000 ALTER TABLE `oc2_weight_class_description` DISABLE KEYS */;
INSERT INTO `oc2_weight_class_description` (`weight_class_id`, `language_id`, `title`, `unit`) VALUES (1,1,'Kilogram','kg'),(2,1,'Gram','g'),(5,1,'Pound ','lb'),(6,1,'Ounce','oz');
/*!40000 ALTER TABLE `oc2_weight_class_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_zone`
--

DROP TABLE IF EXISTS `oc2_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_zone` (
  `zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4231 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_zone`
--

LOCK TABLES `oc2_zone` WRITE;
/*!40000 ALTER TABLE `oc2_zone` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc2_zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc2_zone_to_geo_zone`
--

DROP TABLE IF EXISTS `oc2_zone_to_geo_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc2_zone_to_geo_zone` (
  `zone_to_geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `geo_zone_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`zone_to_geo_zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=261 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_zone_to_geo_zone`
--

LOCK TABLES `oc2_zone_to_geo_zone` WRITE;
/*!40000 ALTER TABLE `oc2_zone_to_geo_zone` DISABLE KEYS */;
INSERT INTO `oc2_zone_to_geo_zone` (`zone_to_geo_zone_id`, `country_id`, `zone_id`, `geo_zone_id`, `date_added`, `date_modified`) VALUES (260,38,0,4,'2016-05-02 16:32:29','0000-00-00 00:00:00'),(259,38,602,25,'2016-05-02 16:32:22','0000-00-00 00:00:00'),(142,223,0,5,'2016-03-03 15:47:10','0000-00-00 00:00:00'),(144,38,603,6,'2016-03-03 15:47:23','0000-00-00 00:00:00'),(147,38,604,7,'2016-03-03 15:47:48','0000-00-00 00:00:00'),(148,38,610,8,'2016-03-03 15:47:55','0000-00-00 00:00:00'),(146,38,611,9,'2016-03-03 15:47:40','0000-00-00 00:00:00'),(145,38,605,10,'2016-03-03 15:47:33','0000-00-00 00:00:00'),(149,38,608,11,'2016-03-03 15:47:59','0000-00-00 00:00:00'),(150,38,612,12,'2016-03-03 15:48:06','0000-00-00 00:00:00'),(143,38,613,13,'2016-03-03 15:47:18','0000-00-00 00:00:00'),(140,223,0,24,'2016-03-03 15:46:47','0000-00-00 00:00:00'),(139,38,0,24,'2016-03-03 15:46:47','0000-00-00 00:00:00'),(141,38,0,5,'2016-03-03 15:47:10','0000-00-00 00:00:00'),(136,223,0,23,'2016-03-03 15:40:49','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `oc2_zone_to_geo_zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `qc_view_category`
--

DROP TABLE IF EXISTS `qc_view_category`;
/*!50001 DROP VIEW IF EXISTS `qc_view_category`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `qc_view_category` AS SELECT 
 1 AS `category_id`,
 1 AS `image`,
 1 AS `parent_id`,
 1 AS `top`,
 1 AS `column`,
 1 AS `sort_order`,
 1 AS `status`,
 1 AS `date_added`,
 1 AS `date_modified`,
 1 AS `language_id`,
 1 AS `name`,
 1 AS `description`,
 1 AS `meta_title`,
 1 AS `meta_description`,
 1 AS `meta_keyword`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `quickbooks_config`
--

DROP TABLE IF EXISTS `quickbooks_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quickbooks_config` (
  `quickbooks_config_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `qb_username` varchar(40) NOT NULL,
  `module` varchar(40) NOT NULL,
  `cfgkey` varchar(40) NOT NULL,
  `cfgval` varchar(40) NOT NULL,
  `cfgtype` varchar(40) NOT NULL,
  `cfgopts` text NOT NULL,
  `write_datetime` datetime NOT NULL,
  `mod_datetime` datetime NOT NULL,
  PRIMARY KEY (`quickbooks_config_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quickbooks_config`
--

LOCK TABLES `quickbooks_config` WRITE;
/*!40000 ALTER TABLE `quickbooks_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `quickbooks_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quickbooks_log`
--

DROP TABLE IF EXISTS `quickbooks_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quickbooks_log` (
  `quickbooks_log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `quickbooks_ticket_id` int(10) unsigned DEFAULT NULL,
  `batch` int(10) unsigned NOT NULL,
  `msg` text NOT NULL,
  `log_datetime` datetime NOT NULL,
  PRIMARY KEY (`quickbooks_log_id`),
  KEY `quickbooks_ticket_id` (`quickbooks_ticket_id`),
  KEY `batch` (`batch`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quickbooks_log`
--

LOCK TABLES `quickbooks_log` WRITE;
/*!40000 ALTER TABLE `quickbooks_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `quickbooks_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quickbooks_oauth`
--

DROP TABLE IF EXISTS `quickbooks_oauth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quickbooks_oauth` (
  `quickbooks_oauth_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `app_username` varchar(255) NOT NULL,
  `app_tenant` varchar(255) NOT NULL,
  `oauth_request_token` varchar(255) DEFAULT NULL,
  `oauth_request_token_secret` varchar(255) DEFAULT NULL,
  `oauth_access_token` varchar(255) DEFAULT NULL,
  `oauth_access_token_secret` varchar(255) DEFAULT NULL,
  `qb_realm` varchar(32) DEFAULT NULL,
  `qb_flavor` varchar(12) DEFAULT NULL,
  `qb_user` varchar(64) DEFAULT NULL,
  `request_datetime` datetime NOT NULL,
  `access_datetime` datetime DEFAULT NULL,
  `touch_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`quickbooks_oauth_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quickbooks_oauth`
--

LOCK TABLES `quickbooks_oauth` WRITE;
/*!40000 ALTER TABLE `quickbooks_oauth` DISABLE KEYS */;
INSERT INTO `quickbooks_oauth` (`quickbooks_oauth_id`, `app_username`, `app_tenant`, `oauth_request_token`, `oauth_request_token_secret`, `oauth_access_token`, `oauth_access_token_secret`, `qb_realm`, `qb_flavor`, `qb_user`, `request_datetime`, `access_datetime`, `touch_datetime`) VALUES (2,'DO_NOT_CHANGE_ME','12345','qyprdWn4dZjjQ9bZmBakgjNe4Jg64KV06VHBC7ABV5rjO4E2','o0QIgVJ5CAB6Ff6So8kZZLRkcZtzBwBtdMwyoFl9','HuOud+xXhot3U8hqfyncYxTqn8ffsGFffVj3D92OuxjFPzOT89LkqiYePcCd59hM8gpi2y7ybwpPGOxwKCEWJpvidS1f8+un+Ta13Ewj68f7HhU0lqPsPAF0C7iNxo04e0JhrWAVfkzyP/q69ZUgHYsPuE69+GzrzGxarH0hymXhiPSPHLklWHF52RJJTA==','SmKQNB7+0TqhIzLrP6Rp4BqV0osJG9ae6cfxIa+RKbOdKGooYnAmixuMzf5J35skVDHqrvt+99MAbEArC2xODUe1G+gVUoWlboeYQcBrVNlL6ekL88gEeO5ErnwREYODpNbd7xGqbkg4tXArP7gLNhew/pt5qx6JEwLqnXrAZ94gfTiQ4oQ=','123145695411247','QBO',NULL,'2016-10-04 01:03:49','2016-10-04 01:04:58','2017-08-19 13:06:29');
/*!40000 ALTER TABLE `quickbooks_oauth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quickbooks_queue`
--

DROP TABLE IF EXISTS `quickbooks_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quickbooks_queue` (
  `quickbooks_queue_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `quickbooks_ticket_id` int(10) unsigned DEFAULT NULL,
  `qb_username` varchar(40) NOT NULL,
  `qb_action` varchar(32) NOT NULL,
  `ident` varchar(40) NOT NULL,
  `extra` text,
  `qbxml` text,
  `priority` int(10) unsigned DEFAULT '0',
  `qb_status` char(1) NOT NULL,
  `msg` text,
  `enqueue_datetime` datetime NOT NULL,
  `dequeue_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`quickbooks_queue_id`),
  KEY `quickbooks_ticket_id` (`quickbooks_ticket_id`),
  KEY `priority` (`priority`),
  KEY `qb_username` (`qb_username`,`qb_action`,`ident`,`qb_status`),
  KEY `qb_status` (`qb_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quickbooks_queue`
--

LOCK TABLES `quickbooks_queue` WRITE;
/*!40000 ALTER TABLE `quickbooks_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `quickbooks_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quickbooks_recur`
--

DROP TABLE IF EXISTS `quickbooks_recur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quickbooks_recur` (
  `quickbooks_recur_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `qb_username` varchar(40) NOT NULL,
  `qb_action` varchar(32) NOT NULL,
  `ident` varchar(40) NOT NULL,
  `extra` text,
  `qbxml` text,
  `priority` int(10) unsigned DEFAULT '0',
  `run_every` int(10) unsigned NOT NULL,
  `recur_lasttime` int(10) unsigned NOT NULL,
  `enqueue_datetime` datetime NOT NULL,
  PRIMARY KEY (`quickbooks_recur_id`),
  KEY `qb_username` (`qb_username`,`qb_action`,`ident`),
  KEY `priority` (`priority`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quickbooks_recur`
--

LOCK TABLES `quickbooks_recur` WRITE;
/*!40000 ALTER TABLE `quickbooks_recur` DISABLE KEYS */;
/*!40000 ALTER TABLE `quickbooks_recur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quickbooks_ticket`
--

DROP TABLE IF EXISTS `quickbooks_ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quickbooks_ticket` (
  `quickbooks_ticket_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `qb_username` varchar(40) NOT NULL,
  `ticket` char(36) NOT NULL,
  `processed` int(10) unsigned DEFAULT '0',
  `lasterror_num` varchar(32) DEFAULT NULL,
  `lasterror_msg` varchar(255) DEFAULT NULL,
  `ipaddr` char(15) NOT NULL,
  `write_datetime` datetime NOT NULL,
  `touch_datetime` datetime NOT NULL,
  PRIMARY KEY (`quickbooks_ticket_id`),
  KEY `ticket` (`ticket`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quickbooks_ticket`
--

LOCK TABLES `quickbooks_ticket` WRITE;
/*!40000 ALTER TABLE `quickbooks_ticket` DISABLE KEYS */;
/*!40000 ALTER TABLE `quickbooks_ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quickbooks_user`
--

DROP TABLE IF EXISTS `quickbooks_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quickbooks_user` (
  `qb_username` varchar(40) NOT NULL,
  `qb_password` varchar(255) NOT NULL,
  `qb_company_file` varchar(255) DEFAULT NULL,
  `qbwc_wait_before_next_update` int(10) unsigned DEFAULT '0',
  `qbwc_min_run_every_n_seconds` int(10) unsigned DEFAULT '0',
  `status` char(1) NOT NULL,
  `write_datetime` datetime NOT NULL,
  `touch_datetime` datetime NOT NULL,
  PRIMARY KEY (`qb_username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quickbooks_user`
--

LOCK TABLES `quickbooks_user` WRITE;
/*!40000 ALTER TABLE `quickbooks_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `quickbooks_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `category_products`
--

/*!50001 DROP VIEW IF EXISTS `category_products`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `category_products` AS select `c`.`category_id` AS `category_id`,`cd`.`name` AS `category_name`,`c`.`parent_id` AS `category_parent_id`,`c`.`sort_order` AS `category_sort_order`,`p`.`sort_order` AS `product_sort_order`,`pd`.`name` AS `name`,`pd`.`description` AS `description`,`pd`.`language_id` AS `language_id`,`p`.`product_id` AS `product_id`,`p`.`model` AS `model`,`p`.`sku` AS `sku`,`p`.`upc` AS `upc`,`p`.`ean` AS `ean`,`p`.`jan` AS `jan`,`p`.`isbn` AS `isbn`,`p`.`mpn` AS `mpn`,`p`.`location` AS `location`,`p`.`quantity` AS `quantity`,`p`.`stock_status_id` AS `stock_status_id`,`p`.`image` AS `image`,`p`.`manufacturer_id` AS `manufacturer_id`,`p`.`shipping` AS `shipping`,`p`.`price` AS `price`,`p`.`points` AS `points`,`p`.`tax_class_id` AS `tax_class_id`,`p`.`date_available` AS `date_available`,`p`.`weight` AS `weight`,`p`.`weight_class_id` AS `weight_class_id`,`p`.`length` AS `length`,`p`.`width` AS `width`,`p`.`height` AS `height`,`p`.`length_class_id` AS `length_class_id`,`p`.`subtract` AS `subtract`,`p`.`minimum` AS `minimum`,`p`.`sort_order` AS `sort_order`,`p`.`status` AS `status`,`p`.`viewed` AS `viewed`,`p`.`date_added` AS `date_added`,`p`.`date_modified` AS `date_modified`,`p`.`po_title` AS `po_title`,`p`.`po_model` AS `po_model`,`p`.`po_cost` AS `po_cost`,`p`.`cost` AS `cost`,`p`.`qbname` AS `qbname`,`p`.`parent_id` AS `parent_id`,`p`.`display_mode` AS `display_mode` from ((((`oc2_category` `c` left join `oc2_category_description` `cd` on((`c`.`category_id` = `cd`.`category_id`))) left join `oc2_product_to_category` `p2c` on((`c`.`category_id` = `p2c`.`category_id`))) left join `oc2_product` `p` on((`p2c`.`product_id` = `p`.`product_id`))) left join `oc2_product_description` `pd` on((`p2c`.`product_id` = `pd`.`product_id`))) order by `c`.`sort_order`,`p`.`sort_order` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `qc_view_category`
--

/*!50001 DROP VIEW IF EXISTS `qc_view_category`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `qc_view_category` AS select `oc2_category`.`category_id` AS `category_id`,`oc2_category`.`image` AS `image`,`oc2_category`.`parent_id` AS `parent_id`,`oc2_category`.`top` AS `top`,`oc2_category`.`column` AS `column`,`oc2_category`.`sort_order` AS `sort_order`,`oc2_category`.`status` AS `status`,`oc2_category`.`date_added` AS `date_added`,`oc2_category`.`date_modified` AS `date_modified`,`oc2_category_description`.`language_id` AS `language_id`,`oc2_category_description`.`name` AS `name`,`oc2_category_description`.`description` AS `description`,`oc2_category_description`.`meta_title` AS `meta_title`,`oc2_category_description`.`meta_description` AS `meta_description`,`oc2_category_description`.`meta_keyword` AS `meta_keyword` from (`oc2_category` left join `oc2_category_description` on((`oc2_category`.`category_id` = `oc2_category_description`.`category_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-02 17:41:57