SELECT 
`testdbfordbt-444411.testdbfordbt.stg_orders`.customer_id,
sum(`dbt-tutorial.stripe.payment`.amount) / 100 as lifetime_value


from `testdbfordbt-444411.testdbfordbt.stg_orders`
left join `dbt-tutorial.stripe.payment`
on `testdbfordbt-444411.testdbfordbt.stg_orders`.order_id = `dbt-tutorial.stripe.payment`.orderid

group by customer_id