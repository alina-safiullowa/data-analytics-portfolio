-- Самый популярный температурный режим хранения
SELECT groups.gr_temp,
       groups.gr_name,
       analysis.an_group,
       COUNT(an_group) AS count_group
FROM orders
     INNER JOIN analysis ON orders.ord_an = analysis.an_id
     INNER JOIN groups ON analysis.an_group = groups.gr_id
GROUP BY an_group, gr_temp, gr_name
HAVING COUNT(an_group) = 
(SELECT MAX(count_group) 
 FROM (SELECT groups.gr_temp, groups.gr_name, analysis.an_group, COUNT(an_group) AS count_group
       FROM orders
            INNER JOIN analysis ON orders.ord_an = analysis.an_id
            INNER JOIN groups ON analysis.an_group = groups.gr_id
       GROUP BY an_group, gr_temp, gr_name) query_in);

-- Выручка за второй квартал текущего года
SELECT SUM((an_price - an_cost)) AS profit
FROM orders
     INNER JOIN analysis ON orders.ord_an = analysis.an_id
WHERE EXTRACT(MONTH FROM ord_datetime) IN (4, 5, 6) 
  AND EXTRACT(YEAR FROM ord_datetime) IN (2024);

-- Название и розничная цена анализов за август 2023
SELECT an_name, an_price, ord_datetime
FROM orders
     INNER JOIN analysis ON orders.ord_an = analysis.an_id
WHERE EXTRACT(MONTH FROM ord_datetime) IN (8) 
  AND EXTRACT(YEAR FROM ord_datetime) IN (2023);

-- Количество анализов, собранных за последний год
SELECT COUNT(an_name) 
FROM orders
     INNER JOIN analysis ON orders.ord_an = analysis.an_id
WHERE EXTRACT(YEAR FROM ord_datetime) IN (2023);

-- Количество повторов групп анализов за последний год 2023
SELECT an_group, gr_name, gr_temp, COUNT(an_group)
FROM orders
INNER JOIN analysis ON orders.ord_an = analysis.an_id
INNER JOIN groups ON analysis.an_group = groups.gr_id
WHERE EXTRACT(YEAR FROM ord_datetime) IN (2023)
GROUP BY an_group, gr_name, gr_temp
ORDER BY an_group;

-- Название и цена для всех анализов, которые продавались 5 февраля 2023 и всю следующую неделю
SELECT an_name, an_price, ord_datetime
FROM orders
INNER JOIN analysis ON orders.ord_an = analysis.an_id
WHERE ord_datetime BETWEEN TO_DATE('2023-02-05', 'YYYY-MM-DD')
  AND TO_DATE('2023-02-12 23:59:59', 'YYYY-MM-DD HH24:MI:SS');
