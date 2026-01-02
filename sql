
## Inventory Aging Buckets + Risk Exposure
WITH inventory_base AS (
  SELECT
    i.inventory_item_id,
    i.product_id,
    i.inventory_age_days,
    i.is_sold
  FROM `project-b8fea081-550e-474f-81d.analytics.fct_inventory` i
  WHERE i.is_sold = 0
),
aging_buckets AS (
  SELECT
    product_id,
    CASE
      WHEN inventory_age_days < 30 THEN '0–30 days'
      WHEN inventory_age_days < 60 THEN '31–60 days'
      WHEN inventory_age_days < 90 THEN '61–90 days'
      ELSE '90+ days'
    END AS aging_bucket
  FROM inventory_base
)
SELECT
  aging_bucket,
  COUNT(*) AS units_in_stock
FROM aging_buckets
GROUP BY aging_bucket
ORDER BY units_in_stock DESC;


