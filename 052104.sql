
create procedure usp_ListProd as 
	select *from Products
go

execute usp_ListProd 

drop procedure usp_ListProd
go

create procedure usp_ListProd   --���㪺procedure�Ocreate�}�l,go����,�p�G�e�����F��n��go�j�}
	@min money=0,
	@max money=999
as 
	select *from Products where  UnitPrice between @min and @max
go

execute usp_ListProd   --all
execute usp_ListProd @max=12 --�w�]�n����