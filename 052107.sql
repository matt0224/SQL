use Northwind
GO
    
-- 定義 Cursor (請留意 Keyset 選項)
DECLARE CursorLab CURSOR
Keyset
FOR 
select * from Customers --練習改成product
  order by CustomerID     --productID

-- 開啟 Cursor
OPEN CursorLab

-- 請檢視第一筆的內容  
FETCH NEXT FROM CursorLab

-- 在另一個 Client 修改資料
-- update Customers set ContactName = 'Maria Anders2' where CustomerID = 'ALFKI'

-- 返回前一筆(原先的第一筆), 資料內容是什麼?
FETCH PRIOR FROM CursorLab

-- 結束練習
CLOSE CursorLab       --關掉之後可以開啟
deallocate CursorLab  --清除 Cursor 解除定義
select @@FETCH_STATUS--如果不是0是-1 代表錯誤

