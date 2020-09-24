-- Based on the test database, the database already has 3 tables, customers, products, and purchases
-- An example: Select a as column_1, b as column_2 from ...
-- Create a Sql Select Statement in MSSql or MySql with 2 columns: client_name, number_of_purchases
SELECT
    name AS client_name,
    COUNT(*) AS number_of_purchases
FROM
    purchases
    INNER JOIN customers ON purchases.customer_id = customers.id
GROUP BY
    name;