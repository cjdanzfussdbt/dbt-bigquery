SELECT `testdbfordbt-444411.testdbfordbt.stg_orders`.order_id,
`testdbfordbt-444411.testdbfordbt.stg_orders`.customer_id,
sum(`dbt-tutorial.stripe.payment`.amount) as amount


from `testdbfordbt-444411.testdbfordbt.stg_orders`
left join `dbt-tutorial.stripe.payment`
on `testdbfordbt-444411.testdbfordbt.stg_orders`.order_id = `dbt-tutorial.stripe.payment`.orderid

group by order_id, customer_id