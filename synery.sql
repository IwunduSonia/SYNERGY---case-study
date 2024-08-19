CREATE DATABASE SYNERGY;

USE SYNERGY;
CREATE TABLE 	CUSTOMERS (
				CUSTOMERID INT NOT NULL,
				FIRSTNAME VARCHAR(50) NOT NULL,
                LASTNAME VARCHAR(50) NOT NULL,
                ADDRESS VARCHAR(100) NOT NULL,
                REGION VARCHAR(50) NULL
                );

CREATE TABLE 	EMPLOYEES (
				EMPLOYEEID INT NOT NULL,
                FIRSTNAME VARCHAR(50) NOT NULL,
                LASTNAME VARCHAR(50) NOT NULL,
                DEPARTMENTID INT NOT NULL
                );
                
CREATE TABLE    ORDERS1 (
				ORDERID INT NOT NULL,
                CUSTOMERID INT NOT NULL,
                ORDERDATE datetime NOT NULL,
                ITEM VARCHAR(50) NOT NULL,
                QUANTITY INT NOT NULL,
                UNITPRICE INT NOT NULL,
                TOTALPRICE INT NOT NULL,
                SHIPSTATUS VARCHAR(50) NOT NULL,
                DELIVERYSTATUS VARCHAR(50) NOT NULL,
                SALESREP VARCHAR(50) NOT NULL
                );
                
CREATE table	VENDORS (
				VENDORID INT NOT NULL,
                NAME VARCHAR(100) NOT NULL,
                SUPPLIES VARCHAR(100) NOT NULL,
                PAYMENTTERMS INT NULL,
                ADDRESS VARCHAR(100) NOT NULL,
                EMAIL VARCHAR(50) NOT NULL,
                LASTSUPPLYDATE datetime NOT NULL
                );

CREATE table	TRANSPORTERS (
				Transporterid INT NOT NULL,
                NAME VARCHAR(50) NOT NULL,
                QTYLOADED INT NOT NULL,
                DELIVERIES INT NOT NULL,
                DESTINATIONS VARCHAR(50) NOT NULL
                );
                
CREATE TABLE	DEPARTMENTS (
				DEPARTMENTCODE INT NOT NULL,
                DEPARTMENTNAME VARCHAR(50)
                );

INSERT INTO CUSTOMERS (CUSTOMERID, FIRSTNAME, LASTNAME, ADDRESS, REGION) VALUES ('1', 'CHINELO','OKEKE', 'FADEYI LAGOS', 'WEST'),
			 ('2', 'IBRAHIM', 'BELLO', 'IBADAN OYO', 'WEST'),
             ('3', 'AMARACHI', 'EZE', 'MAITAMA ABUJA', 'NORTH'),
             ('4', 'OLUMIDE', 'ADEBAYO', 'PHC RIVERS', 'SOUTH'),
             ('5', 'FATIMA', 'SULEIMAN', 'LAFIA NASSARAWA', 'NORTH'),
             ('6', 'CHUKWUDI', 'NWOSU', 'OWERRI IMO', 'EAST'),
             ('7', 'TOLU', 'AJAYI', 'OTA OGUN', 'WEST'),
             ('8', 'KELECHI', 'NWACHUKWU', 'ABA ABIA', 'EAST'),
             ('9', 'OROMA', 'AMADI', 'IKWERRE RIVERS', 'SOUTH'),
             ('10', 'ENO', 'ABASSI', 'CALABAR CROSSRIVER', 'SOUTH');
             
INSERT INTO EMPLOYEES (EMPLOYEEID, FIRSTNAME, LASTNAME, DEPARTMENTID) VALUES ('100', 'IFAENYI', 'EZE', '101'),
			('200', 'AYOMIDE', 'ALABI', '102'),
            ('300', 'KUDIRAT', 'BALOGUN', '103'),
            ('400', 'AISHA', 'ABDULLAHI', '104'),
            ('500', 'NGOZI', 'UCHE', '105');
            
INSERT INTO ORDERS1 (ORDERID, CUSTOMERID, ORDERDATE, ITEM, QUANTITY, UNITPRICE, TOTALPRICE, SHIPSTATUS, DELIVERYSTATUS, SALESREP) VALUES
			('1', '2', '2024-01-13', 'PMS', '500', '900', '450000', 'SHIPPED', 'DELIVERED', '100'),
            ('2', '5', '2024-01-14', 'AGO', '1000', '1400', '1400000', 'AWAITING', 'CANCELLED', '400'),
            ('3', '1', '2024-02-07', 'AGO', '700', '1350', '945000', 'SHIPPED', 'CANCELLED', '200'),
            ('4', '7', '2024-02-28', 'AGO', '2000', '1300', '2600000', 'SHIPPED', 'DELIVERED', '100'),
            ('5', '3', '2024-03-01', 'ATK', '10000', '1900', '19000000', 'SHIPPED', 'DELIVERED', '500'),
            ('6', '10', '2024-03-08', 'PMS', '500', '900', '450000', 'SHIPPED', 'DELIVERED', '300'),
            ('7', '2', '2024-03-27', 'AGO', '2500', '1350', '3375000', 'SHIPPED', 'CANCELLED', '100'),
            ('8', '4', '2024-04-10', 'AGO', '1000', '1350', '1350000', 'SHIPPED', 'DELIVERED', '500'),
            ('9', '1', '2024-04-17', 'PMS', '1000', '900', '900000', 'SHIPPED', 'DELIVERED', '200'),
            ('10', '6', '2024-05-23', 'ATK', '25000', '1700', '42500000', 'SHIPPED', 'INPROGRESS', '300'),
            ('11', '8', '2024-06-02', 'PMS', '1200', '850', '1020000', 'AWAITING', 'CANCELLED', '300'),
            ('12', '9', '2024-06-04', 'AGO', '700', '1400', '980000', 'SHIPPED', 'DELIVERED', '400'),
            ('13', '4', '2024-06-11', 'AGO', '1000', '1400', '1400000', 'SHIPPED', 'DELIVERED', '100'),
            ('14', '1', '2024-06-19', 'AGO', '7000', '1400', '9800000', 'SHIPPED', 'DELIVERED', '300'),
            ('15', '5', '2024-07-01', 'AGO', '25000', '1350', '33750000', 'SHIPPED', 'INPROGRESS', '200');
            
            
INSERT INTO 	TRANSPORTERS (TRANSPORTERID, NAME, QTYLOADED, DELIVERIES, DESTINATIONS) VALUES
				('101', 'NUENIX', '50000', '25', 'WEST'),
                ('202', 'HNYS', '33000', '18', 'NORTH'),
                ('303', 'INMACU', '54000', '32', 'EAST'),
                ('404', 'NIKHO', '18000', '12', 'WEST');
			

INSERT INTO 	VENDORS (VENDORID, NAME, SUPPLIES, PAYMENTTERMS, ADDRESS, EMAIL, LASTSUPPLYDATE) VALUES
				('100', 'ABC_LIMITED', 'ENGINEOIL', '30', 'OYIGBO', 'INFO@ABCLIMITED.COM', '2024-07-23'),
                ('200', 'CHIKO_LIMITED', 'LIQUIDSOAP', '0', 'YABA', 'HELLO@CHIKOLIMITED.COM', '2024-05-10'),
                ('300', 'STATIONARYWORLD', 'STATIONARIES', '14', 'OSHODI', 'HI@STATIONARYWORLD.COM', '2024-08-18'),
                ('400', 'IKEJAELECTRIC', 'ELECTRICITY', '90', 'IKEJA', 'INFO@IKEJAELECTRIC.COM', '2024-07-07'),
                ('500', 'CHIOMAFURNITURES', 'FURNITURE', '30', 'AJAH', 'INFO@CHIOMAFURN.COM', '2024-01-10');
                

INSERT INTO 	DEPARTMENTS (DEPARTMENTCODE, DEPARTMENTNAME) VALUES
				('101', 'ADMIN'),
                ('102', 'FINANCE'),
                ('103', 'IT'),
                ('104', 'MARKETING'),
                ('105', 'HR');
            
            
            
			
                
                