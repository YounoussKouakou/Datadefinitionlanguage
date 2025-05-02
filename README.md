Checkpoint SQL – Modélisation Relationnelle
🎯 Objectif
Dans ce checkpoint, votre objectif est de traduire un modèle relationnel en langage SQL en respectant les contraintes imposées.

📘 Références :
Modèle relationnel : Voir le schéma ici
Types de données associés : Voir le tableau ici
🛠️ Instructions
Créer les tables correspondant au modèle relationnel fourni, en respectant :

les types de données appropriés,
les clés primaires et étrangères,
les contraintes (NOT NULL, CHECK, etc.).
Ajoutez les colonnes suivantes après la création des tables :

Catégorie (type VARCHAR2(20)) à la table Product.
command_date (type DATE avec DEFAULT SYSDATE) à la table Orders.
🧩 Exemple attendu – Commandes SQL
🔹 Création des tables
CREATE TABLE Product (
    Product_Id VARCHAR2(20) PRIMARY KEY,
    Product_Name VARCHAR2(20) NOT NULL,
    Price NUMBER CHECK (Price > 0)
);

CREATE TABLE Customer (
    Customer_Id VARCHAR2(20) PRIMARY KEY,
    Customer_Name VARCHAR2(20) NOT NULL,
    Customer_Tel NUMBER
);

CREATE TABLE Orders (
    Orders_Id VARCHAR2(20) PRIMARY KEY,
    Customer_Id VARCHAR2(20),
    Product_Id VARCHAR2(20),
    Quantity NUMBER,
    Total_amount NUMBER,
    CONSTRAINT fk_customer FOREIGN KEY (Customer_Id) REFERENCES Customer(Customer_Id),
    CONSTRAINT fk_product  FOREIGN KEY (Product_Id) REFERENCES Product(Product_Id)
);
🔹 Ajout des colonnes
ALTER TABLE Product 
ADD Catégorie VARCHAR2(20);

ALTER TABLE Orders 
ADD command_date DATE DEFAULT SYSDATE;
✅ Objectif final
À la fin de ce checkpoint, vous aurez :

Modélisé et créé un schéma relationnel SQL fonctionnel,
Appliqué des contraintes d’intégrité,
Manipulé des structures de table via des commandes ALTER.
