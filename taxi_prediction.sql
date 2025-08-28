/*
Navicat MySQL Data Transfer

Source Server         : 大数据毕设_bigdata_3306_123456_版本5.7
Source Server Version : 50719
Source Host           : bigdata:3306
Source Database       : taxi_prediction

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2025-08-27 14:29:48
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for hourly_taxi_data
-- ----------------------------
DROP TABLE IF EXISTS `hourly_taxi_data`;
CREATE TABLE `hourly_taxi_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL,
  `trip_count` int(11) NOT NULL,
  `trip_distance` float NOT NULL,
  `fare_amount` float NOT NULL,
  `passenger_count` int(11) NOT NULL,
  `data_year` int(11) NOT NULL,
  `data_type` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of hourly_taxi_data
-- ----------------------------

-- ----------------------------
-- Table structure for model_metrics
-- ----------------------------
DROP TABLE IF EXISTS `model_metrics`;
CREATE TABLE `model_metrics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model_type` varchar(50) NOT NULL,
  `feature_name` varchar(50) NOT NULL,
  `mse` float NOT NULL,
  `rmse` float NOT NULL,
  `mae` float NOT NULL,
  `improvement` float NOT NULL,
  `timestamp` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of model_metrics
-- ----------------------------
INSERT INTO `model_metrics` VALUES ('73', 'CNN', 'trip_count', '0.0482282', '0.219609', '0.180095', '78.3765', '2025-03-17 14:02:14');
INSERT INTO `model_metrics` VALUES ('74', 'Simple', 'trip_count', '1.03146', '1.01561', '0.874561', '0', '2025-03-17 14:02:14');
INSERT INTO `model_metrics` VALUES ('75', 'CNN', 'trip_distance', '0.771682', '0.878454', '0.23504', '15.7484', '2025-03-17 14:02:14');
INSERT INTO `model_metrics` VALUES ('76', 'Simple', 'trip_distance', '1.08713', '1.04266', '0.745943', '0', '2025-03-17 14:02:14');
INSERT INTO `model_metrics` VALUES ('77', 'CNN', 'fare_amount', '0.0678136', '0.26041', '0.216593', '75.0725', '2025-03-17 14:02:14');
INSERT INTO `model_metrics` VALUES ('78', 'Simple', 'fare_amount', '1.09134', '1.04467', '0.904989', '0', '2025-03-17 14:02:14');
INSERT INTO `model_metrics` VALUES ('79', 'CNN', 'passenger_count', '0.0548994', '0.234306', '0.188848', '77.2302', '2025-03-17 14:02:14');
INSERT INTO `model_metrics` VALUES ('80', 'Simple', 'passenger_count', '1.05889', '1.02902', '0.893971', '0', '2025-03-17 14:02:14');
INSERT INTO `model_metrics` VALUES ('81', 'CNN', 'trip_count', '0.048035', '0.219169', '0.180762', '78.4199', '2025-03-17 20:21:43');
INSERT INTO `model_metrics` VALUES ('82', 'Simple', 'trip_count', '1.03146', '1.01561', '0.874561', '0', '2025-03-17 20:21:43');
INSERT INTO `model_metrics` VALUES ('83', 'CNN', 'trip_distance', '0.61647', '0.785156', '0.217686', '24.6965', '2025-03-17 20:21:43');
INSERT INTO `model_metrics` VALUES ('84', 'Simple', 'trip_distance', '1.08713', '1.04266', '0.745943', '0', '2025-03-17 20:21:43');
INSERT INTO `model_metrics` VALUES ('85', 'CNN', 'fare_amount', '0.0678782', '0.260534', '0.215486', '75.0606', '2025-03-17 20:21:43');
INSERT INTO `model_metrics` VALUES ('86', 'Simple', 'fare_amount', '1.09134', '1.04467', '0.904989', '0', '2025-03-17 20:21:43');
INSERT INTO `model_metrics` VALUES ('87', 'CNN', 'passenger_count', '0.0532581', '0.230777', '0.186881', '77.5732', '2025-03-17 20:21:43');
INSERT INTO `model_metrics` VALUES ('88', 'Simple', 'passenger_count', '1.05889', '1.02902', '0.893971', '0', '2025-03-17 20:21:43');
INSERT INTO `model_metrics` VALUES ('89', 'CNN', 'trip_count', '2.59161', '1.60985', '1.05087', '-45.8703', '2025-03-17 20:22:54');
INSERT INTO `model_metrics` VALUES ('90', 'Simple', 'trip_count', '1.21797', '1.10362', '0.443598', '0', '2025-03-17 20:22:54');
INSERT INTO `model_metrics` VALUES ('91', 'CNN', 'trip_distance', '2.77464', '1.66572', '1.02926', '-42.7152', '2025-03-17 20:22:54');
INSERT INTO `model_metrics` VALUES ('92', 'Simple', 'trip_distance', '1.36228', '1.16717', '0.407822', '0', '2025-03-17 20:22:54');
INSERT INTO `model_metrics` VALUES ('93', 'CNN', 'fare_amount', '2.63964', '1.6247', '1.07879', '-50.1025', '2025-03-17 20:22:54');
INSERT INTO `model_metrics` VALUES ('94', 'Simple', 'fare_amount', '1.17157', '1.08239', '0.435905', '0', '2025-03-17 20:22:54');
INSERT INTO `model_metrics` VALUES ('95', 'CNN', 'passenger_count', '2.83192', '1.68283', '0.954234', '-51.3983', '2025-03-17 20:22:54');
INSERT INTO `model_metrics` VALUES ('96', 'Simple', 'passenger_count', '1.23549', '1.11153', '0.449351', '0', '2025-03-17 20:22:54');
INSERT INTO `model_metrics` VALUES ('97', 'CNN', 'trip_count', '2.59161', '1.60985', '1.05087', '-45.8703', '2025-03-18 20:37:20');
INSERT INTO `model_metrics` VALUES ('98', 'Simple', 'trip_count', '1.21797', '1.10362', '0.443598', '0', '2025-03-18 20:37:20');
INSERT INTO `model_metrics` VALUES ('99', 'CNN', 'trip_distance', '2.77464', '1.66572', '1.02926', '-42.7152', '2025-03-18 20:37:20');
INSERT INTO `model_metrics` VALUES ('100', 'Simple', 'trip_distance', '1.36228', '1.16717', '0.407822', '0', '2025-03-18 20:37:20');
INSERT INTO `model_metrics` VALUES ('101', 'CNN', 'fare_amount', '2.63964', '1.6247', '1.07879', '-50.1025', '2025-03-18 20:37:20');
INSERT INTO `model_metrics` VALUES ('102', 'Simple', 'fare_amount', '1.17157', '1.08239', '0.435905', '0', '2025-03-18 20:37:20');
INSERT INTO `model_metrics` VALUES ('103', 'CNN', 'passenger_count', '2.83192', '1.68283', '0.954234', '-51.3983', '2025-03-18 20:37:20');
INSERT INTO `model_metrics` VALUES ('104', 'Simple', 'passenger_count', '1.23549', '1.11153', '0.449351', '0', '2025-03-18 20:37:20');
INSERT INTO `model_metrics` VALUES ('105', 'CNN', 'trip_count', '2.59161', '1.60985', '1.05087', '-45.8703', '2025-03-18 20:41:48');
INSERT INTO `model_metrics` VALUES ('106', 'Simple', 'trip_count', '1.21797', '1.10362', '0.443598', '0', '2025-03-18 20:41:48');
INSERT INTO `model_metrics` VALUES ('107', 'CNN', 'trip_distance', '2.77464', '1.66572', '1.02926', '-42.7152', '2025-03-18 20:41:48');
INSERT INTO `model_metrics` VALUES ('108', 'Simple', 'trip_distance', '1.36228', '1.16717', '0.407822', '0', '2025-03-18 20:41:48');
INSERT INTO `model_metrics` VALUES ('109', 'CNN', 'fare_amount', '2.63964', '1.6247', '1.07879', '-50.1025', '2025-03-18 20:41:48');
INSERT INTO `model_metrics` VALUES ('110', 'Simple', 'fare_amount', '1.17157', '1.08239', '0.435905', '0', '2025-03-18 20:41:48');
INSERT INTO `model_metrics` VALUES ('111', 'CNN', 'passenger_count', '2.83192', '1.68283', '0.954234', '-51.3983', '2025-03-18 20:41:48');
INSERT INTO `model_metrics` VALUES ('112', 'Simple', 'passenger_count', '1.23549', '1.11153', '0.449351', '0', '2025-03-18 20:41:48');
INSERT INTO `model_metrics` VALUES ('113', 'CNN', 'trip_count', '2.59161', '1.60985', '1.05087', '-45.8703', '2025-03-19 20:57:58');
INSERT INTO `model_metrics` VALUES ('114', 'Simple', 'trip_count', '1.21797', '1.10362', '0.443598', '0', '2025-03-19 20:57:58');
INSERT INTO `model_metrics` VALUES ('115', 'CNN', 'trip_distance', '2.77464', '1.66572', '1.02926', '-42.7152', '2025-03-19 20:57:58');
INSERT INTO `model_metrics` VALUES ('116', 'Simple', 'trip_distance', '1.36228', '1.16717', '0.407822', '0', '2025-03-19 20:57:58');
INSERT INTO `model_metrics` VALUES ('117', 'CNN', 'fare_amount', '2.63964', '1.6247', '1.07879', '-50.1025', '2025-03-19 20:57:58');
INSERT INTO `model_metrics` VALUES ('118', 'Simple', 'fare_amount', '1.17157', '1.08239', '0.435905', '0', '2025-03-19 20:57:58');
INSERT INTO `model_metrics` VALUES ('119', 'CNN', 'passenger_count', '2.83192', '1.68283', '0.954234', '-51.3983', '2025-03-19 20:57:58');
INSERT INTO `model_metrics` VALUES ('120', 'Simple', 'passenger_count', '1.23549', '1.11153', '0.449351', '0', '2025-03-19 20:57:58');
INSERT INTO `model_metrics` VALUES ('121', 'CNN', 'trip_count', '2.59161', '1.60985', '1.05087', '-45.8703', '2025-03-19 21:05:53');
INSERT INTO `model_metrics` VALUES ('122', 'Simple', 'trip_count', '1.21797', '1.10362', '0.443598', '0', '2025-03-19 21:05:53');
INSERT INTO `model_metrics` VALUES ('123', 'CNN', 'trip_distance', '2.77464', '1.66572', '1.02926', '-42.7152', '2025-03-19 21:05:53');
INSERT INTO `model_metrics` VALUES ('124', 'Simple', 'trip_distance', '1.36228', '1.16717', '0.407822', '0', '2025-03-19 21:05:53');
INSERT INTO `model_metrics` VALUES ('125', 'CNN', 'fare_amount', '2.63964', '1.6247', '1.07879', '-50.1025', '2025-03-19 21:05:53');
INSERT INTO `model_metrics` VALUES ('126', 'Simple', 'fare_amount', '1.17157', '1.08239', '0.435905', '0', '2025-03-19 21:05:53');
INSERT INTO `model_metrics` VALUES ('127', 'CNN', 'passenger_count', '2.83192', '1.68283', '0.954234', '-51.3983', '2025-03-19 21:05:53');
INSERT INTO `model_metrics` VALUES ('128', 'Simple', 'passenger_count', '1.23549', '1.11153', '0.449351', '0', '2025-03-19 21:05:53');
INSERT INTO `model_metrics` VALUES ('129', 'CNN', 'trip_count', '2.59161', '1.60985', '1.05087', '-45.8703', '2025-03-20 16:37:06');
INSERT INTO `model_metrics` VALUES ('130', 'Simple', 'trip_count', '1.21797', '1.10362', '0.443598', '0', '2025-03-20 16:37:06');
INSERT INTO `model_metrics` VALUES ('131', 'CNN', 'trip_distance', '2.77464', '1.66572', '1.02926', '-42.7152', '2025-03-20 16:37:06');
INSERT INTO `model_metrics` VALUES ('132', 'Simple', 'trip_distance', '1.36228', '1.16717', '0.407822', '0', '2025-03-20 16:37:06');
INSERT INTO `model_metrics` VALUES ('133', 'CNN', 'fare_amount', '2.63964', '1.6247', '1.07879', '-50.1025', '2025-03-20 16:37:06');
INSERT INTO `model_metrics` VALUES ('134', 'Simple', 'fare_amount', '1.17157', '1.08239', '0.435905', '0', '2025-03-20 16:37:06');
INSERT INTO `model_metrics` VALUES ('135', 'CNN', 'passenger_count', '2.83192', '1.68283', '0.954234', '-51.3983', '2025-03-20 16:37:06');
INSERT INTO `model_metrics` VALUES ('136', 'Simple', 'passenger_count', '1.23549', '1.11153', '0.449351', '0', '2025-03-20 16:37:06');
INSERT INTO `model_metrics` VALUES ('137', 'CNN', 'trip_count', '2.59161', '1.60985', '1.05087', '-45.8703', '2025-08-27 12:05:49');
INSERT INTO `model_metrics` VALUES ('138', 'Simple', 'trip_count', '1.21797', '1.10362', '0.443598', '0', '2025-08-27 12:05:49');
INSERT INTO `model_metrics` VALUES ('139', 'CNN', 'trip_distance', '2.77464', '1.66572', '1.02926', '-42.7152', '2025-08-27 12:05:49');
INSERT INTO `model_metrics` VALUES ('140', 'Simple', 'trip_distance', '1.36228', '1.16717', '0.407822', '0', '2025-08-27 12:05:49');
INSERT INTO `model_metrics` VALUES ('141', 'CNN', 'fare_amount', '2.63964', '1.6247', '1.07879', '-50.1025', '2025-08-27 12:05:49');
INSERT INTO `model_metrics` VALUES ('142', 'Simple', 'fare_amount', '1.17157', '1.08239', '0.435905', '0', '2025-08-27 12:05:49');
INSERT INTO `model_metrics` VALUES ('143', 'CNN', 'passenger_count', '2.83192', '1.68283', '0.954234', '-51.3983', '2025-08-27 12:05:49');
INSERT INTO `model_metrics` VALUES ('144', 'Simple', 'passenger_count', '1.23549', '1.11153', '0.449351', '0', '2025-08-27 12:05:49');
INSERT INTO `model_metrics` VALUES ('145', 'CNN', 'trip_count', '2.59161', '1.60985', '1.05087', '-45.8703', '2025-08-27 13:54:44');
INSERT INTO `model_metrics` VALUES ('146', 'Simple', 'trip_count', '1.21797', '1.10362', '0.443598', '0', '2025-08-27 13:54:44');
INSERT INTO `model_metrics` VALUES ('147', 'CNN', 'trip_distance', '2.77464', '1.66572', '1.02926', '-42.7152', '2025-08-27 13:54:44');
INSERT INTO `model_metrics` VALUES ('148', 'Simple', 'trip_distance', '1.36228', '1.16717', '0.407822', '0', '2025-08-27 13:54:44');
INSERT INTO `model_metrics` VALUES ('149', 'CNN', 'fare_amount', '2.63964', '1.6247', '1.07879', '-50.1025', '2025-08-27 13:54:44');
INSERT INTO `model_metrics` VALUES ('150', 'Simple', 'fare_amount', '1.17157', '1.08239', '0.435905', '0', '2025-08-27 13:54:44');
INSERT INTO `model_metrics` VALUES ('151', 'CNN', 'passenger_count', '2.83192', '1.68283', '0.954234', '-51.3983', '2025-08-27 13:54:44');
INSERT INTO `model_metrics` VALUES ('152', 'Simple', 'passenger_count', '1.23549', '1.11153', '0.449351', '0', '2025-08-27 13:54:44');
INSERT INTO `model_metrics` VALUES ('153', 'CNN', 'trip_count', '2.59161', '1.60985', '1.05087', '-45.8703', '2025-08-27 14:03:01');
INSERT INTO `model_metrics` VALUES ('154', 'Simple', 'trip_count', '1.21797', '1.10362', '0.443598', '0', '2025-08-27 14:03:01');
INSERT INTO `model_metrics` VALUES ('155', 'CNN', 'trip_distance', '2.77464', '1.66572', '1.02926', '-42.7152', '2025-08-27 14:03:01');
INSERT INTO `model_metrics` VALUES ('156', 'Simple', 'trip_distance', '1.36228', '1.16717', '0.407822', '0', '2025-08-27 14:03:01');
INSERT INTO `model_metrics` VALUES ('157', 'CNN', 'fare_amount', '2.63964', '1.6247', '1.07879', '-50.1025', '2025-08-27 14:03:01');
INSERT INTO `model_metrics` VALUES ('158', 'Simple', 'fare_amount', '1.17157', '1.08239', '0.435905', '0', '2025-08-27 14:03:01');
INSERT INTO `model_metrics` VALUES ('159', 'CNN', 'passenger_count', '2.83192', '1.68283', '0.954234', '-51.3983', '2025-08-27 14:03:01');
INSERT INTO `model_metrics` VALUES ('160', 'Simple', 'passenger_count', '1.23549', '1.11153', '0.449351', '0', '2025-08-27 14:03:01');

-- ----------------------------
-- Table structure for monthly_comparison
-- ----------------------------
DROP TABLE IF EXISTS `monthly_comparison`;
CREATE TABLE `monthly_comparison` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `month` varchar(10) DEFAULT NULL,
  `yellow_passenger_count` int(11) DEFAULT NULL,
  `yellow_trip_distance` float DEFAULT NULL,
  `yellow_fare_amount` float DEFAULT NULL,
  `green_passenger_count` int(11) DEFAULT NULL,
  `green_trip_distance` float DEFAULT NULL,
  `green_fare_amount` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of monthly_comparison
-- ----------------------------
INSERT INTO `monthly_comparison` VALUES ('1', 'Jan', '7863581', '22626400', '110210000', '153680', '2334490', '2090700');
INSERT INTO `monthly_comparison` VALUES ('2', 'Feb', '7579977', '22883000', '107372000', '143519', '1834100', '1992330');
INSERT INTO `monthly_comparison` VALUES ('3', 'Mar', '8703455', '29471900', '131290000', '159347', '1673860', '2220600');
INSERT INTO `monthly_comparison` VALUES ('4', 'Apr', '8565145', '32038200', '130333000', '148660', '1520450', '2144170');
INSERT INTO `monthly_comparison` VALUES ('5', 'May', '9028372', '35255600', '143351000', '160034', '2177240', '2389180');
INSERT INTO `monthly_comparison` VALUES ('6', 'Jun', '8575366', '32930300', '134847000', '147160', '2236040', '2270890');
INSERT INTO `monthly_comparison` VALUES ('7', 'Jul', '7746211', '28779600', '117384000', '139655', '2024000', '2126170');
INSERT INTO `monthly_comparison` VALUES ('8', 'Aug', '7493816', '28239200', '114440000', '139774', '2657840', '2203400');
INSERT INTO `monthly_comparison` VALUES ('9', 'Sep', '7775298', '33026600', '131520000', '148842', '2608130', '2457570');
INSERT INTO `monthly_comparison` VALUES ('10', 'Oct', '9079586', '33473400', '146268000', '154032', '2204930', '2327050');
INSERT INTO `monthly_comparison` VALUES ('11', 'Nov', '8701599', '31711700', '135634000', '144026', '2598780', '2140910');
INSERT INTO `monthly_comparison` VALUES ('12', 'Dec', '9054674', '31077400', '138533000', '144808', '2337350', '2183670');

-- ----------------------------
-- Table structure for peak_hours
-- ----------------------------
DROP TABLE IF EXISTS `peak_hours`;
CREATE TABLE `peak_hours` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weekday` varchar(20) DEFAULT NULL,
  `morning_passenger_count` float DEFAULT NULL,
  `morning_trip_distance` float DEFAULT NULL,
  `evening_passenger_count` float DEFAULT NULL,
  `evening_trip_distance` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of peak_hours
-- ----------------------------
INSERT INTO `peak_hours` VALUES ('1', 'Monday', '1.25325', '6.34654', '1.32932', '3.84459');
INSERT INTO `peak_hours` VALUES ('2', 'Tuesday', '1.22687', '6.04004', '1.30129', '3.77208');
INSERT INTO `peak_hours` VALUES ('3', 'Wednesday', '1.22549', '5.45288', '1.30389', '3.53595');
INSERT INTO `peak_hours` VALUES ('4', 'Thursday', '1.22913', '5.83604', '1.31436', '3.69211');
INSERT INTO `peak_hours` VALUES ('5', 'Friday', '1.2592', '6.65311', '1.38745', '4.0105');
INSERT INTO `peak_hours` VALUES ('6', 'Saturday', '1.3339', '5.45038', '1.4798', '4.22487');
INSERT INTO `peak_hours` VALUES ('7', 'Sunday', '1.36898', '7.66419', '1.43894', '4.46483');

-- ----------------------------
-- Table structure for prediction_results
-- ----------------------------
DROP TABLE IF EXISTS `prediction_results`;
CREATE TABLE `prediction_results` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL,
  `actual_trips` float NOT NULL,
  `cnn_pred_trips` float NOT NULL,
  `simple_pred_trips` float NOT NULL,
  `actual_distance` float NOT NULL,
  `cnn_pred_distance` float NOT NULL,
  `simple_pred_distance` float NOT NULL,
  `actual_fare` float NOT NULL,
  `cnn_pred_fare` float NOT NULL,
  `simple_pred_fare` float NOT NULL,
  `actual_passengers` float NOT NULL,
  `cnn_pred_passengers` float NOT NULL,
  `simple_pred_passengers` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of prediction_results
-- ----------------------------

-- ----------------------------
-- Table structure for regional_analysis
-- ----------------------------
DROP TABLE IF EXISTS `regional_analysis`;
CREATE TABLE `regional_analysis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `region` varchar(50) DEFAULT NULL,
  `trip_count` int(11) DEFAULT NULL,
  `avg_distance` float DEFAULT NULL,
  `avg_fare` float DEFAULT NULL,
  `passenger_count` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of regional_analysis
-- ----------------------------
INSERT INTO `regional_analysis` VALUES ('1', 'Downtown', '82', '3.35226', '102.886', '82');
INSERT INTO `regional_analysis` VALUES ('2', 'Uptown', '153', '30.4297', '31.2405', '153');
INSERT INTO `regional_analysis` VALUES ('3', 'Midtown', '32', '1.05187', '22.4312', '32');
INSERT INTO `regional_analysis` VALUES ('4', 'Airport', '5', '4.18', '30.9167', '5');
INSERT INTO `regional_analysis` VALUES ('5', 'Suburbs', '37092', '46.5736', '17.2641', '37092');
INSERT INTO `regional_analysis` VALUES ('6', 'Entertainment District', '18', '3.14625', '26.7708', '18');

-- ----------------------------
-- Table structure for yearly_comparison
-- ----------------------------
DROP TABLE IF EXISTS `yearly_comparison`;
CREATE TABLE `yearly_comparison` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `year` int(11) NOT NULL,
  `month` varchar(3) NOT NULL,
  `yellow_trip_count` int(11) DEFAULT NULL,
  `yellow_passenger_count` float DEFAULT NULL,
  `yellow_trip_distance` float DEFAULT NULL,
  `yellow_fare_amount` float DEFAULT NULL,
  `green_trip_count` int(11) DEFAULT NULL,
  `green_passenger_count` float DEFAULT NULL,
  `green_trip_distance` float DEFAULT NULL,
  `green_fare_amount` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=409 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of yearly_comparison
-- ----------------------------
INSERT INTO `yearly_comparison` VALUES ('325', '2023', 'Jan', '3307259', '4481350', '11271300', '58845300', '68231', '84086', '553570', '1264960');
INSERT INTO `yearly_comparison` VALUES ('326', '2023', 'Feb', '2907093', '4421670', '13287700', '70662500', '64792', '79394', '887611', '1188060');
INSERT INTO `yearly_comparison` VALUES ('327', '2023', 'Mar', '2824201', '4636050', '13469200', '65630300', '72039', '81107', '896895', '1205870');
INSERT INTO `yearly_comparison` VALUES ('328', '2023', 'Apr', '2846741', '4390930', '15269700', '66405600', '65391', '77496', '837769', '1132950');
INSERT INTO `yearly_comparison` VALUES ('329', '2023', 'May', '3522269', '4636050', '14448600', '69840500', '69178', '76933', '1286070', '1264960');
INSERT INTO `yearly_comparison` VALUES ('330', '2023', 'Jun', '3307259', '4390930', '12413000', '66105200', '65548', '77443', '1470280', '1238260');
INSERT INTO `yearly_comparison` VALUES ('331', '2023', 'Jul', '2907093', '3956340', '11798800', '57279500', '61346', '72720', '1564870', '1153220');
INSERT INTO `yearly_comparison` VALUES ('332', '2023', 'Aug', '2824201', '3795210', '11271300', '55688700', '60675', '73021', '1181590', '1179310');
INSERT INTO `yearly_comparison` VALUES ('333', '2023', 'Sep', '2846741', '3671130', '13287700', '58845300', '65439', '79394', '1608890', '1347360');
INSERT INTO `yearly_comparison` VALUES ('334', '2023', 'Oct', '3522269', '4578660', '13469200', '70662500', '66188', '81107', '1564870', '1264960');
INSERT INTO `yearly_comparison` VALUES ('335', '2023', 'Nov', '3339731', '4355220', '15269700', '65630300', '64015', '77496', '1181590', '1188060');
INSERT INTO `yearly_comparison` VALUES ('336', '2023', 'Dec', '3376527', '4501210', '12413000', '66405600', '64211', '76933', '1608890', '1205870');
INSERT INTO `yearly_comparison` VALUES ('349', '2024', 'Jan', '3066726', '4080770', '11798800', '98093800', '60675', '84086', '553570', '1132950');
INSERT INTO `yearly_comparison` VALUES ('350', '2024', 'Feb', '2914003', '3838270', '11271300', '63662100', '65439', '84086', '887611', '1078490');
INSERT INTO `yearly_comparison` VALUES ('351', '2024', 'Mar', '3403660', '4481350', '13287700', '64358200', '64015', '79394', '553570', '1225960');
INSERT INTO `yearly_comparison` VALUES ('352', '2024', 'Apr', '3288248', '4421670', '13469200', '57279500', '64211', '81107', '887611', '1154600');
INSERT INTO `yearly_comparison` VALUES ('353', '2024', 'May', '3513664', '4636050', '15269700', '55688700', '69178', '81784', '896895', '1347360');
INSERT INTO `yearly_comparison` VALUES ('354', '2024', 'Jun', '3307259', '4390930', '13051200', '58845300', '65548', '77443', '1286070', '1264960');
INSERT INTO `yearly_comparison` VALUES ('355', '2024', 'Jul', '2907093', '3956340', '13507500', '70662500', '64211', '72720', '1470280', '1188060');
INSERT INTO `yearly_comparison` VALUES ('356', '2024', 'Aug', '2824201', '3795210', '12167700', '88688700', '69178', '73021', '1637400', '1132950');
INSERT INTO `yearly_comparison` VALUES ('357', '2024', 'Sep', '2846741', '3671130', '13830800', '58845300', '65548', '77443', '1605890', '1264960');
INSERT INTO `yearly_comparison` VALUES ('358', '2024', 'Oct', '3522269', '4578660', '13830800', '90993000', '61346', '72720', '1564870', '1238260');
INSERT INTO `yearly_comparison` VALUES ('359', '2024', 'Nov', '3339731', '4355220', '12132400', '65635400', '60675', '73021', '1181590', '1153220');
INSERT INTO `yearly_comparison` VALUES ('360', '2024', 'Dec', '3376527', '4501210', '12413000', '66405600', '65439', '76933', '1608890', '1179310');
