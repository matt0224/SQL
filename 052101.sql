--string: varchar(10)	
                                               --兩種
--number: int, decimal(5,2)e.g. 123.45 money
                    --共五碼小數點後面有兩位
declare @i int=0
set @i=75                     
select  @i=  UnitPrice             --設定變數內容兩個做法set 跟select建議用後者
    from Products where ProductID=1
select @i                          --讓內容出現
GO
    