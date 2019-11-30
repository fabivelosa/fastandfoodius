DROP DATABASE IF EXISTS Restaurant;
CREATE DATABASE IF NOT EXISTS Restaurant;

USE Restaurant;

/*Table structure for table person */
DROP TABLE IF EXISTS person;
CREATE TABLE person (
    person_ID INTEGER AUTO_INCREMENT NOT NULL,
    firstName VARCHAR(40) NOT NULL,
    lastName VARCHAR(30) NOT NULL,
    dateofbirth DATE NOT NULL,
    title VARCHAR(30) NOT NULL,
    address VARCHAR(60) NOT NULL,
    city VARCHAR(15) NOT NULL,
    gender VARCHAR(10) NOT NULL,
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
    functionType VARCHAR(30) NOT NULL,
    PRIMARY KEY (accessType)
);  	

/*Table structure for table login */
DROP TABLE IF EXISTS login;
CREATE TABLE login (
    username VARCHAR(30) NOT NULL,
    password VARCHAR(20) NOT NULL,
    accessType INTEGER,
    PRIMARY KEY (username),
    FOREIGN KEY (username)
        REFERENCES person (emailAddress),
    FOREIGN KEY (accessType)
        REFERENCES accessType (accessType)
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
CREATE TABLE menu (
    item_id INTEGER AUTO_INCREMENT NOT NULL,
    itemDescr VARCHAR(30) NOT NULL,
    category_ID INTEGER NOT NULL,
    price DOUBLE NOT NULL,
    PRIMARY KEY (item_id),
    FOREIGN KEY (category_ID)
        REFERENCES category (category_ID)
);

/*Table structure for table orders */      
DROP TABLE IF EXISTS orders;
CREATE TABLE orders (
    order_ID INTEGER auto_increment NOT NULL,
    customer_ID INTEGER NOT NULL,
    orderChannel VARCHAR(20) NOT NULL,
    orderAddress VARCHAR(30) NOT NULL,
    orderCity VARCHAR(30) NOT NULL,
    orderPostalCode VARCHAR(30) NOT NULL,
    orderEmailAddress VARCHAR(30) NOT NULL,
    orderPhoneNumber VARCHAR(20) NOT NULL,
    orderDate DATE,
    paymentStatus VARCHAR(20) NOT NULL,
    requiredDeliveryDate DATE,
    deliveredBy VARCHAR(30),
    deliveryStatus VARCHAR(30) NOT NULL,
    whenDelivered DATETIME,
    PRIMARY KEY (order_ID),
    FOREIGN KEY (deliveredBy)
        REFERENCES person (emailAddress),
    FOREIGN KEY (customer_ID)
        REFERENCES person (person_ID)
);
 
/*Table structure for table orderdetail */
DROP TABLE IF EXISTS orderdetail;
CREATE TABLE orderdetail (
    order_ID INTEGER NOT NULL,
    item_id INTEGER NOT NULL,
    quantity INTEGER NOT NULL,
    FOREIGN KEY (item_id)
        REFERENCES menu (item_id),
    FOREIGN KEY (order_ID)
        REFERENCES orders (order_ID)
);

ALTER TABLE ORDERS AUTO_INCREMENT = 10260;
      



