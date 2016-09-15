- connection: data_project_agg

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards

- explore: product_sales
  persist_for: 30 hours

- explore: product_sales2
  persist_for: 30 hours

- explore: sales_demographics
  persist_for: 30 hours

