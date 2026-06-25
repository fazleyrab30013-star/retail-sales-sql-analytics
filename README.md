# Retail Sales Performance Analytics Engine

## Overview
This project models a retail database environment to demonstrate proficiency in SQL for business intelligence and operations management. The goal of this analysis was to transform raw, disconnected transactional data into actionable insights to support inventory and pricing decision-making.

## Business Problem
In retail operations, managing stock velocity is critical. This project was developed to:
1.  **Centralize data:** Link product catalogs with sales transactions.
2.  **Analyze performance:** Identify which product categories drive the most revenue.
3.  **Optimize Inventory:** Detect "Dead Stock" (products with zero sales) to free up warehouse space and capital.

## Technical Skills Demonstrated
- **Database Design:** Implemented a normalized relational schema with `PRIMARY` and `FOREIGN KEY` constraints to ensure data integrity.
- **SQL Programming:** - **Relational Joins:** Used `INNER JOIN` and `LEFT JOIN` for data integration.
  - **Aggregation & BI:** Utilized `SUM`, `GROUP BY`, and `ORDER BY` to generate financial reports.
  - **Advanced Filtering:** Applied `HAVING` clauses to filter aggregated data and identify top-performing products.
  - **Operational Insight:** Designed queries to isolate stagnant inventory.

## Key Insights
* **Revenue Driver:** Successfully identified top-performing categories using categorical aggregation.
* **Inventory Efficiency:** Developed a "Dead Stock" report that identifies products with zero sales activity, providing management with clear data for potential promotions or discontinuation.

## Repository Contents
- `schema.sql`: Contains the database blueprint and table structures.
- `data.sql`: Contains the mock transaction and product datasets.
- `analysis.sql`: Contains the analytical queries used for business intelligence reporting.
- `results_screenshot.png`: A visual representation of the analysis output.

## How to Run
1. Navigate to [DB-Fiddle](https://www.db-fiddle.com/).
2. Select **SQLite** as the database engine.
3. Copy the contents of `schema.sql` into the "Schema SQL" window.
4. Copy `data.sql` and `analysis.sql` into the "Query SQL" window.
5. Click **Run** to generate the reports.
