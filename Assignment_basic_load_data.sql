

use dhanu;

use schema dhanu;

-----CONSUMER_COMPLAINTS Table

CREATE or replace TABLE "CONSUMER_COMPLAINTS" 
   (	
      "DATE_RECEIVED" STRING ,
      "PRODUCT_NAME" VARCHAR2(500) , 
	  "SUB_PRODUCT" VARCHAR2(500) , 
	  "ISSUE" VARCHAR2(500), 
      "SUB_ISSUE" VARCHAR2(500),
      "CONSUMER_COMPLAINT_NARRATIVE" VARCHAR2(10000),
      "COMPANY_PUBLIC_RESPONSE" STRING,
      "COMPANY" VARCHAR(500),
      "STATE_NAME" CHAR(100),
      "ZIP_CODE" STRING,
      "TAGS" VARCHAR(500),
      "CONSUMER_Consent_Provided" CHAR(100),
       "SUBMITTED_VIA" varchar(50), 
      "DATE_SENT_TO_COMPANY" STRING,
     "COMPANY_RESPONSE_TO_CONSUMER" VARCHAR(500),
     "TIMELY_RESPONSE" CHAR(100),
     "CONSUMER_DISPUTED" CHAR(100),
     "COMPLAINT_ID" NUMBER(12,0) NOT NULL PRIMARY KEY
);
select * from CONSUMER_COMPLAINTS;

------superstore Table

create table  superstore(
  "Row_ID" string,
  "Order_ID" string,
  "Order_Date" string,
  "Ship_Date" string,
  "Ship_Mode" varchar(50),
  "Customer_ID" string,
  "Customer_Name" varchar(100),
  "Segment" varchar(100),
  "Country_Region" varchar(100),
  "City" varchar(100),
  "State" varchar(100),
  "Postal_Code" string ,
  "Region" varchar(50),
  "Product_ID" string,
  "Category" varchar(100),
  "Sub-Category" varchar(100),
  "Product_Name" varchar(500),
  "Sales" varchar(100),
  "Quantity" varchar(100),
  "Discount" varchar(100),
  "Profit" number
);
select * from superstore;


---------ny_property_sales

create table ny_property_sales(
  ID number,
  Area varchar(100),
  NEIGHBORHOOD varchar(500),
  BUILDING_CLASS_CATEGORY varchar(500),
  ADDRESS varchar(500),	
  ZIP_CODE string,
  LAND_SQUARE_FEET string,	
  GROSS_SQUARE_FEET	string,
  YEAR_BUILT number ,
  SALE_DATE	string,
  SALES_PRICE string

);

select * from ny_property_sales;
 


------DT_SalesData Table

create table  DT_SalesData(
  InvoiceDate string,
  Make varchar(100),
  CountryName varchar(100),
  IsDealer varchar(100),
  SalePrice int,
  CostPrice int,
  TotalDiscount int,
  DeliveryCharge int,
  SpareParts int,
  LaborCost	int,
  ClientName varchar(500)  ,
  Model string,
  Color varchar(100),
  ReportingYear int,
  ReportingMonth int,
  Registration_Date string,
  VehicleType varchar(100)	,
  InvoiceNumber string

);
select * from Dt_salesData;


----Ds_p6_UkBankCustomer

create table Ds_p6_UkBankCustomer(
  Customer_ID int,
  Name varchar(100),
  Surname varchar(100),
  Gender varchar(100),
  Age int,
  Region varchar(100),
  Job_Classification varchar(100),
  Date_Joined string,
  	Balance number

);
select * from Ds_p6_UkBankCustomer;



---superStoreUS table

create table Ds_superStoreUS (
  Row_ID int,
  Order_Priority varchar(100),
  Discount number,
  Unit_Price number,
  Shipping_Cost number ,
  Customer_ID number ,
  CustomerName varchar (500),
  Ship_Mode varchar (100),
  Customer_Segment varchar(100),
  Product_Category varchar(100),
  Product_Sub_Category varchar(100),
  Product_Container  varchar(100),
  Product_Name string,
  Product_Base_Margin number,
  Country varchar(500),
  Region varchar(100),
  State_or_Province_City varchar(500),
  Postal_Code string,
  Order_Date string,
  Ship_Date string,
  Profit string,
  Quantity number,
  ordered_new number,
  Sales number,
  Order_ID string
);
select * from Ds_superStoreUS;


------OfficeSupplies table
create table DT_OfficeSupplies(
  OrderDate string,
  Region varchar(100),
  Rep varchar(50),
  Item varchar(50),
  Units int,
  Unit_Price number

);
select * from DT_OfficeSupplies;



-----Long_term_unemployment table
create table DT_Long_term_unemployment(
  Age string,
  Gender varchar(20),
  Period string, 
  Unemployed string

);
drop table DT_Long_term_unemployment;
select * from DT_Long_term_unemployment;


---BrilliantBritishCars table
create table DT_BrilliantBritishCars(
  InvoiceDate string,
  Make varchar(200),
  CountryName varchar(500),
  IsDealer varchar(50),
  SalePrice number,
  CostPrice	number,
  TotalDiscount number,
  DeliveryCharge number,
  SpareParts number,
  LaborCost number,
  ClientName varchar(500),
  Model string,
  Color varchar(50),
  ReportingYear string,
  ReportingMonth string,
  Registration_Date string,
  VehicleType varchar(50),
  InvoiceNumber string,
  CountryISOCode string,
  OuterPostode string,
  Region varchar(50)
);
select * from DT_BrilliantBritishCars;

----EuroDebtCrisis table
create table Ds_EuroDebtCrisis(
  Creditor varchar(100),
  Debtor varchar(100),
  Amount number,
  Risk varchar(100)

);
 select * from Ds_EuroDebtCrisis;
 
 ----AmazingMart table
 create table Ds_AmazingMart(
   Order_ID string,
   Order_Date string,
   Customer_Name varchar(100),
   City varchar(100),
   Country varchar(100),
   Region varchar(100),
   Segment varchar(100),
   Ship_Date string,
   Ship_Mode varchar(100),
   State varchar(500),
   lon number,
   lat number

 );
 select * from Ds_AmazingMart;
 
 
 
 ----keySaleData table
 create or replace table DT_keySaleData (
   ClientID int,
   ClientName varchar(100),
   Address1 string,
   Address2 string,
   Town varchar(100),
   County varchar(100),
   PostCode string,
   Region varchar(100),
   OuterPostode string,
   CountryID string,
   ClientType varchar(100),
   ClientSize varchar(100),
   ClientSince string,
   IsCreditWorthy number,
   IsDealer number
 );
 select * from DT_keySaleData;
 
 
 ---InvoiceAndInvoiceLine table
 create or replace table DT_InvoiceAndInvoiceLine(
   InvoiceID int,
   InvoiceNumber string,
   ClientID int,
   InvoiceDate string,
   TotalDiscount number,
   DeliveryCharge number,
   InvoiceDateKey string
 );
 select * from DT_InvoiceAndInvoiceLine;
 
 
 -----Insurance table
 create or replace table DT_Insurance(
 BrokerID int,
 BrokerCode string,
 BrokerFullName	varchar(100),
 DistributionNetwork varchar(200),
 DistributionChannel varchar(200),
 CommissionScheme string
 );
 
 select * from DT_Insurance;
 
 
 --------Countries table
 create or replace table DT_Countries(
 CountryID int,
 CountryName varchar(100),
 CountryName_Local varchar(100),
 CountryFlagURL string
 );
 select * from DT_Countries;
 
 
 --------carSaleData table

 create or replace table DT_carSaleData(
  ClientID int,
   ClientName varchar(100),
   Address1 string,
   Address2 string,
   Town varchar(100),
   County varchar(100),
   PostCode string,
   Region varchar(100),
   OuterPostode string,
   CountryID string,
   ClientType varchar(100),
   ClientSize varchar(100),
   ClientSince string,
   IsCreditWorthy number,
   IsDealer number
 );
 select *from DT_carSaleData;
 
 
 ----- CarSale table
 create or replace table DT_CarSale(
 InvoiceDate string,
 Make varchar(100),
 CountryName varchar(100),
 IsDealer string,
 SalePrice number,
 CostPrice number,
 TotalDiscount number,
 DeliveryCharge number,
 SpareParts number,
 LaborCost number,
 ClientName varchar(100),
 Model string ,
 Color varchar(100),
 ReportingYear string,
 ReportingMonth string,
 Registration_Date string,
 VehicleType varchar(100),
 InvoiceNumber string,
 CountryISOCode string,
 OuterPostode string,
 Region varchar(100)
 );
 select * from DT_CarSale;
 
 ---CarMakeAndMode table
 create or replace table DT_CarMakeAndMode(
 Make varchar(100),
 Marque string,
 Sales number
 );
 select * from DT_CarMakeAndMode;