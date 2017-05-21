use northwind
go

set xact_abort off
go


begin tran
  print 'flag 1'
  print @@TranCount

  print 'flag 2'
  select * from productss

  print 'flag 3'
  print @@TranCount

rollback tran
go
-- note: print @@TranCount > 0, that is... transaction still on!! 這邊不會往下走





-- alter table products drop constraint chk_price
-- alter table products drop constraint CK_Products_UnitPrice
alter table products add constraint chk_price check (UnitPrice >= 0)
select * from products
go

begin tran
  print 'flag 1'
  print @@TranCount

  print 'flag 2'
  update products set unitPrice = -1 where productID = 1

  print 'flag 3'
  print @@TranCount

rollback tran
go

-- flag 2 skipped, go ahead to flag3
print @@TranCount






begin tran
  print 'flag 1'
  print @@TranCount

  print 'flag 2'
  update products set unitPrice = -1 where productID = 1
  if @@error <> 0
  begin
    print 'flag: if @error is true'
    rollback tran
    return
  end

  print 'flag 3'
  print @@TranCount

rollback tran
go

-- flag 2 skipped, go ahead to flag3
print @@TranCount



set xact_abort on
begin tran
  print 'flag 1'
  print @@TranCount

  print 'flag 2'
  update products set unitPrice = -1 where productID = 1

  print 'flag 3'
  print @@TranCount

rollback tran
go

-- flag 2 skipped, go ahead to flag3
print @@TranCount


