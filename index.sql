-- Vous devez créer le modèle relationnel ci-dessus en utilisant le langage SQL et en vous basant sur les différentes contraintes mentionnées.

-- Product table 
CREATE TABLE Product (
    Product_Id VARCHAR2(20) PRIMARY KEY,
    Product_Name VARCHAR2(20) NOT NULL,
    Price NUMBER CHECK (Price > 0),
);

--Customer table
CREATE TABLE Customer (
    Customer_Id VARCHAR2(20) PRIMARY KEY,
    Customer_Name VARCHAR2(20) NOT NULL,
    Customer_Tel NUMBER

);

-- Orders table
CREATE TABLE Orders (
    Orders_Id VARCHAR2(20) PRIMARY KEY,
    Customer_Id VARCHAR2(20),
    Product_Id VARCHAR2(20),
    Quantity NUMBER,
    Total_amount NUMBER
    CONSTRAINT fk_customer FOREIGN KEY (Customer_Id) REFERENCES Customer(Customer_Id),
    CONSTRAINT fk_product  FOREIGN KEY (Product_Id)  REFERENCES  Product(Product_Id),
);

-- Après avoir créé les tables, écrivez les commandes SQL pour:

-- Ajouter une colonne Catégorie (VARCHAR2(20)) à la table PRODUIT. 
ALTER TABLE Product ADD Catégorie VARCHAR2(20);

-- Ajouter une colonne Date de commande (DATE)  ; à la table COMMANDES qui ont SYSDATE comme valeur par défaut.
ALTER TABLE Orders ADD command_date DATE DEFAULT SYSDATE;