
create procedure usp_ListProd as 
	select *from Products
go

execute usp_ListProd 

drop procedure usp_ListProd
go

create procedure usp_ListProd   --完整的procedure是create開始,go結尾,如果前面有東西要用go隔開
	@min money,
	@max money
as 
	select *from Products where  UnitPrice between @min and @max
go

execute usp_ListProd 10,20    ----call by value
execute usp_ListProd @max=12 ,@min=10 ---call by name