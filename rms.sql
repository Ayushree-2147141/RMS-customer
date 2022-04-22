use rms;
 
 drop table  menu;

CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL,
  `image` varchar(20) NOT NULL,
  `price` float NOT NULL,
  `name` varchar(50) NOT NULL,
  `food_des` varchar(500) NOT NULL,
  `food_type` enum('veg','non-veg','') NOT NULL,
  `cuisine_id` int(11) NOT NULL,
  `status` enum('available','unavailable','') NOT NULL
) ;

drop table menu;

insert into menu values(1,'img1',280,'Schezwan noodles','Schezwan Noodles are wide Chinese noodles are tossed in a chilly oili sauce made with Garlic,Schezwan chili peppers,ginger,soya sauce and vinegar.Its versatile and can be customized to add chicken and shrimp.','veg',1,'available');
insert into menu values(2,'img2',330,'Margherita Pizza','Margherita Pizza is a made with San Marzano Tomatoes,mozzarella cheese, fresh basil,salt,garlic cloves shredded minutely with olive oil.','veg',2,'available');
insert into menu values(3,'img3',90,'Moong Daal ke Pakode','Moongdal ke pakode is spicy Indian fritters made using yellow split moong dal,flavoured spices and herbs.','veg',3,'available');
insert into menu values(4,'img4',100,'Boiled eggs','Boiled eggs are eggs,typically from chicken,cooked with their shells unbroken,by immersion in boiling water.','non-veg',2,'available');
insert into menu values(5,'img5',350,'Chicken Sausage Pizza','It is made with your choice of classic pizza dough or cauliflower crust, then topped with mozzarella cheese, chicken sausage and spinach for a healthier pizza recipe.','non-veg',1,'available');
insert into menu values(6,'img6',100,'Boiled eggs','Boiled eggs are eggs,typically from chicken,cooked with their shells unbroken,by immersion in boiling water.','non-veg',2,'available');

select * from menu;