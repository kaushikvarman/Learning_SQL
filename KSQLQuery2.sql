--to change the datatype of the column
alter table Orders alter column Profit INTEGER;

--to add a column
alter table Orders add review varchar(100); 

--to remove unwanted columns
alter table Orders drop column review;

--creating a sample table 
create table sample_orders
(
order_id integer NOT NULL,
order_date date,
product_name varchar(100),
price decimal(6,2),
--check constraint
payment_method varchar(20)
);

--drop table sample_orders

insert into sample_orders values(1,'2022-10-01','Perfume',2.5,'UPI');
insert into sample_orders values(2,'2022-10-02','Pe',25,'UPI');


select * from sample_orders

alter table sample_orders ADD CONSTRAINT payment_method CHECK(payment_method IN ('UPI','CREDIT'));

alter table sample_orders ADD CONSTRAINT U_order_id UNIQUE (order_id);

alter table sample_orders ADD CONSTRAINT Product_name DEFAULT 'NIKE' for product_name;

insert into sample_orders(order_id,order_date,price,payment_method) values(4,'2022-10-02',13.5,'UPI');

delete from sample_orders where order_id = 4;

update 