use Northwind
GO
    
-- �w�q Cursor (�Яd�N Keyset �ﶵ)
DECLARE CursorLab CURSOR
Keyset
FOR 
select * from Customers --�m�ߧ令product
  order by CustomerID     --productID

-- �}�� Cursor
OPEN CursorLab

-- ���˵��Ĥ@�������e  
FETCH NEXT FROM CursorLab

-- �b�t�@�� Client �ק���
-- update Customers set ContactName = 'Maria Anders2' where CustomerID = 'ALFKI'

-- ��^�e�@��(������Ĥ@��), ��Ƥ��e�O����?
FETCH PRIOR FROM CursorLab

-- �����m��
CLOSE CursorLab       --��������i�H�}��
deallocate CursorLab  --�M�� Cursor �Ѱ��w�q
select @@FETCH_STATUS--�p�G���O0�O-1 �N����~

