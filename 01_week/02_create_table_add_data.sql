show DATABASES;

use WEEK_01;

show TABLES;

CREATE table if not exists customer
(
      CustomerID INT PRIMARY KEY,
      CustomerName VARCHAR(50),
      LastName VARCHAR(50),
      Country VARCHAR(50),
      Age INT CHECK (Age >= 0 AND Age <= 200),
      Phone int(10)
);

INSERT into customer values 
(1, 'John Doe', 'Doe', 'USA', 30, 5551234), 
(2, 'Jane Smith', 'Smith', 'Canada', 25, 5555678), 
(3, 'Alice Johnson', 'Johnson', 'UK', 28, 5559012), 
(4, 'Bob Brown', 'Brown', 'Australia', 35, 5553456);

