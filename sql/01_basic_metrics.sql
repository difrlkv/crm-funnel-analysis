SELECT source, COUNT(*) AS leads_count 
FROM leads
GROUP BY 1
ORDER BY 2 DESC

SELECT manager_id, COUNT(*) AS leads_count
FROM leads
GROUP BY 1
ORDER BY 2 DESC

SELECT stage_name, COUNT(DISTINCT lead_id) AS leads_at_stage
FROM stages
GROUP BY 1
ORDER BY 2 DESC
