WITH
  base_table AS (
  SELECT
    value,
    INDEX
  FROM
    UNNEST(GENERATE_ARRAY(1,5)) value
  WITH
  OFFSET
    AS INDEX )
SELECT
  bt.value,
  (
  SELECT
    SUM(value)
  FROM
    base_table bt2
  WHERE
    bt2.INDEX <= bt.INDEX ) AS cummulative_sum
FROM
  base_table bt
