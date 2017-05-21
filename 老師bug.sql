
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

-- 定義 Cursor (請留意 Keyset 選項)
DECLARE CursorLab CURSOR
Keyset
FOR 
select ProductID, UnitsInStock from Products
  order by ProductID

-- 開啟 Cursor
OPEN CursorLab

-- 請檢視第一筆的內容
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

-- 結束練習
CLOSE CursorLab
deallocate CursorLab

select * from #temp

drop table #temp