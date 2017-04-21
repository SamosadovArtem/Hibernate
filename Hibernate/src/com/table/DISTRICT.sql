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

Date: 2017-04-21 13:50:16
*/


-- ----------------------------
-- Table structure for "HR"."DISTRICT"
-- ----------------------------
DROP TABLE "HR"."DISTRICT";
CREATE TABLE "HR"."DISTRICT" (
"DISTRICTID" NUMBER NOT NULL ,
"DISTRICTNAME" VARCHAR2(10 BYTE) NULL ,
"CITYID" NUMBER NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of DISTRICT
-- ----------------------------
INSERT INTO "HR"."DISTRICT" VALUES ('1', '蘆洲區', '2');
INSERT INTO "HR"."DISTRICT" VALUES ('2', '三重區', '2');
INSERT INTO "HR"."DISTRICT" VALUES ('3', '士林區', '1');

-- ----------------------------
-- Indexes structure for table DISTRICT
-- ----------------------------

-- ----------------------------
-- Checks structure for table "HR"."DISTRICT"
-- ----------------------------
ALTER TABLE "HR"."DISTRICT" ADD CHECK ("DISTRICTID" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "HR"."DISTRICT"
-- ----------------------------
ALTER TABLE "HR"."DISTRICT" ADD PRIMARY KEY ("DISTRICTID");
