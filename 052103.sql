
create procedure usp_ListProd as 
	select *from Products
go

execute usp_ListProd 

drop procedure usp_ListProd
go

create procedure usp_ListProd   --���㪺procedure�Ocreate�}�l,go����,�p�G�e�����F��n��go�j�}
	@min money,
	@max money
as 
	select *from Products where  UnitPrice between @min and @max
go

execute usp_ListProd 10,20    ----call by value
execute usp_ListProd @max=12 ,@min=10 ---call by name