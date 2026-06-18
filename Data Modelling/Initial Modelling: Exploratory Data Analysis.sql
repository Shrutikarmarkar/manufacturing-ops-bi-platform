USE AdventureWorks2025;
-- Count Rows
/*
SELECT 'WorkOrder' AS TableName, COUNT(*) AS NumRows FROM Production.WorkOrder
UNION ALL
SELECT 'PurchaseOrderHeader', COUNT(*) FROM Purchasing.PurchaseOrderHeader
UNION ALL
SELECT 'PurchaseOrderDetail', COUNT(*) FROM Purchasing.PurchaseOrderDetail
UNION ALL
SELECT 'Vendor', COUNT(*) FROM Purchasing.Vendor
UNION ALL
SELECT 'Product', COUNT(*) FROM Production.Product
UNION ALL
SELECT 'ScrapReason', COUNT(*) FROM Production.ScrapReason
UNION ALL
SELECT 'ProductVendor', COUNT(*) FROM Purchasing.ProductVendor;'''

*/

-- looking inside Production.WorkOrder and Purchasing.PurchaseOrderHeader since these are the two tables our KPIs depend on most heavily. 
/*
SELECT TOP 10 * FROM Production.WorkOrder;
SELECT TOP 10 * FROM Purchasing.PurchaseOrderHeader;
*/

-- Does scrap actually occur anywhere in this dataset?
/*
SELECT COUNT(*) AS WorkOrdersWithScrap
FROM Production.WorkOrder
WHERE ScrappedQty > 0; 
*/

-- Let's see what values Status actually contains, since this likely drives our PO Fulfillment Rate KPI
/*
SELECT Status, COUNT(*) AS NumOrders
FROM Purchasing.PurchaseOrderHeader
GROUP BY Status
ORDER BY Status;
*/

--SELECT name FROM sys.columns WHERE object_id = OBJECT_ID('Purchasing.Vendor');
SELECT name FROM sys.columns WHERE object_id = OBJECT_ID('Purchasing.ProductVendor');





