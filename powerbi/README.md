# Power BI Dashboard Summary

The Power BI dashboard provides an interactive, decision-focused view of inventory risk and revenue concentration. It is designed to help business stakeholders quickly identify where inventory is aging, which categories and products are underperforming, and how revenue dependency is distributed across the portfolio.

The dashboard prioritizes actionable insights over exploratory complexity, allowing users to transition from a high-level risk overview to SKU-level diagnostics through guided drill-down.

## Dashboard Pages

**Executive Summary**
Provides a high-level snapshot of inventory health, including total revenue, units in stock, sell-through rate, and exposure to inventory aged 90 days or more. This view highlights categories contributing disproportionately to inventory risk and summarizes recommended actions.

**Root Cause / Risk Mechanics**
Explores the underlying drivers of inventory risk by analyzing aging distribution and sell-through velocity. This page helps identify categories combining extended aging with low sales momentum, making them priority candidates for promotion or liquidation.

**Revenue Contribution Drivers**
Analyzes revenue concentration across categories, brands, and products. This view enables users to understand where revenue is concentrated and assess dependency risk by drilling from category to brand to individual products.

**Product Drill-Through**
Provides SKU-level detail for selected products, including inventory age, sell-through performance, revenue trends, and aging bucket distribution from the Stuck Inventory Candidates Table on Page 2. This page supports targeted decision-making for specific products identified as high-risk in upstream views.

## Design Considerations

- Metrics are aligned directly with SQL-derived calculations to ensure consistency and auditability

- Visuals prioritize clarity and comparability across categories and time

- Drill-through functionality is used to support structured analysis rather than ad-hoc exploration

- Dashboard screenshots are included in this folder to demonstrate layout, interactions, and analytical flow.
