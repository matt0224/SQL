--string: varchar(10)	
                                               --���
--number: int, decimal(5,2)e.g. 123.45 money
                    --�@���X�p���I�᭱�����
declare @i int=0
set @i=75                     
select  @i=  UnitPrice             --�]�w�ܼƤ��e��Ӱ��kset ��select��ĳ�Ϋ��
    from Products where ProductID=1
select @i                          --�����e�X�{
GO
    