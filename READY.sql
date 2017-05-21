DECLARE CursorLab CURSOR
Keyset
FOR
select *from Products
order by ProductID
--開啟
OPEN CursorLab

deallocate @i=0

while(@@FETCH_STATUS=0)
begin
 FETCH NEXT FROM CursorLab into @ProductId

end


select @@FETCH_STATUS
CLOSE CursorLab       --關掉之後可以開啟
deallocate CursorLab  --清除 Cursor 解除定義
select @@FETCH_STATU