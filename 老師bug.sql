
create table #temp
(
  ProductID int ,
  UnitsInStock int,
  TotalStock int
)
 while (@@FETCH_STATUS = 0)
begin
    set TotalStock = TotalStock + UnitsInStock
	print @ProductID
	print @UnitsInStock
	print @TotalStock
	print '------------------'
	FETCH NEXT FROM CursorLab into @ProductID, @UnitsInStock
end
INSERT INTO TotalStock SELECT * FROM #temp
go

-- �w�q Cursor (�Яd�N Keyset �ﶵ)
DECLARE CursorLab CURSOR
Keyset
FOR 
select ProductID, UnitsInStock from Products
  order by ProductID

-- �}�� Cursor
OPEN CursorLab

-- ���˵��Ĥ@�������e
-- @@FETCH_STATUS
declare @ProductID int = 0
declare @UnitsInStock int = 0
declare @TotalStock int = 0
FETCH NEXT FROM CursorLab into @ProductID, @UnitsInStock
print 'init:'
print @@FETCH_STATUS
print '--'
while (@@FETCH_STATUS = 0)
begin
    set @TotalStock = @TotalStock + @UnitsInStock
	print @ProductID
	print @UnitsInStock
	print @TotalStock
	print '------------------'
	FETCH NEXT FROM CursorLab into @ProductID, @UnitsInStock
end

-- �����m��
CLOSE CursorLab
deallocate CursorLab

select * from #temp

drop table #temp