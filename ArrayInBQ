--Creating ARRAY
WITH transactions AS
(
  SELECT
    1000001 AS id,
    TIMESTAMP('2017-12-18 15:02:00') AS time,
    [ 
      STRUCT('ABC123456' AS sku, 'furniture' AS description, 3 AS quantity, 36.3 AS price),
      STRUCT('TBL535522' AS sku, 'table' AS description, 6 AS quantity, 878.4 AS price),
      STRUCT('CHR762222' AS sku, 'chair' AS description, 4 AS quantity, 435.6 AS price)
    ] AS product
  UNION ALL
  SELECT
    1000002,
    TIMESTAMP('2017-12-16 11:34:00'),
    [
      STRUCT('GCH635354', 'Chair', 4, 345.7),
      STRUCT('GRD828822', 'Gardening', 2,9.5) 
    ] 
)
SELECT
  *
FROM transactions


-- Unnesting ARRAY
WITH transactions AS
(
  SELECT
    1000001 AS id,
    TIMESTAMP('2017-12-18 15:02:00') AS time,
    [ 
      STRUCT('ABC123456' AS sku, 'furniture' AS description, 3 AS quantity, 36.3 AS price),
      STRUCT('TBL535522' AS sku, 'table' AS description, 6 AS quantity, 878.4 AS price),
      STRUCT('CHR762222' AS sku, 'chair' AS description, 4 AS quantity, 435.6 AS price)
    ] AS product
  UNION ALL
  SELECT
    1000002,
    TIMESTAMP('2017-12-16 11:34:00'),
    [
      STRUCT('GCH635354', 'Chair', 4, 345.7),
      STRUCT('GRD828822', 'Gardening', 2,9.5) 
    ] 
)
SELECT
  id, items.*
FROM transactions, 
  UNNEST(product) AS items
