DROP TABLE IF EXISTS TBLMEMBER;
-- WEBDB.TBLMEMBER definition
CREATE TABLE TBLMEMBER 
( ID       VARCHAR2(20) NOT NULL ENABLE, 
  PWD      VARCHAR2(20) NOT NULL ENABLE, 
  NAME     VARCHAR2(20) NOT NULL ENABLE, 
  GENDER   VARCHAR2(1) NOT NULL ENABLE, 
  BIRTHDAY VARCHAR2(8) NOT NULL ENABLE, 
  EMAIL    VARCHAR2(50) NOT NULL ENABLE, 
  ZIPCODE  VARCHAR2(5) NOT NULL ENABLE, 
  ADDRESS  VARCHAR2(100) NOT NULL ENABLE, 
  HOBBY    VARCHAR2(50) NOT NULL ENABLE, 
  JOB      VARCHAR2(50) NOT NULL ENABLE, 
   PRIMARY KEY (ID)
);


DROP TABLE TBLMEMBER;

-- WEBDB.TBLMEMBER definition
CREATE TABLE TBLMEMBER 
( ID       VARCHAR2(20) NOT NULL ENABLE, 
  PWD      VARCHAR2(20) NOT NULL ENABLE, 
  NAME     VARCHAR2(20) NOT NULL ENABLE, 
  GENDER   VARCHAR2(1)  NOT NULL ENABLE, 
  BIRTHDAY VARCHAR2(8)  NOT NULL ENABLE, 
  EMAIL    VARCHAR2(50) NOT NULL ENABLE, 
  ZIPCODE  VARCHAR2(5)  NOT NULL ENABLE, 
  ADDRESS  VARCHAR2(100) NOT NULL ENABLE, 
  HOBBY    VARCHAR2(50) NOT NULL ENABLE, 
  JOB      VARCHAR2(50) NOT NULL ENABLE, 
   PRIMARY KEY (ID)
);


DROP TABLE TBLZIPCODE;

CREATE TABLE TBLZIPCODE 
(  ZIPCODE CHAR(5) NOT NULL ENABLE, 
  AREA1 VARCHAR2(30) DEFAULT NULL, 
  AREA2 VARCHAR2(60) DEFAULT NULL, 
  AREA3 VARCHAR2(90) DEFAULT NULL
);
  