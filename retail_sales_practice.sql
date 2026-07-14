

create table Retail_sales (
		sales_id int not null,
		sale_date date,
		product varchar(50),
		quantity int ,
		revenue float,
constraint pk_retailsales primary key (sales_id)
);--CREATING A NEW TABLE FOR REATIL SALES

select * from Retail_sales; --CHECKING THE RETAIL TABLE

insert into Retail_sales(sales_id,sale_date,product,quantity,revenue)
values
(1,	'2026-01-20',	'Mouse',	6,	6326.5),
(2,	'2026-01-21',	'Mouse',	5,	13587),
(3,	'2026-01-19',	'Headphones',	3,	5111.03),
(4,	'2026-02-15',	'Keyboard',	8,	20003.09),
(5,	'2026-03-04',	'Laptop',	9,	3088.46),
(6,	'2026-01-16',	'Monitor',	7,	8244.1),
(7,	'2026-04-09',	'Monitor',	8,	23138.51),
(8,	'2026-03-05',	'Mouse',	6,	17864.72),
(9,	'2026-02-10',	'Keyboard',	7,	16882.29),
(10,	'2026-04-28',	'Phone',	6,	13811.7),
(11,	'2026-04-29',	'USB Drive',	6,	7526.33),
(12,	'2026-04-25',	'Printer',	9,	21579.78),
(13,	'2026-03-14',	'Mouse',	9,	6467.48),
(14,	'2026-03-04',	'Headphones',	4,	6346.1),
(15,	'2026-02-01',	'Monitor',	10,	875.55),
(16,	'2026-02-25',	'Headphones',	2,	1913.03),
(17,	'2026-02-23',	'Monitor',	7,	19059.23),
(18,	'2026-04-13',	'Headphones',	6,	5818.11),
(19,	'2026-03-31',	'Keyboard',	1,	2276.38),
(20,	'2026-04-10',	'Keyboard',	2,	5274.33),
(21,	'2026-02-10',	'USB Drive',	9,	18770.12),
(22,	'2026-05-03',	'Headphones',	9,	6752.04),
(23,	'2026-04-14',	'Headphones',	3,	6875.72),
(24,	'2026-04-11',	'Keyboard',	9,	1783.57),
(25,	'2026-05-22',	'Laptop',	8,	21122.17),
(26,	'2026-04-04',	'Keyboard',	3,	6144.38),
(27,	'2026-05-11',	'Laptop',	7,	11908.36),
(28,	'2026-02-02',	'Monitor',	1,	2026.77),
(29,	'2026-02-15',	'Laptop',	3,	4422.13),
(30,	'2026-01-01',	'Phone',	8,	20438.4),
(31,	'2026-02-18',	'Headphones',	5,	4718.53),
(32,	'2026-03-15',	'Phone',	2,	3401.04),
(33,	'2026-03-13',	'Monitor',	10,	5150.14),
(34,	'2026-05-02',	'Printer',	3,	7094.83),
(35,	'2026-01-07',	'Keyboard',	2,	5296.37),
(36,	'2026-02-27',	'Headphones',	4,	11498.74),
(37,	'2026-05-11',	'Monitor',	7,	19576.38),
(38,	'2026-03-24',	'Headphones',	3,	5238.81),
(39,	'2026-05-15',	'Headphones',	6,	8720.42),
(40,	'2026-02-27',	'Keyboard',	1,	1456.73); --inserting data in the table


select *,
	round( revenue/quantity,1) as price_per_unit
from Retail_sales -- Checking price_per_unit

select * from Retail_sales
where  sale_date between '2026-01-01' and '2026-01-31'; --checking orders for January only

select product,
       sum(quantity) as total_quantity
	   from Retail_sales
	   group by product
	   having  sum(quantity) >20
	   order by total_quantity desc --checking total quantity for each product with more than a total of 20 in quantity and sorting in descinding order


