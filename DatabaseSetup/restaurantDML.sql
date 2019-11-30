USE Restaurant;

/* Data for the table accessType */
INSERT INTO accessType VALUES (1,"sys-admin");
INSERT INTO accessType VALUES (2,"customer");
INSERT INTO accessType VALUES (3,"staff");
INSERT INTO accessType VALUES (4,"delivery");
INSERT INTO accessType VALUES (5,"manager");

/* Data for the table person */
INSERT INTO person VALUES (001,'Fabiane', 'Velosa','1983-06-17','manager','Obere Str. 57','Galway', 'F','N37T56R','admin','030-0074321');
INSERT INTO person VALUES (002,'Joyce', 'Martins','1993-06-17','manager','Obere Str. 57','Galway', 'F','N37T56R','customer','030-0074321');
INSERT INTO person VALUES (003,'Oladejo', 'Famuyide','1993-06-17','manager','Obere Str. 57','Galway', 'F','N37T56R','staff','030-0074321');
INSERT INTO person VALUES (004,'Obina', 'Nnadi','1993-06-17','manager','Obere Str. 57','Galway', 'F','N37T56R','delivery','030-0074321');
INSERT INTO person VALUES (005,'Martina', 'Curran','1993-06-17','manager','Obere Str. 57','Galway', 'F','N37T56R','manager','030-0074321');
INSERT INTO person VALUES (006, 'Jean', 'Madden', '2010-06-17', 'Delivery Driver','8 johnny rockets street', 'Athlone', 'F', 'N23 R123', 'jm@fastfodi.com', 0877717890);
INSERT INTO person VALUES (007, 'Joan', 'Macgill', '1993-06-17', 'Delivery Driver','11 obeye street', 'Galway', 'F', 'R12 N567', 'Jmac@fastfodi.com','089993490');
INSERT INTO person VALUES (008, 'Joe', 'Mullins', '1993-06-17', 'Front desk', '24 An Doirin Street', 'Athlone','M', 'Y12 R123', 'jom@fastfodi.com' ,'0823456769');
INSERT INTO person VALUES (009, 'Josephine', 'Mahony', '1993-06-17', 'Front desk', '7 conrad close', 'Dublin','F', 'Y10 R111', 'jma@fastfodi.com', '0823456769');
INSERT INTO person VALUES (010, 'Rochelle', 'Arthur', '1993-06-17', 'Front desk', '10 Church Street', 'Anthlone', 'F', 'B11 N776', 'ra@fastfodi.com','0844268697');
INSERT INTO person VALUES (011, 'Julez', 'Bauer', '1993-06-17', 'Delivery Driver','3 lush path', 'Dublin', 'M', 'R02 N567', 'Jb@fastfodi.com','089777777');
INSERT INTO person VALUES (012, 'James', 'Bond', '1993-06-17', 'Delivery Driver','9 Comrade Star', 'Moate', 'M', 'Q12 T123', 'jbo@fastfodi.com','0813131456');
INSERT INTO person VALUES (013,'Alfreds', 'Anders','1909-1-02', 'customer','Obere Str. 57','Galway', 'M','12209','aa@ymail.com','03010186734');
INSERT INTO person VALUES (014,'Ana','Trujillo','1811-1-03', 'customer ','Avda. de la Constitucin 2222','Cork.','F','05021','dr.ana@gmail.com','55554729');
INSERT INTO person VALUES (015,'Berglunds','Christina','1711-1-03', 'customer','Berguvsvgen  8','Athlone', 'F','95822','christy@hmail.com','0921123467');
INSERT INTO person VALUES (016,'Blauer','Moos','1890-1-10', 'customer','Forsterstr. 57','Limerick', 'M','68306','bm@tmail.com','062108924');
INSERT INTO person VALUES (017,'Francisco','Chang','1921-1-11','customer','Sierras de Granada. 9993','Roscommon', 'M','45231','Chan@ymail.com','061126780');
INSERT INTO person VALUES (018,'Sven','Ottlieb','1901-1-31','customer','Grenada Court.5','Dublin', 'M','77071','sot@ymail.com','0241059428');
INSERT INTO person VALUES (019,'Janine','Labrune','1951-1-12', 'customer','Ross Cottage.7a','Athlone', 'F','17072','jlai@ymail.com','1111232391');
INSERT INTO person VALUES (020,'Ann','Devon','2009-6-11','customer','King George. 35','Athlone','F','66071','anade@kmail.com','76753426');
INSERT INTO person VALUES (021,'Roland','Mendel','1908-7-10', 'customer','Kirchgasse.6','Roscommon', 'F','40401','romde@mail.com','115559857');
INSERT INTO person VALUES (022,'Aria','Cruz','1909-6-11', 'customer','Rua Ors .92','Dublin', 'F','05442','ruors@nmail.com','915555593');

/* Data for the table login */
INSERT INTO login VALUES ("admin","123",1);
INSERT INTO login VALUES ("customer","123",2);
INSERT INTO login VALUES ("staff","123",3);
INSERT INTO login VALUES ("delivery","123",4);
INSERT INTO login VALUES ("manager","123",5);
INSERT INTO login VALUES ("jm@fastfodi.com","123",5);
INSERT INTO login VALUES ("Jmac@fastfodi.com","123",5);
INSERT INTO login VALUES ("jom@fastfodi.com","123",5);
INSERT INTO login VALUES ("jma@fastfodi.com","123",5);
INSERT INTO login VALUES ("ra@fastfodi.com","123",1);
INSERT INTO login VALUES ("Jb@fastfodi.com","123",1);
INSERT INTO login VALUES ("aa@ymail.com","A001_long",2);
INSERT INTO login VALUES ("dr.ana@gmail.com", "Merom_001",2 );
INSERT INTO login VALUES ("christy@hmail.com", "jajaBr_29@",2);
INSERT INTO login VALUES ("bm@tmail.com", "Dean@on76",2);
INSERT INTO login VALUES ("Chan@ymail.com","Ana1870ji",3);
INSERT INTO login VALUES ("sot@ymail.com", "Cruz_430",3);
INSERT INTO login VALUES ("jlai@ymail.com", "bcBc123ki",3);
INSERT INTO login VALUES ("anade@kmail.com", "Cfran45_123",4);
INSERT INTO login VALUES ("romde@mail.com", "ottisveb@s",3);
INSERT INTO login VALUES ("ruors@nmail.com", "ottisveb@s",3);


/* Data for the table category */	
INSERT INTO category VALUES (201, 'Starters');
INSERT INTO category VALUES (202,'Side Dish');
INSERT INTO category VALUES (203,'Dessert');
INSERT INTO category VALUES (204,'Main Course');
INSERT INTO category VALUES (205, 'Drinks');
  
/* Data for the table menu */	  
INSERT INTO menu VALUES (301,"Rolls", "201","3.00");
INSERT INTO menu VALUES (302,"French Onion Soup", "201","3.00");
INSERT INTO menu VALUES (303,"Tomato Bruschetta", "201","3.00");
INSERT INTO menu VALUES (304,"Potato and Mushroom Chaat", "204","3.00");
INSERT INTO menu VALUES (305,"Mixed Green Salad", "202","3.00");
INSERT INTO menu VALUES (306,"Chicken Tikka", "204","4.00");
INSERT INTO menu VALUES (307,"Tandoori Chicken", "204","4.00");
INSERT INTO menu VALUES (308,"French Fries", "202","4.00");
INSERT INTO menu VALUES (309,"Chicken Tikka on Puree","204","4.00");
INSERT INTO menu VALUES (401, "Lamb Tikka", "204","4.00");
INSERT INTO menu VALUES (402,"Garlic Bread","202","4.00");
INSERT INTO menu VALUES (403,"Roast Beef with Vegetables", "204","3.00");
INSERT INTO menu VALUES (404,"Grilled Salmon with Dill Sauce","204","4.00");
INSERT INTO menu VALUES (405,"Marrakesh Vegetarian Curry","204","4.00");
INSERT INTO menu VALUES (406,"Eggplant Lasagne","204","4.00");
INSERT INTO menu VALUES (407,"Apple Pie with Cream","203","4.00");
INSERT INTO menu VALUES (408,"Vanilla Ice Cream","203","4.00");
INSERT INTO menu VALUES (409,"Crepe Suzette","203","4.00");
INSERT INTO menu VALUES (501,"Fruit Salad","203","4.00");
INSERT INTO menu VALUES (502,"Coke","205","4.00");
INSERT INTO menu VALUES (503,"Lemonade","205","4.00");
INSERT INTO menu VALUES (504,"Wellington","205","4.00");
INSERT INTO menu VALUES (505,"Klipdriff","205","4.00");
INSERT INTO menu VALUES (506,"Lemonade", "205","4.00");
INSERT INTO menu VALUES (507,"Bells","205","4.00");
INSERT INTO menu VALUES (508,"Edenhof","205","4.00");
INSERT INTO menu VALUES (509,"Chardonnay","205","4.00");
INSERT INTO menu VALUES (601,"Lemberg","205","4.00");

/* Data for the table orders */	
INSERT INTO orders VALUES (10245,'013', 'Phone' , 'Obere Str. 57','Galway', '12209','aa@ymail.com','080351977', '2019-02-07','Paid', '2019-02-07',	'Jb@fastfodi.com', 'Delivered', '2019-02-07');
INSERT INTO orders VALUES (10246,'021', 'Online', 'Kirchgasse.6','Roscommon','40401','romde@mail.com','1155598', '2019-02-08','Paid', '2019-02-08',	null, 'Pending', '2019-02-08');
INSERT INTO orders VALUES (10247,'013', 'Online', 'Obere Str. 57','Galway', '12209','aa@ymail.com','080351977', '2019-02-08','Paid', '2019-02-08',	'jm@fastfodi.com', 'Delivered', '2019-02-08');
INSERT INTO orders VALUES (10248,'014', 'Online', 'Avda. de la Constitucin 2222','Cork.','05021','dr.ana@gmail.com','55554729', '2019-02-08', 'PDelivery', '2019-02-09',	'Jmac@fastfodi.com', 'Delivered', '2019-02-09');
INSERT INTO orders VALUES (10249,'022', 'Phone' , 'Rua Ors .92','Dublin','05442','ruors@nmail.com','915555593', '2019-03-08','Paid', '2019-03-09',	'Jmac@fastfodi.com', 'Delivered' ,'2019-03-09');
INSERT INTO orders VALUES (10250,'015', 'Phone' , 'Berguvsvgen.  8','Athlone','95822','christy@hmail.com','0921123467', '2019-03-11','PDelivery', '2019-03-15',	'jbo@fastfodi.com', 'Delivered' ,'2019-03-15');
INSERT INTO orders VALUES (10251,'015', 'Online', 'Berguvsvgen.  8','Athlone','95822','christy@hmail.com','0921123467', '2019-03-16','Paid', '2019-03-16',	null, 'Pending' ,'2019-03-16');
INSERT INTO orders VALUES (10252,'016', 'Online', 'Forsterstr. 57','Limerick','68306','bm@tmail.com','062108924', '2019-03-17','Paid', '2019-03-17',	'jm@fastfodi.com', 'Delivered', '2019-03-17');
INSERT INTO orders VALUES (10253,'016', 'Phone' , 'Forsterstr. 57','Limerick','68306','bm@tmail.com','062108924', '2019-03-19','Paid', '2019-03-20',	null, 'Pending', '2019-03-20');
INSERT INTO orders VALUES (10254,'017', 'Phone' , 'Sierras de Granada. 9993','Roscommon','45231','Chan@ymail.com','062108924', '2019-04-01','PDelivery', '2019-04-05',	'jm@fastfodi.com', 'Delivered', '2019-04-05');
INSERT INTO orders VALUES (10255,'017', 'Online', 'Sierras de Granada. 9993','Roscommon','45231','Chan@ymail.com','062108924','2019-04-10', 'Paid', '2019-04-12',	'delivery', 'Assigned', '2019-04-12');
INSERT INTO orders VALUES (10256,'018', 'Online', 'Grenada Court.5','Dublin','77071','sot@ymail.com','0241059428', '2019-05-20','Paid', '2019-05-20',	'delivery', 'Assigned', '2019-05-20');
INSERT INTO orders VALUES (10257,'019', 'Phone' , 'Ross Cottage.7a','Athlone','17072','jlai@ymail.com','1111232391', '2019-05-11','PDelivery', '2019-05-22',	'Jmac@fastfodi.com', 'Delivered' ,'2019-05-22');
INSERT INTO orders VALUES (10258,'020', 'Online', 'King George. 35','Athlone','66071','anade@kmail.com','76753426', '2019-06-29','Paid', '2019-06-30',	'delivery', 'Assigned', '2019-05-30');

/*Data for the table orderdetail */
INSERT INTO orderdetail VALUES (10245, 302,  12);
INSERT INTO orderdetail VALUES (10245, 304,  10);
INSERT INTO orderdetail VALUES (10245, 405,   5);
INSERT INTO orderdetail VALUES (10245, 404,   9);
INSERT INTO orderdetail VALUES (10245, 506,  40);
INSERT INTO orderdetail VALUES (10250, 505,  10);
INSERT INTO orderdetail VALUES (10251, 502,  35);
INSERT INTO orderdetail VALUES (10252, 407,   6);
INSERT INTO orderdetail VALUES (10253, 601,  20);
INSERT INTO orderdetail VALUES (10254, 402,  30);
INSERT INTO orderdetail VALUES (10255, 503,  30);
INSERT INTO orderdetail VALUES (10256, 505,  12);
INSERT INTO orderdetail VALUES (10257, 601,   6);
INSERT INTO orderdetail VALUES (10258, 307,  65 );
      

