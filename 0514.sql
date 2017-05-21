select *from  Products
where  CategoryID in (1, 4, 8)

go 

select *from Products
select avg(UnitPrice) from Products