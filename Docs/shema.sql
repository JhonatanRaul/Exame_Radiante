CREATE USER 'stock' IDENTIFIED BY 'stock';

GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP, 
    INDEX, ALTER, CREATE TEMPORARY TABLES 
ON *.* TO  'stock'@'localhost' IDENTIFIED BY 'stock';

CREATE DATABASE STOCK;

/* REALIZAR LOGIN stock SENHA stock */

USE STOCK;

CREATE TABLE SUPPLIER (
    ID_SUPPLIER     INT(10)          NOT NULL PRIMARY KEY,
    NAME            VARCHAR(255)     NOT NULL
) ENGINE = InnoDB;

CREATE TABLE MATERIAL_STANDARDS (
    ID_MATERIAL     INT(10)          NOT NULL PRIMARY KEY,
    NAME            VARCHAR(255)     NOT NULL,
    MAXIMUM_COST    DECIMAL(19,2)
) ENGINE = InnoDB;

CREATE TABLE PURCHASED (
    ID_PURCHASED    INT(10)          NOT NULL PRIMARY KEY AUTO_INCREMENT,
    ID_MATERIAL     INT(10)          NOT NULL,
    ID_SUPPLIER     INT(10)          NOT NULL,
    UNIT_COST       DECIMAL(19,2)    NOT NULL,
    QUANTITY        INT(10)          NOT NULL,
    PURCHASE_DATE   DATETIME         NOT NULL
) ENGINE = InnoDB;

ALTER TABLE PURCHASED ADD FOREIGN KEY(ID_SUPPLIER) REFERENCES SUPPLIER(ID_SUPPLIER);

ALTER TABLE PURCHASED ADD FOREIGN KEY(ID_MATERIAL) REFERENCES MATERIAL_STANDARDS(ID_MATERIAL);