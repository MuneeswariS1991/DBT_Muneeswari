-- models/customer/customer.sql

-- Create the Customer Table
with latest_customers as (
  select
    customer_id,
    first_name,
    last_name,
    email
  from source.customer
  group by customer_id
)

select
  lc.customer_id,
  lc.first_name,
  lc.last_name,
  lc.email
from latest_customers lc
