# Inventory Risk & Revenue Concentration Analysis

BigQuery SQL · Power BI

## Overview

This project analyzes inventory aging, sell-through efficiency, and revenue concentration to identify operational risk and slow-moving stock. The objective is to identify where inventory risk is accumulating, which products are driving or lagging revenue, and where corrective action (such as promotion, liquidation, or rebalancing) may be required.

The analysis combines BigQuery SQL for data preparation and metric calculation with Power BI for interactive, drill-through visualization.

## Business Questions Addressed

How much inventory is aging beyond acceptable thresholds?

Which categories and products have low sell-through relative to inventory exposure?

Where is revenue concentrated across categories, brands, and products?

Which SKUs exhibit characteristics of “stuck inventory” (high aging + low sales)?

## Data Sources

The analysis is built on the following analytical tables:

fct_inventory
Inventory item-level data, including receipt date, aging, and sold status

fct_sales
Transactional sales data used to compute revenue and sell-through

dim_product
Product attributes such as category, brand, and product name

Raw data is not included in this repository.

## Analytical Approach

Inventory Aging

Unsold inventory is bucketed into standard aging bands (0–30, 31–60, 61–90, 90+ days)

Distribution is analyzed to understand where inventory is accumulating

Sell-Through Performance

Sell-through rates are calculated at product and category levels

Bottom-performing products are identified using percentile-based ranking

Inventory vs Revenue Exposure

Inventory volume is compared against revenue contribution to identify imbalance

Categories holding disproportionate inventory relative to revenue are flagged

Time-Based Trends

Weekly sell-through trends are evaluated to observe momentum and deterioration

Stuck Inventory Identification

Products with extended aging and low sell-through are surfaced as risk candidates

## SQL Scripts

All analytical logic is implemented in BigQuery SQL and organized as follows:

File	Description
01_inventory_aging_buckets.sql	Inventory aging bucket distribution
02_bottom_20_sell_through.sql	Bottom-performing products by sell-through
03_inventory_vs_revenue.sql	Inventory exposure vs revenue contribution
04_weekly_sell_through_trend.sql	Weekly sell-through trend analysis
05_stuck_inventory_candidates.sql	Identification of high-risk SKUs

## Power BI Dashboard

The Power BI report presents the analysis across four views:

### 1. Inventory Risk Overview

Executive KPI summary (Revenue, Units in Stock, Sell-Through %, 90+ Day Inventory)

Category-level sell-through and inventory concentration

High-level revenue trend

### 2. Risk Drivers

Inventory aging skew by units in stock

Risk vs velocity scatter (Avg Age vs Sell-Through, sized by inventory)

Table of stuck inventory candidates with drill-through enabled

### 3. Revenue Concentration

Decomposition tree to drill from category → brand → product

Used to understand revenue dependency and concentration risk

### 4. Product Risk Detail (Drill-Through)

Product-level KPIs

Last 12-month revenue trend

Inventory aging distribution for the selected SKU

Dashboard screenshots are available in powerbi/screenshots/.

## Key Insights

A significant share of inventory is concentrated in extended aging buckets, particularly 90+ days.

Certain categories hold a disproportionate amount of inventory relative to revenue contribution.

Multiple SKUs exhibit characteristics of stuck inventory and warrant targeted action.

Revenue is driven by a relatively small subset of brands and products, increasing concentration risk.

## Use Cases

Inventory planning and rebalancing

Promotion and liquidation prioritization

Revenue dependency assessment

Executive-level inventory risk reporting

## Notes

This repository focuses on analytical logic and insights rather than raw data outputs.

SQL is written for clarity, auditability, and reproducibility.

Visual design emphasizes decision-making over exploratory complexity.

