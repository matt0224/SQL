
create view aaa as
  select *from Products
  where UnitPrice<ReorderLevel

  go

  select *from aaa
  go