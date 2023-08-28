create table online_order
(
order_id integer,
order_date date,
product_name varchar(100),
total_price decimal(6,2),
payment_method varchar(20) 
);

insert into online_order values(1,'2023-03-03','Maggi',20.2,'UPI');
insert into online_order values(2,'2023-03-02','Sauce',10.2,'UPI');

  



