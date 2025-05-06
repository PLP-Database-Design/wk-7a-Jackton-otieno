--- Question 1

CREATE TABLE ProductDetail_1NF (
    OrderID INT,
    CustomerName VARCHAR(100),
    Product VARCHAR(100)
);

-- For John Doe
INSERT INTO ProductDetail_1NF VALUES (101, 'John Doe', 'Laptop');
INSERT INTO ProductDetail_1NF VALUES (101, 'John Doe', 'Mouse');

-- For Jane Smith
INSERT INTO ProductDetail_1NF VALUES (102, 'Jane Smith', 'Tablet');
INSERT INTO ProductDetail_1NF VALUES (102, 'Jane Smith', 'Keyboard');
INSERT INTO ProductDetail_1NF VALUES (102, 'Jane Smith', 'Mouse');

-- For Emily Clark
INSERT INTO ProductDetail_1NF VALUES (103, 'Emily Clark', 'Phone');





--- Question 2


CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(255)
);

CREATE TABLE OrderProducts (
    OrderID INT,
    Product VARCHAR(255),
    Quantity INT,
    PRIMARY KEY (OrderID, Product),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);

INSERT INTO Orders (OrderID, CustomerName) VALUES (101, 'John Doe');
INSERT INTO Orders (OrderID, CustomerName) VALUES (102, 'Jane Smith');
INSERT INTO Orders (OrderID, CustomerName) VALUES (103, 'Emily Clark');


INSERT INTO OrderProducts (OrderID, Product, Quantity) VALUES (101, 'Laptop', 2);
INSERT INTO OrderProducts (OrderID, Product, Quantity) VALUES (101, 'Mouse', 1);
INSERT INTO OrderProducts (OrderID, Product, Quantity) VALUES (102, 'Tablet', 3);
INSERT INTO OrderProducts (OrderID, Product, Quantity) VALUES (102, 'Keyboard', 1);
INSERT INTO OrderProducts (OrderID, Product, Quantity) VALUES (102, 'Mouse', 2);
INSERT INTO OrderProducts (OrderID, Product, Quantity) VALUES (103, 'Phone', 1);
