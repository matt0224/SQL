DECLARE CursorLab CURSOR
Keyset
FOR
select *from Products
order by ProductID
--�}��
OPEN CursorLab

deallocate @i=0

while(@@FETCH_STATUS=0)
begin
 FETCH NEXT FROM CursorLab into @ProductId

end


select @@FETCH_STATUS
CLOSE CursorLab       --��������i�H�}��
deallocate CursorLab  --�M�� Cursor �Ѱ��w�q
select @@FETCH_STATU