# SQL Analysis

This folder contains the SQL queries used to analyze inventory risk, sell-through performance, and revenue concentration. The analysis focuses on identifying slow-moving inventory, exposure to aging stock, and categories that contribute disproportionately to inventory risk.

## Data Sources

The analysis was performed in Google BigQuery using the following tables:

**analytics.fct_inventory**
Stores item-level inventory records, including inventory age and sold status.

**analytics.fct_sales**
Contains transactional sales data used for revenue calculations.

**analytics.dim_product**
Product dimension table with category and product-level attributes.

## Analysis Overview

The SQL queries address the following business questions:

- How is inventory distributed across aging buckets?

- Which categories have low sell-through efficiency?

- Which products consistently underperform relative to peers?

- Where does inventory exposure exceed revenue contribution?

- How has sell-through trended over time?

- Which SKUs are effectively “stuck” in inventory?

