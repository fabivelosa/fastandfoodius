USE Restaurant;

/* Data for the table accessType */
INSERT INTO accessType VALUES (1,"sys-admin");
INSERT INTO accessType VALUES (2,"customer");
INSERT INTO accessType VALUES (3,"staff");
INSERT INTO accessType VALUES (4,"delivery");
INSERT INTO accessType VALUES (5,"manager");

/* Data for the table person */
INSERT INTO person VALUES (001,'Fabiane', 'Velosa','1983-06-17','SysAdmin','Dublin Road 57','Galway', 'F','N37T56R','admin@fastfood.com','080-07674321');
INSERT INTO person VALUES (002,'Joyce', 'Martins','1993-06-17','Customer','Crughans 33','Galway', 'F','N37T56R','customer@fastfood.com','090-0074321');
INSERT INTO person VALUES (003,'Oladejo', 'Famuyide','1993-06-17','Front desk','Clonbny Crescent 22','Galway', 'M','N37T56R','staff@fastfood.com','080-0074321');
INSERT INTO person VALUES (004,'Obinna', 'Nnadi','1993-06-17','Delivery Driver','Asley Down 57','Galway', 'M','N37T56R','delivery@fastfood.com','030-0084321');
INSERT INTO person VALUES (005,'Martina', 'Curran','1993-06-17','Manager','Ballimahon 43','Galway', 'F','N37T56R','manager@fastfood.com','030-0074321');
INSERT INTO person VALUES (006, 'Huguinho', 'Madden', '2010-06-17', 'Delivery Driver','8 Johnny Rockets', 'Athlone', 'M', 'N23 R123', 'huguinho@fastfood.com', 0877717890);
INSERT INTO person VALUES (007, 'Zezinho', 'Macgill', '1993-06-17', 'Delivery Driver','11 Obeye Street', 'Galway', 'M', 'R12 N567', 'zezinho@fastfood.com','089993490');
INSERT INTO person VALUES (008, 'Luizinho', 'Mullins', '1993-06-17', 'Delivery Driver', '24 An Doirin Street', 'Athlone','M', 'Y12 R123', 'luizinho@fastfood.com' ,'0823456769');
INSERT INTO person VALUES (009, 'Joaozinho', 'Mahony', '1993-06-17', 'Delivery Driver', '7 conrad close', 'Dublin','F', 'Y10 R111', 'joazinho@fastfood.com', '0823456769');
INSERT INTO person VALUES (010, 'Rochelle', 'Arthur', '1993-06-17', 'Front desk', '10 Church Street', 'Anthlone', 'F', 'B11 N776', 'rochelle@fastfood.com','0844268697');
INSERT INTO person VALUES (011, 'Rita', 'Bauer', '1993-04-17', 'Front desk','3 lush path', 'Dublin', 'M', 'R02 N567', 'rita@fastfood.com','089777777');
INSERT INTO person VALUES (012, 'Maria', 'Bond', '1993-05-12', 'Front desk','9 Comrade Star', 'Moate', 'M', 'Q12 T123', 'maria@fastfood.com','0813131456');
INSERT INTO person VALUES (013,'Alfreds', 'Anders','1909-1-02', 'customer','Obere Str. 57','Galway', 'M','12209','dr.ana@gmail.com','03010186734');
INSERT INTO person VALUES (014,'Berglunds','Christina','1711-1-03', 'customer','Berguvsvgen  8','Athlone', 'F','95822','christy@hmail.com','0921123467');
INSERT INTO person VALUES (015,'Blauer','Moos','1890-1-10', 'customer','Forsterstr. 57','Limerick', 'M','68306','bm@tmail.com','062108924');
INSERT INTO person VALUES (016,'Francisco','Chang','1921-1-11','customer','Sierras de Granada. 9993','Roscommon', 'M','45231','chan@ymail.com','061126780');
INSERT INTO person VALUES (017,'Sven','Ottlieb','1901-1-31','customer','Grenada Court.5','Dublin', 'M','77071','sot@ymail.com','0241059428');
INSERT INTO person VALUES (018,'Janine','Labrune','1951-1-12', 'customer','Ross Cottage.7a','Athlone', 'F','17072','jlai@ymail.com','1111232391');
INSERT INTO person VALUES (019,'Elsa','Frozen','2009-6-11','customer','King George. 35','Athlone','F','66071','anade@kmail.com','76753426');
INSERT INTO person VALUES (020,'AnneMarie','Trujillo','1811-1-03', 'customer ','Avda. de la Constitucin 2222','Cork.','F','05021','romde@mail.com','55554729');

/* Data for the table login */
INSERT INTO login VALUES ("admin@fastfood.com","123",1);
INSERT INTO login VALUES ("customer@fastfood.com","123",2);
INSERT INTO login VALUES ("staff@fastfood.com","123",3);
INSERT INTO login VALUES ("delivery@fastfood.com","123",4);
INSERT INTO login VALUES ("manager@fastfood.com","123",5);
INSERT INTO login VALUES ("huguinho@fastfood.com","123",4);
INSERT INTO login VALUES ("zezinho@fastfood.com","123",4);
INSERT INTO login VALUES ("luizinho@fastfood.com","123",4);
INSERT INTO login VALUES ("joazinho@fastfood.com","123",4);
INSERT INTO login VALUES ("rochelle@fastfood.com","123",3);
INSERT INTO login VALUES ("rita@fastfood.com","123",3);
INSERT INTO login VALUES ("maria@fastfood.com","123",3);
INSERT INTO login VALUES ("dr.ana@gmail.com", "Merom_001",2 );
INSERT INTO login VALUES ("christy@hmail.com", "jajaBr_29@",2);
INSERT INTO login VALUES ("bm@tmail.com", "Dean@on76",2);
INSERT INTO login VALUES ("chan@ymail.com","Ana1870ji",2);
INSERT INTO login VALUES ("sot@ymail.com", "Cruz_430",2);
INSERT INTO login VALUES ("jlai@ymail.com", "bcBc123ki",2);
INSERT INTO login VALUES ("anade@kmail.com", "Cfran45_123",2);
INSERT INTO login VALUES ("romde@mail.com", "ottisveb@s",2);

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
INSERT INTO orders VALUES (10245,13, 'FRONTDESK' , 'Obere Str. 57','Galway', '12209','dr.ana@gmail.co','080351977', '2019-02-07','PAID_FRONT_DESK', '2019-02-07',null, 'PENDING', '2019-02-07');
INSERT INTO orders VALUES (10246,14, 'ONLINE', 'Kirchgasse.6','Roscommon','40401','christy@hmail.com','1155598', '2019-02-08','PENDING', '2019-02-08',null, 'PENDING', '2019-02-08');
INSERT INTO orders VALUES (10247,15, 'ONLINE', 'Obere Str. 57','Galway', '12209','bm@tmail.com','080351977', '2019-02-08','PENDING', '2019-02-08',null, 'PENDING', '2019-02-08');
INSERT INTO orders VALUES (10248,16, 'ONLINE', 'Avda. de la Constitucin 2222','Cork.','05021','chan@ymail.com','55554729', '2019-02-08', 'PENDING', '2019-02-09',	null, 'PENDING', '2019-02-09');
INSERT INTO orders VALUES (10249,17, 'FRONTDESK' , 'Rua Ors .92','Dublin','05442','sot@ymail.com','915555593', '2019-03-08','PAID_FRONT_DESK', '2019-03-09',	null, 'PENDING' ,'2019-03-09');
INSERT INTO orders VALUES (10250,18, 'ONLINE' , 'Berguvsvgen.  8','Athlone','95822','jlai@ymail.com','0921123467', '2019-03-11','PENDING', '2019-03-15',	'delivery@fastfood.com', 'ASSIGNED' ,'2019-03-15');
INSERT INTO orders VALUES (10251,19, 'FRONTDESK', 'Berguvsvgen.  8','Athlone','95822','anade@kmail.com','0921123467', '2019-03-16','PAID_FRONT_DESK', '2019-03-16',	'delivery@fastfood.com', 'ASSIGNED' ,'2019-03-16');
INSERT INTO orders VALUES (10252,20, 'FRONTDESK', 'Forsterstr. 57','Limerick','68306','romde@mail.com','062108924', '2019-03-17','PAID_FRONT_DESK', '2019-03-17',	'delivery@fastfood.com', 'ASSIGNED', '2019-03-17');
INSERT INTO orders VALUES (10253,16, 'ONLINE' , 'Forsterstr. 57','Limerick','68306','chan@ymail.com','062108924', '2019-03-19',	'PENDING', '2019-03-20',	'delivery@fastfood.com', 'ONTHEWAY', '2019-03-20');
INSERT INTO orders VALUES (10254,17, 'FRONTDESK' , 'Sierras de Granada. 9993','Roscommon','45231','sot@ymail.com','062108924', '2019-04-01','PAID_FRONT_DESK', '2019-04-05',	'delivery@fastfood.com', 'ONTHEWAY', '2019-04-05');
INSERT INTO orders VALUES (10255,17, 'ONLINE', 'Sierras de Granada. 9993','Roscommon','45231','sot@ymail.com','062108924','2019-04-10','PENDING', '2019-04-12',	'huguinho@fastfood.com', 'ASSIGNED', '2019-04-12');
INSERT INTO orders VALUES (10256,18, 'FRONTDESK', 'Grenada Court.5','Dublin','77071','jlai@ymail.com','0241059428', '2019-05-20','PAID_FRONT_DESK', '2019-05-20',	'huguinho@fastfood.com', 'DELIVERED', '2019-05-20');
INSERT INTO orders VALUES (10257,19, 'ONLINE' , 'Ross Cottage.7a','Athlone','17072','anade@kmail.com','1111232391', '2019-05-11','PAID_ON_DELIVERY', '2019-05-22',	'delivery@fastfood.com', 'DELIVERED' ,'2019-05-22');
INSERT INTO orders VALUES (10258,20, 'ONLINE', 'King George. 35','Athlone','66071','romde@mail.com','76753426', '2019-06-29','PAID_ON_DELIVERY', '2019-06-30',	'delivery@fastfood.com', 'DELIVERED', '2019-05-30');

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
      

