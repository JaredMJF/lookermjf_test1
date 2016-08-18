
- view: sales_by_age_group
  derived_table:
    sql: |
      SELECT 
        CASE WHEN sales_demographics.age >= 17 AND sales_demographics.age <= 30 THEN '17-30'
        WHEN sales_demographics.age >= 31 AND sales_demographics.age <= 40 THEN '31-40'
        WHEN sales_demographics.age >= 41 AND sales_demographics.age <= 50 THEN '41-50'
        WHEN sales_demographics.age >= 51 AND sales_demographics.age <= 60 THEN '51-60'
        WHEN sales_demographics.age >= 61 AND sales_demographics.age <= 70 THEN '61-70'
        WHEN sales_demographics.age >= 71 THEN 'Old'
        ELSE 'UnKnown' END
        AS `sales_demographics.age`,
        SUM(sales_demographics.order_count) AS `sales_demographics.order_count`,
        SUM(sales_demographics.weight_dispensed_gr) AS `sales_demographics.weight_dispensed_gr`,
        AVG(sales_demographics.net_sales) AS `sales_demographics.avg_sale`,
        SUM(sales_demographics.gross_sales) AS `sales_demographics.gross_sales`,
        SUM(sales_demographics.discounts) AS `sales_demographics.discounts`,
        SUM(sales_demographics.net_sales) AS `sales_demographics.net_sales`
      FROM AGG.sales_demographics_tmp AS sales_demographics
      
      GROUP BY 1

  fields:
  - measure: count
    type: count
    drill_fields: detail*

  - dimension: sales_demographics_age
    type: string
    sql: ${TABLE}.`sales_demographics.age`

  - dimension: sales_demographics_order_count
    type: number
    sql: ${TABLE}.`sales_demographics.order_count`

  - dimension: sales_demographics_weight_dispensed_gr
    type: number
    sql: ${TABLE}.`sales_demographics.weight_dispensed_gr`

  - dimension: sales_demographics_avg_sale
    type: number
    sql: ${TABLE}.`sales_demographics.avg_sale`

  - dimension: sales_demographics_gross_sales
    type: number
    sql: ${TABLE}.`sales_demographics.gross_sales`

  - dimension: sales_demographics_discounts
    type: number
    sql: ${TABLE}.`sales_demographics.discounts`

  - dimension: sales_demographics_net_sales
    type: number
    sql: ${TABLE}.`sales_demographics.net_sales`

  sets:
    detail:
      - sales_demographics_age
      - sales_demographics_order_count
      - sales_demographics_weight_dispensed_gr
      - sales_demographics_avg_sale
      - sales_demographics_gross_sales
      - sales_demographics_discounts
      - sales_demographics_net_sales

