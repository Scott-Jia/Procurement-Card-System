create database PROCUREMENT;

CREATE TABLE `PROCUREMENT`.`Applicants` (
  `SAP_PersonID` INT NOT NULL,
  `Emp_id` INT NOT NULL,
  `FName` VARCHAR(45) NOT NULL,
  `MName` VARCHAR(45) NOT NULL,
  `LName` VARCHAR(45) NOT NULL,
  `Emp_type` VARCHAR(45) NOT NULL,
  `Dno` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`SAP_PersonID`, `Emp_id`));

INSERT INTO `PROCUREMENT`.`Applicants` (`SAP_PersonID`, `Emp_id`,`FName`,`MName`,`LName`,`Emp_type`,`Dno`) VALUES ('201508303','7893','bo','y','jia','teacher','777');
INSERT INTO `PROCUREMENT`.`Applicants` (`SAP_PersonID`, `Emp_id`,`FName`,`MName`,`LName`,`Emp_type`,`Dno`) VALUES ('201608232','6788','dawang','st','wei','student','788');
INSERT INTO `PROCUREMENT`.`Applicants` (`SAP_PersonID`, `Emp_id`,`FName`,`MName`,`LName`,`Emp_type`,`Dno`) VALUES ('201706281','7823','TOM','H','Li','teacher','324');
INSERT INTO `PROCUREMENT`.`Applicants` (`SAP_PersonID`, `Emp_id`,`FName`,`MName`,`LName`,`Emp_type`,`Dno`) VALUES ('201809231','9988','Peter','J','Wang','teacher','112');
INSERT INTO `PROCUREMENT`.`Applicants` (`SAP_PersonID`, `Emp_id`,`FName`,`MName`,`LName`,`Emp_type`,`Dno`) VALUES ('201908234','7843','jing','w','wei','student','666');
INSERT INTO `PROCUREMENT`.`Applicants` (`SAP_PersonID`, `Emp_id`,`FName`,`MName`,`LName`,`Emp_type`,`Dno`) VALUES ('201910031','6655','joseph','Y','Tom','Teacher','244');
INSERT INTO `PROCUREMENT`.`Applicants` (`SAP_PersonID`, `Emp_id`,`FName`,`MName`,`LName`,`Emp_type`,`Dno`) VALUES ('202010101','7844','steven','R','Green','Student','654')
ALTER TABLE `PROCUREMENT`.`Applicants` 
CHANGE COLUMN `MName` `MName` VARCHAR(45) NULL ;

CREATE TABLE `PROCUREMENT`.`Application` (
  `Application_id` INT NOT NULL,
  `Procard_type` VARCHAR(45) NOT NULL,
  `Date` DATETIME NOT NULL,
  `Dno` INT NOT NULL,
  `Status` VARCHAR(45) NOT NULL,
  `Description` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`Application_id`));
  
INSERT INTO `PROCUREMENT`.`Application` (`Application_id`, `Procard_type`, `Date`, `Dno`, `Status`, `Description`) VALUES ('001', 'open_procard', '2018-09-23', '112', 'approved', 'buying machines');
INSERT INTO `PROCUREMENT`.`Application` (`Application_id`, `Procard_type`, `Date`, `Dno`, `Status`, `Description`) VALUES ('002', 'open_procard', '2017-06-28', '324', 'approved', 'purchasing pens');
INSERT INTO `PROCUREMENT`.`Application` (`Application_id`, `Procard_type`, `Date`, `Dno`, `Status`, `Description`) VALUES ('003', 'enhanced_procard', '2020-10-10', '654', 'awaiting', 'buying machine');
INSERT INTO `PROCUREMENT`.`Application` (`Application_id`, `Procard_type`, `Date`, `Dno`, `Status`, `Description`) VALUES ('004', 'Effective date procard', '2019-10-03', '244', 'approved', 'buying machine');
INSERT INTO `PROCUREMENT`.`Application` (`Application_id`, `Procard_type`, `Date`, `Dno`, `Status`, `Description`) VALUES ('005', 'standard procard', '2016-08-23', '788', 'awating ', 'purchasing personal stuff');
INSERT INTO `PROCUREMENT`.`Application` (`Application_id`, `Procard_type`, `Date`, `Dno`, `Status`, `Description`) VALUES ('006', 'student_payment_card', '2015-08-30', '777', 'approved', 'purchasing machine');
INSERT INTO `PROCUREMENT`.`Application` (`Application_id`, `Procard_type`, `Date`, `Dno`, `Status`, `Description`) VALUES ('007', 'revolving_procard', '2019-08-23', '666', 'approved', 'buying medcine ');
UPDATE `PROCUREMENT`.`Application` SET `Description` = 'buying machine' WHERE (`Application_id` = '1');
ALTER TABLE `PROCUREMENT`.`Application` 
CHANGE COLUMN `Description` `Description` VARCHAR(255) NULL ;
ALTER TABLE `PROCUREMENT`.`Applicantion` 
RENAME TO  `PROCUREMENT`.`Application` ;
  
  
  
  
  CREATE TABLE `PROCUREMENT`.`Dean_Director_Administator_Officer` (
  `Emp_id` INT NOT NULL,
  `FName` VARCHAR(45) NOT NULL,
  `MName` VARCHAR(45) NOT NULL,
  `LName` VARCHAR(45) NOT NULL,
  `Dno` INT NOT NULL,
  PRIMARY KEY (`Emp_id`));
  
INSERT INTO `PROCUREMENT`.`Dean_Director_Administator_Officer` (`Emp_id`, `FName`, `MName`, `LName`, `Dno`) VALUES ('23445', 'brad', 'j', 'peter', '108');
INSERT INTO `PROCUREMENT`.`Dean_Director_Administator_Officer` (`Emp_id`, `FName`, `MName`, `LName`, `Dno`) VALUES ('77558', 'chuyi', 'k', 'wang', '108');
INSERT INTO `PROCUREMENT`.`Dean_Director_Administator_Officer` (`Emp_id`, `FName`, `MName`, `LName`, `Dno`) VALUES ('99443', 'yueran', 'l', 'zeng', '108');

  
  CREATE TABLE `PROCUREMENT`.`Procard` (
  `Card_id` INT NOT NULL,
  `Holder_id` INT NOT NULL,
  `Invoice_Total` VARCHAR(45) NOT NULL,
  `Payment_Total` VARCHAR(45) NOT NULL,
  `HolderName` VARCHAR(45) NOT NULL,
  `ExpireDate` DATETIME NOT NULL,
  `OpenDate` DATETIME NOT NULL,
  `Type` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Card_id`, `Holder_id`));
  
INSERT INTO `PROCUREMENT`.`Procard` (`Card_id`, `Holder_id`, `Invoice_Total`, `Payment_Total`, `HolderName`, `ExpireDate`, `OpenDate`, `Type`) VALUES ('67983401', '67235', '2000', '678', 'Tom.H.Li', '2028-10-02', '2018-10-02', 'open_procard');
INSERT INTO `PROCUREMENT`.`Procard` (`Card_id`, `Holder_id`, `Invoice_Total`, `Payment_Total`, `HolderName`, `ExpireDate`, `OpenDate`, `Type`) VALUES ('56092310', '67863', '3500', '888', 'lebron.K.james', '2030-05-13', '2020-05-13', 'open_procard');
INSERT INTO `PROCUREMENT`.`Procard` (`Card_id`, `Holder_id`, `Invoice_Total`, `Payment_Total`, `HolderName`, `ExpireDate`, `OpenDate`, `Type`) VALUES ('56093467', '67872', '4000', '980', 'Peter.J.Wang', '2027-07-28', '2017-07-28', 'open_procard');
INSERT INTO `PROCUREMENT`.`Procard` (`Card_id`, `Holder_id`, `Invoice_Total`, `Payment_Total`, `HolderName`, `ExpireDate`, `OpenDate`, `Type`) VALUES ('92304561', '78345', '6000', '5600', 'joseph.Y.Tom', '2029-11-08', '2019-11-08', 'Effective_date_procard');
INSERT INTO `PROCUREMENT`.`Procard` (`Card_id`, `Holder_id`, `Invoice_Total`, `Payment_Total`, `HolderName`, `ExpireDate`, `OpenDate`, `Type`) VALUES ('44880752', '78934', '7800', '4000', 'bo.y.jia', '2025-09-15', '2015-09-15', 'student_payment_procard');
INSERT INTO `PROCUREMENT`.`Procard` (`Card_id`, `Holder_id`, `Invoice_Total`, `Payment_Total`, `HolderName`, `ExpireDate`, `OpenDate`, `Type`) VALUES ('77995609', '98235', '7000', '4500', 'jing.w.wei', '2029-09-25', '2019-09-25', 'revolving_procard');

ALTER TABLE `PROCUREMENT`.`Procard` 
CHANGE COLUMN `Invoice_Total` `Invoice_Total` INT NOT NULL ,
CHANGE COLUMN `Payment_Total` `Payment_Total` INT NOT NULL ;
  
  CREATE TABLE `PROCUREMENT`.`CardHolder` (
  `Holder_id` INT NOT NULL,
  `FName` VARCHAR(45) NOT NULL,
  `MName` VARCHAR(45) NOT NULL,
  `LName` VARCHAR(45) NOT NULL,
  `BDate` VARCHAR(45) NOT NULL,
  `SSN` VARCHAR(255) NOT NULL,
  `Address` VARCHAR(255) NOT NULL,
  `Dno` INT NOT NULL,
  PRIMARY KEY (`Holder_id`));
  
INSERT INTO `PROCUREMENT`.`CardHolder` (`Holder_id`, `FName`, `MName`, `LName`, `BDate`, `SSN`, `Address`, `Dno`) VALUES ('78934', 'bo', 'y', 'jia', '1999-08-27', '983454609', 'woodland hill', '777');
INSERT INTO `PROCUREMENT`.`CardHolder` (`Holder_id`, `FName`, `MName`, `LName`, `BDate`, `SSN`, `Address`, `Dno`) VALUES ('98235', 'jing', 'w', 'wei', '2000-07-23', '789834092', 'Irvine', '666');
INSERT INTO `PROCUREMENT`.`CardHolder` (`Holder_id`, `FName`, `MName`, `LName`, `BDate`, `SSN`, `Address`, `Dno`) VALUES ('67872', 'Peter', 'J', 'Wang', '1977-08-26', '780005522', 'chicago', '112');
INSERT INTO `PROCUREMENT`.`CardHolder` (`Holder_id`, `FName`, `MName`, `LName`, `BDate`, `SSN`, `Address`, `Dno`) VALUES ('67235', 'Tom', 'H', 'Li', '1940-09-03', '782300442', 'seattle', '324');
INSERT INTO `PROCUREMENT`.`CardHolder` (`Holder_id`, `FName`, `MName`, `LName`, `BDate`, `SSN`, `Address`, `Dno`) VALUES ('78345', 'joseph ', 'Y', 'Tom', '2001-06-05', '345678921', 'Tianjin', '244');
INSERT INTO `PROCUREMENT`.`CardHolder` (`Holder_id`, `FName`, `MName`, `LName`, `BDate`, `SSN`, `Address`, `Dno`) VALUES ('67863', 'lebron', 'K', 'james', '1998-09-04', '456372892', 'Tianjin', '112');


CREATE TABLE `PROCUREMENT`.`Procurment_Card_Administrator` (
  `Emp_id` INT NOT NULL,
  `FName` VARCHAR(45) NOT NULL,
  `MName` VARCHAR(45) NOT NULL,
  `LName` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Emp_id`));
  
INSERT INTO `PROCUREMENT`.`Procurment_Card_Administrator` (`Emp_id`, `FName`, `MName`, `LName`) VALUES ('23456', 'tianyu', 'j', 'gou');
INSERT INTO `PROCUREMENT`.`Procurment_Card_Administrator` (`Emp_id`, `FName`, `MName`, `LName`) VALUES ('34568', 'houshuo', 'h', 'huang');
INSERT INTO `PROCUREMENT`.`Procurment_Card_Administrator` (`Emp_id`, `FName`, `MName`, `LName`) VALUES ('98456', 'yunjia', 'k', 'zhang');
INSERT INTO `PROCUREMENT`.`Procurment_Card_Administrator` (`Emp_id`, `FName`, `MName`, `LName`) VALUES ('99033', 'zeyu', 'w', 'wang');

  
 CREATE TABLE `PROCUREMENT`.`President_Provost_EVPHA_EVPFA` (
  `Emp_id` INT NOT NULL,
  `FName` VARCHAR(45) NOT NULL,
  `MName` VARCHAR(45) NOT NULL,
  `LName` VARCHAR(45) NOT NULL,
  `Dno` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Emp_id`));
  
INSERT INTO `PROCUREMENT`.`President_Provost_EVPHA_EVPFA` (`Emp_id`, `FName`, `MName`, `LName`, `Dno`) VALUES ('90876', 'zhengyang', 'k', 'xv', '309');
INSERT INTO `PROCUREMENT`.`President_Provost_EVPHA_EVPFA` (`Emp_id`, `FName`, `MName`, `LName`, `Dno`) VALUES ('78093', 'jiawei', 'f', 'deng', '309');
INSERT INTO `PROCUREMENT`.`President_Provost_EVPHA_EVPFA` (`Emp_id`, `FName`, `MName`, `LName`, `Dno`) VALUES ('89088', 'dezhou', 'k', 'chen', '309');

  
  CREATE TABLE `PROCUREMENT`.`Transaction` (
  `Trans_id` INT NOT NULL,
  `Location` VARCHAR(45) NOT NULL,
  `Type` VARCHAR(45) NOT NULL,
  `Date` DATETIME NOT NULL,
  `Amount` INT NOT NULL,
  `Transaction_document` VARCHAR(255) NOT NULL,
  `Editing` VARCHAR(45) NOT NULL,
  `Approval` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`Trans_id`));
  
INSERT INTO `PROCUREMENT`.`Transaction` (`Trans_id`, `Location`, `Type`, `Date`, `Amount`, `Transaction_document`, `Editing`, `Approval`) VALUES ('0926', 'LA', 'A', '2020-09-08', '230', 'buying machine', '98347', 'Y');
INSERT INTO `PROCUREMENT`.`Transaction` (`Trans_id`, `Location`, `Type`, `Date`, `Amount`, `Transaction_document`, `Editing`, `Approval`) VALUES ('1010', 'SF', 'A', '2019-03-26', '150', 'buying machine', '78456', 'Y');
INSERT INTO `PROCUREMENT`.`Transaction` (`Trans_id`, `Location`, `Type`, `Date`, `Amount`, `Transaction_document`, `Editing`, `Approval`) VALUES ('0728', 'NY', 'B', '2018-11-07', '760', 'buying fruit', '78945', 'Y');
INSERT INTO `PROCUREMENT`.`Transaction` (`Trans_id`, `Location`, `Type`, `Date`, `Amount`, `Transaction_document`, `Editing`, `Approval`) VALUES ('0654', 'NC', 'C', '2016-07-18', '600', 'buying drug', '78456', 'N');

  
  
  CREATE TABLE `PROCUREMENT`.`Reconciler` (
  `Reconciler_id` INT NOT NULL,
  `Dno` INT NOT NULL,
  `FName` VARCHAR(45) NOT NULL,
  `MName` VARCHAR(45) NOT NULL,
  `LName` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Reconciler_id`));
  
INSERT INTO `PROCUREMENT`.`Reconciler` (`Reconciler_id`, `Dno`, `FName`, `MName`, `LName`) VALUES ('98357', '109', 'hao', 'd', 'jia');
INSERT INTO `PROCUREMENT`.`Reconciler` (`Reconciler_id`, `Dno`, `FName`, `MName`, `LName`) VALUES ('88332', '109', 'lin', 'f', 'li');
INSERT INTO `PROCUREMENT`.`Reconciler` (`Reconciler_id`, `Dno`, `FName`, `MName`, `LName`) VALUES ('64538', '109', 'jiang', 'r', 'guo');
  
  
  CREATE TABLE `PROCUREMENT`.`Editor` (
  `Editor_id` INT NOT NULL,
  `FName` VARCHAR(45) NOT NULL,
  `MName` VARCHAR(45) NOT NULL,
  `LName` VARCHAR(45) NOT NULL,
  `Dno` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Editor_id`));
  
INSERT INTO `PROCUREMENT`.`Editor` (`Editor_id`, `FName`, `MName`, `LName`, `Dno`) VALUES ('09834', 'shihao', 'l', 'jin', '206');
INSERT INTO `PROCUREMENT`.`Editor` (`Editor_id`, `FName`, `MName`, `LName`, `Dno`) VALUES ('78945', 'kuang', 'r', 'li', '206');
INSERT INTO `PROCUREMENT`.`Editor` (`Editor_id`, `FName`, `MName`, `LName`, `Dno`) VALUES ('78456', 'enshi', 'y', 'wang', '206');
UPDATE `PROCUREMENT`.`Editor` SET `Editor_id` = '98347' WHERE (`Editor_id` = '9834');


# How many applicants get approved , their use of procard is to buy machine and they are teacher 

select count(Ap.application_id)
from 
PROCUREMENT. Application as Ap
join
PROCUREMENT.Applicants as A
on
Ap.Dno = A.Dno
where Ap.Description = 'buying machine' and Ap.status = 'approved' and A. Emp_type = 'teacher';


# List cardholder's Holder_id, Firstname, and Lastname, whose total payment is more than 1000, and sort them in descending order by the holder_id 

select c.Holder_id, c.FName,c.LName
from 
PROCUREMENT.cardholder as c
join 
PROCUREMENT.Procard as p
on
p.Holder_id = c.Holder_id
where
p.payment_total>1000
order by p.holder_id desc;

# List personal information (first name, middle name, last name, cardid ,holder id) , whose Procard's balance is more than 2000

Select FName,MName,LName,Card_id,c.Holder_id,whole_information.balance 
from
(select *,
invoice_total-payment_total as balance
from 
PROCUREMENT.Procard 
) as whole_information
join 
PROCUREMENT.CardHolder as c
on
c.Holder_id = whole_information.Holder_id
where balance > 2000 ;





  
  
