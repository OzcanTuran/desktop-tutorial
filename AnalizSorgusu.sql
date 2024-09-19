
-- Her bir ürün için toplam satış tutarını ve satış sayısı
SELECT 
p.ProductName AS Urun_Adı,
SUM(p.Price * s.Quantity) AS Toplam_Satış_Tutarı,
COUNT(s.Quantity) AS Toplam_Satış_Sayısı
FROM pcmarketdb.products AS p
INNER JOIN pcmarketdb.sales AS s ON s.ProductID=p.ProductID
GROUP BY p.ProductName
ORDER BY Toplam_Satış_Tutarı DESC;

-- En Yüksek Satışı Olan Ürün
SELECT
p.ProductName,
SUM(p.Price * s.Quantity) AS Toplam_Satış_Tutarı
FROM pcmarketdb.products P
INNER JOIN pcmarketdb.sales AS s ON s.ProductID=p.ProductID
GROUP BY p.ProductName
ORDER BY Toplam_Satış_Tutarı DESC LIMIT 1;
