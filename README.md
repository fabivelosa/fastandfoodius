# fastandfoodius - Phase 1
The main aim of this project is to design a website for Fast and Foodiusrestaurant as part of an extension to provide 
web-based access, easy transaction and enhanced quality to its customers.  The  website  will  be  designed  in  a  way  
that  four different user roles  can  perform specific actions on the website:
-> customers can be able to log in and make orders, it is also possible to track their orders. 
-> front desk staff who takes down these orders either personally or by phone and make sure it is assigned to the delivery drivers. 
-> delivery driver can be able to see the orders assigned and updated the status of delivery. 
-> management staff who can be able to view all orders made and also make any changes to the food menu.
The application is in JSP with Java using MySql as database.

## Set up
Before running the project or even validate everything by running mvn clean install, you need a DB running. 
A dockerfile has been provided ready to use, you need just to build it.

```shell script
docker build -t food-mysql .
docker run --name food-mysql -p 3306:3306 food-mysql -d
```

# fastandfoodius - Phase 2
-> rest api 
-> spring
-> ?aws?
-> ?docker?
-> ?kubernetes?
