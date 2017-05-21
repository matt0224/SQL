/* 010 
  �T�w���}���O Northwind ��Ʈw */
use Northwind
go

/* 110 
  �мg�@�D���O, �C�X:
  products ��ƪ����Ҧ����~���
 */ 
 select * from Products


/* 120 
  �мg�@�D���O. �C�X:
  products ��ƪ����Ҧ����~, ���C��Ʈ�, �ЦC�X�H�U���:
  ProductID, ProductName, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel
 */ 
 select ProductID, ProductName, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel from Products


/* 130 
  �мg�@�D���O, �C�X:
  products ��ƪ� "�w�s�q�C��A�q�ʶq" �����~���, ���C��Ʈ�, 
  �ЦC�X�H�U���:
  ProductID, ProductName, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel
 */ 
 select ProductID, ProductName, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel 
 from products 
 where  UnitsInStock < ReorderLevel



/* 140 
  �мg�@�D���O, �C�X:
  products ��ƪ� (�w�s�q + �q�ʤ��ƶq) �C��A�q�ʶq�����~���, ���C��Ʈ�, 
  �ЦC�X�H�U���:
  ProductID, ProductName, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel
 */ 
 use Northwind
 select ProductID, ProductName, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel 
 from products
 where ( UnitsInStock + UnitsOnOrder) < ReorderLevel
 Go


/* 150 
  �мg�@�D���O, �C�X:
  products ��ƪ� "�w�s�q�C��A�q�ʶq" �����~���, ���C��Ʈ�, 
  �ЦC�X�H�U���
  SupplierID, ProductID, ProductName, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel

  �åB, �ۦP�����ӥN��(SupplierID)�����~�бƦb�@�_
 */ 





/* 160 
  �мg�@�D ���O �C�X:
  products table ���~�W�٥H C �}�Y�����
 */ 
 use Northwind
 select ProductID, ProductName, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel 
 from products
 where ProductName LIKE 'C%'
 Go
 



/* 170 
  �мg�@�D���O, �C�X:
  products ��ƪ������O�s��(CategoryID)�� 1, 4, 8 �����~���
  �ƧǮ�, �Ы�"���O�s��"�Ƨ�, �ۦP���O�s�������~�����~�W��(ProductName)�ƦC
 */ 
 
 select*
 from products
 where CategoryID IN (1,4,8)
 order by CategoryID,
 Go




/* 180 
  �мg�@�D���O, �C�X:
  products ��ƪ���������� 10 �� 20 ������(�]�t 10, 20)�����~���
  �åB���ӳ��(UnitPrice)�Ѥj��p�Ƨ�
 */ 
 
 select*
 from products
 where (UnitPrice >=10 and UnitPrice<=20) or CategoryID=1
 order by UnitPrice desc





/* 190 
  �мg�@�D���O, �C�X:
  products ��ƪ����Ҧ����~, ���C��Ʈ�, 
  �ЦC�X�H�U���
  ProductID, ProductName, UnitPrice, 

  ���L, �U���W�ٽХΤ������:
  ���~�s��, ���~�W��, ���
 */ 






-- 210 �ЦC�X����̰����e�T�����~�C





-- 220 �ЦC�X���~����������C




-- 230 �ХH���O�s��(CategoryID)���� 1, 4, 8 ���p��d��, �p�ⲣ�~����������C




-- 240 �ЦC�X�U�����~����������C




-- 250 �ЦC�X��������̰����e�T�����~�C




/* 310
  �мg�@�D���O, �C�X products ��ƪ����H�U���
  ProductID, ProductName, SupplierID
 */ 




/* 320
   �P�W, ���Ф@�֦C�X�Ө����ӦW��(CompanyName)�B
   �p���q��(Phone)�B�p���H(ContactName)�n��?
   �t�~, �ۦP�����Ӫ���ƽЦC�b�@�_
 */ 




/* 330
   �ڷQ�C�X�u�Ҧ��v�����ӥثe�U�۴��ѧڭ̭��ǲ��~��ƪ���Ӫ�,
   �ثe�S���ѧڭ̲��~�������Ӥ]�n�C�X

   <note>
   �U���O�e, �Х�����U�C���O:
   -- begin --
   insert into suppliers
     (CompanyName, ContactName, Phone)
      values
     ('Taiwan First', 'A-Ban', '(001) 000-0001')
   -- end --
 */ 




-- (Optional)
-- 340 �ЦC�X���u�Ψ���u���ݦ���]ReportsTo�^���M��C




/* 410
  �ЦC�X�U�����~�����O�B�s���B�~�W�B����B
  �������~��������B����P���~����������u���t�v�C
*/




/* 420
   �ЦC�X���q�ĤT�����~���q��C
*/





/* 430
  �ЦC�X��o�̦n�e�T�����~�C
*/

