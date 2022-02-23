-- 1. Show all customer records
SELECT * FROM sales.customers;
-- 2. Show total number of customers
SELECT count(*) FROM sales.customers;
-- 3. Show transaction for Chennai Market (Market code for Chennai is Mark001
SELECT * FROM sales.transactions WHERE market_code='Mark001';
-- 4. Show distinct product code that were sold in Chennai 
SELECT DISTINCT product_code FROM sales.transactions WHERE market_code='Mark001';
-- 5. Show transaction where currency is US Dollars
SELECT * FROM sales.transactions WHERE currency='USD';
-- 6. Show transactions in 2020 join by date table
SELECT transactions.*, date.* FROM transactions INNER JOIN date ON transactions.order_date=date.date where date.year=2020;
-- 7. Show total revenue in year 2020,
SELECT SUM(transactions.sales_amount) FROM transactions INNER JOIN date ON transactions.order_date=date.date where date.year=2020 and transactions.currency="INR\r" or transactions.currency="USD\r";
