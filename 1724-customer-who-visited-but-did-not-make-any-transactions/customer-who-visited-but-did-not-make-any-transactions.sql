# Solution 1
SELECT
    customer_id,
    COUNT(customer_id) AS count_no_trans
FROM Visits
WHERE visit_id NOT IN (
    SELECT visit_id
    FROM Transactions
)
GROUP BY customer_id


# Solution 2
-- SELECT
--     V.customer_id AS customer_id,
--     COUNT(V.customer_id) AS count_no_trans
-- FROM Visits V
-- LEFT JOIN Transactions T ON V.visit_id = T.visit_id
-- WHERE T.visit_id IS NULL
-- GROUP BY customer_id

