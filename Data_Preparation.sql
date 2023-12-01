CREATE TABLE Customers
(
	CustomerID VARCHAR PRIMARY KEY,
	FirstName VARCHAR,
	LastName VARCHAR,
	CustomerEmail VARCHAR,
	CustomerPhone VARCHAR,
	CustomerAddress VARCHAR,
	CustomerCity VARCHAR,
	CustomerState VARCHAR,
	CustomerZip INT
);

CREATE TABLE Products
(
	ProdNumber VARCHAR PRIMARY KEY,
	ProdName VARCHAR,
	Category INT,
	Price INT
);

CREATE TABLE Orders
(
	OrderID VARCHAR PRIMARY KEY,
	Date TIMESTAMP,
	CustomerID VARCHAR REFERENCES Customers,
	ProdNumber VARCHAR REFERENCES Customers,
	Quantity INT
);

CREATE TABLE ProductCategory
(
	CategoryID VARCHAR PRIMARY KEY,
	CategoryName VARCHAR,
	CategoryAbbreviation VARCHAR
);