WITH stage_count AS (
  SELECT stage_name, COUNT(DISTINCT lead_id) AS leads_at_stage
  FROM stages
  GROUP BY 1
  ORDER BY 2 DESC
)

SELECT stage_name, leads_at_stage, ROUND(100 * leads_at_stage / MAX(leads_at_stage) OVER(), 1)  AS conversion_from_start  
FROM stage_count
ORDER BY 2 DESC
