-- Based on the test database, the database already has 3 tables, customers, products, and purchases
-- An example: Select a as column_1, b as column_2 from ...
-- Create a Sql Select Statement in MSSql or MySql with 2 columns: product_name, number_of_purchases
SELECT
    name AS product_name,
    COUNT(*) AS number_of_purchases
FROM
    products
    INNER JOIN purchases ON products.id = purchases.product_id
GROUP BY
    name;