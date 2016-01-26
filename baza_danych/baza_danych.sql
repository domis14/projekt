CREATE TABLE User 
(
user_id int auto_increment,
login varchar(20) NOT NULL,
password varchar(30) NOT NULL,
mail varchar(30) NOT NULL,
telephon_number varchar(16) NOT NULL,
PRIMARY KEY(user_id)
);


CREATE TABLE Category
(
category_id int auto_increment,
category varchar(20) NOT NULL,
PRIMARY KEY(category_id)
);


CREATE TABLE Car 
(
car_id int auto_increment,
name varchar(30) NOT NULL,
price int(6) NOT NULL,
description varchar(256) NOT NULL,
category_id int,
img_url varchar(150),
status varchar(124),
PRIMARY KEY(car_id),
FOREIGN KEY (category_id) references Category(category_id)
);

CREATE TABLE History 
(
history_id int auto_increment,
car_id int NOT NULL,
history_text varchar(400) NOT NULL,
user_id int NOT NULL,
rate int,
PRIMARY KEY(review_id),
FOREIGN KEY(car_id) references Car (car_id),
FOREIGN KEY(user_id) references User (user_id)
);

/*
CREATE TABLE Morder 
(
order_id int auto_increment,
user_id int NOT NULL,
order_data date NOT NULL,
order_status int NOT NULL,
item_status int,
PRIMARY KEY(order_id),
FOREIGN KEY (user_id) references User (user_id)
);

CREATE TABLE Morder_has_Movie 
(
morder_has_car_id int auto_increment,
order_id int NOT NULL,
car_id int NOT NULL,
PRIMARY KEY(morder_has_car_id),
FOREIGN KEY (car_id) references Car (car_id),
FOREIGN KEY (order_id) references Morder (order_id)
);