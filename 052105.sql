

create procedure usp_ListProd   --���㪺procedure�Ocreate�}�l,go����,�p�G�e�����F��n��go�j�}
	@min money=null,
	@max money=null
as 
    if(@min is null)
	 set @min=10   --�S����Ƶ�10 
    if (@max is null)
	 select @max=max(UnitPrice)  from Products  --�S����Ʊqproducts�����
	select *from Products where  UnitPrice between @min and @max
go


execute usp_ListProd