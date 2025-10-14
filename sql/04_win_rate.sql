-- Конверсия в оплату
SELECT COUNT(*) AS total_leads, COUNT(CASE WHEN status = 'Won' THEN 1 END) AS deals_won,
ROUND(100 * COUNT(CASE WHEN status = 'Won' THEN 1 END) / COUNT(*), 2) AS win_rate 
FROM deals 
