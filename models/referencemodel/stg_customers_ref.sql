{{ config(materialized = 'view')}}
select id as customer_id,
first_name,
last_name,
first_name||last_name||'@gmail.com' as email
from {{source('jaffle_shop','customers')}}