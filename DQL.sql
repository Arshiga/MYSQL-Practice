select * from customers;
select firstname, lastname, email from customers;
select * from accounts;
select * from accounts where account_type= 'saving';
select * from accounts where balance> 25000;

select * from Transactions;
select * from Transactions where Amount between 5000 and 20000;

SELECT *
FROM Customers
WHERE CustomerID IN (101,102,103);

SELECT *
FROM Customers
WHERE FirstName LIKE 'R%';

select * from customers ORDER BY FIRSTNAME ASC;
select * from ACCOUNTS ORDER BY BALANCE DESC;
SELECT DISTINCT ACCOUNT_TYPE FROM ACCOUNTS;

SELECT * FROM Accounts ORDER BY Balance DESC LIMIT 3;
SELECT * FROM Transactions LIMIT 5 OFFSET 2;
SELECT * FROM CUSTOMERS WHERE PHONE IS NULL;
SELECT * FROM CUSTOMERS WHERE EMAIL IS NOT NULL;

use bankingdb;
SELECT Account_ID,
       Balance,
       CASE Balance
           WHEN Balance >= 50000 THEN 'Premium Account'
           WHEN Balance >= 25000 THEN 'Standard Account'
           ELSE 'Basic Account'
       END AS AccountCategory
FROM Accounts;


