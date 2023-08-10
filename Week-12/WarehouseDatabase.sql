show databases;

/*CREATES DATABASE*/
CREATE DATABASE WAREHOUSE;

/*DELETES WAREHOUSE*/
DROP DATABASE WAREHOUSE;

/*Create tables IN WAREHOUSE*/
USE WAREHOUSE;

/*Create CITIES tables */
create table CITIES(
CITY VARCHAR(20) NOT NULL PRIMARY KEY,
STATE VARCHAR(20) NOT NULL
); 

/*Create WAREHOUSES tables */
create table WAREHOUSES(
WID INT NOT NULL PRIMARY KEY,
WNAME VARCHAR(30) NOT NULL,
LOCATION VARCHAR(20) NOT NULL,
EXTRA_CONTEXT JSON,
CITY VARCHAR(20) NOT NULL,
FOREIGN KEY (CITY) references CITIES(CITY)
	ON UPDATE CASCADE
    ON DELETE CASCADE
); 

/*Create CUSTOMER tables */
create table CUSTOMER(
CNO INT NOT NULL PRIMARY KEY,
CNAME VARCHAR(50) NOT NULL,
ADDR VARCHAR(50) NOT NULL,
CU_CITY VARCHAR(20) NOT NULL
); 

/*Create STORES tables */
create table STORES(
SID INT NOT NULL PRIMARY KEY,
STORE_NAME VARCHAR(20) NOT NULL,
LOCATION_CITY VARCHAR(20) NOT NULL,
WID INT NOT NULL,
FOREIGN KEY (WID) references WAREHOUSES(WID)
	ON UPDATE CASCADE
    ON DELETE CASCADE
); 
DROP TABLE STORES; 

/*Create ITEMS tables */
  create table ITEMS(
ITEMNO INT NOT NULL PRIMARY KEY,
DESCR VARCHAR(100) NOT NULL,
WEIGHT DECIMAL(5,2) NOT NULL,
COST DECIMAL(5,2) NOT NULL
);

/*Create ORDERS tables */
create table ORDERS(
ONO INT NOT NULL PRIMARY KEY,
ODATE DATE NOT NULL,
CNO INT NOT NULL,
FOREIGN KEY (CNO) references CUSTOMER(CNO)
	ON UPDATE CASCADE
    ON DELETE CASCADE
);

/*Create ORDERS_ITEMS tables */
create table ORDERS_ITEMS(
ONO INT NOT NULL,
ITEMNO INT NOT NULL,
FOREIGN KEY (ONO) references ORDERS(ONO)
	ON UPDATE CASCADE
    ON DELETE CASCADE,
FOREIGN KEY (ITEMNO) references ITEMS(ITEMNO)
	ON UPDATE CASCADE
    ON DELETE CASCADE
);
ALTER TABLE ORDERS_ITEMS
	ADD CONSTRAINT PK_ORDERS_ITEMS
    PRIMARY KEY CLUSTERED (ONO,ITEMNO);

/*Create STORES_ITEMS tables */
create table STORES_ITEMS(
SID INT NOT NULL ,
ITEMNO INT NOT NULL,
FOREIGN KEY (SID) references STORES(SID)
	ON UPDATE CASCADE
    ON DELETE CASCADE,
FOREIGN KEY (ITEMNO) references ITEMS(ITEMNO)
	ON UPDATE CASCADE
    ON DELETE CASCADE
);
ALTER TABLE STORES_ITEMS
	ADD CONSTRAINT PK_STORES_ITEMS
    PRIMARY KEY CLUSTERED (SID,ITEMNO);
    
     DROP TABLE STORES_ITEMS;

