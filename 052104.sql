
create procedure usp_ListProd as 
	select *from Products
go

execute usp_ListProd 

drop procedure usp_ListProd
go

create procedure usp_ListProd   --完整的procedure是create開始,go結尾,如果前面有東西要用go隔開
	@min money=0,
	@max money=999
as 
	select *from Products where  UnitPrice between @min and @max
go

execute usp_ListProd   --all
execute usp_ListProd @max=12 --預設要給值