--Using ARRAY of STRUCTs, we gain significant performance advantage by avoiding table JOINs. 
--ARRAY of STRUCTs can be treated as pre-joined tables retaining the structure of the data. 
--Individual elements in the nested records can be retrieved only when needed . 
--There is also the added benefit of having all the business context in one table, as opposed to managing JOIN keys and associated tables.

--We can access the nested field by dot notation as depicted below:

WITH transactions AS (
  SELECT 1000001 AS order_id, TIMESTAMP('2017-12-18 15:02:00') AS order_time,
          STRUCT(65401 AS id,	'John Doe' AS name,	'Faraway' AS location) AS customer,    --Nested
          [
            STRUCT('ABC123456' AS sku, 3 AS quantity, 36.3 AS price),
            STRUCT('TBL535522' AS sku, 6 AS quantity, 878.4 AS price),
            STRUCT('CHR762222' AS sku, 4 AS quantity, 435.6 AS price)
          ] AS orders   --Array of repeated records
  UNION ALL 
  SELECT 1000002, TIMESTAMP('2017-12-16 11:34:00'), 
        STRUCT(74682, 'Jane Michaels', 'Nearland') AS customer,
        [
            STRUCT('GCH635354',   4,      345.7),
            STRUCT('GRD828822', 2,      9.5)
        ] AS orders
)
SELECT 
  t.order_id,
  t.customer.name,
  SUM(orders.price) AS total_purchased
FROM transactions AS t, UNNEST(orders) AS orders
GROUP BY t.order_id, t.customer.name


