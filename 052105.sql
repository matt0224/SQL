

create procedure usp_ListProd   --完整的procedure是create開始,go結尾,如果前面有東西要用go隔開
	@min money=null,
	@max money=null
as 
    if(@min is null)
	 set @min=10   --沒給資料給10 
    if (@max is null)
	 select @max=max(UnitPrice)  from Products  --沒給資料從products取資料
	select *from Products where  UnitPrice between @min and @max
go


execute usp_ListProd