SELECT s1.stage_name AS from_stage, s2.stage_name AS to_stage, AVG(DATE_PART('day', s2.entered_at::timestamp - s1.entered_at::timestamp)) AS avg_date
FROM stages s1
JOIN stages s2 ON s1.lead_id = s2.lead_id  
WHERE s1.stage_name = 'Proposal' AND  and s2.stage_name = 'Contract'
GROUP BY 1, 2
