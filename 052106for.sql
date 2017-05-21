declare @i int=0
set @i=1 
while (@i<=3)
begin
 print @i
 set @i=@i+1
end

select @@FETCH_STATUS