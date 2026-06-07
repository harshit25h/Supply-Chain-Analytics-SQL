CREATE TABLE products (
    Product_ID INTEGER,
    Product_Name TEXT
);

CREATE TABLE inventory (
    Product_ID INTEGER,
    Warehouse TEXT,
    Inventory INTEGER
);

CREATE TABLE demand (
    Product_ID INTEGER,
    Demand INTEGER
);

CREATE TABLE warehouse (
    Warehouse TEXT,
    Capacity INTEGER
);
