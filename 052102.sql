declare @i int=100

if @i>0   --也可以加括號
begin
    print 100
	            --begin (裡面至少要一行)end={}
	 print 101
 end
 else          --else
 begin
   print 111
 end

 declare @y int=100

if (@y between 10 and 20)   --也可以加括號
begin
    print 100           --begin (裡面至少要一行)end={}
	 print 101
 end
 else          --else
 begin
   print 111
 end