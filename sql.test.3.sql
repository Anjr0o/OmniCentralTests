-- Based on the test database, the database already has 3 tables, customers, products, and purchases
-- An example: Select a as column_1, b as column_2 from ...
-- Create a Sql Select Statement in MSSql or MySql with 2 columns: client_name, sum_of_purchases
SELECT
    name AS client_name,
    TotalAmount AS sum_of_purchases
FROM
    (
        SELECT
            a.id,
            a.customer_id,
            b.TotalAmount
        FROM
            (
                SELECT
                    purchases.id,
                    customer_id,
                    price
                FROM
                    purchases
                    INNER JOIN products ON purchases.product_id = products.id
            ) a
            JOIN (
                SELECT
                    customer_id,
                    SUM(price) AS TotalAmount
                FROM
                    (
                        SELECT
                            purchases.id,
                            customer_id,
                            price
                        FROM
                            purchases
                            INNER JOIN products ON purchases.product_id = products.id
                    ) a
                GROUP BY
                    customer_id
            ) AS b ON a.customer_id = b.customer_id
    ) c
    INNER JOIN customers ON c.customer_id = customers.id
GROUP BY
    name;