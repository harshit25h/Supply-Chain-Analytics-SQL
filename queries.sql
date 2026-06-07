-- Highest Inventory Warehouse

SELECT Warehouse,
       SUM(Inventory) AS Total_Inventory
FROM inventory
GROUP BY Warehouse
ORDER BY Total_Inventory DESC
LIMIT 1;

-- Understocked Products

SELECT products.Product_Name,
       inventory.Inventory,
       demand.Demand
FROM products
JOIN inventory
ON products.Product_ID = inventory.Product_ID
JOIN demand
ON products.Product_ID = demand.Product_ID
WHERE demand.Demand > inventory.Inventory;

-- Warehouses with Inventory > 100

SELECT Warehouse,
       SUM(Inventory) AS Total_Inventory
FROM inventory
GROUP BY Warehouse
HAVING SUM(Inventory) > 100;
