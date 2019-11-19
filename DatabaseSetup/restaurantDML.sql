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


/* Data for the table login */
INSERT INTO login VALUES ("admin","123",1);
INSERT INTO login VALUES ("customer","123",2);
INSERT INTO login VALUES ("staff","123",3);
INSERT INTO login VALUES ("delivery","123",4);
INSERT INTO login VALUES ("manager","123",5);
INSERT INTO login VALUES ("fabi@email.com","123",1);
INSERT INTO login VALUES ("ruors@nmail.com","A001_long",2);
INSERT INTO login VALUES ("romde@mail.com", "Merom_001",2 );
INSERT INTO login VALUES ("jlai@ymail.com", "jajaBr_29@",2);
INSERT INTO login VALUES ("anade@kmail.com", "Dean@on76",2);
INSERT INTO login VALUES ("dr.ana@gmail.com","Ana1870ji",3);
INSERT INTO login VALUES ("aa@ymail.com", "Cruz_430",3);
INSERT INTO login VALUES ("christy@hmail.com", "bcBc123ki",3);
INSERT INTO login VALUES ("bm@tmail.com", "Bm00@123",4 );
INSERT INTO login VALUES ("chan@ymail.com", "Cfran45_123",4);
INSERT INTO login VALUES ("sot@ymail.com", "ottisveb@s",3);


/* Data for the table category */	
INSERT INTO category VALUES (201, 'Starters','Veggetable, Salad,and Finger Foods');
INSERT INTO category VALUES (202,'Side Dish','Salad, Vegetable, Bread and Fries');
INSERT INTO category VALUES (203,'Dessert','Pie, candies, and Ice Cream');
INSERT INTO category VALUES (204,'Main Course','Rice, Roast Beef and Curry');
INSERT INTO category VALUES (205, 'Drinks', 'Soft Drinks, Spirits, and Wine');
  
/* Data for the table menu */	  
INSERT INTO menu VALUES (301,"Rolls", "Finger Foods","3.00","201");
INSERT INTO menu VALUES (302,"French Onion Soup", "Soup","3.00","201");
INSERT INTO menu VALUES (303,"Tomato Bruschetta", "Vegetable","3.00","201");
INSERT INTO menu VALUES (304,"Potato and Mushroom Chaat", "Vegetable", "3.00","204");
INSERT INTO menu VALUES (305,"Mixed Green Salad", "Salad", "3.00","202");
INSERT INTO menu VALUES (306,"Chicken Tikka", "Non-Veg","4.00","204");
INSERT INTO menu VALUES (307,"Tandoori Chicken", "Non-Veg","4.00","204");
INSERT INTO menu VALUES (308,"French Fries", "Non-Veg","4.00","202");
INSERT INTO menu VALUES (309,"Chicken Tikka on Puree","Non-Veg","4.00","204");
INSERT INTO menu VALUES (401, "Lamb Tikka", "Non-Veg","4.00","204");
INSERT INTO menu VALUES (402,"Garlic Bread", "Bread","4.00","202");
INSERT INTO menu VALUES (403,"Roast Beef with Vegetables", "Non-Veg", "3.00", "204");
INSERT INTO menu VALUES (404,"Grilled Salmon with Dill Sauce", "Non-Veg","4.00","204");
INSERT INTO menu VALUES (405,"Marrakesh Vegetarian Curry", "Non-Veg","4.00","204");
INSERT INTO menu VALUES (406,"Eggplant Lasagne", "Non-Veg","4.00","204");
INSERT INTO menu VALUES (407,"Apple Pie with Cream","Pie","4.00","203");
INSERT INTO menu VALUES (408,"Vanilla Ice Cream","Ice Cream","4.00","203");
INSERT INTO menu VALUES (409,"Crepe Suzette", "Cake","4.00","203");
INSERT INTO menu VALUES (501,"Fruit Salad","Salad","4.00","203");
INSERT INTO menu VALUES (502,"Coke","Soft Drinks","4.00","205");
INSERT INTO menu VALUES (503,"Lemonade", "Soft Drinks","4.00","205");
INSERT INTO menu VALUES (504,"Wellington","Spirits","4.00","205");
INSERT INTO menu VALUES (505,"Klipdriff","Spirits","4.00","205");
INSERT INTO menu VALUES (506,"Lemonade", "Soft Drinks","4.00","205");
INSERT INTO menu VALUES (507,"Bells","Spirits","4.00","205");
INSERT INTO menu VALUES (508,"Edenhof", "Red Wine","4.00","205");
INSERT INTO menu VALUES (509,"Chardonnay","White Wine","4.00","205");
INSERT INTO menu VALUES (601,"Lemberg","Rose Wine","4.00","205");

/* Data for the table orders */	
INSERT INTO orders VALUES (10245,'021', '302', 'Obere Str. 57','Galway', '12209','aa@ymail.com','080351977', '2019-02-07', '2019-02-07');     
INSERT INTO orders VALUES (10246,'030', '304', 'Kirchgasse.6','Roscommon','40401','romde@mail.com','1155598', '2019-02-08', '2019-02-08'); 
INSERT INTO orders VALUES (10247,'021', '405', 'Obere Str. 57','Galway', '12209','aa@ymail.com','080351977', '2019-02-08', '2019-02-08');
INSERT INTO orders VALUES (10248,'077', '404', 'Avda. de la Constitucin 2222','Cork.','05021','dr.ana@gmail.com','55554729', '2019-02-08', '2019-02-09');
INSERT INTO orders VALUES (10249,'041', '506', 'Rua Ors .92','Dublin','05442','ruors@nmail.com','915555593', '2019-03-08', '2019-03-09');
INSERT INTO orders VALUES (10250,'063', '505', 'Berguvsvgen.  8','Athlone','95822','christy@hmail.com','0921123467', '2019-03-11', '2019-03-15');
INSERT INTO orders VALUES (10251,'063', '502', 'Berguvsvgen.  8','Athlone','95822','christy@hmail.com','0921123467', '2019-03-16', '2019-03-16');
INSERT INTO orders VALUES (10252,'081', '407', 'Forsterstr. 57','Limerick','68306','bm@tmail.com','062108924', '2019-03-17', '2019-03-17');
INSERT INTO orders VALUES (10253,'081', '601', 'Forsterstr. 57','Limerick','68306','bm@tmail.com','062108924', '2019-03-19', '2019-03-20');
INSERT INTO orders VALUES (10254,'072', '402', 'Sierras de Granada. 9993','Roscommon','45231','Chan@ymail.com','062108924', '2019-04-01', '2019-04-05');
INSERT INTO orders VALUES (10255,'072', '503', 'Sierras de Granada. 9993','Roscommon','45231','Chan@ymail.com','062108924', '2019-04-10', '2019-04-12');
INSERT INTO orders VALUES (10256,'099', '505','Grenada Court.5','Dublin','77071','sot@ymail.com','0241059428', '2019-05-20', '2019-05-20');
INSERT INTO orders VALUES (10257,'011', '601', 'Ross Cottage.7a','Athlone','17072','jlai@ymail.com','1111232391', '2019-05-11', '2019-05-22');
INSERT INTO orders VALUES (10258,'056', '307','King George. 35','Athlone','66071','anade@kmail.com','76753426', '2019-06-29', '2019-06-30');

/*Data for the table orderdetail */
INSERT INTO orderdetail VALUES (10245, 302,  021,  14.00, 12, 'PDelivery', 'Phone');
INSERT INTO orderdetail VALUES (10246, 304,  030,  9.80, 10, 'Paid', 'Online');
INSERT INTO orderdetail VALUES (10247, 405,  021,  34.80, 5, 'PDelivery', 'Online');
INSERT INTO orderdetail VALUES (10248, 404, 077,  18.60, 9, 'Paid', 'Online');
INSERT INTO orderdetail VALUES (10249, 506, 041,  42.40, 40, 'PDelivery', 'Phone');
INSERT INTO orderdetail VALUES (10250, 505, 063,  7.70, 10, 'Paid', 'Phone');
INSERT INTO orderdetail VALUES (10251, 502,  063,  42.40, 35, 'PDelivery', 'Online');
INSERT INTO orderdetail VALUES (10252, 407,  081,  16.80, 6,  'Paid', 'Online');
INSERT INTO orderdetail VALUES (10253, 601,  081,  16.80, 20,  'Paid', 'Phone');
INSERT INTO orderdetail VALUES (10254, 402,  072,  44.00, 30,  'PDelivery', 'Phone');
INSERT INTO orderdetail VALUES (10255, 503,  072,  44.00, 30,  'Paid', 'Online');
INSERT INTO orderdetail VALUES (10256, 505, 099,  10.40, 12,  'PDelivery', 'Online');
INSERT INTO orderdetail VALUES (10257, 601,  011,  14.40, 6,  'Paid', 'Phone');
INSERT INTO orderdetail VALUES (10258, 307, 056,  17.00, 65, 'PDelivery', 'Online');
      
/*Data for the table delivery */
INSERT INTO delivery VALUES (901, 10245, 021, 'D133', 'Obere Str. 57', 'Galway', '12209', '03000743', 'Delivered', '2019-02-07');
INSERT INTO delivery VALUES (902, 10246, 030, 'D133', 'Kirchgasse.6','Roscommon', '40401','1155598','Pending', '2019-02-08');
INSERT INTO delivery VALUES (903, 10247, 021, 'D151', 'Obere Str. 57', 'Galway', '12209', '03000743', 'Delivered', '2019-02-08');
INSERT INTO delivery VALUES (904, 10248, 077, 'D144', 'Avda. de la Constitucin 2222','Cork.','05021', '5555472', 'Delivered', '2019-02-09');
INSERT INTO delivery VALUES (905, 10249, 041, 'D122', 'Rua Ors .92','Dublin','05442', '91555559', 'Delivered' ,'2019-03-09');
INSERT INTO delivery VALUES (906, 10250, 063, 'D144', 'Berguvsvgen.  8','Athlone','95822', '09211234', 'Delivered' ,'2019-03-15');
INSERT INTO delivery VALUES (907, 10251, 063, 'D144', 'Berguvsvgen.  8','Athlone','95822', '09211234', 'Pending' ,'2019-03-16');
INSERT INTO delivery VALUES (908, 10252, 081, 'D151', 'Forsterstr. 57','Limerick','68306', '0621089', 'Delivered', '2019-03-17');
INSERT INTO delivery VALUES (909, 10253, 081, 'D151', 'Forsterstr. 57','Limerick','68306', '0621089', 'Pending', '2019-03-20');
INSERT INTO delivery VALUES (910, 10254, 072, 'D151', 'Sierras de Granada. 9993','Roscommon','45231', '06210892', 'Delivered', '2019-04-05');
INSERT INTO delivery VALUES (912, 10255, 072, 'D133', 'Sierras de Granada. 9993','Roscommon','45231', '06210892', 'Pending', '2019-04-12');
INSERT INTO delivery VALUES (913, 10256, 099, 'D144', 'Grenada Court.5','Dublin','77071','02410594', 'Pending', '2019-05-20');
INSERT INTO delivery VALUES (914, 10257, 011, 'D122', 'Ross Cottage.7a','Athlone','17072','1112323', 'Delivered' ,'2019-05-22');
INSERT INTO delivery VALUES (915, 10258, 056, 'D122', 'King George. 35','Athlone','66071','767536', 'Pending', '2019-05-30');












