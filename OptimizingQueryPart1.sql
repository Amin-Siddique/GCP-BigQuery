##Select only columns that are required:  (use case of except)

select * except(last_name,first_order_date) from `bigquery-demo-329104.analytics.customer` 
