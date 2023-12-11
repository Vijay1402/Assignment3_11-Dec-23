create database Exercise4Db
use Exercise4Db

create table Products
(PId int primary key,
PQ int,
PPrice float not null,
DiscountPercent float,
MfgDate date not null)

insert into Products values (1, 3, 128000, 5, '12/12/2021')
insert into Products values (2, 4, 128000, 10, '01/05/2022')
insert into Products values (3, 1, 128000, 15, '03/11/2020')
insert into Products values (4, 2, 128000, 12, '06/07/2023')
insert into Products values (5, 5, 128000, 20, '12/02/2020')

create function calcDisc
(@price float,
@disc float)
returns float
as
begin
return (@price*(1-(@disc/100)))
end

drop function calcDisc

select dbo.calcDisc(100,20) as Disc
select PId, PPrice, DiscountPercent, dbo.calcDisc(PPrice, DiscountPercent) as 'Price After Discount' from Products


