-- The case of ITC AND ITS SALES--
--CREATE A EXCEL DATA SHEET CONTAINING THE COLOUM NAME DISTRIBUTORS ID, NAME, CITY, REGION, PHONE
CREATE TABLE distributors (
  distributors_id INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  city TEXT,
  region TEXT,
  Phone TEXT
  );
  
  
  --DROPPING THE TABLE--
  drop TABLE distributors;
  
  --- CREATE A TABLE WITH A NAME PRODUCTS CONTAINING PRODUCT ID, PRODUCT NAME, BRAND, CATEGORY, PRICE & STOCK --
  CREATE TABLE PRODUCT(
  product_id INTEGER PRIMARY KEY,
  product_name TEXT NOT NULL UNIQUE,
  brand TEXT,
  category TEXT NOT NULL,
  price REAL CHECK (price>0),
  stock INTEGER DEFAULT 0
  );
  
  ---- CREATE A TABLE CONTAINING NAME SALES AND SHOULD HAVE COLUMNS, NAMES, SALES ID, PRODUCT ID, DISTRIBUTOR ID, SALES ID, SALE DATE, QUANTITY & AMOUNT --
  CREATE TABLE SALES(
    sale_id INTEGER PRIMARY KEY,
    product_id INTEGER,
    distributors_id INTEGER,
    sale_date TEXT,
    quantity  INTEGER CHECK (quantity>0),
    amount REAL,
    FOREIGN KEY (product_id) REFERENCES PRODUCT(product_id),
    FOREIGN KEY (distributors_id) REFERENCES distributors(distributors_id)
    );
    
    
    --CHECKING THE COLOUMN--
 PRAGMA table_info(sales);
  
    