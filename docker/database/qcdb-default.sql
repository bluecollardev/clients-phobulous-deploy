-- MySQL dump 10.13  Distrib 5.6.24, for Win64 (x86_64)
--
-- Host: localhost    Database: quickcommerce_oc
-- ------------------------------------------------------
-- Server version	5.6.26-log

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_category`
--

LOCK TABLES `oc2_category` WRITE;
/*!40000 ALTER TABLE `oc2_category` DISABLE KEYS */;
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
INSERT INTO `oc2_currency` (`currency_id`, `title`, `code`, `symbol_left`, `symbol_right`, `decimal_place`, `value`, `status`, `date_modified`) VALUES (1,'Pound Sterling','GBP','£','','2',0.60049999,0,'2017-10-22 13:37:12'),(2,'US Dollar','USD','$','','2',0.79189998,1,'2017-10-22 13:37:12'),(3,'Euro','EUR','','€','2',0.67330003,0,'2017-10-22 13:37:12'),(5,'Canadian Dollar','CAD','$','','2',1.00000000,1,'2017-10-22 13:37:12');
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
INSERT INTO `oc2_extension` (`extension_id`, `type`, `code`) VALUES (22,'total','shipping'),(57,'total','sub_total'),(58,'total','tax'),(59,'total','total'),(390,'total','credit'),(476,'shipping','pickup'),(349,'total','handling'),(350,'total','low_order_fee'),(389,'total','coupon'),(393,'total','reward'),(398,'total','voucher'),(407,'payment','free_checkout'),(456,'fraud','fraudlabspro'),(457,'fraud','maxmind'),(464,'openbay','ebay'),(461,'openbay','etsy'),(462,'openbay','amazon'),(463,'openbay','amazonus'),(465,'openbay','ebay'),(467,'payment','globalpay'),(469,'payment','bank_transfer'),(470,'payment','cheque'),(519,'module','restadmin'),(518,'module','rest_api'),(479,'shipping','free'),(484,'feed','google_sitemap'),(486,'shipping','flat'),(490,'shipping','weight'),(491,'feed','openbaypro'),(498,'theme','theme_default'),(499,'dashboard','activity'),(500,'dashboard','sale'),(501,'dashboard','recent'),(502,'dashboard','order'),(503,'dashboard','online'),(504,'dashboard','map'),(505,'dashboard','customer'),(506,'dashboard','chart');
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
INSERT INTO `oc2_layout_route` (`layout_route_id`, `layout_id`, `store_id`, `route`) VALUES (32,9,0,'information/sitemap'),(52,12,0,'product/compare'),(87,10,0,'affiliate/%'),(412,10016,0,'download/download'),(362,6,0,'account/%'),(637,1,8,''),(598,14,0,'bossblog/%'),(364,3,0,'product/category'),(190,9999,0,'%'),(413,2,0,'product/product'),(368,11,0,'information/information'),(615,10023,0,'journal2/blog/post'),(371,7,0,'checkout/%'),(370,8,0,'information/contact'),(369,5,0,'product/manufacturer'),(342,13,0,'product/search'),(614,10022,0,'journal2/blog'),(296,4,0,'%'),(616,9,8,'information/sitemap'),(617,12,8,'product/compare'),(618,10,8,'affiliate/%'),(619,10016,8,'download/download'),(620,6,8,'account/%'),(636,1,0,'common/home'),(622,14,8,'bossblog/%'),(623,3,8,'product/category'),(624,9999,8,'%'),(625,2,8,'product/product'),(626,11,8,'information/information'),(627,10023,8,'journal2/blog/post'),(628,7,8,'checkout/%'),(629,8,8,'information/contact'),(630,5,8,'product/manufacturer'),(631,13,8,'product/search'),(632,10022,8,'journal2/blog'),(635,1,0,''),(634,4,8,'%'),(638,1,8,'common/home');
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_order`
--

LOCK TABLES `oc2_order` WRITE;
/*!40000 ALTER TABLE `oc2_order` DISABLE KEYS */;
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_order_total`
--

LOCK TABLES `oc2_order_total` WRITE;
/*!40000 ALTER TABLE `oc2_order_total` DISABLE KEYS */;
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_product`
--

LOCK TABLES `oc2_product` WRITE;
/*!40000 ALTER TABLE `oc2_product` DISABLE KEYS */;
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
) ENGINE=MyISAM AUTO_INCREMENT=31956 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_setting`
--

LOCK TABLES `oc2_setting` WRITE;
/*!40000 ALTER TABLE `oc2_setting` DISABLE KEYS */;
INSERT INTO `oc2_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES (1,0,'shipping','shipping_sort_order','3',0),(2,0,'sub_total','sub_total_sort_order','1',0),(3,0,'sub_total','sub_total_status','1',0),(4,0,'tax','tax_status','1',0),(5,0,'total','total_sort_order','9',0),(6,0,'total','total_status','1',0),(7,0,'tax','tax_sort_order','5',0),(8,0,'free_checkout','free_checkout_sort_order','1',0),(2701,0,'cheque','cheque_sort_order','',0),(2699,0,'cheque','cheque_geo_zone_id','0',0),(2700,0,'cheque','cheque_status','1',0),(14,0,'shipping','shipping_status','1',0),(15,0,'shipping','shipping_estimator','1',0),(27,0,'coupon','coupon_sort_order','4',0),(28,0,'coupon','coupon_status','1',0),(19202,0,'pickup','pickup_sort_order','2',0),(19201,0,'pickup','pickup_status','1',0),(19200,0,'pickup','pickup_geo_zone_id','4',0),(42,0,'credit','credit_sort_order','7',0),(43,0,'credit','credit_status','1',0),(53,0,'reward','reward_sort_order','2',0),(54,0,'reward','reward_status','1',0),(159,0,'affiliate','affiliate_status','1',0),(884,0,'ebay','ebay_default_addressformat','{firstname} {lastname}\n{company}\n{address_1}\n{address_2}\n{city}\n{zone}\n{postcode}\n{country}',0),(811,0,'openbay','openbay_version','2831',0),(7028,0,'qtylp','qtylp_cart_page_qty_text_en','',0),(17397,0,'free','free_sort_order','1',0),(94,0,'voucher','voucher_sort_order','8',0),(95,0,'voucher','voucher_status','1',0),(103,0,'free_checkout','free_checkout_status','1',0),(104,0,'free_checkout','free_checkout_order_status_id','1',0),(28641,0,'journal2_blog_comments','journal2_blog_comments_3142_status','1',0),(28640,0,'journal2_blog_comments','journal2_blog_comments_3141_status','1',0),(28637,0,'journal2_simple_slider','journal2_simple_slider_3138_status','0',0),(28636,0,'journal2_simple_slider','journal2_simple_slider_3137_status','0',0),(28635,0,'journal2_simple_slider','journal2_simple_slider_3136_status','0',0),(28634,0,'journal2_popup','journal2_popup_3135_status','0',0),(28633,0,'journal2_side_blocks','journal2_side_blocks_3134_status','1',0),(28632,0,'journal2_side_blocks','journal2_side_blocks_3133_status','1',0),(28631,0,'journal2_side_blocks','journal2_side_blocks_3132_status','1',0),(28630,0,'journal2_side_blocks','journal2_side_blocks_3131_status','0',0),(28629,0,'journal2_side_blocks','journal2_side_blocks_3130_status','0',0),(28628,0,'journal2_side_blocks','journal2_side_blocks_3129_status','0',0),(28625,0,'journal2_fullscreen_slider','journal2_fullscreen_slider_3126_status','0',0),(28624,0,'journal2_fullscreen_slider','journal2_fullscreen_slider_3125_status','0',0),(28623,0,'journal2_side_products','journal2_side_products_3124_status','0',0),(28622,0,'journal2_side_products','journal2_side_products_3123_status','0',0),(17447,0,'openbaypro','openbaypro_menu','1',0),(17446,0,'openbaypro','openbaypro_status','1',0),(17185,0,'config_bossblog','config_bossblog_image_article_width','270',0),(17184,0,'config_bossblog','config_bossblog_image_category_height','260',0),(30762,8,'theme_default','theme_default_image_location_height','180',0),(30756,8,'theme_default','theme_default_image_compare_height','90',0),(17183,0,'config_bossblog','config_bossblog_image_category_width','880',0),(17182,0,'config_bossblog','config_bossblog_approval_status','0',0),(17181,0,'config_bossblog','config_bossblog_comment_status','1',0),(17180,0,'config_bossblog','config_bossblog_admin_limit','5',0),(17179,0,'config_bossblog','config_bossblog_limit','5',0),(17178,0,'config_bossblog','config_bossblog_keyword','',0),(17177,0,'config_bossblog','config_bossblog_name','News &amp; Updates',0),(690,0,'fraudlabspro','fraudlabspro_score','80',0),(691,0,'fraudlabspro','fraudlabspro_order_status_id','17',0),(692,0,'fraudlabspro','fraudlabspro_review_status_id','18',0),(693,0,'fraudlabspro','fraudlabspro_approve_status_id','2',0),(694,0,'fraudlabspro','fraudlabspro_reject_status_id','8',0),(883,0,'ebay','ebay_time_offset','0',0),(882,0,'ebay','ebay_relistitems','0',0),(881,0,'ebay','ebay_itm_link','http://www.ebay.com/itm/',0),(880,0,'ebay','ebay_create_date','0',0),(879,0,'ebay','ebay_created_hours','48',0),(878,0,'ebay','ebay_confirmadmin_notify','1',0),(877,0,'ebay','ebay_confirm_notify','1',0),(876,0,'ebay','ebay_update_notify','1',0),(875,0,'ebay','ebay_stock_allocate','0',0),(874,0,'ebay','ebay_def_currency','GBP',0),(873,0,'ebay','ebay_status_refunded_id','11',0),(872,0,'ebay','ebay_status_cancelled_id','7',0),(871,0,'ebay','ebay_status_paid_id','2',0),(870,0,'ebay','ebay_status_shipped_id','3',0),(869,0,'ebay','ebay_status_import_id','1',0),(868,0,'ebay','ebay_payment_instruction','',0),(835,0,'etsy','etsy_token','',0),(836,0,'etsy','etsy_secret','',0),(837,0,'etsy','etsy_string1','',0),(838,0,'etsy','etsy_string2','',0),(867,0,'ebay','ebay_logging','1',0),(866,0,'ebay','ebay_enditems','0',0),(865,0,'ebay','ebay_string2','',0),(862,0,'ebay','ebay_token','',0),(863,0,'ebay','ebay_secret','',0),(864,0,'ebay','ebay_string1','',0),(2698,0,'cheque','cheque_order_status_id','1',0),(2697,0,'cheque','cheque_total','1',0),(2696,0,'cheque','cheque_payable','Caffe Tech 2004 Ltd.',0),(4802,0,'bank_transfer','bank_transfer_geo_zone_id','0',0),(4801,0,'bank_transfer','bank_transfer_order_status_id','7',0),(4800,0,'bank_transfer','bank_transfer_total','1',0),(4799,0,'bank_transfer','bank_transfer_bank1','Test',0),(28621,0,'journal2_side_products','journal2_side_products_3122_status','0',0),(28620,0,'journal2_side_products','journal2_side_products_3121_status','0',0),(28619,0,'journal2_cms_blocks','journal2_cms_blocks_3120_status','0',0),(28618,0,'journal2_cms_blocks','journal2_cms_blocks_3119_status','0',0),(28617,0,'journal2_cms_blocks','journal2_cms_blocks_3118_status','0',0),(28616,0,'journal2_side_category','journal2_side_category_3117_status','1',0),(28615,0,'journal2_side_category','journal2_side_category_3116_status','1',0),(28614,0,'journal2_side_category','journal2_side_category_3115_status','1',0),(28613,0,'journal2_carousel','journal2_carousel_3114_status','0',0),(28612,0,'journal2_carousel','journal2_carousel_3113_status','0',0),(28611,0,'journal2_carousel','journal2_carousel_3112_status','0',0),(28610,0,'journal2_carousel','journal2_carousel_3111_status','0',0),(28609,0,'journal2_carousel','journal2_carousel_3110_status','0',0),(17396,0,'free','free_status','1',0),(17395,0,'free','free_geo_zone_id','25',0),(17394,0,'free','free_total','500',0),(4803,0,'bank_transfer','bank_transfer_status','0',0),(4804,0,'bank_transfer','bank_transfer_sort_order','',0),(7027,0,'qtylp','qtylp_prod_page_qty_text_en','',0),(7025,0,'qtylp','qtylp_prod_page_qty_list_items','5',0),(7026,0,'qtylp','qtylp_cart_page_qty_list_items','5',0),(30761,8,'theme_default','theme_default_image_location_width','240',0),(31937,0,'config','config_file_mime_allowed','text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/tiff\r\nimage/svg+xml\r\napplication/zip\r\n&quot;application/zip&quot;\r\napplication/x-zip\r\n&quot;application/x-zip&quot;\r\napplication/x-zip-compressed\r\n&quot;application/x-zip-compressed&quot;\r\napplication/rar\r\n&quot;application/rar&quot;\r\napplication/x-rar\r\n&quot;application/x-rar&quot;\r\napplication/x-rar-compressed\r\n&quot;application/x-rar-compressed&quot;\r\napplication/octet-stream\r\n&quot;application/octet-stream&quot;\r\naudio/mpeg\r\nvideo/quicktime\r\napplication/pdf',0),(30760,8,'theme_default','theme_default_image_cart_height','80',0),(30759,8,'theme_default','theme_default_image_cart_width','80',0),(30758,8,'theme_default','theme_default_image_wishlist_height','50',0),(30757,8,'theme_default','theme_default_image_wishlist_width','50',0),(28642,0,'journal2_blog_search','journal2_blog_search_3143_status','1',0),(30755,8,'theme_default','theme_default_image_compare_width','90',0),(28608,0,'journal2_slider','journal2_slider_3109_status','0',0),(28607,0,'journal2_slider','journal2_slider_3108_status','0',0),(28606,0,'journal2_photo_gallery','journal2_photo_gallery_3107_status','0',0),(28605,0,'journal2_newsletter','journal2_newsletter_3106_status','0',0),(28604,0,'journal2_newsletter','journal2_newsletter_3105_status','0',0),(28603,0,'journal2_newsletter','journal2_newsletter_3104_status','0',0),(28602,0,'journal2_text_rotator','journal2_text_rotator_3103_status','0',0),(28601,0,'journal2_text_rotator','journal2_text_rotator_3102_status','0',0),(28600,0,'journal2_text_rotator','journal2_text_rotator_3101_status','0',0),(31936,0,'config','config_file_ext_allowed','zip\r\ntxt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc',0),(31930,0,'config','config_compression','0',0),(31931,0,'config','config_secure','0',0),(31932,0,'config','config_password','1',0),(31933,0,'config','config_shared','0',0),(31934,0,'config','config_encryption','075bd0fc9bbb048da657ad8f21ff88b5',0),(31935,0,'config','config_file_max_size','300000',0),(31927,0,'config','config_maintenance','0',0),(31928,0,'config','config_seo_url','1',0),(31929,0,'config','config_robots','abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai\'hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg',0),(31926,0,'config','config_mail_alert_email','',0),(28599,0,'journal2_static_banners','journal2_static_banners_3100_status','0',0),(31925,0,'config','config_mail_smtp_timeout','',0),(31924,0,'config','config_mail_smtp_port','',0),(31921,0,'config','config_mail_smtp_hostname','',0),(31922,0,'config','config_mail_smtp_username','',0),(31923,0,'config','config_mail_smtp_password','',0),(31912,0,'config','config_icon','catalog/stores/ace/logo.icon.png',0),(31913,0,'config','config_ftp_hostname','acecoffeeroasters.com',0),(31914,0,'config','config_ftp_port','21',0),(31915,0,'config','config_ftp_username','acecoffee',0),(31916,0,'config','config_ftp_password','caff3t3fch',0),(31917,0,'config','config_ftp_root','',0),(31918,0,'config','config_ftp_status','1',0),(31919,0,'config','config_mail_protocol','mail',0),(31920,0,'config','config_mail_parameter','',0),(31911,0,'config','config_logo','logo/logo.ace.png',0),(31910,0,'config','config_captcha','',0),(31909,0,'config','config_return_status_id','2',0),(31908,0,'config','config_return_id','11',0),(31907,0,'config','config_affiliate_id','4',0),(31906,0,'config','config_affiliate_commission','5',0),(31905,0,'config','config_affiliate_auto','1',0),(31904,0,'config','config_affiliate_approval','0',0),(31903,0,'config','config_stock_checkout','1',0),(31902,0,'config','config_stock_warning','0',0),(31901,0,'config','config_stock_display','0',0),(31900,0,'config','config_api_id','1',0),(31899,0,'config','config_fraud_status_id','8',0),(13344,0,'google_sitemap','google_sitemap_status','1',0),(31831,0,'theme_default','theme_default_product_description_length','140',0),(18851,0,'pd','pd_list_replace_price_with','{\"1\":\"\"}',1),(18850,0,'pd','pd_list_atc_action','0',0),(18849,0,'pd','pd_list_price_action','0',0),(18848,0,'pd','pd_product_replace_price_with','{\"1\":\"\"}',1),(18847,0,'pd','pd_product_atc_action','0',0),(18846,0,'pd','pd_module_replace_price_with','{\"1\":\"\"}',1),(18845,0,'pd','pd_module_price_action','0',0),(18844,0,'pd','pd_ba_download_status','1',0),(18843,0,'pd','pd_product_price_action','0',0),(18842,0,'pd','pd_aa_login','0',0),(18841,0,'pd','pd_aa_path_to_tags','1',0),(18840,0,'pd','pd_aa_file_tags','',0),(18839,0,'pd','pd_aa_recursive','1',0),(18837,0,'pd','pd_aa_excludes','',0),(18838,0,'pd','pd_ba_sort_order','0',0),(18836,0,'pd','pd_aa_free_download','1',0),(18835,0,'pd','pd_aa_file_types','pdf,rar,zip',0),(18834,0,'pd','pd_aa_all_types','0',0),(18833,0,'pd','pd_aa_duration','0',0),(18832,0,'pd','pd_aa_duration_unit','60',0),(18831,0,'pd','pd_show_purchasable_downloads','1',0),(18830,0,'pd','pd_differentiate_customers','0',0),(18829,0,'pd','pd_show_download_without_link','1',0),(18828,0,'pd','pd_require_login_free','0',0),(18827,0,'pd','pd_add_free_downloads_to_order','1',0),(18826,0,'pd','pd_show_free_download_count','1',0),(18824,0,'pd','pd_cadp_downloads_per_page','50',0),(18825,0,'pd','pd_cadp_show_expired_downloads','1',0),(18823,0,'pd','pd_cadp_show_icon','1',0),(18822,0,'pd','pd_cadp_status','1',0),(18821,0,'pd','pd_dp_name_as_link','1',0),(18820,0,'pd','pd_dp_delay_download','3000',0),(18819,0,'pd','pd_dp_show_icon','1',0),(18818,0,'pd','pd_dp_show_date_added','1',0),(18817,0,'pd','pd_dp_show_date_modified','1',0),(18816,0,'pd','pd_dp_show_file_size','1',0),(18815,0,'pd','pd_dp_show_search_bar','1',0),(18814,0,'pd','pd_dp_show_filter_tags','1',0),(18803,0,'pd','pd_dp_status','1',0),(18804,0,'pd','pd_aa_directory','/home/ctcanada/public_html/downloads/',0),(18805,0,'pd','pd_ba_login','0',0),(18806,0,'pd','pd_ds_seo_keyword','download-samples',0),(18807,0,'pd','pd_delay_download_sample','3000',0),(18808,0,'pd','pd_aa_total_downloads','-1',0),(18809,0,'pd','pd_use_fa_icons','0',0),(18810,0,'pd','pd_aa_constraint','0',0),(18811,0,'pd','pd_aa_status','0',0),(18812,0,'pd','pd_services','eyJzZXJ2aWNlcyI6W3siY29kZSI6IjQ5NjgtQ1RJIiwibmFtZSI6IlByb2R1Y3QgRG93bmxvYWRzIFBSTyBDdXN0b20gVGhlbWUgSW50ZWdyYXRpb24iLCJkZXNjcmlwdGlvbiI6IlByb2R1Y3QgRG93bmxvYWRzIFBSTyBpbnRlZ3JhdGlvbiB3aXRoIGEgPGVtPnNpbmdsZTxcL2VtPiBjdXN0b20gdGhlbWUuIEluY2x1ZGVzIGV4dGVuc2lvbiBpbnN0YWxsYXRpb24gYW5kIHRoZSBjcmVhdGlvbiAmYW1wOyBpbnN0YWxsYXRpb24gb2YgY3VzdG9tIHRhaWxvcmVkIHRlbXBsYXRlIGZpbGVzIChpZiBuZWVkZWQpIGFuZCBhIHNlcGFyYXRlIHZRbW9kIHBhdGNoIGZpbGUgdG8gbWF0Y2ggdGhlIGxvb2sgYW5kIGZlZWwgb2YgeW91ciB0aGVtZS4iLCJjdXJyZW5jeSI6IlVTRCIsInByaWNlIjoiNDAiLCJ0dXJuYXJvdW5kIjoiMS0yIGJ1c2luZXNzIGRheXMifSx7ImNvZGUiOiI0OTY4LTZNLVNTIiwibmFtZSI6IlByb2R1Y3QgRG93bmxvYWRzIFBSTyA2IG1vbnRoIHN1cHBvcnQgc2VydmljZSIsImRlc2NyaXB0aW9uIjoiSW5jbHVkZXMgUHJvZHVjdCBEb3dubG9hZHMgUFJPIGV4dGVuc2lvbiBpbnN0YWxsYXRpb25zLCB1cGdyYWRlcywgY3VzdG9tIHRoZW1lIGludGVncmF0aW9ucyAmYW1wOyB1cGRhdGVzIGFuZCByZXNvbHZpbmcgY29uZmxpY3RzIHdpdGggb3RoZXIgdGhpcmQgcGFydHkgZXh0ZW5zaW9ucyA8c3Ryb25nPmZvciBhIHNpbmdsZSB3ZWJzaXRlPFwvc3Ryb25nPiBkdXJpbmcgdGhpcyBwZXJpb2QuIiwiY3VycmVuY3kiOiJVU0QiLCJwcmljZSI6IjYwIiwidHVybmFyb3VuZCI6IiJ9LHsiY29kZSI6IjQ5NjgtMTJNLVNTIiwibmFtZSI6IlByb2R1Y3QgRG93bmxvYWRzIFBSTyAxMiBtb250aCBzdXBwb3J0IHNlcnZpY2UiLCJkZXNjcmlwdGlvbiI6IkluY2x1ZGVzIFByb2R1Y3QgRG93bmxvYWRzIFBSTyBleHRlbnNpb24gaW5zdGFsbGF0aW9ucywgdXBncmFkZXMsIGN1c3RvbSB0aGVtZSBpbnRlZ3JhdGlvbnMgJmFtcDsgdXBkYXRlcyBhbmQgcmVzb2x2aW5nIGNvbmZsaWN0cyB3aXRoIG90aGVyIHRoaXJkIHBhcnR5IGV4dGVuc2lvbnMgPHN0cm9uZz5mb3IgYSBzaW5nbGUgd2Vic2l0ZTxcL3N0cm9uZz4gZHVyaW5nIHRoaXMgcGVyaW9kLiIsImN1cnJlbmN5IjoiVVNEIiwicHJpY2UiOiIxMDAiLCJ0dXJuYXJvdW5kIjoiIn0seyJjb2RlIjoiNDk2OC0yNE0tU1MiLCJuYW1lIjoiUHJvZHVjdCBEb3dubG9hZHMgUFJPIDI0IG1vbnRoIHN1cHBvcnQgc2VydmljZSIsImRlc2NyaXB0aW9uIjoiSW5jbHVkZXMgUHJvZHVjdCBEb3dubG9hZHMgUFJPIGV4dGVuc2lvbiBpbnN0YWxsYXRpb25zLCB1cGdyYWRlcywgY3VzdG9tIHRoZW1lIGludGVncmF0aW9ucyAmYW1wOyB1cGRhdGVzIGFuZCByZXNvbHZpbmcgY29uZmxpY3RzIHdpdGggb3RoZXIgdGhpcmQgcGFydHkgZXh0ZW5zaW9ucyA8c3Ryb25nPmZvciBhIHNpbmdsZSB3ZWJzaXRlPFwvc3Ryb25nPiBkdXJpbmcgdGhpcyBwZXJpb2QuIiwiY3VycmVuY3kiOiJVU0QiLCJwcmljZSI6IjE1MCIsInR1cm5hcm91bmQiOiIifSx7ImNvZGUiOiJYMDFPUFQiLCJuYW1lIjoiT3BlbkNhcnQgRGF0YWJhc2UgT3B0aW1pemF0aW9ucyIsImRlc2NyaXB0aW9uIjoiRHJhbWF0aWNhbGx5IGJvb3N0cyBsb2FkIHBlcmZvcm1hbmNlIG9mIHByb2R1Y3RzIGFuZCBjYXRlZ29yaWVzIG9uIGxhcmdlIHN0b3Jlcy4gSW5jbHVkZXMgY29udmVyc2lvbiBvZiB0aGUgTXlTUUwgZGF0YWJhc2UgZW5naW5lIHRvIElubm9EQiBhbmQgYWRkaXRpb24gb2YgbWlzc2luZyBmb3JlaWduIGtleXMuIFBsZWFzZSBub3RlIHRoYXQgdGhpcyBvcHRpbWl6YXRpb24gbmVlZHMgdG8gYmUgZG9uZSBhZ2FpbiBhZnRlciBPcGVuQ2FydCBoYXMgYmVlbiB1cGdyYWRlZCBiZWNhdXNlIE9wZW5DYXJ0IHJlbW92ZXMgdGhlc2Ugb3B0aW1pemF0aW9ucyBkdXJpbmcgdXBncmFkZSBwcm9jZXNzLiIsImN1cnJlbmN5IjoiVVNEIiwicHJpY2UiOiIyNSIsInR1cm5hcm91bmQiOiIxIGJ1c2luZXNzIGRheSJ9XSwicmF0ZSI6IlVTRCA1MCIsImV4cGlyZXMiOjE0NjI5MDQzNDF9',0),(17186,0,'config_bossblog','config_bossblog_image_article_height','200',0),(17176,0,'twitterfeed','twitterfeed_border_color','#333333',0),(17174,0,'twitterfeed','twitterfeed_theme','light',0),(17175,0,'twitterfeed','twitterfeed_link_color','#333333',0),(17172,0,'twitterfeed','twitterfeed_transperancy','transparent',0),(17173,0,'twitterfeed','twitterfeed_footer','',0),(17171,0,'twitterfeed','twitterfeed_borders','noborders',0),(17169,0,'twitterfeed','twitterfeed_limit','',0),(17170,0,'twitterfeed','twitterfeed_scrollbar','noscrollbar',0),(17168,0,'twitterfeed','twitterfeed_widget_height','1000',0),(17167,0,'twitterfeed','twitterfeed_widget_title','',0),(17166,0,'twitterfeed','twitterfeed_widget_id','712699435340267520',0),(17165,0,'twitterfeed','twitterfeed_status','1',0),(17187,0,'config_bossblog','config_bossblog_image_related_width','205',0),(17188,0,'config_bossblog','config_bossblog_image_related_height','260',0),(31898,0,'config','config_complete_status','[\"5\"]',1),(31862,0,'config','config_telephone','780.244.0ACE',0),(31843,0,'theme_default','theme_default_image_related_height','228',0),(31842,0,'theme_default','theme_default_image_related_width','228',0),(31848,0,'theme_default','theme_default_image_cart_width','47',0),(31850,0,'theme_default','theme_default_image_location_width','268',0),(31847,0,'theme_default','theme_default_image_wishlist_height','47',0),(31849,0,'theme_default','theme_default_image_cart_height','47',0),(31845,0,'theme_default','theme_default_image_compare_height','228',0),(31846,0,'theme_default','theme_default_image_wishlist_width','47',0),(31840,0,'theme_default','theme_default_image_additional_width','74',0),(18813,0,'pd','pd_ba_recursive','1',0),(18802,0,'pd','pd_dp_seo_keyword','docs',0),(18801,0,'pd','pd_dp_downloads_per_page','50',0),(18800,0,'pd','pd_db_widget_status','1',0),(18799,0,'pd','pd_db_display_downloads','360',0),(18798,0,'pd','pd_dp_header_link','1',0),(18797,0,'pd','pd_require_login_sample','1',0),(18796,0,'pd','pd_show_sample_constraint','1',0),(18795,0,'pd','pd_require_login_regular','0',0),(18794,0,'pd','pd_ba_path_to_tags','1',0),(18793,0,'pd','pd_ba_free_download','1',0),(18792,0,'pd','pd_hash_chars','lULg6SFGR0Kmp25HwrhCMJTy39x7ZuAtN1dBcQIzV8OjnqEskfvobW4XiaPDeY',0),(18791,0,'pd','pd_as','WyIwIl0=',0),(18790,0,'pd','pd_show_downloads_remaining','1',0),(18789,0,'pd','pd_force_download','0',0),(18788,0,'pd','pd_delete_file_from_system','1',0),(18787,0,'pd','pd_remove_sql_changes','0',0),(18786,0,'pd','pd_customer_groups','[]',1),(18785,0,'pd','pd_dp_footer_link','1',0),(18784,0,'pd','pd_show_login_required_text','1',0),(18783,0,'pd','pd_show_purchased_downloads','1',0),(18782,0,'pd','pd_installed_version','5.1.4',0),(18781,0,'pd','pd_add_to_previous_orders','1',0),(18780,0,'pd','pd_status','1',0),(18779,0,'pd','pd_require_login','0',0),(18778,0,'pd','pd_update_previous_orders','1',0),(18777,0,'pd','pd_installed','1',0),(18776,0,'pd','pd_aa_sort_order','0',0),(18775,0,'pd','pd_aa_download_status','1',0),(18774,0,'pd','pd_ba_constraint','0',0),(18773,0,'pd','pd_ba_directory','/home/ctcanada/public_html/downloads/',0),(18767,0,'pd','pd_ba_file_types','pdf,rar,zip',0),(18768,0,'pd','pd_ba_excludes','',0),(18769,0,'pd','pd_ba_duration_unit','60',0),(18770,0,'pd','pd_ba_duration','0',0),(18771,0,'pd','pd_ba_total_downloads','-1',0),(18772,0,'pd','pd_ba_status','1',0),(18766,0,'pd','pd_ba_file_tags','',0),(18765,0,'pd','pd_ba_all_types','0',0),(18764,0,'pd','pd_module_atc_action','0',0),(31833,0,'theme_default','theme_default_image_category_height','500',0),(31834,0,'theme_default','theme_default_image_thumb_width','500',0),(31832,0,'theme_default','theme_default_image_category_width','500',0),(19701,0,'export_import','export_import_settings_use_option_id','1',0),(19702,0,'export_import','export_import_settings_use_option_value_id','1',0),(19703,0,'export_import','export_import_settings_use_attribute_group_id','1',0),(19704,0,'export_import','export_import_settings_use_attribute_id','1',0),(19705,0,'export_import','export_import_settings_use_filter_group_id','1',0),(19706,0,'export_import','export_import_settings_use_filter_id','1',0),(19707,0,'export_import','export_import_settings_use_export_cache','0',0),(19708,0,'export_import','export_import_settings_use_import_cache','0',0),(31839,0,'theme_default','theme_default_image_product_height','500',0),(31838,0,'theme_default','theme_default_image_product_width','500',0),(31837,0,'theme_default','theme_default_image_popup_height','500',0),(31897,0,'config','config_processing_status','[\"2\"]',1),(31896,0,'config','config_order_status_id','2',0),(31895,0,'config','config_checkout_id','5',0),(31894,0,'config','config_checkout_guest','1',0),(31893,0,'config','config_cart_weight','1',0),(31892,0,'config','config_invoice_prefix','CT',0),(31891,0,'config','config_account_id','3',0),(31890,0,'config','config_login_attempts','10',0),(31889,0,'config','config_customer_price','0',0),(21122,0,'qc','qc_dev_ipp_secret','JNkhldnyRZy2rjddHkAoGotFCL9cG4ZFwsdzuecG',0),(21121,0,'qc','qc_dev_ipp_key','qyprdtru7WzjJF1iLVdDY1vrHsNdBz',0),(21120,0,'qc','qc_dev_ipp_token','80f55046bf639b46adb9fbab2f1def86d7ba',0),(21119,0,'qc','qc_enc_key','bcde1234',0),(21118,0,'qc','qc_dsn','mysqli://root:uxQ$W15H)hbb1-bO0Q@localhost/ctcanada_quickcommerce',0),(21117,0,'qc','qc_mode','0',0),(21116,0,'qc','qc_status','1',0),(21123,0,'qc','qc_prod_ipp_token','80f55046bf639b46adb9fbab2f1def86d7ba',0),(21124,0,'qc','qc_prod_ipp_key','qyprdtru7WzjJF1iLVdDY1vrHsNdBz',0),(21125,0,'qc','qc_prod_ipp_secret','JNkhldnyRZy2rjddHkAoGotFCL9cG4ZFwsdzuecG',0),(21126,0,'qc','qc_income_account','75',0),(21127,0,'qc','qc_cogs_account','38',0),(21128,0,'qc','qc_asset_account','127',0),(31888,0,'config','config_customer_group_display','[\"1\"]',1),(28598,0,'journal2_static_banners','journal2_static_banners_3099_status','0',0),(28597,0,'journal2_static_banners','journal2_static_banners_3098_status','0',0),(28596,0,'journal2_static_banners','journal2_static_banners_3097_status','0',0),(28595,0,'journal2_static_banners','journal2_static_banners_3096_status','0',0),(28594,0,'journal2_static_banners','journal2_static_banners_3095_status','0',0),(31887,0,'config','config_customer_group_id','1',0),(31886,0,'config','config_customer_search','0',0),(31885,0,'config','config_customer_activity','0',0),(31884,0,'config','config_customer_online','1',0),(31883,0,'config','config_tax_customer','shipping',0),(31882,0,'config','config_tax_default','shipping',0),(31881,0,'config','config_tax','0',0),(31880,0,'config','config_voucher_max','1000',0),(31879,0,'config','config_voucher_min','1',0),(31878,0,'config','config_review_guest','0',0),(31877,0,'config','config_review_status','0',0),(31876,0,'config','config_limit_admin','150',0),(31875,0,'config','config_product_count','0',0),(31874,0,'config','config_weight_class_id','5',0),(31873,0,'config','config_length_class_id','3',0),(31872,0,'config','config_currency_auto','1',0),(31871,0,'config','config_currency','CAD',0),(31870,0,'config','config_admin_language','en-gb',0),(31869,0,'config','config_language','en-gb',0),(31841,0,'theme_default','theme_default_image_additional_height','74',0),(31868,0,'config','config_zone_id','602',0),(31867,0,'config','config_country_id','38',0),(31866,0,'config','config_comment','',0),(31865,0,'config','config_open','',0),(31864,0,'config','config_image','',0),(31863,0,'config','config_fax','',0),(31861,0,'config','config_email','info@acecoffeeroasters.com',0),(31860,0,'config','config_geocode','',0),(31859,0,'config','config_address','10055 80 Ave NW\r\nEdmonton, AB\r\nT6E 1T3 Canada',0),(31858,0,'config','config_owner','Joe Parrottino',0),(31857,0,'config','config_name','ACE Coffee Roasters',0),(30754,8,'theme_default','theme_default_image_related_height','80',0),(30753,8,'theme_default','theme_default_image_related_width','80',0),(30752,8,'theme_default','theme_default_image_additional_height','74',0),(30750,8,'theme_default','theme_default_image_product_height','80',0),(30751,8,'theme_default','theme_default_image_additional_width','74',0),(30749,8,'theme_default','theme_default_image_product_width','80',0),(30748,8,'theme_default','theme_default_image_popup_height','500',0),(30747,8,'theme_default','theme_default_image_popup_width','500',0),(30746,8,'theme_default','theme_default_image_thumb_height','228',0),(30745,8,'theme_default','theme_default_image_thumb_width','228',0),(30744,8,'theme_default','theme_default_image_category_height','80',0),(30743,8,'theme_default','theme_default_image_category_width','80',0),(30741,8,'config','config_logo','',0),(30742,8,'config','config_icon','',0),(30740,8,'config','config_stock_checkout','0',0),(30739,8,'config','config_stock_display','0',0),(30738,8,'config','config_order_status_id','7',0),(30737,8,'config','config_checkout_id','0',0),(30735,8,'config','config_cart_weight','0',0),(30736,8,'config','config_checkout_guest','0',0),(30734,8,'config','config_account_id','0',0),(30733,8,'config','config_customer_price','0',0),(30732,8,'config','config_customer_group_id','8',0),(30731,8,'config','config_tax_customer','',0),(30730,8,'config','config_tax_default','',0),(30729,8,'config','config_tax','0',0),(30728,8,'theme_default','theme_default_product_description_length','100',0),(30727,8,'theme_default','theme_default_product_limit','30',0),(30726,8,'config','config_currency','CAD',0),(30725,8,'config','config_language','en-gb',0),(30724,8,'config','config_zone_id','602',0),(30723,8,'config','config_country_id','38',0),(30722,8,'config','config_layout_id','6',0),(30721,8,'config','config_theme','theme_default',0),(30719,8,'config','config_meta_description','',0),(30720,8,'config','config_meta_keyword','',0),(30718,8,'config','config_meta_title','ACE',0),(30717,8,'config','config_comment','',0),(30716,8,'config','config_open','',0),(30715,8,'config','config_image','',0),(30714,8,'config','config_fax','',0),(30713,8,'config','config_telephone','5555555555',0),(28643,0,'journal2_blog_search','journal2_blog_search_3144_status','1',0),(28644,0,'journal2_blog_tags','journal2_blog_tags_3145_status','1',0),(28645,0,'journal2_blog_tags','journal2_blog_tags_3146_status','1',0),(31776,0,'journal2_blog_posts','journal2_blog_posts_3157_status','0',0),(28647,0,'journal2_super_filter','journal2_super_filter_3148_status','1',0),(28648,0,'journal2_super_filter','journal2_super_filter_3149_status','1',0),(28649,0,'journal2_super_filter','journal2_super_filter_3150_status','1',0),(28650,0,'journal2_super_filter','journal2_super_filter_3151_status','1',0),(28651,0,'journal2_super_filter','journal2_super_filter_3152_status','1',0),(31700,0,'journal2_header_notice','journal2_header_notice_3155_status','0',0),(28653,0,'journal2_custom_sections','journal2_custom_sections_3154_status','0',0),(31856,0,'config','config_layout_id','10022',0),(31855,0,'config','config_theme','theme_default',0),(30712,8,'config','config_email','info@acecoffeeroasters.com',0),(30711,8,'config','config_geocode','',0),(30710,8,'config','config_address','ACE',0),(30709,8,'config','config_owner','ACE',0),(30708,8,'config','config_name','ACE Coffee Bar',0),(30707,8,'config','config_ssl','',0),(30706,8,'config','config_url','http://bar.acecoffeeroasters.com/',0),(30763,8,'config','config_secure','0',0),(31854,0,'config','config_meta_keyword','ACE Coffee Roasters, Edmonton Alberta',0),(31853,0,'config','config_meta_description','ACE Coffee Roasters, Edmonton Alberta',0),(31852,0,'config','config_meta_title','ACE Coffee Roasters',0),(31836,0,'theme_default','theme_default_image_popup_width','500',0),(31835,0,'theme_default','theme_default_image_thumb_height','500',0),(31830,0,'theme_default','theme_default_product_limit','30',0),(31844,0,'theme_default','theme_default_image_compare_width','228',0),(31780,0,'dashboard_activity','dashboard_activity_status','1',0),(31781,0,'dashboard_activity','dashboard_activity_sort_order','7',0),(31782,0,'dashboard_sale','dashboard_sale_status','1',0),(31783,0,'dashboard_sale','dashboard_sale_width','3',0),(31784,0,'dashboard_chart','dashboard_chart_status','1',0),(31785,0,'dashboard_chart','dashboard_chart_width','6',0),(31786,0,'dashboard_customer','dashboard_customer_status','1',0),(31787,0,'dashboard_customer','dashboard_customer_width','3',0),(31788,0,'dashboard_map','dashboard_map_status','1',0),(31789,0,'dashboard_map','dashboard_map_width','6',0),(31790,0,'dashboard_online','dashboard_online_status','1',0),(31791,0,'dashboard_online','dashboard_online_width','3',0),(31792,0,'dashboard_order','dashboard_order_sort_order','1',0),(31793,0,'dashboard_order','dashboard_order_status','1',0),(31794,0,'dashboard_order','dashboard_order_width','3',0),(31795,0,'dashboard_sale','dashboard_sale_sort_order','2',0),(31796,0,'dashboard_customer','dashboard_customer_sort_order','3',0),(31797,0,'dashboard_online','dashboard_online_sort_order','4',0),(31798,0,'dashboard_map','dashboard_map_sort_order','5',0),(31799,0,'dashboard_chart','dashboard_chart_sort_order','6',0),(31800,0,'dashboard_recent','dashboard_recent_status','1',0),(31801,0,'dashboard_recent','dashboard_recent_sort_order','8',0),(31802,0,'dashboard_activity','dashboard_activity_width','4',0),(31803,0,'dashboard_recent','dashboard_recent_width','8',0),(31851,0,'theme_default','theme_default_image_location_height','50',0),(31829,0,'theme_default','theme_default_status','1',0),(31828,0,'theme_default','theme_default_directory','quickcommerce',0),(31938,0,'config','config_error_display','0',0),(31939,0,'config','config_error_log','1',0),(31940,0,'config','config_error_filename','error.log',0);
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
INSERT INTO `oc2_store` (`store_id`, `name`, `url`, `ssl`) VALUES (8,'ACE Coffee Bar','http://bar.acecoffeeroasters.com/','');
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_url_alias`
--

LOCK TABLES `oc2_url_alias` WRITE;
/*!40000 ALTER TABLE `oc2_url_alias` DISABLE KEYS */;
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
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc2_user`
--

LOCK TABLES `oc2_user` WRITE;
/*!40000 ALTER TABLE `oc2_user` DISABLE KEYS */;
INSERT INTO `oc2_user` (`user_id`, `user_group_id`, `username`, `password`, `salt`, `firstname`, `lastname`, `email`, `image`, `code`, `ip`, `status`, `date_added`) VALUES (1,1,'superadmin','162972b26ccbc42b2e8e4724b9206847b3b8621b','b865bf7ae','Super','Admin','firebrandsolutions@example.com','','','127.0.0.1',1,'2015-07-25 20:49:49');
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
INSERT INTO `oc2_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES (1,1,'Badakhshan','BDS',1),(2,1,'Badghis','BDG',1),(3,1,'Baghlan','BGL',1),(4,1,'Balkh','BAL',1),(5,1,'Bamian','BAM',1),(6,1,'Farah','FRA',1),(7,1,'Faryab','FYB',1),(8,1,'Ghazni','GHA',1),(9,1,'Ghowr','GHO',1),(10,1,'Helmand','HEL',1),(11,1,'Herat','HER',1),(12,1,'Jowzjan','JOW',1),(13,1,'Kabul','KAB',1),(14,1,'Kandahar','KAN',1),(15,1,'Kapisa','KAP',1),(16,1,'Khost','KHO',1),(17,1,'Konar','KNR',1),(18,1,'Kondoz','KDZ',1),(19,1,'Laghman','LAG',1),(20,1,'Lowgar','LOW',1),(21,1,'Nangrahar','NAN',1),(22,1,'Nimruz','NIM',1),(23,1,'Nurestan','NUR',1),(24,1,'Oruzgan','ORU',1),(25,1,'Paktia','PIA',1),(26,1,'Paktika','PKA',1),(27,1,'Parwan','PAR',1),(28,1,'Samangan','SAM',1),(29,1,'Sar-e Pol','SAR',1),(30,1,'Takhar','TAK',1),(31,1,'Wardak','WAR',1),(32,1,'Zabol','ZAB',1),(33,2,'Berat','BR',1),(34,2,'Bulqize','BU',1),(35,2,'Delvine','DL',1),(36,2,'Devoll','DV',1),(37,2,'Diber','DI',1),(38,2,'Durres','DR',1),(39,2,'Elbasan','EL',1),(40,2,'Kolonje','ER',1),(41,2,'Fier','FR',1),(42,2,'Gjirokaster','GJ',1),(43,2,'Gramsh','GR',1),(44,2,'Has','HA',1),(45,2,'Kavaje','KA',1),(46,2,'Kurbin','KB',1),(47,2,'Kucove','KC',1),(48,2,'Korce','KO',1),(49,2,'Kruje','KR',1),(50,2,'Kukes','KU',1),(51,2,'Librazhd','LB',1),(52,2,'Lezhe','LE',1),(53,2,'Lushnje','LU',1),(54,2,'Malesi e Madhe','MM',1),(55,2,'Mallakaster','MK',1),(56,2,'Mat','MT',1),(57,2,'Mirdite','MR',1),(58,2,'Peqin','PQ',1),(59,2,'Permet','PR',1),(60,2,'Pogradec','PG',1),(61,2,'Puke','PU',1),(62,2,'Shkoder','SH',1),(63,2,'Skrapar','SK',1),(64,2,'Sarande','SR',1),(65,2,'Tepelene','TE',1),(66,2,'Tropoje','TP',1),(67,2,'Tirane','TR',1),(68,2,'Vlore','VL',1),(69,3,'Adrar','ADR',1),(70,3,'Ain Defla','ADE',1),(71,3,'Ain Temouchent','ATE',1),(72,3,'Alger','ALG',1),(73,3,'Annaba','ANN',1),(74,3,'Batna','BAT',1),(75,3,'Bechar','BEC',1),(76,3,'Bejaia','BEJ',1),(77,3,'Biskra','BIS',1),(78,3,'Blida','BLI',1),(79,3,'Bordj Bou Arreridj','BBA',1),(80,3,'Bouira','BOA',1),(81,3,'Boumerdes','BMD',1),(82,3,'Chlef','CHL',1),(83,3,'Constantine','CON',1),(84,3,'Djelfa','DJE',1),(85,3,'El Bayadh','EBA',1),(86,3,'El Oued','EOU',1),(87,3,'El Tarf','ETA',1),(88,3,'Ghardaia','GHA',1),(89,3,'Guelma','GUE',1),(90,3,'Illizi','ILL',1),(91,3,'Jijel','JIJ',1),(92,3,'Khenchela','KHE',1),(93,3,'Laghouat','LAG',1),(94,3,'Muaskar','MUA',1),(95,3,'Medea','MED',1),(96,3,'Mila','MIL',1),(97,3,'Mostaganem','MOS',1),(98,3,'M\'Sila','MSI',1),(99,3,'Naama','NAA',1),(100,3,'Oran','ORA',1),(101,3,'Ouargla','OUA',1),(102,3,'Oum el-Bouaghi','OEB',1),(103,3,'Relizane','REL',1),(104,3,'Saida','SAI',1),(105,3,'Setif','SET',1),(106,3,'Sidi Bel Abbes','SBA',1),(107,3,'Skikda','SKI',1),(108,3,'Souk Ahras','SAH',1),(109,3,'Tamanghasset','TAM',1),(110,3,'Tebessa','TEB',1),(111,3,'Tiaret','TIA',1),(112,3,'Tindouf','TIN',1),(113,3,'Tipaza','TIP',1),(114,3,'Tissemsilt','TIS',1),(115,3,'Tizi Ouzou','TOU',1),(116,3,'Tlemcen','TLE',1),(117,4,'Eastern','E',1),(118,4,'Manu\'a','M',1),(119,4,'Rose Island','R',1),(120,4,'Swains Island','S',1),(121,4,'Western','W',1),(122,5,'Andorra la Vella','ALV',1),(123,5,'Canillo','CAN',1),(124,5,'Encamp','ENC',1),(125,5,'Escaldes-Engordany','ESE',1),(126,5,'La Massana','LMA',1),(127,5,'Ordino','ORD',1),(128,5,'Sant Julia de Loria','SJL',1),(129,6,'Bengo','BGO',1),(130,6,'Benguela','BGU',1),(131,6,'Bie','BIE',1),(132,6,'Cabinda','CAB',1),(133,6,'Cuando-Cubango','CCU',1),(134,6,'Cuanza Norte','CNO',1),(135,6,'Cuanza Sul','CUS',1),(136,6,'Cunene','CNN',1),(137,6,'Huambo','HUA',1),(138,6,'Huila','HUI',1),(139,6,'Luanda','LUA',1),(140,6,'Lunda Norte','LNO',1),(141,6,'Lunda Sul','LSU',1),(142,6,'Malange','MAL',1),(143,6,'Moxico','MOX',1),(144,6,'Namibe','NAM',1),(145,6,'Uige','UIG',1),(146,6,'Zaire','ZAI',1),(147,9,'Saint George','ASG',1),(148,9,'Saint John','ASJ',1),(149,9,'Saint Mary','ASM',1),(150,9,'Saint Paul','ASL',1),(151,9,'Saint Peter','ASR',1),(152,9,'Saint Philip','ASH',1),(153,9,'Barbuda','BAR',1),(154,9,'Redonda','RED',1),(155,10,'Antartida e Islas del Atlantico','AN',1),(156,10,'Buenos Aires','BA',1),(157,10,'Catamarca','CA',1),(158,10,'Chaco','CH',1),(159,10,'Chubut','CU',1),(160,10,'Cordoba','CO',1),(161,10,'Corrientes','CR',1),(162,10,'Distrito Federal','DF',1),(163,10,'Entre Rios','ER',1),(164,10,'Formosa','FO',1),(165,10,'Jujuy','JU',1),(166,10,'La Pampa','LP',1),(167,10,'La Rioja','LR',1),(168,10,'Mendoza','ME',1),(169,10,'Misiones','MI',1),(170,10,'Neuquen','NE',1),(171,10,'Rio Negro','RN',1),(172,10,'Salta','SA',1),(173,10,'San Juan','SJ',1),(174,10,'San Luis','SL',1),(175,10,'Santa Cruz','SC',1),(176,10,'Santa Fe','SF',1),(177,10,'Santiago del Estero','SD',1),(178,10,'Tierra del Fuego','TF',1),(179,10,'Tucuman','TU',1),(180,11,'Aragatsotn','AGT',1),(181,11,'Ararat','ARR',1),(182,11,'Armavir','ARM',1),(183,11,'Geghark\'unik\'','GEG',1),(184,11,'Kotayk\'','KOT',1),(185,11,'Lorri','LOR',1),(186,11,'Shirak','SHI',1),(187,11,'Syunik\'','SYU',1),(188,11,'Tavush','TAV',1),(189,11,'Vayots\' Dzor','VAY',1),(190,11,'Yerevan','YER',1),(191,13,'Australian Capital Territory','ACT',1),(192,13,'New South Wales','NSW',1),(193,13,'Northern Territory','NT',1),(194,13,'Queensland','QLD',1),(195,13,'South Australia','SA',1),(196,13,'Tasmania','TAS',1),(197,13,'Victoria','VIC',1),(198,13,'Western Australia','WA',1),(199,14,'Burgenland','BUR',1),(200,14,'Kärnten','KAR',1),(201,14,'Nieder&ouml;sterreich','NOS',1),(202,14,'Ober&ouml;sterreich','OOS',1),(203,14,'Salzburg','SAL',1),(204,14,'Steiermark','STE',1),(205,14,'Tirol','TIR',1),(206,14,'Vorarlberg','VOR',1),(207,14,'Wien','WIE',1),(208,15,'Ali Bayramli','AB',1),(209,15,'Abseron','ABS',1),(210,15,'AgcabAdi','AGC',1),(211,15,'Agdam','AGM',1),(212,15,'Agdas','AGS',1),(213,15,'Agstafa','AGA',1),(214,15,'Agsu','AGU',1),(215,15,'Astara','AST',1),(216,15,'Baki','BA',1),(217,15,'BabAk','BAB',1),(218,15,'BalakAn','BAL',1),(219,15,'BArdA','BAR',1),(220,15,'Beylaqan','BEY',1),(221,15,'Bilasuvar','BIL',1),(222,15,'Cabrayil','CAB',1),(223,15,'Calilabab','CAL',1),(224,15,'Culfa','CUL',1),(225,15,'Daskasan','DAS',1),(226,15,'Davaci','DAV',1),(227,15,'Fuzuli','FUZ',1),(228,15,'Ganca','GA',1),(229,15,'Gadabay','GAD',1),(230,15,'Goranboy','GOR',1),(231,15,'Goycay','GOY',1),(232,15,'Haciqabul','HAC',1),(233,15,'Imisli','IMI',1),(234,15,'Ismayilli','ISM',1),(235,15,'Kalbacar','KAL',1),(236,15,'Kurdamir','KUR',1),(237,15,'Lankaran','LA',1),(238,15,'Lacin','LAC',1),(239,15,'Lankaran','LAN',1),(240,15,'Lerik','LER',1),(241,15,'Masalli','MAS',1),(242,15,'Mingacevir','MI',1),(243,15,'Naftalan','NA',1),(244,15,'Neftcala','NEF',1),(245,15,'Oguz','OGU',1),(246,15,'Ordubad','ORD',1),(247,15,'Qabala','QAB',1),(248,15,'Qax','QAX',1),(249,15,'Qazax','QAZ',1),(250,15,'Qobustan','QOB',1),(251,15,'Quba','QBA',1),(252,15,'Qubadli','QBI',1),(253,15,'Qusar','QUS',1),(254,15,'Saki','SA',1),(255,15,'Saatli','SAT',1),(256,15,'Sabirabad','SAB',1),(257,15,'Sadarak','SAD',1),(258,15,'Sahbuz','SAH',1),(259,15,'Saki','SAK',1),(260,15,'Salyan','SAL',1),(261,15,'Sumqayit','SM',1),(262,15,'Samaxi','SMI',1),(263,15,'Samkir','SKR',1),(264,15,'Samux','SMX',1),(265,15,'Sarur','SAR',1),(266,15,'Siyazan','SIY',1),(267,15,'Susa','SS',1),(268,15,'Susa','SUS',1),(269,15,'Tartar','TAR',1),(270,15,'Tovuz','TOV',1),(271,15,'Ucar','UCA',1),(272,15,'Xankandi','XA',1),(273,15,'Xacmaz','XAC',1),(274,15,'Xanlar','XAN',1),(275,15,'Xizi','XIZ',1),(276,15,'Xocali','XCI',1),(277,15,'Xocavand','XVD',1),(278,15,'Yardimli','YAR',1),(279,15,'Yevlax','YEV',1),(280,15,'Zangilan','ZAN',1),(281,15,'Zaqatala','ZAQ',1),(282,15,'Zardab','ZAR',1),(283,15,'Naxcivan','NX',1),(284,16,'Acklins','ACK',1),(285,16,'Berry Islands','BER',1),(286,16,'Bimini','BIM',1),(287,16,'Black Point','BLK',1),(288,16,'Cat Island','CAT',1),(289,16,'Central Abaco','CAB',1),(290,16,'Central Andros','CAN',1),(291,16,'Central Eleuthera','CEL',1),(292,16,'City of Freeport','FRE',1),(293,16,'Crooked Island','CRO',1),(294,16,'East Grand Bahama','EGB',1),(295,16,'Exuma','EXU',1),(296,16,'Grand Cay','GRD',1),(297,16,'Harbour Island','HAR',1),(298,16,'Hope Town','HOP',1),(299,16,'Inagua','INA',1),(300,16,'Long Island','LNG',1),(301,16,'Mangrove Cay','MAN',1),(302,16,'Mayaguana','MAY',1),(303,16,'Moore\'s Island','MOO',1),(304,16,'North Abaco','NAB',1),(305,16,'North Andros','NAN',1),(306,16,'North Eleuthera','NEL',1),(307,16,'Ragged Island','RAG',1),(308,16,'Rum Cay','RUM',1),(309,16,'San Salvador','SAL',1),(310,16,'South Abaco','SAB',1),(311,16,'South Andros','SAN',1),(312,16,'South Eleuthera','SEL',1),(313,16,'Spanish Wells','SWE',1),(314,16,'West Grand Bahama','WGB',1),(315,17,'Capital','CAP',1),(316,17,'Central','CEN',1),(317,17,'Muharraq','MUH',1),(318,17,'Northern','NOR',1),(319,17,'Southern','SOU',1),(320,18,'Barisal','BAR',1),(321,18,'Chittagong','CHI',1),(322,18,'Dhaka','DHA',1),(323,18,'Khulna','KHU',1),(324,18,'Rajshahi','RAJ',1),(325,18,'Sylhet','SYL',1),(326,19,'Christ Church','CC',1),(327,19,'Saint Andrew','AND',1),(328,19,'Saint George','GEO',1),(329,19,'Saint James','JAM',1),(330,19,'Saint John','JOH',1),(331,19,'Saint Joseph','JOS',1),(332,19,'Saint Lucy','LUC',1),(333,19,'Saint Michael','MIC',1),(334,19,'Saint Peter','PET',1),(335,19,'Saint Philip','PHI',1),(336,19,'Saint Thomas','THO',1),(337,20,'Brestskaya (Brest)','BR',1),(338,20,'Homyel\'skaya (Homyel\')','HO',1),(339,20,'Horad Minsk','HM',1),(340,20,'Hrodzyenskaya (Hrodna)','HR',1),(341,20,'Mahilyowskaya (Mahilyow)','MA',1),(342,20,'Minskaya','MI',1),(343,20,'Vitsyebskaya (Vitsyebsk)','VI',1),(344,21,'Antwerpen','VAN',1),(345,21,'Brabant Wallon','WBR',1),(346,21,'Hainaut','WHT',1),(347,21,'Liège','WLG',1),(348,21,'Limburg','VLI',1),(349,21,'Luxembourg','WLX',1),(350,21,'Namur','WNA',1),(351,21,'Oost-Vlaanderen','VOV',1),(352,21,'Vlaams Brabant','VBR',1),(353,21,'West-Vlaanderen','VWV',1),(354,22,'Belize','BZ',1),(355,22,'Cayo','CY',1),(356,22,'Corozal','CR',1),(357,22,'Orange Walk','OW',1),(358,22,'Stann Creek','SC',1),(359,22,'Toledo','TO',1),(360,23,'Alibori','AL',1),(361,23,'Atakora','AK',1),(362,23,'Atlantique','AQ',1),(363,23,'Borgou','BO',1),(364,23,'Collines','CO',1),(365,23,'Donga','DO',1),(366,23,'Kouffo','KO',1),(367,23,'Littoral','LI',1),(368,23,'Mono','MO',1),(369,23,'Oueme','OU',1),(370,23,'Plateau','PL',1),(371,23,'Zou','ZO',1),(372,24,'Devonshire','DS',1),(373,24,'Hamilton City','HC',1),(374,24,'Hamilton','HA',1),(375,24,'Paget','PG',1),(376,24,'Pembroke','PB',1),(377,24,'Saint George City','GC',1),(378,24,'Saint George\'s','SG',1),(379,24,'Sandys','SA',1),(380,24,'Smith\'s','SM',1),(381,24,'Southampton','SH',1),(382,24,'Warwick','WA',1),(383,25,'Bumthang','BUM',1),(384,25,'Chukha','CHU',1),(385,25,'Dagana','DAG',1),(386,25,'Gasa','GAS',1),(387,25,'Haa','HAA',1),(388,25,'Lhuntse','LHU',1),(389,25,'Mongar','MON',1),(390,25,'Paro','PAR',1),(391,25,'Pemagatshel','PEM',1),(392,25,'Punakha','PUN',1),(393,25,'Samdrup Jongkhar','SJO',1),(394,25,'Samtse','SAT',1),(395,25,'Sarpang','SAR',1),(396,25,'Thimphu','THI',1),(397,25,'Trashigang','TRG',1),(398,25,'Trashiyangste','TRY',1),(399,25,'Trongsa','TRO',1),(400,25,'Tsirang','TSI',1),(401,25,'Wangdue Phodrang','WPH',1),(402,25,'Zhemgang','ZHE',1),(403,26,'Beni','BEN',1),(404,26,'Chuquisaca','CHU',1),(405,26,'Cochabamba','COC',1),(406,26,'La Paz','LPZ',1),(407,26,'Oruro','ORU',1),(408,26,'Pando','PAN',1),(409,26,'Potosi','POT',1),(410,26,'Santa Cruz','SCZ',1),(411,26,'Tarija','TAR',1),(412,27,'Brcko district','BRO',1),(413,27,'Unsko-Sanski Kanton','FUS',1),(414,27,'Posavski Kanton','FPO',1),(415,27,'Tuzlanski Kanton','FTU',1),(416,27,'Zenicko-Dobojski Kanton','FZE',1),(417,27,'Bosanskopodrinjski Kanton','FBP',1),(418,27,'Srednjebosanski Kanton','FSB',1),(419,27,'Hercegovacko-neretvanski Kanton','FHN',1),(420,27,'Zapadnohercegovacka Zupanija','FZH',1),(421,27,'Kanton Sarajevo','FSA',1),(422,27,'Zapadnobosanska','FZA',1),(423,27,'Banja Luka','SBL',1),(424,27,'Doboj','SDO',1),(425,27,'Bijeljina','SBI',1),(426,27,'Vlasenica','SVL',1),(427,27,'Sarajevo-Romanija or Sokolac','SSR',1),(428,27,'Foca','SFO',1),(429,27,'Trebinje','STR',1),(430,28,'Central','CE',1),(431,28,'Ghanzi','GH',1),(432,28,'Kgalagadi','KD',1),(433,28,'Kgatleng','KT',1),(434,28,'Kweneng','KW',1),(435,28,'Ngamiland','NG',1),(436,28,'North East','NE',1),(437,28,'North West','NW',1),(438,28,'South East','SE',1),(439,28,'Southern','SO',1),(440,30,'Acre','AC',1),(441,30,'Alagoas','AL',1),(442,30,'Amapá','AP',1),(443,30,'Amazonas','AM',1),(444,30,'Bahia','BA',1),(445,30,'Ceará','CE',1),(446,30,'Distrito Federal','DF',1),(447,30,'Espírito Santo','ES',1),(448,30,'Goiás','GO',1),(449,30,'Maranhão','MA',1),(450,30,'Mato Grosso','MT',1),(451,30,'Mato Grosso do Sul','MS',1),(452,30,'Minas Gerais','MG',1),(453,30,'Pará','PA',1),(454,30,'Paraíba','PB',1),(455,30,'Paraná','PR',1),(456,30,'Pernambuco','PE',1),(457,30,'Piauí','PI',1),(458,30,'Rio de Janeiro','RJ',1),(459,30,'Rio Grande do Norte','RN',1),(460,30,'Rio Grande do Sul','RS',1),(461,30,'Rondônia','RO',1),(462,30,'Roraima','RR',1),(463,30,'Santa Catarina','SC',1),(464,30,'São Paulo','SP',1),(465,30,'Sergipe','SE',1),(466,30,'Tocantins','TO',1),(467,31,'Peros Banhos','PB',1),(468,31,'Salomon Islands','SI',1),(469,31,'Nelsons Island','NI',1),(470,31,'Three Brothers','TB',1),(471,31,'Eagle Islands','EA',1),(472,31,'Danger Island','DI',1),(473,31,'Egmont Islands','EG',1),(474,31,'Diego Garcia','DG',1),(475,32,'Belait','BEL',1),(476,32,'Brunei and Muara','BRM',1),(477,32,'Temburong','TEM',1),(478,32,'Tutong','TUT',1),(479,33,'Blagoevgrad','',1),(480,33,'Burgas','',1),(481,33,'Dobrich','',1),(482,33,'Gabrovo','',1),(483,33,'Haskovo','',1),(484,33,'Kardjali','',1),(485,33,'Kyustendil','',1),(486,33,'Lovech','',1),(487,33,'Montana','',1),(488,33,'Pazardjik','',1),(489,33,'Pernik','',1),(490,33,'Pleven','',1),(491,33,'Plovdiv','',1),(492,33,'Razgrad','',1),(493,33,'Shumen','',1),(494,33,'Silistra','',1),(495,33,'Sliven','',1),(496,33,'Smolyan','',1),(497,33,'Sofia','',1),(498,33,'Sofia - town','',1),(499,33,'Stara Zagora','',1),(500,33,'Targovishte','',1),(501,33,'Varna','',1),(502,33,'Veliko Tarnovo','',1),(503,33,'Vidin','',1),(504,33,'Vratza','',1),(505,33,'Yambol','',1),(506,34,'Bale','BAL',1),(507,34,'Bam','BAM',1),(508,34,'Banwa','BAN',1),(509,34,'Bazega','BAZ',1),(510,34,'Bougouriba','BOR',1),(511,34,'Boulgou','BLG',1),(512,34,'Boulkiemde','BOK',1),(513,34,'Comoe','COM',1),(514,34,'Ganzourgou','GAN',1),(515,34,'Gnagna','GNA',1),(516,34,'Gourma','GOU',1),(517,34,'Houet','HOU',1),(518,34,'Ioba','IOA',1),(519,34,'Kadiogo','KAD',1),(520,34,'Kenedougou','KEN',1),(521,34,'Komondjari','KOD',1),(522,34,'Kompienga','KOP',1),(523,34,'Kossi','KOS',1),(524,34,'Koulpelogo','KOL',1),(525,34,'Kouritenga','KOT',1),(526,34,'Kourweogo','KOW',1),(527,34,'Leraba','LER',1),(528,34,'Loroum','LOR',1),(529,34,'Mouhoun','MOU',1),(530,34,'Nahouri','NAH',1),(531,34,'Namentenga','NAM',1),(532,34,'Nayala','NAY',1),(533,34,'Noumbiel','NOU',1),(534,34,'Oubritenga','OUB',1),(535,34,'Oudalan','OUD',1),(536,34,'Passore','PAS',1),(537,34,'Poni','PON',1),(538,34,'Sanguie','SAG',1),(539,34,'Sanmatenga','SAM',1),(540,34,'Seno','SEN',1),(541,34,'Sissili','SIS',1),(542,34,'Soum','SOM',1),(543,34,'Sourou','SOR',1),(544,34,'Tapoa','TAP',1),(545,34,'Tuy','TUY',1),(546,34,'Yagha','YAG',1),(547,34,'Yatenga','YAT',1),(548,34,'Ziro','ZIR',1),(549,34,'Zondoma','ZOD',1),(550,34,'Zoundweogo','ZOW',1),(551,35,'Bubanza','BB',1),(552,35,'Bujumbura','BJ',1),(553,35,'Bururi','BR',1),(554,35,'Cankuzo','CA',1),(555,35,'Cibitoke','CI',1),(556,35,'Gitega','GI',1),(557,35,'Karuzi','KR',1),(558,35,'Kayanza','KY',1),(559,35,'Kirundo','KI',1),(560,35,'Makamba','MA',1),(561,35,'Muramvya','MU',1),(562,35,'Muyinga','MY',1),(563,35,'Mwaro','MW',1),(564,35,'Ngozi','NG',1),(565,35,'Rutana','RT',1),(566,35,'Ruyigi','RY',1),(567,36,'Phnom Penh','PP',1),(568,36,'Preah Seihanu (Kompong Som or Sihanoukville)','PS',1),(569,36,'Pailin','PA',1),(570,36,'Keb','KB',1),(571,36,'Banteay Meanchey','BM',1),(572,36,'Battambang','BA',1),(573,36,'Kampong Cham','KM',1),(574,36,'Kampong Chhnang','KN',1),(575,36,'Kampong Speu','KU',1),(576,36,'Kampong Som','KO',1),(577,36,'Kampong Thom','KT',1),(578,36,'Kampot','KP',1),(579,36,'Kandal','KL',1),(580,36,'Kaoh Kong','KK',1),(581,36,'Kratie','KR',1),(582,36,'Mondul Kiri','MK',1),(583,36,'Oddar Meancheay','OM',1),(584,36,'Pursat','PU',1),(585,36,'Preah Vihear','PR',1),(586,36,'Prey Veng','PG',1),(587,36,'Ratanak Kiri','RK',1),(588,36,'Siemreap','SI',1),(589,36,'Stung Treng','ST',1),(590,36,'Svay Rieng','SR',1),(591,36,'Takeo','TK',1),(592,37,'Adamawa (Adamaoua)','ADA',1),(593,37,'Centre','CEN',1),(594,37,'East (Est)','EST',1),(595,37,'Extreme North (Extreme-Nord)','EXN',1),(596,37,'Littoral','LIT',1),(597,37,'North (Nord)','NOR',1),(598,37,'Northwest (Nord-Ouest)','NOT',1),(599,37,'West (Ouest)','OUE',1),(600,37,'South (Sud)','SUD',1),(601,37,'Southwest (Sud-Ouest).','SOU',1),(602,38,'Alberta','AB',1),(603,38,'British Columbia','BC',1),(604,38,'Manitoba','MB',1),(605,38,'New Brunswick','NB',1),(606,38,'Newfoundland and Labrador','NL',1),(607,38,'Northwest Territories','NT',1),(608,38,'Nova Scotia','NS',1),(609,38,'Nunavut','NU',1),(610,38,'Ontario','ON',1),(611,38,'Prince Edward Island','PE',1),(612,38,'Qu&eacute;bec','QC',1),(613,38,'Saskatchewan','SK',1),(614,38,'Yukon Territory','YT',1),(615,39,'Boa Vista','BV',1),(616,39,'Brava','BR',1),(617,39,'Calheta de Sao Miguel','CS',1),(618,39,'Maio','MA',1),(619,39,'Mosteiros','MO',1),(620,39,'Paul','PA',1),(621,39,'Porto Novo','PN',1),(622,39,'Praia','PR',1),(623,39,'Ribeira Grande','RG',1),(624,39,'Sal','SL',1),(625,39,'Santa Catarina','CA',1),(626,39,'Santa Cruz','CR',1),(627,39,'Sao Domingos','SD',1),(628,39,'Sao Filipe','SF',1),(629,39,'Sao Nicolau','SN',1),(630,39,'Sao Vicente','SV',1),(631,39,'Tarrafal','TA',1),(632,40,'Creek','CR',1),(633,40,'Eastern','EA',1),(634,40,'Midland','ML',1),(635,40,'South Town','ST',1),(636,40,'Spot Bay','SP',1),(637,40,'Stake Bay','SK',1),(638,40,'West End','WD',1),(639,40,'Western','WN',1),(640,41,'Bamingui-Bangoran','BBA',1),(641,41,'Basse-Kotto','BKO',1),(642,41,'Haute-Kotto','HKO',1),(643,41,'Haut-Mbomou','HMB',1),(644,41,'Kemo','KEM',1),(645,41,'Lobaye','LOB',1),(646,41,'Mambere-KadeÔ','MKD',1),(647,41,'Mbomou','MBO',1),(648,41,'Nana-Mambere','NMM',1),(649,41,'Ombella-M\'Poko','OMP',1),(650,41,'Ouaka','OUK',1),(651,41,'Ouham','OUH',1),(652,41,'Ouham-Pende','OPE',1),(653,41,'Vakaga','VAK',1),(654,41,'Nana-Grebizi','NGR',1),(655,41,'Sangha-Mbaere','SMB',1),(656,41,'Bangui','BAN',1),(657,42,'Batha','BA',1),(658,42,'Biltine','BI',1),(659,42,'Borkou-Ennedi-Tibesti','BE',1),(660,42,'Chari-Baguirmi','CB',1),(661,42,'Guera','GU',1),(662,42,'Kanem','KA',1),(663,42,'Lac','LA',1),(664,42,'Logone Occidental','LC',1),(665,42,'Logone Oriental','LR',1),(666,42,'Mayo-Kebbi','MK',1),(667,42,'Moyen-Chari','MC',1),(668,42,'Ouaddai','OU',1),(669,42,'Salamat','SA',1),(670,42,'Tandjile','TA',1),(671,43,'Aisen del General Carlos Ibanez','AI',1),(672,43,'Antofagasta','AN',1),(673,43,'Araucania','AR',1),(674,43,'Atacama','AT',1),(675,43,'Bio-Bio','BI',1),(676,43,'Coquimbo','CO',1),(677,43,'Libertador General Bernardo O\'Higgins','LI',1),(678,43,'Los Lagos','LL',1),(679,43,'Magallanes y de la Antartica Chilena','MA',1),(680,43,'Maule','ML',1),(681,43,'Region Metropolitana','RM',1),(682,43,'Tarapaca','TA',1),(683,43,'Valparaiso','VS',1),(684,44,'Anhui','AN',1),(685,44,'Beijing','BE',1),(686,44,'Chongqing','CH',1),(687,44,'Fujian','FU',1),(688,44,'Gansu','GA',1),(689,44,'Guangdong','GU',1),(690,44,'Guangxi','GX',1),(691,44,'Guizhou','GZ',1),(692,44,'Hainan','HA',1),(693,44,'Hebei','HB',1),(694,44,'Heilongjiang','HL',1),(695,44,'Henan','HE',1),(696,44,'Hong Kong','HK',1),(697,44,'Hubei','HU',1),(698,44,'Hunan','HN',1),(699,44,'Inner Mongolia','IM',1),(700,44,'Jiangsu','JI',1),(701,44,'Jiangxi','JX',1),(702,44,'Jilin','JL',1),(703,44,'Liaoning','LI',1),(704,44,'Macau','MA',1),(705,44,'Ningxia','NI',1),(706,44,'Shaanxi','SH',1),(707,44,'Shandong','SA',1),(708,44,'Shanghai','SG',1),(709,44,'Shanxi','SX',1),(710,44,'Sichuan','SI',1),(711,44,'Tianjin','TI',1),(712,44,'Xinjiang','XI',1),(713,44,'Yunnan','YU',1),(714,44,'Zhejiang','ZH',1),(715,46,'Direction Island','D',1),(716,46,'Home Island','H',1),(717,46,'Horsburgh Island','O',1),(718,46,'South Island','S',1),(719,46,'West Island','W',1),(720,47,'Amazonas','AMZ',1),(721,47,'Antioquia','ANT',1),(722,47,'Arauca','ARA',1),(723,47,'Atlantico','ATL',1),(724,47,'Bogota D.C.','BDC',1),(725,47,'Bolivar','BOL',1),(726,47,'Boyaca','BOY',1),(727,47,'Caldas','CAL',1),(728,47,'Caqueta','CAQ',1),(729,47,'Casanare','CAS',1),(730,47,'Cauca','CAU',1),(731,47,'Cesar','CES',1),(732,47,'Choco','CHO',1),(733,47,'Cordoba','COR',1),(734,47,'Cundinamarca','CAM',1),(735,47,'Guainia','GNA',1),(736,47,'Guajira','GJR',1),(737,47,'Guaviare','GVR',1),(738,47,'Huila','HUI',1),(739,47,'Magdalena','MAG',1),(740,47,'Meta','MET',1),(741,47,'Narino','NAR',1),(742,47,'Norte de Santander','NDS',1),(743,47,'Putumayo','PUT',1),(744,47,'Quindio','QUI',1),(745,47,'Risaralda','RIS',1),(746,47,'San Andres y Providencia','SAP',1),(747,47,'Santander','SAN',1),(748,47,'Sucre','SUC',1),(749,47,'Tolima','TOL',1),(750,47,'Valle del Cauca','VDC',1),(751,47,'Vaupes','VAU',1),(752,47,'Vichada','VIC',1),(753,48,'Grande Comore','G',1),(754,48,'Anjouan','A',1),(755,48,'Moheli','M',1),(756,49,'Bouenza','BO',1),(757,49,'Brazzaville','BR',1),(758,49,'Cuvette','CU',1),(759,49,'Cuvette-Ouest','CO',1),(760,49,'Kouilou','KO',1),(761,49,'Lekoumou','LE',1),(762,49,'Likouala','LI',1),(763,49,'Niari','NI',1),(764,49,'Plateaux','PL',1),(765,49,'Pool','PO',1),(766,49,'Sangha','SA',1),(767,50,'Pukapuka','PU',1),(768,50,'Rakahanga','RK',1),(769,50,'Manihiki','MK',1),(770,50,'Penrhyn','PE',1),(771,50,'Nassau Island','NI',1),(772,50,'Surwarrow','SU',1),(773,50,'Palmerston','PA',1),(774,50,'Aitutaki','AI',1),(775,50,'Manuae','MA',1),(776,50,'Takutea','TA',1),(777,50,'Mitiaro','MT',1),(778,50,'Atiu','AT',1),(779,50,'Mauke','MU',1),(780,50,'Rarotonga','RR',1),(781,50,'Mangaia','MG',1),(782,51,'Alajuela','AL',1),(783,51,'Cartago','CA',1),(784,51,'Guanacaste','GU',1),(785,51,'Heredia','HE',1),(786,51,'Limon','LI',1),(787,51,'Puntarenas','PU',1),(788,51,'San Jose','SJ',1),(789,52,'Abengourou','ABE',1),(790,52,'Abidjan','ABI',1),(791,52,'Aboisso','ABO',1),(792,52,'Adiake','ADI',1),(793,52,'Adzope','ADZ',1),(794,52,'Agboville','AGB',1),(795,52,'Agnibilekrou','AGN',1),(796,52,'Alepe','ALE',1),(797,52,'Bocanda','BOC',1),(798,52,'Bangolo','BAN',1),(799,52,'Beoumi','BEO',1),(800,52,'Biankouma','BIA',1),(801,52,'Bondoukou','BDK',1),(802,52,'Bongouanou','BGN',1),(803,52,'Bouafle','BFL',1),(804,52,'Bouake','BKE',1),(805,52,'Bouna','BNA',1),(806,52,'Boundiali','BDL',1),(807,52,'Dabakala','DKL',1),(808,52,'Dabou','DBU',1),(809,52,'Daloa','DAL',1),(810,52,'Danane','DAN',1),(811,52,'Daoukro','DAO',1),(812,52,'Dimbokro','DIM',1),(813,52,'Divo','DIV',1),(814,52,'Duekoue','DUE',1),(815,52,'Ferkessedougou','FER',1),(816,52,'Gagnoa','GAG',1),(817,52,'Grand-Bassam','GBA',1),(818,52,'Grand-Lahou','GLA',1),(819,52,'Guiglo','GUI',1),(820,52,'Issia','ISS',1),(821,52,'Jacqueville','JAC',1),(822,52,'Katiola','KAT',1),(823,52,'Korhogo','KOR',1),(824,52,'Lakota','LAK',1),(825,52,'Man','MAN',1),(826,52,'Mankono','MKN',1),(827,52,'Mbahiakro','MBA',1),(828,52,'Odienne','ODI',1),(829,52,'Oume','OUM',1),(830,52,'Sakassou','SAK',1),(831,52,'San-Pedro','SPE',1),(832,52,'Sassandra','SAS',1),(833,52,'Seguela','SEG',1),(834,52,'Sinfra','SIN',1),(835,52,'Soubre','SOU',1),(836,52,'Tabou','TAB',1),(837,52,'Tanda','TAN',1),(838,52,'Tiebissou','TIE',1),(839,52,'Tingrela','TIN',1),(840,52,'Tiassale','TIA',1),(841,52,'Touba','TBA',1),(842,52,'Toulepleu','TLP',1),(843,52,'Toumodi','TMD',1),(844,52,'Vavoua','VAV',1),(845,52,'Yamoussoukro','YAM',1),(846,52,'Zuenoula','ZUE',1),(847,53,'Bjelovarsko-bilogorska','BB',1),(848,53,'Grad Zagreb','GZ',1),(849,53,'Dubrovačko-neretvanska','DN',1),(850,53,'Istarska','IS',1),(851,53,'Karlovačka','KA',1),(852,53,'Koprivničko-križevačka','KK',1),(853,53,'Krapinsko-zagorska','KZ',1),(854,53,'Ličko-senjska','LS',1),(855,53,'Međimurska','ME',1),(856,53,'Osječko-baranjska','OB',1),(857,53,'Požeško-slavonska','PS',1),(858,53,'Primorsko-goranska','PG',1),(859,53,'Šibensko-kninska','SK',1),(860,53,'Sisačko-moslavačka','SM',1),(861,53,'Brodsko-posavska','BP',1),(862,53,'Splitsko-dalmatinska','SD',1),(863,53,'Varaždinska','VA',1),(864,53,'Virovitičko-podravska','VP',1),(865,53,'Vukovarsko-srijemska','VS',1),(866,53,'Zadarska','ZA',1),(867,53,'Zagrebačka','ZG',1),(868,54,'Camaguey','CA',1),(869,54,'Ciego de Avila','CD',1),(870,54,'Cienfuegos','CI',1),(871,54,'Ciudad de La Habana','CH',1),(872,54,'Granma','GR',1),(873,54,'Guantanamo','GU',1),(874,54,'Holguin','HO',1),(875,54,'Isla de la Juventud','IJ',1),(876,54,'La Habana','LH',1),(877,54,'Las Tunas','LT',1),(878,54,'Matanzas','MA',1),(879,54,'Pinar del Rio','PR',1),(880,54,'Sancti Spiritus','SS',1),(881,54,'Santiago de Cuba','SC',1),(882,54,'Villa Clara','VC',1),(883,55,'Famagusta','F',1),(884,55,'Kyrenia','K',1),(885,55,'Larnaca','A',1),(886,55,'Limassol','I',1),(887,55,'Nicosia','N',1),(888,55,'Paphos','P',1),(889,56,'Ústecký','U',1),(890,56,'Jihočeský','C',1),(891,56,'Jihomoravský','B',1),(892,56,'Karlovarský','K',1),(893,56,'Královehradecký','H',1),(894,56,'Liberecký','L',1),(895,56,'Moravskoslezský','T',1),(896,56,'Olomoucký','M',1),(897,56,'Pardubický','E',1),(898,56,'Plzeňský','P',1),(899,56,'Praha','A',1),(900,56,'Středočeský','S',1),(901,56,'Vysočina','J',1),(902,56,'Zlínský','Z',1),(903,57,'Arhus','AR',1),(904,57,'Bornholm','BH',1),(905,57,'Copenhagen','CO',1),(906,57,'Faroe Islands','FO',1),(907,57,'Frederiksborg','FR',1),(908,57,'Fyn','FY',1),(909,57,'Kobenhavn','KO',1),(910,57,'Nordjylland','NO',1),(911,57,'Ribe','RI',1),(912,57,'Ringkobing','RK',1),(913,57,'Roskilde','RO',1),(914,57,'Sonderjylland','SO',1),(915,57,'Storstrom','ST',1),(916,57,'Vejle','VK',1),(917,57,'Vestj&aelig;lland','VJ',1),(918,57,'Viborg','VB',1),(919,58,'\'Ali Sabih','S',1),(920,58,'Dikhil','K',1),(921,58,'Djibouti','J',1),(922,58,'Obock','O',1),(923,58,'Tadjoura','T',1),(924,59,'Saint Andrew Parish','AND',1),(925,59,'Saint David Parish','DAV',1),(926,59,'Saint George Parish','GEO',1),(927,59,'Saint John Parish','JOH',1),(928,59,'Saint Joseph Parish','JOS',1),(929,59,'Saint Luke Parish','LUK',1),(930,59,'Saint Mark Parish','MAR',1),(931,59,'Saint Patrick Parish','PAT',1),(932,59,'Saint Paul Parish','PAU',1),(933,59,'Saint Peter Parish','PET',1),(934,60,'Distrito Nacional','DN',1),(935,60,'Azua','AZ',1),(936,60,'Baoruco','BC',1),(937,60,'Barahona','BH',1),(938,60,'Dajabon','DJ',1),(939,60,'Duarte','DU',1),(940,60,'Elias Pina','EL',1),(941,60,'El Seybo','SY',1),(942,60,'Espaillat','ET',1),(943,60,'Hato Mayor','HM',1),(944,60,'Independencia','IN',1),(945,60,'La Altagracia','AL',1),(946,60,'La Romana','RO',1),(947,60,'La Vega','VE',1),(948,60,'Maria Trinidad Sanchez','MT',1),(949,60,'Monsenor Nouel','MN',1),(950,60,'Monte Cristi','MC',1),(951,60,'Monte Plata','MP',1),(952,60,'Pedernales','PD',1),(953,60,'Peravia (Bani)','PR',1),(954,60,'Puerto Plata','PP',1),(955,60,'Salcedo','SL',1),(956,60,'Samana','SM',1),(957,60,'Sanchez Ramirez','SH',1),(958,60,'San Cristobal','SC',1),(959,60,'San Jose de Ocoa','JO',1),(960,60,'San Juan','SJ',1),(961,60,'San Pedro de Macoris','PM',1),(962,60,'Santiago','SA',1),(963,60,'Santiago Rodriguez','ST',1),(964,60,'Santo Domingo','SD',1),(965,60,'Valverde','VA',1),(966,61,'Aileu','AL',1),(967,61,'Ainaro','AN',1),(968,61,'Baucau','BA',1),(969,61,'Bobonaro','BO',1),(970,61,'Cova Lima','CO',1),(971,61,'Dili','DI',1),(972,61,'Ermera','ER',1),(973,61,'Lautem','LA',1),(974,61,'Liquica','LI',1),(975,61,'Manatuto','MT',1),(976,61,'Manufahi','MF',1),(977,61,'Oecussi','OE',1),(978,61,'Viqueque','VI',1),(979,62,'Azuay','AZU',1),(980,62,'Bolivar','BOL',1),(981,62,'Ca&ntilde;ar','CAN',1),(982,62,'Carchi','CAR',1),(983,62,'Chimborazo','CHI',1),(984,62,'Cotopaxi','COT',1),(985,62,'El Oro','EOR',1),(986,62,'Esmeraldas','ESM',1),(987,62,'Gal&aacute;pagos','GPS',1),(988,62,'Guayas','GUA',1),(989,62,'Imbabura','IMB',1),(990,62,'Loja','LOJ',1),(991,62,'Los Rios','LRO',1),(992,62,'Manab&iacute;','MAN',1),(993,62,'Morona Santiago','MSA',1),(994,62,'Napo','NAP',1),(995,62,'Orellana','ORE',1),(996,62,'Pastaza','PAS',1),(997,62,'Pichincha','PIC',1),(998,62,'Sucumb&iacute;os','SUC',1),(999,62,'Tungurahua','TUN',1),(1000,62,'Zamora Chinchipe','ZCH',1),(1001,63,'Ad Daqahliyah','DHY',1),(1002,63,'Al Bahr al Ahmar','BAM',1),(1003,63,'Al Buhayrah','BHY',1),(1004,63,'Al Fayyum','FYM',1),(1005,63,'Al Gharbiyah','GBY',1),(1006,63,'Al Iskandariyah','IDR',1),(1007,63,'Al Isma\'iliyah','IML',1),(1008,63,'Al Jizah','JZH',1),(1009,63,'Al Minufiyah','MFY',1),(1010,63,'Al Minya','MNY',1),(1011,63,'Al Qahirah','QHR',1),(1012,63,'Al Qalyubiyah','QLY',1),(1013,63,'Al Wadi al Jadid','WJD',1),(1014,63,'Ash Sharqiyah','SHQ',1),(1015,63,'As Suways','SWY',1),(1016,63,'Aswan','ASW',1),(1017,63,'Asyut','ASY',1),(1018,63,'Bani Suwayf','BSW',1),(1019,63,'Bur Sa\'id','BSD',1),(1020,63,'Dumyat','DMY',1),(1021,63,'Janub Sina\'','JNS',1),(1022,63,'Kafr ash Shaykh','KSH',1),(1023,63,'Matruh','MAT',1),(1024,63,'Qina','QIN',1),(1025,63,'Shamal Sina\'','SHS',1),(1026,63,'Suhaj','SUH',1),(1027,64,'Ahuachapan','AH',1),(1028,64,'Cabanas','CA',1),(1029,64,'Chalatenango','CH',1),(1030,64,'Cuscatlan','CU',1),(1031,64,'La Libertad','LB',1),(1032,64,'La Paz','PZ',1),(1033,64,'La Union','UN',1),(1034,64,'Morazan','MO',1),(1035,64,'San Miguel','SM',1),(1036,64,'San Salvador','SS',1),(1037,64,'San Vicente','SV',1),(1038,64,'Santa Ana','SA',1),(1039,64,'Sonsonate','SO',1),(1040,64,'Usulutan','US',1),(1041,65,'Provincia Annobon','AN',1),(1042,65,'Provincia Bioko Norte','BN',1),(1043,65,'Provincia Bioko Sur','BS',1),(1044,65,'Provincia Centro Sur','CS',1),(1045,65,'Provincia Kie-Ntem','KN',1),(1046,65,'Provincia Litoral','LI',1),(1047,65,'Provincia Wele-Nzas','WN',1),(1048,66,'Central (Maekel)','MA',1),(1049,66,'Anseba (Keren)','KE',1),(1050,66,'Southern Red Sea (Debub-Keih-Bahri)','DK',1),(1051,66,'Northern Red Sea (Semien-Keih-Bahri)','SK',1),(1052,66,'Southern (Debub)','DE',1),(1053,66,'Gash-Barka (Barentu)','BR',1),(1054,67,'Harjumaa (Tallinn)','HA',1),(1055,67,'Hiiumaa (Kardla)','HI',1),(1056,67,'Ida-Virumaa (Johvi)','IV',1),(1057,67,'Jarvamaa (Paide)','JA',1),(1058,67,'Jogevamaa (Jogeva)','JO',1),(1059,67,'Laane-Virumaa (Rakvere)','LV',1),(1060,67,'Laanemaa (Haapsalu)','LA',1),(1061,67,'Parnumaa (Parnu)','PA',1),(1062,67,'Polvamaa (Polva)','PO',1),(1063,67,'Raplamaa (Rapla)','RA',1),(1064,67,'Saaremaa (Kuessaare)','SA',1),(1065,67,'Tartumaa (Tartu)','TA',1),(1066,67,'Valgamaa (Valga)','VA',1),(1067,67,'Viljandimaa (Viljandi)','VI',1),(1068,67,'Vorumaa (Voru)','VO',1),(1069,68,'Afar','AF',1),(1070,68,'Amhara','AH',1),(1071,68,'Benishangul-Gumaz','BG',1),(1072,68,'Gambela','GB',1),(1073,68,'Hariai','HR',1),(1074,68,'Oromia','OR',1),(1075,68,'Somali','SM',1),(1076,68,'Southern Nations - Nationalities and Peoples Region','SN',1),(1077,68,'Tigray','TG',1),(1078,68,'Addis Ababa','AA',1),(1079,68,'Dire Dawa','DD',1),(1080,71,'Central Division','C',1),(1081,71,'Northern Division','N',1),(1082,71,'Eastern Division','E',1),(1083,71,'Western Division','W',1),(1084,71,'Rotuma','R',1),(1085,72,'Ahvenanmaan lääni','AL',1),(1086,72,'Etelä-Suomen lääni','ES',1),(1087,72,'Itä-Suomen lääni','IS',1),(1088,72,'Länsi-Suomen lääni','LS',1),(1089,72,'Lapin lääni','LA',1),(1090,72,'Oulun lääni','OU',1),(1114,74,'Ain','01',1),(1115,74,'Aisne','02',1),(1116,74,'Allier','03',1),(1117,74,'Alpes de Haute Provence','04',1),(1118,74,'Hautes-Alpes','05',1),(1119,74,'Alpes Maritimes','06',1),(1120,74,'Ard&egrave;che','07',1),(1121,74,'Ardennes','08',1),(1122,74,'Ari&egrave;ge','09',1),(1123,74,'Aube','10',1),(1124,74,'Aude','11',1),(1125,74,'Aveyron','12',1),(1126,74,'Bouches du Rh&ocirc;ne','13',1),(1127,74,'Calvados','14',1),(1128,74,'Cantal','15',1),(1129,74,'Charente','16',1),(1130,74,'Charente Maritime','17',1),(1131,74,'Cher','18',1),(1132,74,'Corr&egrave;ze','19',1),(1133,74,'Corse du Sud','2A',1),(1134,74,'Haute Corse','2B',1),(1135,74,'C&ocirc;te d&#039;or','21',1),(1136,74,'C&ocirc;tes d&#039;Armor','22',1),(1137,74,'Creuse','23',1),(1138,74,'Dordogne','24',1),(1139,74,'Doubs','25',1),(1140,74,'Dr&ocirc;me','26',1),(1141,74,'Eure','27',1),(1142,74,'Eure et Loir','28',1),(1143,74,'Finist&egrave;re','29',1),(1144,74,'Gard','30',1),(1145,74,'Haute Garonne','31',1),(1146,74,'Gers','32',1),(1147,74,'Gironde','33',1),(1148,74,'H&eacute;rault','34',1),(1149,74,'Ille et Vilaine','35',1),(1150,74,'Indre','36',1),(1151,74,'Indre et Loire','37',1),(1152,74,'Is&eacute;re','38',1),(1153,74,'Jura','39',1),(1154,74,'Landes','40',1),(1155,74,'Loir et Cher','41',1),(1156,74,'Loire','42',1),(1157,74,'Haute Loire','43',1),(1158,74,'Loire Atlantique','44',1),(1159,74,'Loiret','45',1),(1160,74,'Lot','46',1),(1161,74,'Lot et Garonne','47',1),(1162,74,'Loz&egrave;re','48',1),(1163,74,'Maine et Loire','49',1),(1164,74,'Manche','50',1),(1165,74,'Marne','51',1),(1166,74,'Haute Marne','52',1),(1167,74,'Mayenne','53',1),(1168,74,'Meurthe et Moselle','54',1),(1169,74,'Meuse','55',1),(1170,74,'Morbihan','56',1),(1171,74,'Moselle','57',1),(1172,74,'Ni&egrave;vre','58',1),(1173,74,'Nord','59',1),(1174,74,'Oise','60',1),(1175,74,'Orne','61',1),(1176,74,'Pas de Calais','62',1),(1177,74,'Puy de D&ocirc;me','63',1),(1178,74,'Pyr&eacute;n&eacute;es Atlantiques','64',1),(1179,74,'Hautes Pyr&eacute;n&eacute;es','65',1),(1180,74,'Pyr&eacute;n&eacute;es Orientales','66',1),(1181,74,'Bas Rhin','67',1),(1182,74,'Haut Rhin','68',1),(1183,74,'Rh&ocirc;ne','69',1),(1184,74,'Haute Sa&ocirc;ne','70',1),(1185,74,'Sa&ocirc;ne et Loire','71',1),(1186,74,'Sarthe','72',1),(1187,74,'Savoie','73',1),(1188,74,'Haute Savoie','74',1),(1189,74,'Paris','75',1),(1190,74,'Seine Maritime','76',1),(1191,74,'Seine et Marne','77',1),(1192,74,'Yvelines','78',1),(1193,74,'Deux S&egrave;vres','79',1),(1194,74,'Somme','80',1),(1195,74,'Tarn','81',1),(1196,74,'Tarn et Garonne','82',1),(1197,74,'Var','83',1),(1198,74,'Vaucluse','84',1),(1199,74,'Vend&eacute;e','85',1),(1200,74,'Vienne','86',1),(1201,74,'Haute Vienne','87',1),(1202,74,'Vosges','88',1),(1203,74,'Yonne','89',1),(1204,74,'Territoire de Belfort','90',1),(1205,74,'Essonne','91',1),(1206,74,'Hauts de Seine','92',1),(1207,74,'Seine St-Denis','93',1),(1208,74,'Val de Marne','94',1),(1209,74,'Val d\'Oise','95',1),(1210,76,'Archipel des Marquises','M',1),(1211,76,'Archipel des Tuamotu','T',1),(1212,76,'Archipel des Tubuai','I',1),(1213,76,'Iles du Vent','V',1),(1214,76,'Iles Sous-le-Vent','S',1),(1215,77,'Iles Crozet','C',1),(1216,77,'Iles Kerguelen','K',1),(1217,77,'Ile Amsterdam','A',1),(1218,77,'Ile Saint-Paul','P',1),(1219,77,'Adelie Land','D',1),(1220,78,'Estuaire','ES',1),(1221,78,'Haut-Ogooue','HO',1),(1222,78,'Moyen-Ogooue','MO',1),(1223,78,'Ngounie','NG',1),(1224,78,'Nyanga','NY',1),(1225,78,'Ogooue-Ivindo','OI',1),(1226,78,'Ogooue-Lolo','OL',1),(1227,78,'Ogooue-Maritime','OM',1),(1228,78,'Woleu-Ntem','WN',1),(1229,79,'Banjul','BJ',1),(1230,79,'Basse','BS',1),(1231,79,'Brikama','BR',1),(1232,79,'Janjangbure','JA',1),(1233,79,'Kanifeng','KA',1),(1234,79,'Kerewan','KE',1),(1235,79,'Kuntaur','KU',1),(1236,79,'Mansakonko','MA',1),(1237,79,'Lower River','LR',1),(1238,79,'Central River','CR',1),(1239,79,'North Bank','NB',1),(1240,79,'Upper River','UR',1),(1241,79,'Western','WE',1),(1242,80,'Abkhazia','AB',1),(1243,80,'Ajaria','AJ',1),(1244,80,'Tbilisi','TB',1),(1245,80,'Guria','GU',1),(1246,80,'Imereti','IM',1),(1247,80,'Kakheti','KA',1),(1248,80,'Kvemo Kartli','KK',1),(1249,80,'Mtskheta-Mtianeti','MM',1),(1250,80,'Racha Lechkhumi and Kvemo Svanet','RL',1),(1251,80,'Samegrelo-Zemo Svaneti','SZ',1),(1252,80,'Samtskhe-Javakheti','SJ',1),(1253,80,'Shida Kartli','SK',1),(1254,81,'Baden-W&uuml;rttemberg','BAW',1),(1255,81,'Bayern','BAY',1),(1256,81,'Berlin','BER',1),(1257,81,'Brandenburg','BRG',1),(1258,81,'Bremen','BRE',1),(1259,81,'Hamburg','HAM',1),(1260,81,'Hessen','HES',1),(1261,81,'Mecklenburg-Vorpommern','MEC',1),(1262,81,'Niedersachsen','NDS',1),(1263,81,'Nordrhein-Westfalen','NRW',1),(1264,81,'Rheinland-Pfalz','RHE',1),(1265,81,'Saarland','SAR',1),(1266,81,'Sachsen','SAS',1),(1267,81,'Sachsen-Anhalt','SAC',1),(1268,81,'Schleswig-Holstein','SCN',1),(1269,81,'Th&uuml;ringen','THE',1),(1270,82,'Ashanti Region','AS',1),(1271,82,'Brong-Ahafo Region','BA',1),(1272,82,'Central Region','CE',1),(1273,82,'Eastern Region','EA',1),(1274,82,'Greater Accra Region','GA',1),(1275,82,'Northern Region','NO',1),(1276,82,'Upper East Region','UE',1),(1277,82,'Upper West Region','UW',1),(1278,82,'Volta Region','VO',1),(1279,82,'Western Region','WE',1),(1280,84,'Attica','AT',1),(1281,84,'Central Greece','CN',1),(1282,84,'Central Macedonia','CM',1),(1283,84,'Crete','CR',1),(1284,84,'East Macedonia and Thrace','EM',1),(1285,84,'Epirus','EP',1),(1286,84,'Ionian Islands','II',1),(1287,84,'North Aegean','NA',1),(1288,84,'Peloponnesos','PP',1),(1289,84,'South Aegean','SA',1),(1290,84,'Thessaly','TH',1),(1291,84,'West Greece','WG',1),(1292,84,'West Macedonia','WM',1),(1293,85,'Avannaa','A',1),(1294,85,'Tunu','T',1),(1295,85,'Kitaa','K',1),(1296,86,'Saint Andrew','A',1),(1297,86,'Saint David','D',1),(1298,86,'Saint George','G',1),(1299,86,'Saint John','J',1),(1300,86,'Saint Mark','M',1),(1301,86,'Saint Patrick','P',1),(1302,86,'Carriacou','C',1),(1303,86,'Petit Martinique','Q',1),(1304,89,'Alta Verapaz','AV',1),(1305,89,'Baja Verapaz','BV',1),(1306,89,'Chimaltenango','CM',1),(1307,89,'Chiquimula','CQ',1),(1308,89,'El Peten','PE',1),(1309,89,'El Progreso','PR',1),(1310,89,'El Quiche','QC',1),(1311,89,'Escuintla','ES',1),(1312,89,'Guatemala','GU',1),(1313,89,'Huehuetenango','HU',1),(1314,89,'Izabal','IZ',1),(1315,89,'Jalapa','JA',1),(1316,89,'Jutiapa','JU',1),(1317,89,'Quetzaltenango','QZ',1),(1318,89,'Retalhuleu','RE',1),(1319,89,'Sacatepequez','ST',1),(1320,89,'San Marcos','SM',1),(1321,89,'Santa Rosa','SR',1),(1322,89,'Solola','SO',1),(1323,89,'Suchitepequez','SU',1),(1324,89,'Totonicapan','TO',1),(1325,89,'Zacapa','ZA',1),(1326,90,'Conakry','CNK',1),(1327,90,'Beyla','BYL',1),(1328,90,'Boffa','BFA',1),(1329,90,'Boke','BOK',1),(1330,90,'Coyah','COY',1),(1331,90,'Dabola','DBL',1),(1332,90,'Dalaba','DLB',1),(1333,90,'Dinguiraye','DGR',1),(1334,90,'Dubreka','DBR',1),(1335,90,'Faranah','FRN',1),(1336,90,'Forecariah','FRC',1),(1337,90,'Fria','FRI',1),(1338,90,'Gaoual','GAO',1),(1339,90,'Gueckedou','GCD',1),(1340,90,'Kankan','KNK',1),(1341,90,'Kerouane','KRN',1),(1342,90,'Kindia','KND',1),(1343,90,'Kissidougou','KSD',1),(1344,90,'Koubia','KBA',1),(1345,90,'Koundara','KDA',1),(1346,90,'Kouroussa','KRA',1),(1347,90,'Labe','LAB',1),(1348,90,'Lelouma','LLM',1),(1349,90,'Lola','LOL',1),(1350,90,'Macenta','MCT',1),(1351,90,'Mali','MAL',1),(1352,90,'Mamou','MAM',1),(1353,90,'Mandiana','MAN',1),(1354,90,'Nzerekore','NZR',1),(1355,90,'Pita','PIT',1),(1356,90,'Siguiri','SIG',1),(1357,90,'Telimele','TLM',1),(1358,90,'Tougue','TOG',1),(1359,90,'Yomou','YOM',1),(1360,91,'Bafata Region','BF',1),(1361,91,'Biombo Region','BB',1),(1362,91,'Bissau Region','BS',1),(1363,91,'Bolama Region','BL',1),(1364,91,'Cacheu Region','CA',1),(1365,91,'Gabu Region','GA',1),(1366,91,'Oio Region','OI',1),(1367,91,'Quinara Region','QU',1),(1368,91,'Tombali Region','TO',1),(1369,92,'Barima-Waini','BW',1),(1370,92,'Cuyuni-Mazaruni','CM',1),(1371,92,'Demerara-Mahaica','DM',1),(1372,92,'East Berbice-Corentyne','EC',1),(1373,92,'Essequibo Islands-West Demerara','EW',1),(1374,92,'Mahaica-Berbice','MB',1),(1375,92,'Pomeroon-Supenaam','PM',1),(1376,92,'Potaro-Siparuni','PI',1),(1377,92,'Upper Demerara-Berbice','UD',1),(1378,92,'Upper Takutu-Upper Essequibo','UT',1),(1379,93,'Artibonite','AR',1),(1380,93,'Centre','CE',1),(1381,93,'Grand\'Anse','GA',1),(1382,93,'Nord','ND',1),(1383,93,'Nord-Est','NE',1),(1384,93,'Nord-Ouest','NO',1),(1385,93,'Ouest','OU',1),(1386,93,'Sud','SD',1),(1387,93,'Sud-Est','SE',1),(1388,94,'Flat Island','F',1),(1389,94,'McDonald Island','M',1),(1390,94,'Shag Island','S',1),(1391,94,'Heard Island','H',1),(1392,95,'Atlantida','AT',1),(1393,95,'Choluteca','CH',1),(1394,95,'Colon','CL',1),(1395,95,'Comayagua','CM',1),(1396,95,'Copan','CP',1),(1397,95,'Cortes','CR',1),(1398,95,'El Paraiso','PA',1),(1399,95,'Francisco Morazan','FM',1),(1400,95,'Gracias a Dios','GD',1),(1401,95,'Intibuca','IN',1),(1402,95,'Islas de la Bahia (Bay Islands)','IB',1),(1403,95,'La Paz','PZ',1),(1404,95,'Lempira','LE',1),(1405,95,'Ocotepeque','OC',1),(1406,95,'Olancho','OL',1),(1407,95,'Santa Barbara','SB',1),(1408,95,'Valle','VA',1),(1409,95,'Yoro','YO',1),(1410,96,'Central and Western Hong Kong Island','HCW',1),(1411,96,'Eastern Hong Kong Island','HEA',1),(1412,96,'Southern Hong Kong Island','HSO',1),(1413,96,'Wan Chai Hong Kong Island','HWC',1),(1414,96,'Kowloon City Kowloon','KKC',1),(1415,96,'Kwun Tong Kowloon','KKT',1),(1416,96,'Sham Shui Po Kowloon','KSS',1),(1417,96,'Wong Tai Sin Kowloon','KWT',1),(1418,96,'Yau Tsim Mong Kowloon','KYT',1),(1419,96,'Islands New Territories','NIS',1),(1420,96,'Kwai Tsing New Territories','NKT',1),(1421,96,'North New Territories','NNO',1),(1422,96,'Sai Kung New Territories','NSK',1),(1423,96,'Sha Tin New Territories','NST',1),(1424,96,'Tai Po New Territories','NTP',1),(1425,96,'Tsuen Wan New Territories','NTW',1),(1426,96,'Tuen Mun New Territories','NTM',1),(1427,96,'Yuen Long New Territories','NYL',1),(1467,98,'Austurland','AL',1),(1468,98,'Hofuoborgarsvaeoi','HF',1),(1469,98,'Norourland eystra','NE',1),(1470,98,'Norourland vestra','NV',1),(1471,98,'Suourland','SL',1),(1472,98,'Suournes','SN',1),(1473,98,'Vestfiroir','VF',1),(1474,98,'Vesturland','VL',1),(1475,99,'Andaman and Nicobar Islands','AN',1),(1476,99,'Andhra Pradesh','AP',1),(1477,99,'Arunachal Pradesh','AR',1),(1478,99,'Assam','AS',1),(1479,99,'Bihar','BI',1),(1480,99,'Chandigarh','CH',1),(1481,99,'Dadra and Nagar Haveli','DA',1),(1482,99,'Daman and Diu','DM',1),(1483,99,'Delhi','DE',1),(1484,99,'Goa','GO',1),(1485,99,'Gujarat','GU',1),(1486,99,'Haryana','HA',1),(1487,99,'Himachal Pradesh','HP',1),(1488,99,'Jammu and Kashmir','JA',1),(1489,99,'Karnataka','KA',1),(1490,99,'Kerala','KE',1),(1491,99,'Lakshadweep Islands','LI',1),(1492,99,'Madhya Pradesh','MP',1),(1493,99,'Maharashtra','MA',1),(1494,99,'Manipur','MN',1),(1495,99,'Meghalaya','ME',1),(1496,99,'Mizoram','MI',1),(1497,99,'Nagaland','NA',1),(1498,99,'Orissa','OR',1),(1499,99,'Pondicherry','PO',1),(1500,99,'Punjab','PU',1),(1501,99,'Rajasthan','RA',1),(1502,99,'Sikkim','SI',1),(1503,99,'Tamil Nadu','TN',1),(1504,99,'Tripura','TR',1),(1505,99,'Uttar Pradesh','UP',1),(1506,99,'West Bengal','WB',1),(1507,100,'Aceh','AC',1),(1508,100,'Bali','BA',1),(1509,100,'Banten','BT',1),(1510,100,'Bengkulu','BE',1),(1511,100,'BoDeTaBek','BD',1),(1512,100,'Gorontalo','GO',1),(1513,100,'Jakarta Raya','JK',1),(1514,100,'Jambi','JA',1),(1515,100,'Jawa Barat','JB',1),(1516,100,'Jawa Tengah','JT',1),(1517,100,'Jawa Timur','JI',1),(1518,100,'Kalimantan Barat','KB',1),(1519,100,'Kalimantan Selatan','KS',1),(1520,100,'Kalimantan Tengah','KT',1),(1521,100,'Kalimantan Timur','KI',1),(1522,100,'Kepulauan Bangka Belitung','BB',1),(1523,100,'Lampung','LA',1),(1524,100,'Maluku','MA',1),(1525,100,'Maluku Utara','MU',1),(1526,100,'Nusa Tenggara Barat','NB',1),(1527,100,'Nusa Tenggara Timur','NT',1),(1528,100,'Papua','PA',1),(1529,100,'Riau','RI',1),(1530,100,'Sulawesi Selatan','SN',1),(1531,100,'Sulawesi Tengah','ST',1),(1532,100,'Sulawesi Tenggara','SG',1),(1533,100,'Sulawesi Utara','SA',1),(1534,100,'Sumatera Barat','SB',1),(1535,100,'Sumatera Selatan','SS',1),(1536,100,'Sumatera Utara','SU',1),(1537,100,'Yogyakarta','YO',1),(1538,101,'Tehran','TEH',1),(1539,101,'Qom','QOM',1),(1540,101,'Markazi','MKZ',1),(1541,101,'Qazvin','QAZ',1),(1542,101,'Gilan','GIL',1),(1543,101,'Ardabil','ARD',1),(1544,101,'Zanjan','ZAN',1),(1545,101,'East Azarbaijan','EAZ',1),(1546,101,'West Azarbaijan','WEZ',1),(1547,101,'Kurdistan','KRD',1),(1548,101,'Hamadan','HMD',1),(1549,101,'Kermanshah','KRM',1),(1550,101,'Ilam','ILM',1),(1551,101,'Lorestan','LRS',1),(1552,101,'Khuzestan','KZT',1),(1553,101,'Chahar Mahaal and Bakhtiari','CMB',1),(1554,101,'Kohkiluyeh and Buyer Ahmad','KBA',1),(1555,101,'Bushehr','BSH',1),(1556,101,'Fars','FAR',1),(1557,101,'Hormozgan','HRM',1),(1558,101,'Sistan and Baluchistan','SBL',1),(1559,101,'Kerman','KRB',1),(1560,101,'Yazd','YZD',1),(1561,101,'Esfahan','EFH',1),(1562,101,'Semnan','SMN',1),(1563,101,'Mazandaran','MZD',1),(1564,101,'Golestan','GLS',1),(1565,101,'North Khorasan','NKH',1),(1566,101,'Razavi Khorasan','RKH',1),(1567,101,'South Khorasan','SKH',1),(1568,102,'Baghdad','BD',1),(1569,102,'Salah ad Din','SD',1),(1570,102,'Diyala','DY',1),(1571,102,'Wasit','WS',1),(1572,102,'Maysan','MY',1),(1573,102,'Al Basrah','BA',1),(1574,102,'Dhi Qar','DQ',1),(1575,102,'Al Muthanna','MU',1),(1576,102,'Al Qadisyah','QA',1),(1577,102,'Babil','BB',1),(1578,102,'Al Karbala','KB',1),(1579,102,'An Najaf','NJ',1),(1580,102,'Al Anbar','AB',1),(1581,102,'Ninawa','NN',1),(1582,102,'Dahuk','DH',1),(1583,102,'Arbil','AL',1),(1584,102,'At Ta\'mim','TM',1),(1585,102,'As Sulaymaniyah','SL',1),(1586,103,'Carlow','CA',1),(1587,103,'Cavan','CV',1),(1588,103,'Clare','CL',1),(1589,103,'Cork','CO',1),(1590,103,'Donegal','DO',1),(1591,103,'Dublin','DU',1),(1592,103,'Galway','GA',1),(1593,103,'Kerry','KE',1),(1594,103,'Kildare','KI',1),(1595,103,'Kilkenny','KL',1),(1596,103,'Laois','LA',1),(1597,103,'Leitrim','LE',1),(1598,103,'Limerick','LI',1),(1599,103,'Longford','LO',1),(1600,103,'Louth','LU',1),(1601,103,'Mayo','MA',1),(1602,103,'Meath','ME',1),(1603,103,'Monaghan','MO',1),(1604,103,'Offaly','OF',1),(1605,103,'Roscommon','RO',1),(1606,103,'Sligo','SL',1),(1607,103,'Tipperary','TI',1),(1608,103,'Waterford','WA',1),(1609,103,'Westmeath','WE',1),(1610,103,'Wexford','WX',1),(1611,103,'Wicklow','WI',1),(1612,104,'Be\'er Sheva','BS',1),(1613,104,'Bika\'at Hayarden','BH',1),(1614,104,'Eilat and Arava','EA',1),(1615,104,'Galil','GA',1),(1616,104,'Haifa','HA',1),(1617,104,'Jehuda Mountains','JM',1),(1618,104,'Jerusalem','JE',1),(1619,104,'Negev','NE',1),(1620,104,'Semaria','SE',1),(1621,104,'Sharon','SH',1),(1622,104,'Tel Aviv (Gosh Dan)','TA',1),(3860,105,'Caltanissetta','CL',1),(3842,105,'Agrigento','AG',1),(3843,105,'Alessandria','AL',1),(3844,105,'Ancona','AN',1),(3845,105,'Aosta','AO',1),(3846,105,'Arezzo','AR',1),(3847,105,'Ascoli Piceno','AP',1),(3848,105,'Asti','AT',1),(3849,105,'Avellino','AV',1),(3850,105,'Bari','BA',1),(3851,105,'Belluno','BL',1),(3852,105,'Benevento','BN',1),(3853,105,'Bergamo','BG',1),(3854,105,'Biella','BI',1),(3855,105,'Bologna','BO',1),(3856,105,'Bolzano','BZ',1),(3857,105,'Brescia','BS',1),(3858,105,'Brindisi','BR',1),(3859,105,'Cagliari','CA',1),(1643,106,'Clarendon Parish','CLA',1),(1644,106,'Hanover Parish','HAN',1),(1645,106,'Kingston Parish','KIN',1),(1646,106,'Manchester Parish','MAN',1),(1647,106,'Portland Parish','POR',1),(1648,106,'Saint Andrew Parish','AND',1),(1649,106,'Saint Ann Parish','ANN',1),(1650,106,'Saint Catherine Parish','CAT',1),(1651,106,'Saint Elizabeth Parish','ELI',1),(1652,106,'Saint James Parish','JAM',1),(1653,106,'Saint Mary Parish','MAR',1),(1654,106,'Saint Thomas Parish','THO',1),(1655,106,'Trelawny Parish','TRL',1),(1656,106,'Westmoreland Parish','WML',1),(1657,107,'Aichi','AI',1),(1658,107,'Akita','AK',1),(1659,107,'Aomori','AO',1),(1660,107,'Chiba','CH',1),(1661,107,'Ehime','EH',1),(1662,107,'Fukui','FK',1),(1663,107,'Fukuoka','FU',1),(1664,107,'Fukushima','FS',1),(1665,107,'Gifu','GI',1),(1666,107,'Gumma','GU',1),(1667,107,'Hiroshima','HI',1),(1668,107,'Hokkaido','HO',1),(1669,107,'Hyogo','HY',1),(1670,107,'Ibaraki','IB',1),(1671,107,'Ishikawa','IS',1),(1672,107,'Iwate','IW',1),(1673,107,'Kagawa','KA',1),(1674,107,'Kagoshima','KG',1),(1675,107,'Kanagawa','KN',1),(1676,107,'Kochi','KO',1),(1677,107,'Kumamoto','KU',1),(1678,107,'Kyoto','KY',1),(1679,107,'Mie','MI',1),(1680,107,'Miyagi','MY',1),(1681,107,'Miyazaki','MZ',1),(1682,107,'Nagano','NA',1),(1683,107,'Nagasaki','NG',1),(1684,107,'Nara','NR',1),(1685,107,'Niigata','NI',1),(1686,107,'Oita','OI',1),(1687,107,'Okayama','OK',1),(1688,107,'Okinawa','ON',1),(1689,107,'Osaka','OS',1),(1690,107,'Saga','SA',1),(1691,107,'Saitama','SI',1),(1692,107,'Shiga','SH',1),(1693,107,'Shimane','SM',1),(1694,107,'Shizuoka','SZ',1),(1695,107,'Tochigi','TO',1),(1696,107,'Tokushima','TS',1),(1697,107,'Tokyo','TK',1),(1698,107,'Tottori','TT',1),(1699,107,'Toyama','TY',1),(1700,107,'Wakayama','WA',1),(1701,107,'Yamagata','YA',1),(1702,107,'Yamaguchi','YM',1),(1703,107,'Yamanashi','YN',1),(1704,108,'\'Amman','AM',1),(1705,108,'Ajlun','AJ',1),(1706,108,'Al \'Aqabah','AA',1),(1707,108,'Al Balqa\'','AB',1),(1708,108,'Al Karak','AK',1),(1709,108,'Al Mafraq','AL',1),(1710,108,'At Tafilah','AT',1),(1711,108,'Az Zarqa\'','AZ',1),(1712,108,'Irbid','IR',1),(1713,108,'Jarash','JA',1),(1714,108,'Ma\'an','MA',1),(1715,108,'Madaba','MD',1),(1716,109,'Almaty','AL',1),(1717,109,'Almaty City','AC',1),(1718,109,'Aqmola','AM',1),(1719,109,'Aqtobe','AQ',1),(1720,109,'Astana City','AS',1),(1721,109,'Atyrau','AT',1),(1722,109,'Batys Qazaqstan','BA',1),(1723,109,'Bayqongyr City','BY',1),(1724,109,'Mangghystau','MA',1),(1725,109,'Ongtustik Qazaqstan','ON',1),(1726,109,'Pavlodar','PA',1),(1727,109,'Qaraghandy','QA',1),(1728,109,'Qostanay','QO',1),(1729,109,'Qyzylorda','QY',1),(1730,109,'Shyghys Qazaqstan','SH',1),(1731,109,'Soltustik Qazaqstan','SO',1),(1732,109,'Zhambyl','ZH',1),(1733,110,'Central','CE',1),(1734,110,'Coast','CO',1),(1735,110,'Eastern','EA',1),(1736,110,'Nairobi Area','NA',1),(1737,110,'North Eastern','NE',1),(1738,110,'Nyanza','NY',1),(1739,110,'Rift Valley','RV',1),(1740,110,'Western','WE',1),(1741,111,'Abaiang','AG',1),(1742,111,'Abemama','AM',1),(1743,111,'Aranuka','AK',1),(1744,111,'Arorae','AO',1),(1745,111,'Banaba','BA',1),(1746,111,'Beru','BE',1),(1747,111,'Butaritari','bT',1),(1748,111,'Kanton','KA',1),(1749,111,'Kiritimati','KR',1),(1750,111,'Kuria','KU',1),(1751,111,'Maiana','MI',1),(1752,111,'Makin','MN',1),(1753,111,'Marakei','ME',1),(1754,111,'Nikunau','NI',1),(1755,111,'Nonouti','NO',1),(1756,111,'Onotoa','ON',1),(1757,111,'Tabiteuea','TT',1),(1758,111,'Tabuaeran','TR',1),(1759,111,'Tamana','TM',1),(1760,111,'Tarawa','TW',1),(1761,111,'Teraina','TE',1),(1762,112,'Chagang-do','CHA',1),(1763,112,'Hamgyong-bukto','HAB',1),(1764,112,'Hamgyong-namdo','HAN',1),(1765,112,'Hwanghae-bukto','HWB',1),(1766,112,'Hwanghae-namdo','HWN',1),(1767,112,'Kangwon-do','KAN',1),(1768,112,'P\'yongan-bukto','PYB',1),(1769,112,'P\'yongan-namdo','PYN',1),(1770,112,'Ryanggang-do (Yanggang-do)','YAN',1),(1771,112,'Rason Directly Governed City','NAJ',1),(1772,112,'P\'yongyang Special City','PYO',1),(1773,113,'Ch\'ungch\'ong-bukto','CO',1),(1774,113,'Ch\'ungch\'ong-namdo','CH',1),(1775,113,'Cheju-do','CD',1),(1776,113,'Cholla-bukto','CB',1),(1777,113,'Cholla-namdo','CN',1),(1778,113,'Inch\'on-gwangyoksi','IG',1),(1779,113,'Kangwon-do','KA',1),(1780,113,'Kwangju-gwangyoksi','KG',1),(1781,113,'Kyonggi-do','KD',1),(1782,113,'Kyongsang-bukto','KB',1),(1783,113,'Kyongsang-namdo','KN',1),(1784,113,'Pusan-gwangyoksi','PG',1),(1785,113,'Soul-t\'ukpyolsi','SO',1),(1786,113,'Taegu-gwangyoksi','TA',1),(1787,113,'Taejon-gwangyoksi','TG',1),(1788,114,'Al \'Asimah','AL',1),(1789,114,'Al Ahmadi','AA',1),(1790,114,'Al Farwaniyah','AF',1),(1791,114,'Al Jahra\'','AJ',1),(1792,114,'Hawalli','HA',1),(1793,115,'Bishkek','GB',1),(1794,115,'Batken','B',1),(1795,115,'Chu','C',1),(1796,115,'Jalal-Abad','J',1),(1797,115,'Naryn','N',1),(1798,115,'Osh','O',1),(1799,115,'Talas','T',1),(1800,115,'Ysyk-Kol','Y',1),(1801,116,'Vientiane','VT',1),(1802,116,'Attapu','AT',1),(1803,116,'Bokeo','BK',1),(1804,116,'Bolikhamxai','BL',1),(1805,116,'Champasak','CH',1),(1806,116,'Houaphan','HO',1),(1807,116,'Khammouan','KH',1),(1808,116,'Louang Namtha','LM',1),(1809,116,'Louangphabang','LP',1),(1810,116,'Oudomxai','OU',1),(1811,116,'Phongsali','PH',1),(1812,116,'Salavan','SL',1),(1813,116,'Savannakhet','SV',1),(1814,116,'Vientiane','VI',1),(1815,116,'Xaignabouli','XA',1),(1816,116,'Xekong','XE',1),(1817,116,'Xiangkhoang','XI',1),(1818,116,'Xaisomboun','XN',1),(1852,119,'Berea','BE',1),(1853,119,'Butha-Buthe','BB',1),(1854,119,'Leribe','LE',1),(1855,119,'Mafeteng','MF',1),(1856,119,'Maseru','MS',1),(1857,119,'Mohale\'s Hoek','MH',1),(1858,119,'Mokhotlong','MK',1),(1859,119,'Qacha\'s Nek','QN',1),(1860,119,'Quthing','QT',1),(1861,119,'Thaba-Tseka','TT',1),(1862,120,'Bomi','BI',1),(1863,120,'Bong','BG',1),(1864,120,'Grand Bassa','GB',1),(1865,120,'Grand Cape Mount','CM',1),(1866,120,'Grand Gedeh','GG',1),(1867,120,'Grand Kru','GK',1),(1868,120,'Lofa','LO',1),(1869,120,'Margibi','MG',1),(1870,120,'Maryland','ML',1),(1871,120,'Montserrado','MS',1),(1872,120,'Nimba','NB',1),(1873,120,'River Cess','RC',1),(1874,120,'Sinoe','SN',1),(1875,121,'Ajdabiya','AJ',1),(1876,121,'Al \'Aziziyah','AZ',1),(1877,121,'Al Fatih','FA',1),(1878,121,'Al Jabal al Akhdar','JA',1),(1879,121,'Al Jufrah','JU',1),(1880,121,'Al Khums','KH',1),(1881,121,'Al Kufrah','KU',1),(1882,121,'An Nuqat al Khams','NK',1),(1883,121,'Ash Shati\'','AS',1),(1884,121,'Awbari','AW',1),(1885,121,'Az Zawiyah','ZA',1),(1886,121,'Banghazi','BA',1),(1887,121,'Darnah','DA',1),(1888,121,'Ghadamis','GD',1),(1889,121,'Gharyan','GY',1),(1890,121,'Misratah','MI',1),(1891,121,'Murzuq','MZ',1),(1892,121,'Sabha','SB',1),(1893,121,'Sawfajjin','SW',1),(1894,121,'Surt','SU',1),(1895,121,'Tarabulus (Tripoli)','TL',1),(1896,121,'Tarhunah','TH',1),(1897,121,'Tubruq','TU',1),(1898,121,'Yafran','YA',1),(1899,121,'Zlitan','ZL',1),(1900,122,'Vaduz','V',1),(1901,122,'Schaan','A',1),(1902,122,'Balzers','B',1),(1903,122,'Triesen','N',1),(1904,122,'Eschen','E',1),(1905,122,'Mauren','M',1),(1906,122,'Triesenberg','T',1),(1907,122,'Ruggell','R',1),(1908,122,'Gamprin','G',1),(1909,122,'Schellenberg','L',1),(1910,122,'Planken','P',1),(1911,123,'Alytus','AL',1),(1912,123,'Kaunas','KA',1),(1913,123,'Klaipeda','KL',1),(1914,123,'Marijampole','MA',1),(1915,123,'Panevezys','PA',1),(1916,123,'Siauliai','SI',1),(1917,123,'Taurage','TA',1),(1918,123,'Telsiai','TE',1),(1919,123,'Utena','UT',1),(1920,123,'Vilnius','VI',1),(1921,124,'Diekirch','DD',1),(1922,124,'Clervaux','DC',1),(1923,124,'Redange','DR',1),(1924,124,'Vianden','DV',1),(1925,124,'Wiltz','DW',1),(1926,124,'Grevenmacher','GG',1),(1927,124,'Echternach','GE',1),(1928,124,'Remich','GR',1),(1929,124,'Luxembourg','LL',1),(1930,124,'Capellen','LC',1),(1931,124,'Esch-sur-Alzette','LE',1),(1932,124,'Mersch','LM',1),(1933,125,'Our Lady Fatima Parish','OLF',1),(1934,125,'St. Anthony Parish','ANT',1),(1935,125,'St. Lazarus Parish','LAZ',1),(1936,125,'Cathedral Parish','CAT',1),(1937,125,'St. Lawrence Parish','LAW',1),(1938,127,'Antananarivo','AN',1),(1939,127,'Antsiranana','AS',1),(1940,127,'Fianarantsoa','FN',1),(1941,127,'Mahajanga','MJ',1),(1942,127,'Toamasina','TM',1),(1943,127,'Toliara','TL',1),(1944,128,'Balaka','BLK',1),(1945,128,'Blantyre','BLT',1),(1946,128,'Chikwawa','CKW',1),(1947,128,'Chiradzulu','CRD',1),(1948,128,'Chitipa','CTP',1),(1949,128,'Dedza','DDZ',1),(1950,128,'Dowa','DWA',1),(1951,128,'Karonga','KRG',1),(1952,128,'Kasungu','KSG',1),(1953,128,'Likoma','LKM',1),(1954,128,'Lilongwe','LLG',1),(1955,128,'Machinga','MCG',1),(1956,128,'Mangochi','MGC',1),(1957,128,'Mchinji','MCH',1),(1958,128,'Mulanje','MLJ',1),(1959,128,'Mwanza','MWZ',1),(1960,128,'Mzimba','MZM',1),(1961,128,'Ntcheu','NTU',1),(1962,128,'Nkhata Bay','NKB',1),(1963,128,'Nkhotakota','NKH',1),(1964,128,'Nsanje','NSJ',1),(1965,128,'Ntchisi','NTI',1),(1966,128,'Phalombe','PHL',1),(1967,128,'Rumphi','RMP',1),(1968,128,'Salima','SLM',1),(1969,128,'Thyolo','THY',1),(1970,128,'Zomba','ZBA',1),(1971,129,'Johor','MY-01',1),(1972,129,'Kedah','MY-02',1),(1973,129,'Kelantan','MY-03',1),(1974,129,'Labuan','MY-15',1),(1975,129,'Melaka','MY-04',1),(1976,129,'Negeri Sembilan','MY-05',1),(1977,129,'Pahang','MY-06',1),(1978,129,'Perak','MY-08',1),(1979,129,'Perlis','MY-09',1),(1980,129,'Pulau Pinang','MY-07',1),(1981,129,'Sabah','MY-12',1),(1982,129,'Sarawak','MY-13',1),(1983,129,'Selangor','MY-10',1),(1984,129,'Terengganu','MY-11',1),(1985,129,'Kuala Lumpur','MY-14',1),(4035,129,'Putrajaya','MY-16',1),(1986,130,'Thiladhunmathi Uthuru','THU',1),(1987,130,'Thiladhunmathi Dhekunu','THD',1),(1988,130,'Miladhunmadulu Uthuru','MLU',1),(1989,130,'Miladhunmadulu Dhekunu','MLD',1),(1990,130,'Maalhosmadulu Uthuru','MAU',1),(1991,130,'Maalhosmadulu Dhekunu','MAD',1),(1992,130,'Faadhippolhu','FAA',1),(1993,130,'Male Atoll','MAA',1),(1994,130,'Ari Atoll Uthuru','AAU',1),(1995,130,'Ari Atoll Dheknu','AAD',1),(1996,130,'Felidhe Atoll','FEA',1),(1997,130,'Mulaku Atoll','MUA',1),(1998,130,'Nilandhe Atoll Uthuru','NAU',1),(1999,130,'Nilandhe Atoll Dhekunu','NAD',1),(2000,130,'Kolhumadulu','KLH',1),(2001,130,'Hadhdhunmathi','HDH',1),(2002,130,'Huvadhu Atoll Uthuru','HAU',1),(2003,130,'Huvadhu Atoll Dhekunu','HAD',1),(2004,130,'Fua Mulaku','FMU',1),(2005,130,'Addu','ADD',1),(2006,131,'Gao','GA',1),(2007,131,'Kayes','KY',1),(2008,131,'Kidal','KD',1),(2009,131,'Koulikoro','KL',1),(2010,131,'Mopti','MP',1),(2011,131,'Segou','SG',1),(2012,131,'Sikasso','SK',1),(2013,131,'Tombouctou','TB',1),(2014,131,'Bamako Capital District','CD',1),(2015,132,'Attard','ATT',1),(2016,132,'Balzan','BAL',1),(2017,132,'Birgu','BGU',1),(2018,132,'Birkirkara','BKK',1),(2019,132,'Birzebbuga','BRZ',1),(2020,132,'Bormla','BOR',1),(2021,132,'Dingli','DIN',1),(2022,132,'Fgura','FGU',1),(2023,132,'Floriana','FLO',1),(2024,132,'Gudja','GDJ',1),(2025,132,'Gzira','GZR',1),(2026,132,'Gargur','GRG',1),(2027,132,'Gaxaq','GXQ',1),(2028,132,'Hamrun','HMR',1),(2029,132,'Iklin','IKL',1),(2030,132,'Isla','ISL',1),(2031,132,'Kalkara','KLK',1),(2032,132,'Kirkop','KRK',1),(2033,132,'Lija','LIJ',1),(2034,132,'Luqa','LUQ',1),(2035,132,'Marsa','MRS',1),(2036,132,'Marsaskala','MKL',1),(2037,132,'Marsaxlokk','MXL',1),(2038,132,'Mdina','MDN',1),(2039,132,'Melliea','MEL',1),(2040,132,'Mgarr','MGR',1),(2041,132,'Mosta','MST',1),(2042,132,'Mqabba','MQA',1),(2043,132,'Msida','MSI',1),(2044,132,'Mtarfa','MTF',1),(2045,132,'Naxxar','NAX',1),(2046,132,'Paola','PAO',1),(2047,132,'Pembroke','PEM',1),(2048,132,'Pieta','PIE',1),(2049,132,'Qormi','QOR',1),(2050,132,'Qrendi','QRE',1),(2051,132,'Rabat','RAB',1),(2052,132,'Safi','SAF',1),(2053,132,'San Giljan','SGI',1),(2054,132,'Santa Lucija','SLU',1),(2055,132,'San Pawl il-Bahar','SPB',1),(2056,132,'San Gwann','SGW',1),(2057,132,'Santa Venera','SVE',1),(2058,132,'Siggiewi','SIG',1),(2059,132,'Sliema','SLM',1),(2060,132,'Swieqi','SWQ',1),(2061,132,'Ta Xbiex','TXB',1),(2062,132,'Tarxien','TRX',1),(2063,132,'Valletta','VLT',1),(2064,132,'Xgajra','XGJ',1),(2065,132,'Zabbar','ZBR',1),(2066,132,'Zebbug','ZBG',1),(2067,132,'Zejtun','ZJT',1),(2068,132,'Zurrieq','ZRQ',1),(2069,132,'Fontana','FNT',1),(2070,132,'Ghajnsielem','GHJ',1),(2071,132,'Gharb','GHR',1),(2072,132,'Ghasri','GHS',1),(2073,132,'Kercem','KRC',1),(2074,132,'Munxar','MUN',1),(2075,132,'Nadur','NAD',1),(2076,132,'Qala','QAL',1),(2077,132,'Victoria','VIC',1),(2078,132,'San Lawrenz','SLA',1),(2079,132,'Sannat','SNT',1),(2080,132,'Xagra','ZAG',1),(2081,132,'Xewkija','XEW',1),(2082,132,'Zebbug','ZEB',1),(2083,133,'Ailinginae','ALG',1),(2084,133,'Ailinglaplap','ALL',1),(2085,133,'Ailuk','ALK',1),(2086,133,'Arno','ARN',1),(2087,133,'Aur','AUR',1),(2088,133,'Bikar','BKR',1),(2089,133,'Bikini','BKN',1),(2090,133,'Bokak','BKK',1),(2091,133,'Ebon','EBN',1),(2092,133,'Enewetak','ENT',1),(2093,133,'Erikub','EKB',1),(2094,133,'Jabat','JBT',1),(2095,133,'Jaluit','JLT',1),(2096,133,'Jemo','JEM',1),(2097,133,'Kili','KIL',1),(2098,133,'Kwajalein','KWJ',1),(2099,133,'Lae','LAE',1),(2100,133,'Lib','LIB',1),(2101,133,'Likiep','LKP',1),(2102,133,'Majuro','MJR',1),(2103,133,'Maloelap','MLP',1),(2104,133,'Mejit','MJT',1),(2105,133,'Mili','MIL',1),(2106,133,'Namorik','NMK',1),(2107,133,'Namu','NAM',1),(2108,133,'Rongelap','RGL',1),(2109,133,'Rongrik','RGK',1),(2110,133,'Toke','TOK',1),(2111,133,'Ujae','UJA',1),(2112,133,'Ujelang','UJL',1),(2113,133,'Utirik','UTK',1),(2114,133,'Wotho','WTH',1),(2115,133,'Wotje','WTJ',1),(2116,135,'Adrar','AD',1),(2117,135,'Assaba','AS',1),(2118,135,'Brakna','BR',1),(2119,135,'Dakhlet Nouadhibou','DN',1),(2120,135,'Gorgol','GO',1),(2121,135,'Guidimaka','GM',1),(2122,135,'Hodh Ech Chargui','HC',1),(2123,135,'Hodh El Gharbi','HG',1),(2124,135,'Inchiri','IN',1),(2125,135,'Tagant','TA',1),(2126,135,'Tiris Zemmour','TZ',1),(2127,135,'Trarza','TR',1),(2128,135,'Nouakchott','NO',1),(2129,136,'Beau Bassin-Rose Hill','BR',1),(2130,136,'Curepipe','CU',1),(2131,136,'Port Louis','PU',1),(2132,136,'Quatre Bornes','QB',1),(2133,136,'Vacoas-Phoenix','VP',1),(2134,136,'Agalega Islands','AG',1),(2135,136,'Cargados Carajos Shoals (Saint Brandon Islands)','CC',1),(2136,136,'Rodrigues','RO',1),(2137,136,'Black River','BL',1),(2138,136,'Flacq','FL',1),(2139,136,'Grand Port','GP',1),(2140,136,'Moka','MO',1),(2141,136,'Pamplemousses','PA',1),(2142,136,'Plaines Wilhems','PW',1),(2143,136,'Port Louis','PL',1),(2144,136,'Riviere du Rempart','RR',1),(2145,136,'Savanne','SA',1),(2146,138,'Baja California Norte','BN',1),(2147,138,'Baja California Sur','BS',1),(2148,138,'Campeche','CA',1),(2149,138,'Chiapas','CI',1),(2150,138,'Chihuahua','CH',1),(2151,138,'Coahuila de Zaragoza','CZ',1),(2152,138,'Colima','CL',1),(2153,138,'Distrito Federal','DF',1),(2154,138,'Durango','DU',1),(2155,138,'Guanajuato','GA',1),(2156,138,'Guerrero','GE',1),(2157,138,'Hidalgo','HI',1),(2158,138,'Jalisco','JA',1),(2159,138,'Mexico','ME',1),(2160,138,'Michoacan de Ocampo','MI',1),(2161,138,'Morelos','MO',1),(2162,138,'Nayarit','NA',1),(2163,138,'Nuevo Leon','NL',1),(2164,138,'Oaxaca','OA',1),(2165,138,'Puebla','PU',1),(2166,138,'Queretaro de Arteaga','QA',1),(2167,138,'Quintana Roo','QR',1),(2168,138,'San Luis Potosi','SA',1),(2169,138,'Sinaloa','SI',1),(2170,138,'Sonora','SO',1),(2171,138,'Tabasco','TB',1),(2172,138,'Tamaulipas','TM',1),(2173,138,'Tlaxcala','TL',1),(2174,138,'Veracruz-Llave','VE',1),(2175,138,'Yucatan','YU',1),(2176,138,'Zacatecas','ZA',1),(2177,139,'Chuuk','C',1),(2178,139,'Kosrae','K',1),(2179,139,'Pohnpei','P',1),(2180,139,'Yap','Y',1),(2181,140,'Gagauzia','GA',1),(2182,140,'Chisinau','CU',1),(2183,140,'Balti','BA',1),(2184,140,'Cahul','CA',1),(2185,140,'Edinet','ED',1),(2186,140,'Lapusna','LA',1),(2187,140,'Orhei','OR',1),(2188,140,'Soroca','SO',1),(2189,140,'Tighina','TI',1),(2190,140,'Ungheni','UN',1),(2191,140,'St‚nga Nistrului','SN',1),(2192,141,'Fontvieille','FV',1),(2193,141,'La Condamine','LC',1),(2194,141,'Monaco-Ville','MV',1),(2195,141,'Monte-Carlo','MC',1),(2196,142,'Ulanbaatar','1',1),(2197,142,'Orhon','035',1),(2198,142,'Darhan uul','037',1),(2199,142,'Hentiy','039',1),(2200,142,'Hovsgol','041',1),(2201,142,'Hovd','043',1),(2202,142,'Uvs','046',1),(2203,142,'Tov','047',1),(2204,142,'Selenge','049',1),(2205,142,'Suhbaatar','051',1),(2206,142,'Omnogovi','053',1),(2207,142,'Ovorhangay','055',1),(2208,142,'Dzavhan','057',1),(2209,142,'DundgovL','059',1),(2210,142,'Dornod','061',1),(2211,142,'Dornogov','063',1),(2212,142,'Govi-Sumber','064',1),(2213,142,'Govi-Altay','065',1),(2214,142,'Bulgan','067',1),(2215,142,'Bayanhongor','069',1),(2216,142,'Bayan-Olgiy','071',1),(2217,142,'Arhangay','073',1),(2218,143,'Saint Anthony','A',1),(2219,143,'Saint Georges','G',1),(2220,143,'Saint Peter','P',1),(2221,144,'Agadir','AGD',1),(2222,144,'Al Hoceima','HOC',1),(2223,144,'Azilal','AZI',1),(2224,144,'Beni Mellal','BME',1),(2225,144,'Ben Slimane','BSL',1),(2226,144,'Boulemane','BLM',1),(2227,144,'Casablanca','CBL',1),(2228,144,'Chaouen','CHA',1),(2229,144,'El Jadida','EJA',1),(2230,144,'El Kelaa des Sraghna','EKS',1),(2231,144,'Er Rachidia','ERA',1),(2232,144,'Essaouira','ESS',1),(2233,144,'Fes','FES',1),(2234,144,'Figuig','FIG',1),(2235,144,'Guelmim','GLM',1),(2236,144,'Ifrane','IFR',1),(2237,144,'Kenitra','KEN',1),(2238,144,'Khemisset','KHM',1),(2239,144,'Khenifra','KHN',1),(2240,144,'Khouribga','KHO',1),(2241,144,'Laayoune','LYN',1),(2242,144,'Larache','LAR',1),(2243,144,'Marrakech','MRK',1),(2244,144,'Meknes','MKN',1),(2245,144,'Nador','NAD',1),(2246,144,'Ouarzazate','ORZ',1),(2247,144,'Oujda','OUJ',1),(2248,144,'Rabat-Sale','RSA',1),(2249,144,'Safi','SAF',1),(2250,144,'Settat','SET',1),(2251,144,'Sidi Kacem','SKA',1),(2252,144,'Tangier','TGR',1),(2253,144,'Tan-Tan','TAN',1),(2254,144,'Taounate','TAO',1),(2255,144,'Taroudannt','TRD',1),(2256,144,'Tata','TAT',1),(2257,144,'Taza','TAZ',1),(2258,144,'Tetouan','TET',1),(2259,144,'Tiznit','TIZ',1),(2260,144,'Ad Dakhla','ADK',1),(2261,144,'Boujdour','BJD',1),(2262,144,'Es Smara','ESM',1),(2263,145,'Cabo Delgado','CD',1),(2264,145,'Gaza','GZ',1),(2265,145,'Inhambane','IN',1),(2266,145,'Manica','MN',1),(2267,145,'Maputo (city)','MC',1),(2268,145,'Maputo','MP',1),(2269,145,'Nampula','NA',1),(2270,145,'Niassa','NI',1),(2271,145,'Sofala','SO',1),(2272,145,'Tete','TE',1),(2273,145,'Zambezia','ZA',1),(2274,146,'Ayeyarwady','AY',1),(2275,146,'Bago','BG',1),(2276,146,'Magway','MG',1),(2277,146,'Mandalay','MD',1),(2278,146,'Sagaing','SG',1),(2279,146,'Tanintharyi','TN',1),(2280,146,'Yangon','YG',1),(2281,146,'Chin State','CH',1),(2282,146,'Kachin State','KC',1),(2283,146,'Kayah State','KH',1),(2284,146,'Kayin State','KN',1),(2285,146,'Mon State','MN',1),(2286,146,'Rakhine State','RK',1),(2287,146,'Shan State','SH',1),(2288,147,'Caprivi','CA',1),(2289,147,'Erongo','ER',1),(2290,147,'Hardap','HA',1),(2291,147,'Karas','KR',1),(2292,147,'Kavango','KV',1),(2293,147,'Khomas','KH',1),(2294,147,'Kunene','KU',1),(2295,147,'Ohangwena','OW',1),(2296,147,'Omaheke','OK',1),(2297,147,'Omusati','OT',1),(2298,147,'Oshana','ON',1),(2299,147,'Oshikoto','OO',1),(2300,147,'Otjozondjupa','OJ',1),(2301,148,'Aiwo','AO',1),(2302,148,'Anabar','AA',1),(2303,148,'Anetan','AT',1),(2304,148,'Anibare','AI',1),(2305,148,'Baiti','BA',1),(2306,148,'Boe','BO',1),(2307,148,'Buada','BU',1),(2308,148,'Denigomodu','DE',1),(2309,148,'Ewa','EW',1),(2310,148,'Ijuw','IJ',1),(2311,148,'Meneng','ME',1),(2312,148,'Nibok','NI',1),(2313,148,'Uaboe','UA',1),(2314,148,'Yaren','YA',1),(2315,149,'Bagmati','BA',1),(2316,149,'Bheri','BH',1),(2317,149,'Dhawalagiri','DH',1),(2318,149,'Gandaki','GA',1),(2319,149,'Janakpur','JA',1),(2320,149,'Karnali','KA',1),(2321,149,'Kosi','KO',1),(2322,149,'Lumbini','LU',1),(2323,149,'Mahakali','MA',1),(2324,149,'Mechi','ME',1),(2325,149,'Narayani','NA',1),(2326,149,'Rapti','RA',1),(2327,149,'Sagarmatha','SA',1),(2328,149,'Seti','SE',1),(2329,150,'Drenthe','DR',1),(2330,150,'Flevoland','FL',1),(2331,150,'Friesland','FR',1),(2332,150,'Gelderland','GE',1),(2333,150,'Groningen','GR',1),(2334,150,'Limburg','LI',1),(2335,150,'Noord Brabant','NB',1),(2336,150,'Noord Holland','NH',1),(2337,150,'Overijssel','OV',1),(2338,150,'Utrecht','UT',1),(2339,150,'Zeeland','ZE',1),(2340,150,'Zuid Holland','ZH',1),(2341,152,'Iles Loyaute','L',1),(2342,152,'Nord','N',1),(2343,152,'Sud','S',1),(2344,153,'Auckland','AUK',1),(2345,153,'Bay of Plenty','BOP',1),(2346,153,'Canterbury','CAN',1),(2347,153,'Coromandel','COR',1),(2348,153,'Gisborne','GIS',1),(2349,153,'Fiordland','FIO',1),(2350,153,'Hawke\'s Bay','HKB',1),(2351,153,'Marlborough','MBH',1),(2352,153,'Manawatu-Wanganui','MWT',1),(2353,153,'Mt Cook-Mackenzie','MCM',1),(2354,153,'Nelson','NSN',1),(2355,153,'Northland','NTL',1),(2356,153,'Otago','OTA',1),(2357,153,'Southland','STL',1),(2358,153,'Taranaki','TKI',1),(2359,153,'Wellington','WGN',1),(2360,153,'Waikato','WKO',1),(2361,153,'Wairarapa','WAI',1),(2362,153,'West Coast','WTC',1),(2363,154,'Atlantico Norte','AN',1),(2364,154,'Atlantico Sur','AS',1),(2365,154,'Boaco','BO',1),(2366,154,'Carazo','CA',1),(2367,154,'Chinandega','CI',1),(2368,154,'Chontales','CO',1),(2369,154,'Esteli','ES',1),(2370,154,'Granada','GR',1),(2371,154,'Jinotega','JI',1),(2372,154,'Leon','LE',1),(2373,154,'Madriz','MD',1),(2374,154,'Managua','MN',1),(2375,154,'Masaya','MS',1),(2376,154,'Matagalpa','MT',1),(2377,154,'Nuevo Segovia','NS',1),(2378,154,'Rio San Juan','RS',1),(2379,154,'Rivas','RI',1),(2380,155,'Agadez','AG',1),(2381,155,'Diffa','DF',1),(2382,155,'Dosso','DS',1),(2383,155,'Maradi','MA',1),(2384,155,'Niamey','NM',1),(2385,155,'Tahoua','TH',1),(2386,155,'Tillaberi','TL',1),(2387,155,'Zinder','ZD',1),(2388,156,'Abia','AB',1),(2389,156,'Abuja Federal Capital Territory','CT',1),(2390,156,'Adamawa','AD',1),(2391,156,'Akwa Ibom','AK',1),(2392,156,'Anambra','AN',1),(2393,156,'Bauchi','BC',1),(2394,156,'Bayelsa','BY',1),(2395,156,'Benue','BN',1),(2396,156,'Borno','BO',1),(2397,156,'Cross River','CR',1),(2398,156,'Delta','DE',1),(2399,156,'Ebonyi','EB',1),(2400,156,'Edo','ED',1),(2401,156,'Ekiti','EK',1),(2402,156,'Enugu','EN',1),(2403,156,'Gombe','GO',1),(2404,156,'Imo','IM',1),(2405,156,'Jigawa','JI',1),(2406,156,'Kaduna','KD',1),(2407,156,'Kano','KN',1),(2408,156,'Katsina','KT',1),(2409,156,'Kebbi','KE',1),(2410,156,'Kogi','KO',1),(2411,156,'Kwara','KW',1),(2412,156,'Lagos','LA',1),(2413,156,'Nassarawa','NA',1),(2414,156,'Niger','NI',1),(2415,156,'Ogun','OG',1),(2416,156,'Ondo','ONG',1),(2417,156,'Osun','OS',1),(2418,156,'Oyo','OY',1),(2419,156,'Plateau','PL',1),(2420,156,'Rivers','RI',1),(2421,156,'Sokoto','SO',1),(2422,156,'Taraba','TA',1),(2423,156,'Yobe','YO',1),(2424,156,'Zamfara','ZA',1),(2425,159,'Northern Islands','N',1),(2426,159,'Rota','R',1),(2427,159,'Saipan','S',1),(2428,159,'Tinian','T',1),(2429,160,'Akershus','AK',1),(2430,160,'Aust-Agder','AA',1),(2431,160,'Buskerud','BU',1),(2432,160,'Finnmark','FM',1),(2433,160,'Hedmark','HM',1),(2434,160,'Hordaland','HL',1),(2435,160,'More og Romdal','MR',1),(2436,160,'Nord-Trondelag','NT',1),(2437,160,'Nordland','NL',1),(2438,160,'Ostfold','OF',1),(2439,160,'Oppland','OP',1),(2440,160,'Oslo','OL',1),(2441,160,'Rogaland','RL',1),(2442,160,'Sor-Trondelag','ST',1),(2443,160,'Sogn og Fjordane','SJ',1),(2444,160,'Svalbard','SV',1),(2445,160,'Telemark','TM',1),(2446,160,'Troms','TR',1),(2447,160,'Vest-Agder','VA',1),(2448,160,'Vestfold','VF',1),(2449,161,'Ad Dakhiliyah','DA',1),(2450,161,'Al Batinah','BA',1),(2451,161,'Al Wusta','WU',1),(2452,161,'Ash Sharqiyah','SH',1),(2453,161,'Az Zahirah','ZA',1),(2454,161,'Masqat','MA',1),(2455,161,'Musandam','MU',1),(2456,161,'Zufar','ZU',1),(2457,162,'Balochistan','B',1),(2458,162,'Federally Administered Tribal Areas','T',1),(2459,162,'Islamabad Capital Territory','I',1),(2460,162,'North-West Frontier','N',1),(2461,162,'Punjab','P',1),(2462,162,'Sindh','S',1),(2463,163,'Aimeliik','AM',1),(2464,163,'Airai','AR',1),(2465,163,'Angaur','AN',1),(2466,163,'Hatohobei','HA',1),(2467,163,'Kayangel','KA',1),(2468,163,'Koror','KO',1),(2469,163,'Melekeok','ME',1),(2470,163,'Ngaraard','NA',1),(2471,163,'Ngarchelong','NG',1),(2472,163,'Ngardmau','ND',1),(2473,163,'Ngatpang','NT',1),(2474,163,'Ngchesar','NC',1),(2475,163,'Ngeremlengui','NR',1),(2476,163,'Ngiwal','NW',1),(2477,163,'Peleliu','PE',1),(2478,163,'Sonsorol','SO',1),(2479,164,'Bocas del Toro','BT',1),(2480,164,'Chiriqui','CH',1),(2481,164,'Cocle','CC',1),(2482,164,'Colon','CL',1),(2483,164,'Darien','DA',1),(2484,164,'Herrera','HE',1),(2485,164,'Los Santos','LS',1),(2486,164,'Panama','PA',1),(2487,164,'San Blas','SB',1),(2488,164,'Veraguas','VG',1),(2489,165,'Bougainville','BV',1),(2490,165,'Central','CE',1),(2491,165,'Chimbu','CH',1),(2492,165,'Eastern Highlands','EH',1),(2493,165,'East New Britain','EB',1),(2494,165,'East Sepik','ES',1),(2495,165,'Enga','EN',1),(2496,165,'Gulf','GU',1),(2497,165,'Madang','MD',1),(2498,165,'Manus','MN',1),(2499,165,'Milne Bay','MB',1),(2500,165,'Morobe','MR',1),(2501,165,'National Capital','NC',1),(2502,165,'New Ireland','NI',1),(2503,165,'Northern','NO',1),(2504,165,'Sandaun','SA',1),(2505,165,'Southern Highlands','SH',1),(2506,165,'Western','WE',1),(2507,165,'Western Highlands','WH',1),(2508,165,'West New Britain','WB',1),(2509,166,'Alto Paraguay','AG',1),(2510,166,'Alto Parana','AN',1),(2511,166,'Amambay','AM',1),(2512,166,'Asuncion','AS',1),(2513,166,'Boqueron','BO',1),(2514,166,'Caaguazu','CG',1),(2515,166,'Caazapa','CZ',1),(2516,166,'Canindeyu','CN',1),(2517,166,'Central','CE',1),(2518,166,'Concepcion','CC',1),(2519,166,'Cordillera','CD',1),(2520,166,'Guaira','GU',1),(2521,166,'Itapua','IT',1),(2522,166,'Misiones','MI',1),(2523,166,'Neembucu','NE',1),(2524,166,'Paraguari','PA',1),(2525,166,'Presidente Hayes','PH',1),(2526,166,'San Pedro','SP',1),(2527,167,'Amazonas','AM',1),(2528,167,'Ancash','AN',1),(2529,167,'Apurimac','AP',1),(2530,167,'Arequipa','AR',1),(2531,167,'Ayacucho','AY',1),(2532,167,'Cajamarca','CJ',1),(2533,167,'Callao','CL',1),(2534,167,'Cusco','CU',1),(2535,167,'Huancavelica','HV',1),(2536,167,'Huanuco','HO',1),(2537,167,'Ica','IC',1),(2538,167,'Junin','JU',1),(2539,167,'La Libertad','LD',1),(2540,167,'Lambayeque','LY',1),(2541,167,'Lima','LI',1),(2542,167,'Loreto','LO',1),(2543,167,'Madre de Dios','MD',1),(2544,167,'Moquegua','MO',1),(2545,167,'Pasco','PA',1),(2546,167,'Piura','PI',1),(2547,167,'Puno','PU',1),(2548,167,'San Martin','SM',1),(2549,167,'Tacna','TA',1),(2550,167,'Tumbes','TU',1),(2551,167,'Ucayali','UC',1),(2552,168,'Abra','ABR',1),(2553,168,'Agusan del Norte','ANO',1),(2554,168,'Agusan del Sur','ASU',1),(2555,168,'Aklan','AKL',1),(2556,168,'Albay','ALB',1),(2557,168,'Antique','ANT',1),(2558,168,'Apayao','APY',1),(2559,168,'Aurora','AUR',1),(2560,168,'Basilan','BAS',1),(2561,168,'Bataan','BTA',1),(2562,168,'Batanes','BTE',1),(2563,168,'Batangas','BTG',1),(2564,168,'Biliran','BLR',1),(2565,168,'Benguet','BEN',1),(2566,168,'Bohol','BOL',1),(2567,168,'Bukidnon','BUK',1),(2568,168,'Bulacan','BUL',1),(2569,168,'Cagayan','CAG',1),(2570,168,'Camarines Norte','CNO',1),(2571,168,'Camarines Sur','CSU',1),(2572,168,'Camiguin','CAM',1),(2573,168,'Capiz','CAP',1),(2574,168,'Catanduanes','CAT',1),(2575,168,'Cavite','CAV',1),(2576,168,'Cebu','CEB',1),(2577,168,'Compostela','CMP',1),(2578,168,'Davao del Norte','DNO',1),(2579,168,'Davao del Sur','DSU',1),(2580,168,'Davao Oriental','DOR',1),(2581,168,'Eastern Samar','ESA',1),(2582,168,'Guimaras','GUI',1),(2583,168,'Ifugao','IFU',1),(2584,168,'Ilocos Norte','INO',1),(2585,168,'Ilocos Sur','ISU',1),(2586,168,'Iloilo','ILO',1),(2587,168,'Isabela','ISA',1),(2588,168,'Kalinga','KAL',1),(2589,168,'Laguna','LAG',1),(2590,168,'Lanao del Norte','LNO',1),(2591,168,'Lanao del Sur','LSU',1),(2592,168,'La Union','UNI',1),(2593,168,'Leyte','LEY',1),(2594,168,'Maguindanao','MAG',1),(2595,168,'Marinduque','MRN',1),(2596,168,'Masbate','MSB',1),(2597,168,'Mindoro Occidental','MIC',1),(2598,168,'Mindoro Oriental','MIR',1),(2599,168,'Misamis Occidental','MSC',1),(2600,168,'Misamis Oriental','MOR',1),(2601,168,'Mountain','MOP',1),(2602,168,'Negros Occidental','NOC',1),(2603,168,'Negros Oriental','NOR',1),(2604,168,'North Cotabato','NCT',1),(2605,168,'Northern Samar','NSM',1),(2606,168,'Nueva Ecija','NEC',1),(2607,168,'Nueva Vizcaya','NVZ',1),(2608,168,'Palawan','PLW',1),(2609,168,'Pampanga','PMP',1),(2610,168,'Pangasinan','PNG',1),(2611,168,'Quezon','QZN',1),(2612,168,'Quirino','QRN',1),(2613,168,'Rizal','RIZ',1),(2614,168,'Romblon','ROM',1),(2615,168,'Samar','SMR',1),(2616,168,'Sarangani','SRG',1),(2617,168,'Siquijor','SQJ',1),(2618,168,'Sorsogon','SRS',1),(2619,168,'South Cotabato','SCO',1),(2620,168,'Southern Leyte','SLE',1),(2621,168,'Sultan Kudarat','SKU',1),(2622,168,'Sulu','SLU',1),(2623,168,'Surigao del Norte','SNO',1),(2624,168,'Surigao del Sur','SSU',1),(2625,168,'Tarlac','TAR',1),(2626,168,'Tawi-Tawi','TAW',1),(2627,168,'Zambales','ZBL',1),(2628,168,'Zamboanga del Norte','ZNO',1),(2629,168,'Zamboanga del Sur','ZSU',1),(2630,168,'Zamboanga Sibugay','ZSI',1),(2631,170,'Dolnoslaskie','DO',1),(2632,170,'Kujawsko-Pomorskie','KP',1),(2633,170,'Lodzkie','LO',1),(2634,170,'Lubelskie','LL',1),(2635,170,'Lubuskie','LU',1),(2636,170,'Malopolskie','ML',1),(2637,170,'Mazowieckie','MZ',1),(2638,170,'Opolskie','OP',1),(2639,170,'Podkarpackie','PP',1),(2640,170,'Podlaskie','PL',1),(2641,170,'Pomorskie','PM',1),(2642,170,'Slaskie','SL',1),(2643,170,'Swietokrzyskie','SW',1),(2644,170,'Warminsko-Mazurskie','WM',1),(2645,170,'Wielkopolskie','WP',1),(2646,170,'Zachodniopomorskie','ZA',1),(2647,198,'Saint Pierre','P',1),(2648,198,'Miquelon','M',1),(2649,171,'A&ccedil;ores','AC',1),(2650,171,'Aveiro','AV',1),(2651,171,'Beja','BE',1),(2652,171,'Braga','BR',1),(2653,171,'Bragan&ccedil;a','BA',1),(2654,171,'Castelo Branco','CB',1),(2655,171,'Coimbra','CO',1),(2656,171,'&Eacute;vora','EV',1),(2657,171,'Faro','FA',1),(2658,171,'Guarda','GU',1),(2659,171,'Leiria','LE',1),(2660,171,'Lisboa','LI',1),(2661,171,'Madeira','ME',1),(2662,171,'Portalegre','PO',1),(2663,171,'Porto','PR',1),(2664,171,'Santar&eacute;m','SA',1),(2665,171,'Set&uacute;bal','SE',1),(2666,171,'Viana do Castelo','VC',1),(2667,171,'Vila Real','VR',1),(2668,171,'Viseu','VI',1),(2669,173,'Ad Dawhah','DW',1),(2670,173,'Al Ghuwayriyah','GW',1),(2671,173,'Al Jumayliyah','JM',1),(2672,173,'Al Khawr','KR',1),(2673,173,'Al Wakrah','WK',1),(2674,173,'Ar Rayyan','RN',1),(2675,173,'Jarayan al Batinah','JB',1),(2676,173,'Madinat ash Shamal','MS',1),(2677,173,'Umm Sa\'id','UD',1),(2678,173,'Umm Salal','UL',1),(2679,175,'Alba','AB',1),(2680,175,'Arad','AR',1),(2681,175,'Arges','AG',1),(2682,175,'Bacau','BC',1),(2683,175,'Bihor','BH',1),(2684,175,'Bistrita-Nasaud','BN',1),(2685,175,'Botosani','BT',1),(2686,175,'Brasov','BV',1),(2687,175,'Braila','BR',1),(2688,175,'Bucuresti','B',1),(2689,175,'Buzau','BZ',1),(2690,175,'Caras-Severin','CS',1),(2691,175,'Calarasi','CL',1),(2692,175,'Cluj','CJ',1),(2693,175,'Constanta','CT',1),(2694,175,'Covasna','CV',1),(2695,175,'Dimbovita','DB',1),(2696,175,'Dolj','DJ',1),(2697,175,'Galati','GL',1),(2698,175,'Giurgiu','GR',1),(2699,175,'Gorj','GJ',1),(2700,175,'Harghita','HR',1),(2701,175,'Hunedoara','HD',1),(2702,175,'Ialomita','IL',1),(2703,175,'Iasi','IS',1),(2704,175,'Ilfov','IF',1),(2705,175,'Maramures','MM',1),(2706,175,'Mehedinti','MH',1),(2707,175,'Mures','MS',1),(2708,175,'Neamt','NT',1),(2709,175,'Olt','OT',1),(2710,175,'Prahova','PH',1),(2711,175,'Satu-Mare','SM',1),(2712,175,'Salaj','SJ',1),(2713,175,'Sibiu','SB',1),(2714,175,'Suceava','SV',1),(2715,175,'Teleorman','TR',1),(2716,175,'Timis','TM',1),(2717,175,'Tulcea','TL',1),(2718,175,'Vaslui','VS',1),(2719,175,'Valcea','VL',1),(2720,175,'Vrancea','VN',1),(2721,176,'Abakan','AB',1),(2722,176,'Aginskoye','AG',1),(2723,176,'Anadyr','AN',1),(2724,176,'Arkahangelsk','AR',1),(2725,176,'Astrakhan','AS',1),(2726,176,'Barnaul','BA',1),(2727,176,'Belgorod','BE',1),(2728,176,'Birobidzhan','BI',1),(2729,176,'Blagoveshchensk','BL',1),(2730,176,'Bryansk','BR',1),(2731,176,'Cheboksary','CH',1),(2732,176,'Chelyabinsk','CL',1),(2733,176,'Cherkessk','CR',1),(2734,176,'Chita','CI',1),(2735,176,'Dudinka','DU',1),(2736,176,'Elista','EL',1),(2737,176,'Gomo-Altaysk','GO',1),(2738,176,'Gorno-Altaysk','GA',1),(2739,176,'Groznyy','GR',1),(2740,176,'Irkutsk','IR',1),(2741,176,'Ivanovo','IV',1),(2742,176,'Izhevsk','IZ',1),(2743,176,'Kalinigrad','KA',1),(2744,176,'Kaluga','KL',1),(2745,176,'Kasnodar','KS',1),(2746,176,'Kazan','KZ',1),(2747,176,'Kemerovo','KE',1),(2748,176,'Khabarovsk','KH',1),(2749,176,'Khanty-Mansiysk','KM',1),(2750,176,'Kostroma','KO',1),(2751,176,'Krasnodar','KR',1),(2752,176,'Krasnoyarsk','KN',1),(2753,176,'Kudymkar','KU',1),(2754,176,'Kurgan','KG',1),(2755,176,'Kursk','KK',1),(2756,176,'Kyzyl','KY',1),(2757,176,'Lipetsk','LI',1),(2758,176,'Magadan','MA',1),(2759,176,'Makhachkala','MK',1),(2760,176,'Maykop','MY',1),(2761,176,'Moscow','MO',1),(2762,176,'Murmansk','MU',1),(2763,176,'Nalchik','NA',1),(2764,176,'Naryan Mar','NR',1),(2765,176,'Nazran','NZ',1),(2766,176,'Nizhniy Novgorod','NI',1),(2767,176,'Novgorod','NO',1),(2768,176,'Novosibirsk','NV',1),(2769,176,'Omsk','OM',1),(2770,176,'Orel','OR',1),(2771,176,'Orenburg','OE',1),(2772,176,'Palana','PA',1),(2773,176,'Penza','PE',1),(2774,176,'Perm','PR',1),(2775,176,'Petropavlovsk-Kamchatskiy','PK',1),(2776,176,'Petrozavodsk','PT',1),(2777,176,'Pskov','PS',1),(2778,176,'Rostov-na-Donu','RO',1),(2779,176,'Ryazan','RY',1),(2780,176,'Salekhard','SL',1),(2781,176,'Samara','SA',1),(2782,176,'Saransk','SR',1),(2783,176,'Saratov','SV',1),(2784,176,'Smolensk','SM',1),(2785,176,'St. Petersburg','SP',1),(2786,176,'Stavropol','ST',1),(2787,176,'Syktyvkar','SY',1),(2788,176,'Tambov','TA',1),(2789,176,'Tomsk','TO',1),(2790,176,'Tula','TU',1),(2791,176,'Tura','TR',1),(2792,176,'Tver','TV',1),(2793,176,'Tyumen','TY',1),(2794,176,'Ufa','UF',1),(2795,176,'Ul\'yanovsk','UL',1),(2796,176,'Ulan-Ude','UU',1),(2797,176,'Ust\'-Ordynskiy','US',1),(2798,176,'Vladikavkaz','VL',1),(2799,176,'Vladimir','VA',1),(2800,176,'Vladivostok','VV',1),(2801,176,'Volgograd','VG',1),(2802,176,'Vologda','VD',1),(2803,176,'Voronezh','VO',1),(2804,176,'Vyatka','VY',1),(2805,176,'Yakutsk','YA',1),(2806,176,'Yaroslavl','YR',1),(2807,176,'Yekaterinburg','YE',1),(2808,176,'Yoshkar-Ola','YO',1),(2809,177,'Butare','BU',1),(2810,177,'Byumba','BY',1),(2811,177,'Cyangugu','CY',1),(2812,177,'Gikongoro','GK',1),(2813,177,'Gisenyi','GS',1),(2814,177,'Gitarama','GT',1),(2815,177,'Kibungo','KG',1),(2816,177,'Kibuye','KY',1),(2817,177,'Kigali Rurale','KR',1),(2818,177,'Kigali-ville','KV',1),(2819,177,'Ruhengeri','RU',1),(2820,177,'Umutara','UM',1),(2821,178,'Christ Church Nichola Town','CCN',1),(2822,178,'Saint Anne Sandy Point','SAS',1),(2823,178,'Saint George Basseterre','SGB',1),(2824,178,'Saint George Gingerland','SGG',1),(2825,178,'Saint James Windward','SJW',1),(2826,178,'Saint John Capesterre','SJC',1),(2827,178,'Saint John Figtree','SJF',1),(2828,178,'Saint Mary Cayon','SMC',1),(2829,178,'Saint Paul Capesterre','CAP',1),(2830,178,'Saint Paul Charlestown','CHA',1),(2831,178,'Saint Peter Basseterre','SPB',1),(2832,178,'Saint Thomas Lowland','STL',1),(2833,178,'Saint Thomas Middle Island','STM',1),(2834,178,'Trinity Palmetto Point','TPP',1),(2835,179,'Anse-la-Raye','AR',1),(2836,179,'Castries','CA',1),(2837,179,'Choiseul','CH',1),(2838,179,'Dauphin','DA',1),(2839,179,'Dennery','DE',1),(2840,179,'Gros-Islet','GI',1),(2841,179,'Laborie','LA',1),(2842,179,'Micoud','MI',1),(2843,179,'Praslin','PR',1),(2844,179,'Soufriere','SO',1),(2845,179,'Vieux-Fort','VF',1),(2846,180,'Charlotte','C',1),(2847,180,'Grenadines','R',1),(2848,180,'Saint Andrew','A',1),(2849,180,'Saint David','D',1),(2850,180,'Saint George','G',1),(2851,180,'Saint Patrick','P',1),(2852,181,'A\'ana','AN',1),(2853,181,'Aiga-i-le-Tai','AI',1),(2854,181,'Atua','AT',1),(2855,181,'Fa\'asaleleaga','FA',1),(2856,181,'Gaga\'emauga','GE',1),(2857,181,'Gagaifomauga','GF',1),(2858,181,'Palauli','PA',1),(2859,181,'Satupa\'itea','SA',1),(2860,181,'Tuamasaga','TU',1),(2861,181,'Va\'a-o-Fonoti','VF',1),(2862,181,'Vaisigano','VS',1),(2863,182,'Acquaviva','AC',1),(2864,182,'Borgo Maggiore','BM',1),(2865,182,'Chiesanuova','CH',1),(2866,182,'Domagnano','DO',1),(2867,182,'Faetano','FA',1),(2868,182,'Fiorentino','FI',1),(2869,182,'Montegiardino','MO',1),(2870,182,'Citta di San Marino','SM',1),(2871,182,'Serravalle','SE',1),(2872,183,'Sao Tome','S',1),(2873,183,'Principe','P',1),(2874,184,'Al Bahah','BH',1),(2875,184,'Al Hudud ash Shamaliyah','HS',1),(2876,184,'Al Jawf','JF',1),(2877,184,'Al Madinah','MD',1),(2878,184,'Al Qasim','QS',1),(2879,184,'Ar Riyad','RD',1),(2880,184,'Ash Sharqiyah (Eastern)','AQ',1),(2881,184,'\'Asir','AS',1),(2882,184,'Ha\'il','HL',1),(2883,184,'Jizan','JZ',1),(2884,184,'Makkah','ML',1),(2885,184,'Najran','NR',1),(2886,184,'Tabuk','TB',1),(2887,185,'Dakar','DA',1),(2888,185,'Diourbel','DI',1),(2889,185,'Fatick','FA',1),(2890,185,'Kaolack','KA',1),(2891,185,'Kolda','KO',1),(2892,185,'Louga','LO',1),(2893,185,'Matam','MA',1),(2894,185,'Saint-Louis','SL',1),(2895,185,'Tambacounda','TA',1),(2896,185,'Thies','TH',1),(2897,185,'Ziguinchor','ZI',1),(2898,186,'Anse aux Pins','AP',1),(2899,186,'Anse Boileau','AB',1),(2900,186,'Anse Etoile','AE',1),(2901,186,'Anse Louis','AL',1),(2902,186,'Anse Royale','AR',1),(2903,186,'Baie Lazare','BL',1),(2904,186,'Baie Sainte Anne','BS',1),(2905,186,'Beau Vallon','BV',1),(2906,186,'Bel Air','BA',1),(2907,186,'Bel Ombre','BO',1),(2908,186,'Cascade','CA',1),(2909,186,'Glacis','GL',1),(2910,186,'Grand\' Anse (on Mahe)','GM',1),(2911,186,'Grand\' Anse (on Praslin)','GP',1),(2912,186,'La Digue','DG',1),(2913,186,'La Riviere Anglaise','RA',1),(2914,186,'Mont Buxton','MB',1),(2915,186,'Mont Fleuri','MF',1),(2916,186,'Plaisance','PL',1),(2917,186,'Pointe La Rue','PR',1),(2918,186,'Port Glaud','PG',1),(2919,186,'Saint Louis','SL',1),(2920,186,'Takamaka','TA',1),(2921,187,'Eastern','E',1),(2922,187,'Northern','N',1),(2923,187,'Southern','S',1),(2924,187,'Western','W',1),(2925,189,'Banskobystrický','BA',1),(2926,189,'Bratislavský','BR',1),(2927,189,'Košický','KO',1),(2928,189,'Nitriansky','NI',1),(2929,189,'Prešovský','PR',1),(2930,189,'Trenčiansky','TC',1),(2931,189,'Trnavský','TV',1),(2932,189,'Žilinský','ZI',1),(2933,191,'Central','CE',1),(2934,191,'Choiseul','CH',1),(2935,191,'Guadalcanal','GC',1),(2936,191,'Honiara','HO',1),(2937,191,'Isabel','IS',1),(2938,191,'Makira','MK',1),(2939,191,'Malaita','ML',1),(2940,191,'Rennell and Bellona','RB',1),(2941,191,'Temotu','TM',1),(2942,191,'Western','WE',1),(2943,192,'Awdal','AW',1),(2944,192,'Bakool','BK',1),(2945,192,'Banaadir','BN',1),(2946,192,'Bari','BR',1),(2947,192,'Bay','BY',1),(2948,192,'Galguduud','GA',1),(2949,192,'Gedo','GE',1),(2950,192,'Hiiraan','HI',1),(2951,192,'Jubbada Dhexe','JD',1),(2952,192,'Jubbada Hoose','JH',1),(2953,192,'Mudug','MU',1),(2954,192,'Nugaal','NU',1),(2955,192,'Sanaag','SA',1),(2956,192,'Shabeellaha Dhexe','SD',1),(2957,192,'Shabeellaha Hoose','SH',1),(2958,192,'Sool','SL',1),(2959,192,'Togdheer','TO',1),(2960,192,'Woqooyi Galbeed','WG',1),(2961,193,'Eastern Cape','EC',1),(2962,193,'Free State','FS',1),(2963,193,'Gauteng','GT',1),(2964,193,'KwaZulu-Natal','KN',1),(2965,193,'Limpopo','LP',1),(2966,193,'Mpumalanga','MP',1),(2967,193,'North West','NW',1),(2968,193,'Northern Cape','NC',1),(2969,193,'Western Cape','WC',1),(2970,195,'La Coru&ntilde;a','CA',1),(2971,195,'&Aacute;lava','AL',1),(2972,195,'Albacete','AB',1),(2973,195,'Alicante','AC',1),(2974,195,'Almeria','AM',1),(2975,195,'Asturias','AS',1),(2976,195,'&Aacute;vila','AV',1),(2977,195,'Badajoz','BJ',1),(2978,195,'Baleares','IB',1),(2979,195,'Barcelona','BA',1),(2980,195,'Burgos','BU',1),(2981,195,'C&aacute;ceres','CC',1),(2982,195,'C&aacute;diz','CZ',1),(2983,195,'Cantabria','CT',1),(2984,195,'Castell&oacute;n','CL',1),(2985,195,'Ceuta','CE',1),(2986,195,'Ciudad Real','CR',1),(2987,195,'C&oacute;rdoba','CD',1),(2988,195,'Cuenca','CU',1),(2989,195,'Girona','GI',1),(2990,195,'Granada','GD',1),(2991,195,'Guadalajara','GJ',1),(2992,195,'Guip&uacute;zcoa','GP',1),(2993,195,'Huelva','HL',1),(2994,195,'Huesca','HS',1),(2995,195,'Ja&eacute;n','JN',1),(2996,195,'La Rioja','RJ',1),(2997,195,'Las Palmas','PM',1),(2998,195,'Leon','LE',1),(2999,195,'Lleida','LL',1),(3000,195,'Lugo','LG',1),(3001,195,'Madrid','MD',1),(3002,195,'Malaga','MA',1),(3003,195,'Melilla','ML',1),(3004,195,'Murcia','MU',1),(3005,195,'Navarra','NV',1),(3006,195,'Ourense','OU',1),(3007,195,'Palencia','PL',1),(3008,195,'Pontevedra','PO',1),(3009,195,'Salamanca','SL',1),(3010,195,'Santa Cruz de Tenerife','SC',1),(3011,195,'Segovia','SG',1),(3012,195,'Sevilla','SV',1),(3013,195,'Soria','SO',1),(3014,195,'Tarragona','TA',1),(3015,195,'Teruel','TE',1),(3016,195,'Toledo','TO',1),(3017,195,'Valencia','VC',1),(3018,195,'Valladolid','VD',1),(3019,195,'Vizcaya','VZ',1),(3020,195,'Zamora','ZM',1),(3021,195,'Zaragoza','ZR',1),(3022,196,'Central','CE',1),(3023,196,'Eastern','EA',1),(3024,196,'North Central','NC',1),(3025,196,'Northern','NO',1),(3026,196,'North Western','NW',1),(3027,196,'Sabaragamuwa','SA',1),(3028,196,'Southern','SO',1),(3029,196,'Uva','UV',1),(3030,196,'Western','WE',1),(3032,197,'Saint Helena','S',1),(3034,199,'A\'ali an Nil','ANL',1),(3035,199,'Al Bahr al Ahmar','BAM',1),(3036,199,'Al Buhayrat','BRT',1),(3037,199,'Al Jazirah','JZR',1),(3038,199,'Al Khartum','KRT',1),(3039,199,'Al Qadarif','QDR',1),(3040,199,'Al Wahdah','WDH',1),(3041,199,'An Nil al Abyad','ANB',1),(3042,199,'An Nil al Azraq','ANZ',1),(3043,199,'Ash Shamaliyah','ASH',1),(3044,199,'Bahr al Jabal','BJA',1),(3045,199,'Gharb al Istiwa\'iyah','GIS',1),(3046,199,'Gharb Bahr al Ghazal','GBG',1),(3047,199,'Gharb Darfur','GDA',1),(3048,199,'Gharb Kurdufan','GKU',1),(3049,199,'Janub Darfur','JDA',1),(3050,199,'Janub Kurdufan','JKU',1),(3051,199,'Junqali','JQL',1),(3052,199,'Kassala','KSL',1),(3053,199,'Nahr an Nil','NNL',1),(3054,199,'Shamal Bahr al Ghazal','SBG',1),(3055,199,'Shamal Darfur','SDA',1),(3056,199,'Shamal Kurdufan','SKU',1),(3057,199,'Sharq al Istiwa\'iyah','SIS',1),(3058,199,'Sinnar','SNR',1),(3059,199,'Warab','WRB',1),(3060,200,'Brokopondo','BR',1),(3061,200,'Commewijne','CM',1),(3062,200,'Coronie','CR',1),(3063,200,'Marowijne','MA',1),(3064,200,'Nickerie','NI',1),(3065,200,'Para','PA',1),(3066,200,'Paramaribo','PM',1),(3067,200,'Saramacca','SA',1),(3068,200,'Sipaliwini','SI',1),(3069,200,'Wanica','WA',1),(3070,202,'Hhohho','H',1),(3071,202,'Lubombo','L',1),(3072,202,'Manzini','M',1),(3073,202,'Shishelweni','S',1),(3074,203,'Blekinge','K',1),(3075,203,'Dalarna','W',1),(3076,203,'G&auml;vleborg','X',1),(3077,203,'Gotland','I',1),(3078,203,'Halland','N',1),(3079,203,'J&auml;mtland','Z',1),(3080,203,'J&ouml;nk&ouml;ping','F',1),(3081,203,'Kalmar','H',1),(3082,203,'Kronoberg','G',1),(3083,203,'Norrbotten','BD',1),(3084,203,'&Ouml;rebro','T',1),(3085,203,'&Ouml;sterg&ouml;tland','E',1),(3086,203,'Sk&aring;ne','M',1),(3087,203,'S&ouml;dermanland','D',1),(3088,203,'Stockholm','AB',1),(3089,203,'Uppsala','C',1),(3090,203,'V&auml;rmland','S',1),(3091,203,'V&auml;sterbotten','AC',1),(3092,203,'V&auml;sternorrland','Y',1),(3093,203,'V&auml;stmanland','U',1),(3094,203,'V&auml;stra G&ouml;taland','O',1),(3095,204,'Aargau','AG',1),(3096,204,'Appenzell Ausserrhoden','AR',1),(3097,204,'Appenzell Innerrhoden','AI',1),(3098,204,'Basel-Stadt','BS',1),(3099,204,'Basel-Landschaft','BL',1),(3100,204,'Bern','BE',1),(3101,204,'Fribourg','FR',1),(3102,204,'Gen&egrave;ve','GE',1),(3103,204,'Glarus','GL',1),(3104,204,'Graub&uuml;nden','GR',1),(3105,204,'Jura','JU',1),(3106,204,'Luzern','LU',1),(3107,204,'Neuch&acirc;tel','NE',1),(3108,204,'Nidwald','NW',1),(3109,204,'Obwald','OW',1),(3110,204,'St. Gallen','SG',1),(3111,204,'Schaffhausen','SH',1),(3112,204,'Schwyz','SZ',1),(3113,204,'Solothurn','SO',1),(3114,204,'Thurgau','TG',1),(3115,204,'Ticino','TI',1),(3116,204,'Uri','UR',1),(3117,204,'Valais','VS',1),(3118,204,'Vaud','VD',1),(3119,204,'Zug','ZG',1),(3120,204,'Z&uuml;rich','ZH',1),(3121,205,'Al Hasakah','HA',1),(3122,205,'Al Ladhiqiyah','LA',1),(3123,205,'Al Qunaytirah','QU',1),(3124,205,'Ar Raqqah','RQ',1),(3125,205,'As Suwayda','SU',1),(3126,205,'Dara','DA',1),(3127,205,'Dayr az Zawr','DZ',1),(3128,205,'Dimashq','DI',1),(3129,205,'Halab','HL',1),(3130,205,'Hamah','HM',1),(3131,205,'Hims','HI',1),(3132,205,'Idlib','ID',1),(3133,205,'Rif Dimashq','RD',1),(3134,205,'Tartus','TA',1),(3135,206,'Chang-hua','CH',1),(3136,206,'Chia-i','CI',1),(3137,206,'Hsin-chu','HS',1),(3138,206,'Hua-lien','HL',1),(3139,206,'I-lan','IL',1),(3140,206,'Kao-hsiung county','KH',1),(3141,206,'Kin-men','KM',1),(3142,206,'Lien-chiang','LC',1),(3143,206,'Miao-li','ML',1),(3144,206,'Nan-t\'ou','NT',1),(3145,206,'P\'eng-hu','PH',1),(3146,206,'P\'ing-tung','PT',1),(3147,206,'T\'ai-chung','TG',1),(3148,206,'T\'ai-nan','TA',1),(3149,206,'T\'ai-pei county','TP',1),(3150,206,'T\'ai-tung','TT',1),(3151,206,'T\'ao-yuan','TY',1),(3152,206,'Yun-lin','YL',1),(3153,206,'Chia-i city','CC',1),(3154,206,'Chi-lung','CL',1),(3155,206,'Hsin-chu','HC',1),(3156,206,'T\'ai-chung','TH',1),(3157,206,'T\'ai-nan','TN',1),(3158,206,'Kao-hsiung city','KC',1),(3159,206,'T\'ai-pei city','TC',1),(3160,207,'Gorno-Badakhstan','GB',1),(3161,207,'Khatlon','KT',1),(3162,207,'Sughd','SU',1),(3163,208,'Arusha','AR',1),(3164,208,'Dar es Salaam','DS',1),(3165,208,'Dodoma','DO',1),(3166,208,'Iringa','IR',1),(3167,208,'Kagera','KA',1),(3168,208,'Kigoma','KI',1),(3169,208,'Kilimanjaro','KJ',1),(3170,208,'Lindi','LN',1),(3171,208,'Manyara','MY',1),(3172,208,'Mara','MR',1),(3173,208,'Mbeya','MB',1),(3174,208,'Morogoro','MO',1),(3175,208,'Mtwara','MT',1),(3176,208,'Mwanza','MW',1),(3177,208,'Pemba North','PN',1),(3178,208,'Pemba South','PS',1),(3179,208,'Pwani','PW',1),(3180,208,'Rukwa','RK',1),(3181,208,'Ruvuma','RV',1),(3182,208,'Shinyanga','SH',1),(3183,208,'Singida','SI',1),(3184,208,'Tabora','TB',1),(3185,208,'Tanga','TN',1),(3186,208,'Zanzibar Central/South','ZC',1),(3187,208,'Zanzibar North','ZN',1),(3188,208,'Zanzibar Urban/West','ZU',1),(3189,209,'Amnat Charoen','Amnat Charoen',1),(3190,209,'Ang Thong','Ang Thong',1),(3191,209,'Ayutthaya','Ayutthaya',1),(3192,209,'Bangkok','Bangkok',1),(3193,209,'Buriram','Buriram',1),(3194,209,'Chachoengsao','Chachoengsao',1),(3195,209,'Chai Nat','Chai Nat',1),(3196,209,'Chaiyaphum','Chaiyaphum',1),(3197,209,'Chanthaburi','Chanthaburi',1),(3198,209,'Chiang Mai','Chiang Mai',1),(3199,209,'Chiang Rai','Chiang Rai',1),(3200,209,'Chon Buri','Chon Buri',1),(3201,209,'Chumphon','Chumphon',1),(3202,209,'Kalasin','Kalasin',1),(3203,209,'Kamphaeng Phet','Kamphaeng Phet',1),(3204,209,'Kanchanaburi','Kanchanaburi',1),(3205,209,'Khon Kaen','Khon Kaen',1),(3206,209,'Krabi','Krabi',1),(3207,209,'Lampang','Lampang',1),(3208,209,'Lamphun','Lamphun',1),(3209,209,'Loei','Loei',1),(3210,209,'Lop Buri','Lop Buri',1),(3211,209,'Mae Hong Son','Mae Hong Son',1),(3212,209,'Maha Sarakham','Maha Sarakham',1),(3213,209,'Mukdahan','Mukdahan',1),(3214,209,'Nakhon Nayok','Nakhon Nayok',1),(3215,209,'Nakhon Pathom','Nakhon Pathom',1),(3216,209,'Nakhon Phanom','Nakhon Phanom',1),(3217,209,'Nakhon Ratchasima','Nakhon Ratchasima',1),(3218,209,'Nakhon Sawan','Nakhon Sawan',1),(3219,209,'Nakhon Si Thammarat','Nakhon Si Thammarat',1),(3220,209,'Nan','Nan',1),(3221,209,'Narathiwat','Narathiwat',1),(3222,209,'Nong Bua Lamphu','Nong Bua Lamphu',1),(3223,209,'Nong Khai','Nong Khai',1),(3224,209,'Nonthaburi','Nonthaburi',1),(3225,209,'Pathum Thani','Pathum Thani',1),(3226,209,'Pattani','Pattani',1),(3227,209,'Phangnga','Phangnga',1),(3228,209,'Phatthalung','Phatthalung',1),(3229,209,'Phayao','Phayao',1),(3230,209,'Phetchabun','Phetchabun',1),(3231,209,'Phetchaburi','Phetchaburi',1),(3232,209,'Phichit','Phichit',1),(3233,209,'Phitsanulok','Phitsanulok',1),(3234,209,'Phrae','Phrae',1),(3235,209,'Phuket','Phuket',1),(3236,209,'Prachin Buri','Prachin Buri',1),(3237,209,'Prachuap Khiri Khan','Prachuap Khiri Khan',1),(3238,209,'Ranong','Ranong',1),(3239,209,'Ratchaburi','Ratchaburi',1),(3240,209,'Rayong','Rayong',1),(3241,209,'Roi Et','Roi Et',1),(3242,209,'Sa Kaeo','Sa Kaeo',1),(3243,209,'Sakon Nakhon','Sakon Nakhon',1),(3244,209,'Samut Prakan','Samut Prakan',1),(3245,209,'Samut Sakhon','Samut Sakhon',1),(3246,209,'Samut Songkhram','Samut Songkhram',1),(3247,209,'Sara Buri','Sara Buri',1),(3248,209,'Satun','Satun',1),(3249,209,'Sing Buri','Sing Buri',1),(3250,209,'Sisaket','Sisaket',1),(3251,209,'Songkhla','Songkhla',1),(3252,209,'Sukhothai','Sukhothai',1),(3253,209,'Suphan Buri','Suphan Buri',1),(3254,209,'Surat Thani','Surat Thani',1),(3255,209,'Surin','Surin',1),(3256,209,'Tak','Tak',1),(3257,209,'Trang','Trang',1),(3258,209,'Trat','Trat',1),(3259,209,'Ubon Ratchathani','Ubon Ratchathani',1),(3260,209,'Udon Thani','Udon Thani',1),(3261,209,'Uthai Thani','Uthai Thani',1),(3262,209,'Uttaradit','Uttaradit',1),(3263,209,'Yala','Yala',1),(3264,209,'Yasothon','Yasothon',1),(3265,210,'Kara','K',1),(3266,210,'Plateaux','P',1),(3267,210,'Savanes','S',1),(3268,210,'Centrale','C',1),(3269,210,'Maritime','M',1),(3270,211,'Atafu','A',1),(3271,211,'Fakaofo','F',1),(3272,211,'Nukunonu','N',1),(3273,212,'Ha\'apai','H',1),(3274,212,'Tongatapu','T',1),(3275,212,'Vava\'u','V',1),(3276,213,'Couva/Tabaquite/Talparo','CT',1),(3277,213,'Diego Martin','DM',1),(3278,213,'Mayaro/Rio Claro','MR',1),(3279,213,'Penal/Debe','PD',1),(3280,213,'Princes Town','PT',1),(3281,213,'Sangre Grande','SG',1),(3282,213,'San Juan/Laventille','SL',1),(3283,213,'Siparia','SI',1),(3284,213,'Tunapuna/Piarco','TP',1),(3285,213,'Port of Spain','PS',1),(3286,213,'San Fernando','SF',1),(3287,213,'Arima','AR',1),(3288,213,'Point Fortin','PF',1),(3289,213,'Chaguanas','CH',1),(3290,213,'Tobago','TO',1),(3291,214,'Ariana','AR',1),(3292,214,'Beja','BJ',1),(3293,214,'Ben Arous','BA',1),(3294,214,'Bizerte','BI',1),(3295,214,'Gabes','GB',1),(3296,214,'Gafsa','GF',1),(3297,214,'Jendouba','JE',1),(3298,214,'Kairouan','KR',1),(3299,214,'Kasserine','KS',1),(3300,214,'Kebili','KB',1),(3301,214,'Kef','KF',1),(3302,214,'Mahdia','MH',1),(3303,214,'Manouba','MN',1),(3304,214,'Medenine','ME',1),(3305,214,'Monastir','MO',1),(3306,214,'Nabeul','NA',1),(3307,214,'Sfax','SF',1),(3308,214,'Sidi','SD',1),(3309,214,'Siliana','SL',1),(3310,214,'Sousse','SO',1),(3311,214,'Tataouine','TA',1),(3312,214,'Tozeur','TO',1),(3313,214,'Tunis','TU',1),(3314,214,'Zaghouan','ZA',1),(3315,215,'Adana','ADA',1),(3316,215,'Adıyaman','ADI',1),(3317,215,'Afyonkarahisar','AFY',1),(3318,215,'Ağrı','AGR',1),(3319,215,'Aksaray','AKS',1),(3320,215,'Amasya','AMA',1),(3321,215,'Ankara','ANK',1),(3322,215,'Antalya','ANT',1),(3323,215,'Ardahan','ARD',1),(3324,215,'Artvin','ART',1),(3325,215,'Aydın','AYI',1),(3326,215,'Balıkesir','BAL',1),(3327,215,'Bartın','BAR',1),(3328,215,'Batman','BAT',1),(3329,215,'Bayburt','BAY',1),(3330,215,'Bilecik','BIL',1),(3331,215,'Bingöl','BIN',1),(3332,215,'Bitlis','BIT',1),(3333,215,'Bolu','BOL',1),(3334,215,'Burdur','BRD',1),(3335,215,'Bursa','BRS',1),(3336,215,'Çanakkale','CKL',1),(3337,215,'Çankırı','CKR',1),(3338,215,'Çorum','COR',1),(3339,215,'Denizli','DEN',1),(3340,215,'Diyarbakır','DIY',1),(3341,215,'Düzce','DUZ',1),(3342,215,'Edirne','EDI',1),(3343,215,'Elazığ','ELA',1),(3344,215,'Erzincan','EZC',1),(3345,215,'Erzurum','EZR',1),(3346,215,'Eskişehir','ESK',1),(3347,215,'Gaziantep','GAZ',1),(3348,215,'Giresun','GIR',1),(3349,215,'Gümüşhane','GMS',1),(3350,215,'Hakkari','HKR',1),(3351,215,'Hatay','HTY',1),(3352,215,'Iğdır','IGD',1),(3353,215,'Isparta','ISP',1),(3354,215,'İstanbul','IST',1),(3355,215,'İzmir','IZM',1),(3356,215,'Kahramanmaraş','KAH',1),(3357,215,'Karabük','KRB',1),(3358,215,'Karaman','KRM',1),(3359,215,'Kars','KRS',1),(3360,215,'Kastamonu','KAS',1),(3361,215,'Kayseri','KAY',1),(3362,215,'Kilis','KLS',1),(3363,215,'Kırıkkale','KRK',1),(3364,215,'Kırklareli','KLR',1),(3365,215,'Kırşehir','KRH',1),(3366,215,'Kocaeli','KOC',1),(3367,215,'Konya','KON',1),(3368,215,'Kütahya','KUT',1),(3369,215,'Malatya','MAL',1),(3370,215,'Manisa','MAN',1),(3371,215,'Mardin','MAR',1),(3372,215,'Mersin','MER',1),(3373,215,'Muğla','MUG',1),(3374,215,'Muş','MUS',1),(3375,215,'Nevşehir','NEV',1),(3376,215,'Niğde','NIG',1),(3377,215,'Ordu','ORD',1),(3378,215,'Osmaniye','OSM',1),(3379,215,'Rize','RIZ',1),(3380,215,'Sakarya','SAK',1),(3381,215,'Samsun','SAM',1),(3382,215,'Şanlıurfa','SAN',1),(3383,215,'Siirt','SII',1),(3384,215,'Sinop','SIN',1),(3385,215,'Şırnak','SIR',1),(3386,215,'Sivas','SIV',1),(3387,215,'Tekirdağ','TEL',1),(3388,215,'Tokat','TOK',1),(3389,215,'Trabzon','TRA',1),(3390,215,'Tunceli','TUN',1),(3391,215,'Uşak','USK',1),(3392,215,'Van','VAN',1),(3393,215,'Yalova','YAL',1),(3394,215,'Yozgat','YOZ',1),(3395,215,'Zonguldak','ZON',1),(3396,216,'Ahal Welayaty','A',1),(3397,216,'Balkan Welayaty','B',1),(3398,216,'Dashhowuz Welayaty','D',1),(3399,216,'Lebap Welayaty','L',1),(3400,216,'Mary Welayaty','M',1),(3401,217,'Ambergris Cays','AC',1),(3402,217,'Dellis Cay','DC',1),(3403,217,'French Cay','FC',1),(3404,217,'Little Water Cay','LW',1),(3405,217,'Parrot Cay','RC',1),(3406,217,'Pine Cay','PN',1),(3407,217,'Salt Cay','SL',1),(3408,217,'Grand Turk','GT',1),(3409,217,'South Caicos','SC',1),(3410,217,'East Caicos','EC',1),(3411,217,'Middle Caicos','MC',1),(3412,217,'North Caicos','NC',1),(3413,217,'Providenciales','PR',1),(3414,217,'West Caicos','WC',1),(3415,218,'Nanumanga','NMG',1),(3416,218,'Niulakita','NLK',1),(3417,218,'Niutao','NTO',1),(3418,218,'Funafuti','FUN',1),(3419,218,'Nanumea','NME',1),(3420,218,'Nui','NUI',1),(3421,218,'Nukufetau','NFT',1),(3422,218,'Nukulaelae','NLL',1),(3423,218,'Vaitupu','VAI',1),(3424,219,'Kalangala','KAL',1),(3425,219,'Kampala','KMP',1),(3426,219,'Kayunga','KAY',1),(3427,219,'Kiboga','KIB',1),(3428,219,'Luwero','LUW',1),(3429,219,'Masaka','MAS',1),(3430,219,'Mpigi','MPI',1),(3431,219,'Mubende','MUB',1),(3432,219,'Mukono','MUK',1),(3433,219,'Nakasongola','NKS',1),(3434,219,'Rakai','RAK',1),(3435,219,'Sembabule','SEM',1),(3436,219,'Wakiso','WAK',1),(3437,219,'Bugiri','BUG',1),(3438,219,'Busia','BUS',1),(3439,219,'Iganga','IGA',1),(3440,219,'Jinja','JIN',1),(3441,219,'Kaberamaido','KAB',1),(3442,219,'Kamuli','KML',1),(3443,219,'Kapchorwa','KPC',1),(3444,219,'Katakwi','KTK',1),(3445,219,'Kumi','KUM',1),(3446,219,'Mayuge','MAY',1),(3447,219,'Mbale','MBA',1),(3448,219,'Pallisa','PAL',1),(3449,219,'Sironko','SIR',1),(3450,219,'Soroti','SOR',1),(3451,219,'Tororo','TOR',1),(3452,219,'Adjumani','ADJ',1),(3453,219,'Apac','APC',1),(3454,219,'Arua','ARU',1),(3455,219,'Gulu','GUL',1),(3456,219,'Kitgum','KIT',1),(3457,219,'Kotido','KOT',1),(3458,219,'Lira','LIR',1),(3459,219,'Moroto','MRT',1),(3460,219,'Moyo','MOY',1),(3461,219,'Nakapiripirit','NAK',1),(3462,219,'Nebbi','NEB',1),(3463,219,'Pader','PAD',1),(3464,219,'Yumbe','YUM',1),(3465,219,'Bundibugyo','BUN',1),(3466,219,'Bushenyi','BSH',1),(3467,219,'Hoima','HOI',1),(3468,219,'Kabale','KBL',1),(3469,219,'Kabarole','KAR',1),(3470,219,'Kamwenge','KAM',1),(3471,219,'Kanungu','KAN',1),(3472,219,'Kasese','KAS',1),(3473,219,'Kibaale','KBA',1),(3474,219,'Kisoro','KIS',1),(3475,219,'Kyenjojo','KYE',1),(3476,219,'Masindi','MSN',1),(3477,219,'Mbarara','MBR',1),(3478,219,'Ntungamo','NTU',1),(3479,219,'Rukungiri','RUK',1),(3480,220,'Cherkas\'ka Oblast\'','71',1),(3481,220,'Chernihivs\'ka Oblast\'','74',1),(3482,220,'Chernivets\'ka Oblast\'','77',1),(3483,220,'Crimea','43',1),(3484,220,'Dnipropetrovs\'ka Oblast\'','12',1),(3485,220,'Donets\'ka Oblast\'','14',1),(3486,220,'Ivano-Frankivs\'ka Oblast\'','26',1),(3487,220,'Khersons\'ka Oblast\'','65',1),(3488,220,'Khmel\'nyts\'ka Oblast\'','68',1),(3489,220,'Kirovohrads\'ka Oblast\'','35',1),(3490,220,'Kyiv','30',1),(3491,220,'Kyivs\'ka Oblast\'','32',1),(3492,220,'Luhans\'ka Oblast\'','09',1),(3493,220,'L\'vivs\'ka Oblast\'','46',1),(3494,220,'Mykolayivs\'ka Oblast\'','48',1),(3495,220,'Odes\'ka Oblast\'','51',1),(3496,220,'Poltavs\'ka Oblast\'','53',1),(3497,220,'Rivnens\'ka Oblast\'','56',1),(3498,220,'Sevastopol\'','40',1),(3499,220,'Sums\'ka Oblast\'','59',1),(3500,220,'Ternopil\'s\'ka Oblast\'','61',1),(3501,220,'Vinnyts\'ka Oblast\'','05',1),(3502,220,'Volyns\'ka Oblast\'','07',1),(3503,220,'Zakarpats\'ka Oblast\'','21',1),(3504,220,'Zaporiz\'ka Oblast\'','23',1),(3505,220,'Zhytomyrs\'ka oblast\'','18',1),(3506,221,'Abu Dhabi','ADH',1),(3507,221,'\'Ajman','AJ',1),(3508,221,'Al Fujayrah','FU',1),(3509,221,'Ash Shariqah','SH',1),(3510,221,'Dubai','DU',1),(3511,221,'R\'as al Khaymah','RK',1),(3512,221,'Umm al Qaywayn','UQ',1),(3513,222,'Aberdeen','ABN',1),(3514,222,'Aberdeenshire','ABNS',1),(3515,222,'Anglesey','ANG',1),(3516,222,'Angus','AGS',1),(3517,222,'Argyll and Bute','ARY',1),(3518,222,'Bedfordshire','BEDS',1),(3519,222,'Berkshire','BERKS',1),(3520,222,'Blaenau Gwent','BLA',1),(3521,222,'Bridgend','BRI',1),(3522,222,'Bristol','BSTL',1),(3523,222,'Buckinghamshire','BUCKS',1),(3524,222,'Caerphilly','CAE',1),(3525,222,'Cambridgeshire','CAMBS',1),(3526,222,'Cardiff','CDF',1),(3527,222,'Carmarthenshire','CARM',1),(3528,222,'Ceredigion','CDGN',1),(3529,222,'Cheshire','CHES',1),(3530,222,'Clackmannanshire','CLACK',1),(3531,222,'Conwy','CON',1),(3532,222,'Cornwall','CORN',1),(3533,222,'Denbighshire','DNBG',1),(3534,222,'Derbyshire','DERBY',1),(3535,222,'Devon','DVN',1),(3536,222,'Dorset','DOR',1),(3537,222,'Dumfries and Galloway','DGL',1),(3538,222,'Dundee','DUND',1),(3539,222,'Durham','DHM',1),(3540,222,'East Ayrshire','ARYE',1),(3541,222,'East Dunbartonshire','DUNBE',1),(3542,222,'East Lothian','LOTE',1),(3543,222,'East Renfrewshire','RENE',1),(3544,222,'East Riding of Yorkshire','ERYS',1),(3545,222,'East Sussex','SXE',1),(3546,222,'Edinburgh','EDIN',1),(3547,222,'Essex','ESX',1),(3548,222,'Falkirk','FALK',1),(3549,222,'Fife','FFE',1),(3550,222,'Flintshire','FLINT',1),(3551,222,'Glasgow','GLAS',1),(3552,222,'Gloucestershire','GLOS',1),(3553,222,'Greater London','LDN',1),(3554,222,'Greater Manchester','MCH',1),(3555,222,'Gwynedd','GDD',1),(3556,222,'Hampshire','HANTS',1),(3557,222,'Herefordshire','HWR',1),(3558,222,'Hertfordshire','HERTS',1),(3559,222,'Highlands','HLD',1),(3560,222,'Inverclyde','IVER',1),(3561,222,'Isle of Wight','IOW',1),(3562,222,'Kent','KNT',1),(3563,222,'Lancashire','LANCS',1),(3564,222,'Leicestershire','LEICS',1),(3565,222,'Lincolnshire','LINCS',1),(3566,222,'Merseyside','MSY',1),(3567,222,'Merthyr Tydfil','MERT',1),(3568,222,'Midlothian','MLOT',1),(3569,222,'Monmouthshire','MMOUTH',1),(3570,222,'Moray','MORAY',1),(3571,222,'Neath Port Talbot','NPRTAL',1),(3572,222,'Newport','NEWPT',1),(3573,222,'Norfolk','NOR',1),(3574,222,'North Ayrshire','ARYN',1),(3575,222,'North Lanarkshire','LANN',1),(3576,222,'North Yorkshire','YSN',1),(3577,222,'Northamptonshire','NHM',1),(3578,222,'Northumberland','NLD',1),(3579,222,'Nottinghamshire','NOT',1),(3580,222,'Orkney Islands','ORK',1),(3581,222,'Oxfordshire','OFE',1),(3582,222,'Pembrokeshire','PEM',1),(3583,222,'Perth and Kinross','PERTH',1),(3584,222,'Powys','PWS',1),(3585,222,'Renfrewshire','REN',1),(3586,222,'Rhondda Cynon Taff','RHON',1),(3587,222,'Rutland','RUT',1),(3588,222,'Scottish Borders','BOR',1),(3589,222,'Shetland Islands','SHET',1),(3590,222,'Shropshire','SPE',1),(3591,222,'Somerset','SOM',1),(3592,222,'South Ayrshire','ARYS',1),(3593,222,'South Lanarkshire','LANS',1),(3594,222,'South Yorkshire','YSS',1),(3595,222,'Staffordshire','SFD',1),(3596,222,'Stirling','STIR',1),(3597,222,'Suffolk','SFK',1),(3598,222,'Surrey','SRY',1),(3599,222,'Swansea','SWAN',1),(3600,222,'Torfaen','TORF',1),(3601,222,'Tyne and Wear','TWR',1),(3602,222,'Vale of Glamorgan','VGLAM',1),(3603,222,'Warwickshire','WARKS',1),(3604,222,'West Dunbartonshire','WDUN',1),(3605,222,'West Lothian','WLOT',1),(3606,222,'West Midlands','WMD',1),(3607,222,'West Sussex','SXW',1),(3608,222,'West Yorkshire','YSW',1),(3609,222,'Western Isles','WIL',1),(3610,222,'Wiltshire','WLT',1),(3611,222,'Worcestershire','WORCS',1),(3612,222,'Wrexham','WRX',1),(3613,223,'Alabama','AL',1),(3614,223,'Alaska','AK',1),(3615,223,'American Samoa','AS',1),(3616,223,'Arizona','AZ',1),(3617,223,'Arkansas','AR',1),(3618,223,'Armed Forces Africa','AF',1),(3619,223,'Armed Forces Americas','AA',1),(3620,223,'Armed Forces Canada','AC',1),(3621,223,'Armed Forces Europe','AE',1),(3622,223,'Armed Forces Middle East','AM',1),(3623,223,'Armed Forces Pacific','AP',1),(3624,223,'California','CA',1),(3625,223,'Colorado','CO',1),(3626,223,'Connecticut','CT',1),(3627,223,'Delaware','DE',1),(3628,223,'District of Columbia','DC',1),(3629,223,'Federated States Of Micronesia','FM',1),(3630,223,'Florida','FL',1),(3631,223,'Georgia','GA',1),(3632,223,'Guam','GU',1),(3633,223,'Hawaii','HI',1),(3634,223,'Idaho','ID',1),(3635,223,'Illinois','IL',1),(3636,223,'Indiana','IN',1),(3637,223,'Iowa','IA',1),(3638,223,'Kansas','KS',1),(3639,223,'Kentucky','KY',1),(3640,223,'Louisiana','LA',1),(3641,223,'Maine','ME',1),(3642,223,'Marshall Islands','MH',1),(3643,223,'Maryland','MD',1),(3644,223,'Massachusetts','MA',1),(3645,223,'Michigan','MI',1),(3646,223,'Minnesota','MN',1),(3647,223,'Mississippi','MS',1),(3648,223,'Missouri','MO',1),(3649,223,'Montana','MT',1),(3650,223,'Nebraska','NE',1),(3651,223,'Nevada','NV',1),(3652,223,'New Hampshire','NH',1),(3653,223,'New Jersey','NJ',1),(3654,223,'New Mexico','NM',1),(3655,223,'New York','NY',1),(3656,223,'North Carolina','NC',1),(3657,223,'North Dakota','ND',1),(3658,223,'Northern Mariana Islands','MP',1),(3659,223,'Ohio','OH',1),(3660,223,'Oklahoma','OK',1),(3661,223,'Oregon','OR',1),(3662,223,'Palau','PW',1),(3663,223,'Pennsylvania','PA',1),(3664,223,'Puerto Rico','PR',1),(3665,223,'Rhode Island','RI',1),(3666,223,'South Carolina','SC',1),(3667,223,'South Dakota','SD',1),(3668,223,'Tennessee','TN',1),(3669,223,'Texas','TX',1),(3670,223,'Utah','UT',1),(3671,223,'Vermont','VT',1),(3672,223,'Virgin Islands','VI',1),(3673,223,'Virginia','VA',1),(3674,223,'Washington','WA',1),(3675,223,'West Virginia','WV',1),(3676,223,'Wisconsin','WI',1),(3677,223,'Wyoming','WY',1),(3678,224,'Baker Island','BI',1),(3679,224,'Howland Island','HI',1),(3680,224,'Jarvis Island','JI',1),(3681,224,'Johnston Atoll','JA',1),(3682,224,'Kingman Reef','KR',1),(3683,224,'Midway Atoll','MA',1),(3684,224,'Navassa Island','NI',1),(3685,224,'Palmyra Atoll','PA',1),(3686,224,'Wake Island','WI',1),(3687,225,'Artigas','AR',1),(3688,225,'Canelones','CA',1),(3689,225,'Cerro Largo','CL',1),(3690,225,'Colonia','CO',1),(3691,225,'Durazno','DU',1),(3692,225,'Flores','FS',1),(3693,225,'Florida','FA',1),(3694,225,'Lavalleja','LA',1),(3695,225,'Maldonado','MA',1),(3696,225,'Montevideo','MO',1),(3697,225,'Paysandu','PA',1),(3698,225,'Rio Negro','RN',1),(3699,225,'Rivera','RV',1),(3700,225,'Rocha','RO',1),(3701,225,'Salto','SL',1),(3702,225,'San Jose','SJ',1),(3703,225,'Soriano','SO',1),(3704,225,'Tacuarembo','TA',1),(3705,225,'Treinta y Tres','TT',1),(3706,226,'Andijon','AN',1),(3707,226,'Buxoro','BU',1),(3708,226,'Farg\'ona','FA',1),(3709,226,'Jizzax','JI',1),(3710,226,'Namangan','NG',1),(3711,226,'Navoiy','NW',1),(3712,226,'Qashqadaryo','QA',1),(3713,226,'Qoraqalpog\'iston Republikasi','QR',1),(3714,226,'Samarqand','SA',1),(3715,226,'Sirdaryo','SI',1),(3716,226,'Surxondaryo','SU',1),(3717,226,'Toshkent City','TK',1),(3718,226,'Toshkent Region','TO',1),(3719,226,'Xorazm','XO',1),(3720,227,'Malampa','MA',1),(3721,227,'Penama','PE',1),(3722,227,'Sanma','SA',1),(3723,227,'Shefa','SH',1),(3724,227,'Tafea','TA',1),(3725,227,'Torba','TO',1),(3726,229,'Amazonas','AM',1),(3727,229,'Anzoategui','AN',1),(3728,229,'Apure','AP',1),(3729,229,'Aragua','AR',1),(3730,229,'Barinas','BA',1),(3731,229,'Bolivar','BO',1),(3732,229,'Carabobo','CA',1),(3733,229,'Cojedes','CO',1),(3734,229,'Delta Amacuro','DA',1),(3735,229,'Dependencias Federales','DF',1),(3736,229,'Distrito Federal','DI',1),(3737,229,'Falcon','FA',1),(3738,229,'Guarico','GU',1),(3739,229,'Lara','LA',1),(3740,229,'Merida','ME',1),(3741,229,'Miranda','MI',1),(3742,229,'Monagas','MO',1),(3743,229,'Nueva Esparta','NE',1),(3744,229,'Portuguesa','PO',1),(3745,229,'Sucre','SU',1),(3746,229,'Tachira','TA',1),(3747,229,'Trujillo','TR',1),(3748,229,'Vargas','VA',1),(3749,229,'Yaracuy','YA',1),(3750,229,'Zulia','ZU',1),(3751,230,'An Giang','AG',1),(3752,230,'Bac Giang','BG',1),(3753,230,'Bac Kan','BK',1),(3754,230,'Bac Lieu','BL',1),(3755,230,'Bac Ninh','BC',1),(3756,230,'Ba Ria-Vung Tau','BR',1),(3757,230,'Ben Tre','BN',1),(3758,230,'Binh Dinh','BH',1),(3759,230,'Binh Duong','BU',1),(3760,230,'Binh Phuoc','BP',1),(3761,230,'Binh Thuan','BT',1),(3762,230,'Ca Mau','CM',1),(3763,230,'Can Tho','CT',1),(3764,230,'Cao Bang','CB',1),(3765,230,'Dak Lak','DL',1),(3766,230,'Dak Nong','DG',1),(3767,230,'Da Nang','DN',1),(3768,230,'Dien Bien','DB',1),(3769,230,'Dong Nai','DI',1),(3770,230,'Dong Thap','DT',1),(3771,230,'Gia Lai','GL',1),(3772,230,'Ha Giang','HG',1),(3773,230,'Hai Duong','HD',1),(3774,230,'Hai Phong','HP',1),(3775,230,'Ha Nam','HM',1),(3776,230,'Ha Noi','HI',1),(3777,230,'Ha Tay','HT',1),(3778,230,'Ha Tinh','HH',1),(3779,230,'Hoa Binh','HB',1),(3780,230,'Ho Chi Minh City','HC',1),(3781,230,'Hau Giang','HU',1),(3782,230,'Hung Yen','HY',1),(3783,232,'Saint Croix','C',1),(3784,232,'Saint John','J',1),(3785,232,'Saint Thomas','T',1),(3786,233,'Alo','A',1),(3787,233,'Sigave','S',1),(3788,233,'Wallis','W',1),(3789,235,'Abyan','AB',1),(3790,235,'Adan','AD',1),(3791,235,'Amran','AM',1),(3792,235,'Al Bayda','BA',1),(3793,235,'Ad Dali','DA',1),(3794,235,'Dhamar','DH',1),(3795,235,'Hadramawt','HD',1),(3796,235,'Hajjah','HJ',1),(3797,235,'Al Hudaydah','HU',1),(3798,235,'Ibb','IB',1),(3799,235,'Al Jawf','JA',1),(3800,235,'Lahij','LA',1),(3801,235,'Ma\'rib','MA',1),(3802,235,'Al Mahrah','MR',1),(3803,235,'Al Mahwit','MW',1),(3804,235,'Sa\'dah','SD',1),(3805,235,'San\'a','SN',1),(3806,235,'Shabwah','SH',1),(3807,235,'Ta\'izz','TA',1),(3812,237,'Bas-Congo','BC',1),(3813,237,'Bandundu','BN',1),(3814,237,'Equateur','EQ',1),(3815,237,'Katanga','KA',1),(3816,237,'Kasai-Oriental','KE',1),(3817,237,'Kinshasa','KN',1),(3818,237,'Kasai-Occidental','KW',1),(3819,237,'Maniema','MA',1),(3820,237,'Nord-Kivu','NK',1),(3821,237,'Orientale','OR',1),(3822,237,'Sud-Kivu','SK',1),(3823,238,'Central','CE',1),(3824,238,'Copperbelt','CB',1),(3825,238,'Eastern','EA',1),(3826,238,'Luapula','LP',1),(3827,238,'Lusaka','LK',1),(3828,238,'Northern','NO',1),(3829,238,'North-Western','NW',1),(3830,238,'Southern','SO',1),(3831,238,'Western','WE',1),(3832,239,'Bulawayo','BU',1),(3833,239,'Harare','HA',1),(3834,239,'Manicaland','ML',1),(3835,239,'Mashonaland Central','MC',1),(3836,239,'Mashonaland East','ME',1),(3837,239,'Mashonaland West','MW',1),(3838,239,'Masvingo','MV',1),(3839,239,'Matabeleland North','MN',1),(3840,239,'Matabeleland South','MS',1),(3841,239,'Midlands','MD',1),(3861,105,'Campobasso','CB',1),(3862,105,'Carbonia-Iglesias','CI',1),(3863,105,'Caserta','CE',1),(3864,105,'Catania','CT',1),(3865,105,'Catanzaro','CZ',1),(3866,105,'Chieti','CH',1),(3867,105,'Como','CO',1),(3868,105,'Cosenza','CS',1),(3869,105,'Cremona','CR',1),(3870,105,'Crotone','KR',1),(3871,105,'Cuneo','CN',1),(3872,105,'Enna','EN',1),(3873,105,'Ferrara','FE',1),(3874,105,'Firenze','FI',1),(3875,105,'Foggia','FG',1),(3876,105,'Forli-Cesena','FC',1),(3877,105,'Frosinone','FR',1),(3878,105,'Genova','GE',1),(3879,105,'Gorizia','GO',1),(3880,105,'Grosseto','GR',1),(3881,105,'Imperia','IM',1),(3882,105,'Isernia','IS',1),(3883,105,'L&#39;Aquila','AQ',1),(3884,105,'La Spezia','SP',1),(3885,105,'Latina','LT',1),(3886,105,'Lecce','LE',1),(3887,105,'Lecco','LC',1),(3888,105,'Livorno','LI',1),(3889,105,'Lodi','LO',1),(3890,105,'Lucca','LU',1),(3891,105,'Macerata','MC',1),(3892,105,'Mantova','MN',1),(3893,105,'Massa-Carrara','MS',1),(3894,105,'Matera','MT',1),(3895,105,'Medio Campidano','VS',1),(3896,105,'Messina','ME',1),(3897,105,'Milano','MI',1),(3898,105,'Modena','MO',1),(3899,105,'Napoli','NA',1),(3900,105,'Novara','NO',1),(3901,105,'Nuoro','NU',1),(3902,105,'Ogliastra','OG',1),(3903,105,'Olbia-Tempio','OT',1),(3904,105,'Oristano','OR',1),(3905,105,'Padova','PD',1),(3906,105,'Palermo','PA',1),(3907,105,'Parma','PR',1),(3908,105,'Pavia','PV',1),(3909,105,'Perugia','PG',1),(3910,105,'Pesaro e Urbino','PU',1),(3911,105,'Pescara','PE',1),(3912,105,'Piacenza','PC',1),(3913,105,'Pisa','PI',1),(3914,105,'Pistoia','PT',1),(3915,105,'Pordenone','PN',1),(3916,105,'Potenza','PZ',1),(3917,105,'Prato','PO',1),(3918,105,'Ragusa','RG',1),(3919,105,'Ravenna','RA',1),(3920,105,'Reggio Calabria','RC',1),(3921,105,'Reggio Emilia','RE',1),(3922,105,'Rieti','RI',1),(3923,105,'Rimini','RN',1),(3924,105,'Roma','RM',1),(3925,105,'Rovigo','RO',1),(3926,105,'Salerno','SA',1),(3927,105,'Sassari','SS',1),(3928,105,'Savona','SV',1),(3929,105,'Siena','SI',1),(3930,105,'Siracusa','SR',1),(3931,105,'Sondrio','SO',1),(3932,105,'Taranto','TA',1),(3933,105,'Teramo','TE',1),(3934,105,'Terni','TR',1),(3935,105,'Torino','TO',1),(3936,105,'Trapani','TP',1),(3937,105,'Trento','TN',1),(3938,105,'Treviso','TV',1),(3939,105,'Trieste','TS',1),(3940,105,'Udine','UD',1),(3941,105,'Varese','VA',1),(3942,105,'Venezia','VE',1),(3943,105,'Verbano-Cusio-Ossola','VB',1),(3944,105,'Vercelli','VC',1),(3945,105,'Verona','VR',1),(3946,105,'Vibo Valentia','VV',1),(3947,105,'Vicenza','VI',1),(3948,105,'Viterbo','VT',1),(3949,222,'County Antrim','ANT',1),(3950,222,'County Armagh','ARM',1),(3951,222,'County Down','DOW',1),(3952,222,'County Fermanagh','FER',1),(3953,222,'County Londonderry','LDY',1),(3954,222,'County Tyrone','TYR',1),(3955,222,'Cumbria','CMA',1),(3956,190,'Pomurska','1',1),(3957,190,'Podravska','2',1),(3958,190,'Koroška','3',1),(3959,190,'Savinjska','4',1),(3960,190,'Zasavska','5',1),(3961,190,'Spodnjeposavska','6',1),(3962,190,'Jugovzhodna Slovenija','7',1),(3963,190,'Osrednjeslovenska','8',1),(3964,190,'Gorenjska','9',1),(3965,190,'Notranjsko-kraška','10',1),(3966,190,'Goriška','11',1),(3967,190,'Obalno-kraška','12',1),(3968,33,'Ruse','',1),(3969,101,'Alborz','ALB',1),(3970,21,'Brussels-Capital Region','BRU',1),(3971,138,'Aguascalientes','AG',1),(3973,242,'Andrijevica','01',1),(3974,242,'Bar','02',1),(3975,242,'Berane','03',1),(3976,242,'Bijelo Polje','04',1),(3977,242,'Budva','05',1),(3978,242,'Cetinje','06',1),(3979,242,'Danilovgrad','07',1),(3980,242,'Herceg-Novi','08',1),(3981,242,'Kolašin','09',1),(3982,242,'Kotor','10',1),(3983,242,'Mojkovac','11',1),(3984,242,'Nikšić','12',1),(3985,242,'Plav','13',1),(3986,242,'Pljevlja','14',1),(3987,242,'Plužine','15',1),(3988,242,'Podgorica','16',1),(3989,242,'Rožaje','17',1),(3990,242,'Šavnik','18',1),(3991,242,'Tivat','19',1),(3992,242,'Ulcinj','20',1),(3993,242,'Žabljak','21',1),(3994,243,'Belgrade','00',1),(3995,243,'North Bačka','01',1),(3996,243,'Central Banat','02',1),(3997,243,'North Banat','03',1),(3998,243,'South Banat','04',1),(3999,243,'West Bačka','05',1),(4000,243,'South Bačka','06',1),(4001,243,'Srem','07',1),(4002,243,'Mačva','08',1),(4003,243,'Kolubara','09',1),(4004,243,'Podunavlje','10',1),(4005,243,'Braničevo','11',1),(4006,243,'Šumadija','12',1),(4007,243,'Pomoravlje','13',1),(4008,243,'Bor','14',1),(4009,243,'Zaječar','15',1),(4010,243,'Zlatibor','16',1),(4011,243,'Moravica','17',1),(4012,243,'Raška','18',1),(4013,243,'Rasina','19',1),(4014,243,'Nišava','20',1),(4015,243,'Toplica','21',1),(4016,243,'Pirot','22',1),(4017,243,'Jablanica','23',1),(4018,243,'Pčinja','24',1),(4020,245,'Bonaire','BO',1),(4021,245,'Saba','SA',1),(4022,245,'Sint Eustatius','SE',1),(4023,248,'Central Equatoria','EC',1),(4024,248,'Eastern Equatoria','EE',1),(4025,248,'Jonglei','JG',1),(4026,248,'Lakes','LK',1),(4027,248,'Northern Bahr el-Ghazal','BN',1),(4028,248,'Unity','UY',1),(4029,248,'Upper Nile','NU',1),(4030,248,'Warrap','WR',1),(4031,248,'Western Bahr el-Ghazal','BW',1),(4032,248,'Western Equatoria','EW',1),(4036,117,'Ainaži, Salacgrīvas novads','0661405',1),(4037,117,'Aizkraukle, Aizkraukles novads','0320201',1),(4038,117,'Aizkraukles novads','0320200',1),(4039,117,'Aizpute, Aizputes novads','0640605',1),(4040,117,'Aizputes novads','0640600',1),(4041,117,'Aknīste, Aknīstes novads','0560805',1),(4042,117,'Aknīstes novads','0560800',1),(4043,117,'Aloja, Alojas novads','0661007',1),(4044,117,'Alojas novads','0661000',1),(4045,117,'Alsungas novads','0624200',1),(4046,117,'Alūksne, Alūksnes novads','0360201',1),(4047,117,'Alūksnes novads','0360200',1),(4048,117,'Amatas novads','0424701',1),(4049,117,'Ape, Apes novads','0360805',1),(4050,117,'Apes novads','0360800',1),(4051,117,'Auce, Auces novads','0460805',1),(4052,117,'Auces novads','0460800',1),(4053,117,'Ādažu novads','0804400',1),(4054,117,'Babītes novads','0804900',1),(4055,117,'Baldone, Baldones novads','0800605',1),(4056,117,'Baldones novads','0800600',1),(4057,117,'Baloži, Ķekavas novads','0800807',1),(4058,117,'Baltinavas novads','0384400',1),(4059,117,'Balvi, Balvu novads','0380201',1),(4060,117,'Balvu novads','0380200',1),(4061,117,'Bauska, Bauskas novads','0400201',1),(4062,117,'Bauskas novads','0400200',1),(4063,117,'Beverīnas novads','0964700',1),(4064,117,'Brocēni, Brocēnu novads','0840605',1),(4065,117,'Brocēnu novads','0840601',1),(4066,117,'Burtnieku novads','0967101',1),(4067,117,'Carnikavas novads','0805200',1),(4068,117,'Cesvaine, Cesvaines novads','0700807',1),(4069,117,'Cesvaines novads','0700800',1),(4070,117,'Cēsis, Cēsu novads','0420201',1),(4071,117,'Cēsu novads','0420200',1),(4072,117,'Ciblas novads','0684901',1),(4073,117,'Dagda, Dagdas novads','0601009',1),(4074,117,'Dagdas novads','0601000',1),(4075,117,'Daugavpils','0050000',1),(4076,117,'Daugavpils novads','0440200',1),(4077,117,'Dobele, Dobeles novads','0460201',1),(4078,117,'Dobeles novads','0460200',1),(4079,117,'Dundagas novads','0885100',1),(4080,117,'Durbe, Durbes novads','0640807',1),(4081,117,'Durbes novads','0640801',1),(4082,117,'Engures novads','0905100',1),(4083,117,'Ērgļu novads','0705500',1),(4084,117,'Garkalnes novads','0806000',1),(4085,117,'Grobiņa, Grobiņas novads','0641009',1),(4086,117,'Grobiņas novads','0641000',1),(4087,117,'Gulbene, Gulbenes novads','0500201',1),(4088,117,'Gulbenes novads','0500200',1),(4089,117,'Iecavas novads','0406400',1),(4090,117,'Ikšķile, Ikšķiles novads','0740605',1),(4091,117,'Ikšķiles novads','0740600',1),(4092,117,'Ilūkste, Ilūkstes novads','0440807',1),(4093,117,'Ilūkstes novads','0440801',1),(4094,117,'Inčukalna novads','0801800',1),(4095,117,'Jaunjelgava, Jaunjelgavas novads','0321007',1),(4096,117,'Jaunjelgavas novads','0321000',1),(4097,117,'Jaunpiebalgas novads','0425700',1),(4098,117,'Jaunpils novads','0905700',1),(4099,117,'Jelgava','0090000',1),(4100,117,'Jelgavas novads','0540200',1),(4101,117,'Jēkabpils','0110000',1),(4102,117,'Jēkabpils novads','0560200',1),(4103,117,'Jūrmala','0130000',1),(4104,117,'Kalnciems, Jelgavas novads','0540211',1),(4105,117,'Kandava, Kandavas novads','0901211',1),(4106,117,'Kandavas novads','0901201',1),(4107,117,'Kārsava, Kārsavas novads','0681009',1),(4108,117,'Kārsavas novads','0681000',1),(4109,117,'Kocēnu novads ,bij. Valmieras)','0960200',1),(4110,117,'Kokneses novads','0326100',1),(4111,117,'Krāslava, Krāslavas novads','0600201',1),(4112,117,'Krāslavas novads','0600202',1),(4113,117,'Krimuldas novads','0806900',1),(4114,117,'Krustpils novads','0566900',1),(4115,117,'Kuldīga, Kuldīgas novads','0620201',1),(4116,117,'Kuldīgas novads','0620200',1),(4117,117,'Ķeguma novads','0741001',1),(4118,117,'Ķegums, Ķeguma novads','0741009',1),(4119,117,'Ķekavas novads','0800800',1),(4120,117,'Lielvārde, Lielvārdes novads','0741413',1),(4121,117,'Lielvārdes novads','0741401',1),(4122,117,'Liepāja','0170000',1),(4123,117,'Limbaži, Limbažu novads','0660201',1),(4124,117,'Limbažu novads','0660200',1),(4125,117,'Līgatne, Līgatnes novads','0421211',1),(4126,117,'Līgatnes novads','0421200',1),(4127,117,'Līvāni, Līvānu novads','0761211',1),(4128,117,'Līvānu novads','0761201',1),(4129,117,'Lubāna, Lubānas novads','0701413',1),(4130,117,'Lubānas novads','0701400',1),(4131,117,'Ludza, Ludzas novads','0680201',1),(4132,117,'Ludzas novads','0680200',1),(4133,117,'Madona, Madonas novads','0700201',1),(4134,117,'Madonas novads','0700200',1),(4135,117,'Mazsalaca, Mazsalacas novads','0961011',1),(4136,117,'Mazsalacas novads','0961000',1),(4137,117,'Mālpils novads','0807400',1),(4138,117,'Mārupes novads','0807600',1),(4139,117,'Mērsraga novads','0887600',1),(4140,117,'Naukšēnu novads','0967300',1),(4141,117,'Neretas novads','0327100',1),(4142,117,'Nīcas novads','0647900',1),(4143,117,'Ogre, Ogres novads','0740201',1),(4144,117,'Ogres novads','0740202',1),(4145,117,'Olaine, Olaines novads','0801009',1),(4146,117,'Olaines novads','0801000',1),(4147,117,'Ozolnieku novads','0546701',1),(4148,117,'Pārgaujas novads','0427500',1),(4149,117,'Pāvilosta, Pāvilostas novads','0641413',1),(4150,117,'Pāvilostas novads','0641401',1),(4151,117,'Piltene, Ventspils novads','0980213',1),(4152,117,'Pļaviņas, Pļaviņu novads','0321413',1),(4153,117,'Pļaviņu novads','0321400',1),(4154,117,'Preiļi, Preiļu novads','0760201',1),(4155,117,'Preiļu novads','0760202',1),(4156,117,'Priekule, Priekules novads','0641615',1),(4157,117,'Priekules novads','0641600',1),(4158,117,'Priekuļu novads','0427300',1),(4159,117,'Raunas novads','0427700',1),(4160,117,'Rēzekne','0210000',1),(4161,117,'Rēzeknes novads','0780200',1),(4162,117,'Riebiņu novads','0766300',1),(4163,117,'Rīga','0010000',1),(4164,117,'Rojas novads','0888300',1),(4165,117,'Ropažu novads','0808400',1),(4166,117,'Rucavas novads','0648500',1),(4167,117,'Rugāju novads','0387500',1),(4168,117,'Rundāles novads','0407700',1),(4169,117,'Rūjiena, Rūjienas novads','0961615',1),(4170,117,'Rūjienas novads','0961600',1),(4171,117,'Sabile, Talsu novads','0880213',1),(4172,117,'Salacgrīva, Salacgrīvas novads','0661415',1),(4173,117,'Salacgrīvas novads','0661400',1),(4174,117,'Salas novads','0568700',1),(4175,117,'Salaspils novads','0801200',1),(4176,117,'Salaspils, Salaspils novads','0801211',1),(4177,117,'Saldus novads','0840200',1),(4178,117,'Saldus, Saldus novads','0840201',1),(4179,117,'Saulkrasti, Saulkrastu novads','0801413',1),(4180,117,'Saulkrastu novads','0801400',1),(4181,117,'Seda, Strenču novads','0941813',1),(4182,117,'Sējas novads','0809200',1),(4183,117,'Sigulda, Siguldas novads','0801615',1),(4184,117,'Siguldas novads','0801601',1),(4185,117,'Skrīveru novads','0328200',1),(4186,117,'Skrunda, Skrundas novads','0621209',1),(4187,117,'Skrundas novads','0621200',1),(4188,117,'Smiltene, Smiltenes novads','0941615',1),(4189,117,'Smiltenes novads','0941600',1),(4190,117,'Staicele, Alojas novads','0661017',1),(4191,117,'Stende, Talsu novads','0880215',1),(4192,117,'Stopiņu novads','0809600',1),(4193,117,'Strenči, Strenču novads','0941817',1),(4194,117,'Strenču novads','0941800',1),(4195,117,'Subate, Ilūkstes novads','0440815',1),(4196,117,'Talsi, Talsu novads','0880201',1),(4197,117,'Talsu novads','0880200',1),(4198,117,'Tērvetes novads','0468900',1),(4199,117,'Tukuma novads','0900200',1),(4200,117,'Tukums, Tukuma novads','0900201',1),(4201,117,'Vaiņodes novads','0649300',1),(4202,117,'Valdemārpils, Talsu novads','0880217',1),(4203,117,'Valka, Valkas novads','0940201',1),(4204,117,'Valkas novads','0940200',1),(4205,117,'Valmiera','0250000',1),(4206,117,'Vangaži, Inčukalna novads','0801817',1),(4207,117,'Varakļāni, Varakļānu novads','0701817',1),(4208,117,'Varakļānu novads','0701800',1),(4209,117,'Vārkavas novads','0769101',1),(4210,117,'Vecpiebalgas novads','0429300',1),(4211,117,'Vecumnieku novads','0409500',1),(4212,117,'Ventspils','0270000',1),(4213,117,'Ventspils novads','0980200',1),(4214,117,'Viesīte, Viesītes novads','0561815',1),(4215,117,'Viesītes novads','0561800',1),(4216,117,'Viļaka, Viļakas novads','0381615',1),(4217,117,'Viļakas novads','0381600',1),(4218,117,'Viļāni, Viļānu novads','0781817',1),(4219,117,'Viļānu novads','0781800',1),(4220,117,'Zilupe, Zilupes novads','0681817',1),(4221,117,'Zilupes novads','0681801',1),(4222,43,'Arica y Parinacota','AP',1),(4223,43,'Los Rios','LR',1),(4224,220,'Kharkivs\'ka Oblast\'','63',1),(4225,118,'Beirut','LB-BR',1),(4226,118,'Bekaa','LB-BE',1),(4227,118,'Mount Lebanon','LB-ML',1),(4228,118,'Nabatieh','LB-NB',1),(4229,118,'North','LB-NR',1),(4230,118,'South','LB-ST',1);
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
-- Dumping events for database 'quickcommerce_oc'
--

--
-- Dumping routines for database 'quickcommerce_oc'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-23 16:29:42
