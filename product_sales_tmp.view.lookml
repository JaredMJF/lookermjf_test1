- view: product_sales_tmp
  sql_table_name: AGG.product_sales_tmp
  fields:

  - dimension: category
    type: string
    sql: ${TABLE}.category

  - dimension_group: completed
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.completed_date

  - dimension: db
    type: string
    sql: ${TABLE}.db

  - dimension: line_price
    type: number
    sql: ${TABLE}.line_price

  - dimension: line_qty
    type: number
    sql: ${TABLE}.line_qty

  - dimension: location_name
    type: string
    sql: ${TABLE}.location_name

  - dimension: order_id
    type: number
    sql: ${TABLE}.order_id

  - dimension: order_line_title
    type: string
    sql: ${TABLE}.order_line_title

  - dimension: order_product_id
    type: number
    sql: ${TABLE}.order_product_id

  - dimension: product_title
    type: string
    sql: ${TABLE}.product_title

  - dimension: state
    type: string
    sql: ${TABLE}.state

  - dimension: track_type
    type: number
    sql: ${TABLE}.track_type

  - dimension: unit_price
    type: number
    sql: ${TABLE}.unit_price

  - dimension: weight_dispensed_gr
    type: number
    sql: ${TABLE}.weight_dispensed_gr

  - dimension: weight_sold_gr
    type: number
    sql: ${TABLE}.weight_sold_gr

  - dimension: zip_code
    type: number
    sql: ${TABLE}.zip_code

  - measure: count
    type: count
    drill_fields: [location_name]

