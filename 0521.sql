-- Lab �m��: View (�˵���)
use Northwind
go

-- �إ��˵���
create view vw_Test as
  select ProductID, ProductName, UnitPrice 
    from products 
    where UnitPrice < 50
go

-- �z�L�˵���s����ƪ�
select * from vw_Test  
update vw_Test set UnitPrice = 20 where ProductID = 1
go

-- �z�L�˵���ݤ��쪺���, ����z�L�˵���ק�
update vw_Test set UnitsInStock = 40 where ProductID = 1
update vw_Test set UnitPrice = 40 where ProductID = 9
go
              --set UnitPrice = 40 where ProductID = 9 ��bview���s�b���9��

-- �ŦX�˵��s���d�򪺸��, �w�]�i�H�令�˵���d�򤧥~.
update vw_Test set UnitPrice = 90 where ProductID = 1 

                       --set UnitPrice = 90 where ProductID = 1  ��Ƨ�W�L�w�]��
-- �A�ؤ@���˵���, �o���ڭ̥[�W with check option
create view vw_TestC as
  select ProductID, ProductName, UnitPrice 
  from products 
  where UnitPrice < 50
with check option
go                 
           --with check option 
-- �A�դ@��
select * from vw_TestC
update vw_TestC set UnitPrice = 20 where ProductID = 3
update vw_TestC set UnitPrice = 60 where ProductID = 3  -- should be ERROR!!
select * from vw_TestC
				--with check option ���F����W���N�i�H�ק�F

-- �٭� Lab �m������
drop view vw_Test
drop view vw_TestC
go

--�إ�viev �U�������order by �u��b�W����
   --select from xxx order by xxx asc
      -- ���D�g�U select top 9999 xxx,xxx,xxx
	           -- from xxx
				-- where xxx<50
				-- order by xxx desc