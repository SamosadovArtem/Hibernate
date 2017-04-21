/*
Navicat Oracle Data Transfer
Oracle Client Version : 11.2.0.2.0

Source Server         : oracle
Source Server Version : 110200
Source Host           : :1521
Source Schema         : HR

Target Server Type    : ORACLE
Target Server Version : 110200
File Encoding         : 65001

Date: 2017-04-21 11:41:34
*/


-- ----------------------------
-- Table structure for "HR"."CITY"
-- ----------------------------
DROP TABLE "HR"."CITY";
CREATE TABLE "HR"."CITY" (
"CITYID" NUMBER NOT NULL ,
"CITYNAME" VARCHAR2(10 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of CITY
-- ----------------------------
INSERT INTO "HR"."CITY" VALUES ('1', '台北市');
INSERT INTO "HR"."CITY" VALUES ('2', '新北市');

-- ----------------------------
-- Indexes structure for table CITY
-- ----------------------------

-- ----------------------------
-- Checks structure for table "HR"."CITY"
-- ----------------------------
ALTER TABLE "HR"."CITY" ADD CHECK ("CITYID" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "HR"."CITY"
-- ----------------------------
ALTER TABLE "HR"."CITY" ADD PRIMARY KEY ("CITYID");
