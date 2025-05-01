CREATE TABLE salesman(
salesman_id text,
name1 text,
city text,
comission int
);

INSERT INTO salesman(salesman_id, name1, city, comission) VALUES

('5001','james','newyork',15),
('5002','neil','paris',30),
('5005','pit','london',11),
('5006','lyon','paris',14),
('5007','paul','roam',13),
('5003','hen','sen jose',15);

CREATE TABLE customer(
customer_id text,
customer_name text,
city text,
grade int,
salesman_id text
);

INSERT into customer(customer_id, customer_name, city, grade, salesman_id) VALUES

('3002','nick','newyork',100,'5001'),
('3007','brad','newyork',200,'5001'),
('3005','graham','california',200,'5002'),
('3008','julian','london',300,'5006'),
('3004','johnson','paris',300,'5006'),
('3009','joff','berland',100,'5003'),
('3003','jozey','moscow',200,'5007'),
('3001','brad guzan','london',NULL,'5005');

CREATE TABLE orders(
ord_no text,
amount int,
ord_date text,
customer_id text,
salesman_id text
);

INSERT into orders(ord_no, amount, ord_date, customer_id, salesman_id) VALUES 

('7001',1050,'2025-01-05','3005','5002'),
('7009',270,'2025-01-10','3001','5001'),
('7002',65,'2025-01-11','3002','5003'),
('7004',110,'2025-01-17','3009','5007'),
('7007',900,'2025-01-19','3005','5005'),
('7002',2400,'2025-01-27','3007','5006');

SELECT * FROM salesman;
SELECT * FROM customer;
SELECT * FROM orders;

SELECT  orders.ord_no, customer.cutomer_name FROM orders
JOIN customer ON orders.customer_id = customer.customer_id;