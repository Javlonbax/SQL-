create database stat02_lesson8
use stat02_lesson8

select * from Customers
select * from FactSales

-- join, cardinality
      --- inner join
	  --- outer join
	       --- left outer join
		   --- right outer join
		   --- full outer join
	-- cross join
	-- self join

create table test1 (id int)
insert into test1 values (1), (2), (3), (4)
select * from test1

create table test2 (id int)
insert into test2 values (3), (4), (5), (6)
select * from test2

select * from test1
inner join test2                            --- ikkalovida bor kluchlilarni birlashtiradi
on test1.id=test2.id

select * from test1
left join test2                           -----  chapdagi hamma klyuchla bo`ladi
on test1.id=test2.id

select * from test1
right join test2                           -----  o`ngdagi hamma klyuchla bo`ladi
on test1.id=test2.id

select * from test1
full join test2                           -----  hamma klyuchla bo`ladi
on test1.id=test2.id

select * from test1
cross join test2                           ------     test1 dagi har bir klyuchga test2 dagi har bir klyuchchi bo`g`lap chiqadi

create table employee (empid int, name varchar(30), manegid int)
insert into employee values
		(1, 'Hamrayev',null),
		(2, 'Ziyayev',1),
		(3, 'Maxamadiyev',1),
		(4, 'Mamur',2),
		(5, 'Dilshod',3),
		(6, 'Xurshid',4),
		(7, 'Kamoliddin',5)

select employee.name as employee, isnull (manager.name,'no name') as manager from employee as employee     --- null bo`lsa no name, aks holda manager.name chiqadi
left join employee as manager
on employee.manegid=manager.empid

select * from customers
select * from FactSales

select top 5 FirstName, sum(SalesAmount) as totalsale from customers       ---- top 5 tani chiqaradi
inner join FactSales
on customers.customerid=FactSales.customerid
group by FirstName
order by totalsale desc

select FirstName, SalesAmount from customers
left join FactSales
on customers.customerid=FactSales.customerid
where SalesAmount is Null