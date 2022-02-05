##Select only columns that are required:  (use case of except)

select * except(last_name,first_order_date) from `bigquery-demo-329104.analytics.customer` 


## Using partitioning and clustering to prune out data which is not required.

## Try to avoid group by whenever possible, instead use nested queries and utiliste array_length to get the aggregation if required.
