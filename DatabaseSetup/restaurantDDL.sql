DROP DATABASE IF EXISTS Restaurant;
CREATE DATABASE IF NOT EXISTS Restaurant;

USE Restaurant;

/*Table structure for table person */
DROP TABLE IF EXISTS person;
CREATE TABLE person (
  person_ID INTEGER  NOT NULL,
  firstName VARCHAR(40) NOT NULL,
  lastName VARCHAR(30) NOT NULL,
  dateofbirth date NOT NULL,
  title VARCHAR(30) NOT NULL, #for employees add the JOB TITLE, for customer add CUSTOMER 
  address VARCHAR(60) NOT NULL,
  city VARCHAR(15) NOT NULL,
  gender VARCHAR(1) NOT NULL,
  postalCode VARCHAR(10) NOT NULL,
  emailAddress VARCHAR(30) NOT NULL,
  phone VARCHAR(24) NOT NULL,
  PRIMARY KEY (person_ID),
  UNIQUE KEY (emailAddress)
);

/*Table structure for table accessType */
DROP TABLE IF EXISTS accessType;
CREATE TABLE accessType (
  accessType INTEGER,
  functionType VARCHAR (30) NOT NULL,
  PRIMARY KEY (accessType)
);  	

/*Table structure for table login */
DROP TABLE IF EXISTS login;
CREATE TABLE login (
  username VARCHAR (30) NOT NULL,
  password  VARCHAR  (20) NOT NULL,
  accessType INTEGER,
  PRIMARY KEY (username),
  FOREIGN KEY (username) REFERENCES person (emailAddress),
  FOREIGN KEY (accessType) REFERENCES accessType (accessType)
);

/*Table structure for table category */	
DROP TABLE IF EXISTS category;
CREATE TABLE category (
  category_ID INTEGER AUTO_INCREMENT,
  categoryName VARCHAR(15) NOT NULL,
  PRIMARY KEY (Category_ID)
);

/*Table structure for table menu */
DROP TABLE IF EXISTS menu;
CREATE TABLE menu(
      menu_id INT  NOT NULL,
      menuDescr  VARCHAR (30) NOT NULL,
      menuType VARCHAR (30) NOT NULL,
      category_ID INTEGER NOT NULL,
      price  DOUBLE  NOT NULL,
      PRIMARY KEY (menu_id),
      FOREIGN KEY (category_ID) REFERENCES category (category_ID)
);

/*Table structure for table orders */      
DROP TABLE IF EXISTS orders;
CREATE TABLE orders (
  order_ID INTEGER  NOT NULL,
  customer_ID INTEGER NOT NULL,
  orderAddress VARCHAR (30) NOT NULL,
  orderCity VARCHAR (30) NOT NULL,
  orderPostalCode INTEGER NOT NULL, 
  orderEmailAdress VARCHAR (30) NOT NULL,
  orderPhoneNumber VARCHAR (20) NOT NULL,
  orderDate DATE,
  requiredDeliveryDate DATE,
  PRIMARY KEY (order_ID),
  FOREIGN KEY (customer_ID) REFERENCES person (person_ID)
);

/*Table structure for table orderdetail */
DROP TABLE IF EXISTS orderdetail;
CREATE TABLE orderdetail (
   order_ID  INTEGER (7) NOT NULL,
   menu_id INTEGER  NOT NULL,
   quantity INTEGER NOT NULL,
   paymentStatus VARCHAR (20) NOT NULL,
   orderChannel VARCHAR (20) NOT NULL,
   FOREIGN KEY (menu_id) REFERENCES menu (menu_id),
   FOREIGN KEY (order_ID) REFERENCES orders (order_ID)
);

/*Table structure for table Delivery */
DROP TABLE IF EXISTS Delivery;
CREATE TABLE delivery (
      delivery_id INT NOT NULL,
      order_ID  INT NOT NULL,
      deliveredBy  VARCHAR (30) NOT NULL,
      deliveryStatus VARCHAR (30) NOT NULL,
      whenDelivered   DATETIME,
      PRIMARY KEY (delivery_id),
      FOREIGN KEY (order_ID) REFERENCES orders (order_ID),
      FOREIGN KEY (deliveredBy) REFERENCES login (username)
);



