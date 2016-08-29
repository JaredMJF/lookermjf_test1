- view: sales_demographics
  sql_table_name: AGG.sales_demographics
  fields:

  - dimension: age
    type: number
    sql: ${TABLE}.age

  - dimension: avg_sale
    type: number
    sql: ${TABLE}.avg_sale
    value_format: '$#.00;($#.00)'

  - dimension: db
    type: string
    sql: ${TABLE}.db

  - dimension: discounts
    type: number
    sql: ${TABLE}.discounts
    value_format: '$#.00;($#.00)'

  - dimension: gender
    type: string
    sql: ${TABLE}.gender

  - dimension: gross_sales
    type: number
    sql: ${TABLE}.gross_sales
    value_format: '$#.00;($#.00)'

  - dimension: location_name
    type: string
    sql: ${TABLE}.location_name

  - dimension: month
    type: string
    sql: ${TABLE}.month

  - dimension: net_sales
    type: number
    sql: ${TABLE}.net_sales
    value_format: '$#.00;($#.00)'

  - dimension: order_count
    type: number
    sql: ${TABLE}.order_count

  - dimension: units
    type: number
    sql: ${TABLE}.units

  - dimension: weight_dispensed_gr
    type: number
    sql: ${TABLE}.weight_dispensed_gr

  - measure: count
    type: count
    drill_fields:

    
    

