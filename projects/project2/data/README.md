# Создать структуру БД в Oracle:
# Есть таблица анализов Analysis:
-	an_id — ID анализа;
-	an_name — название анализа;
-	an_cost — себестоимость анализа;
-	an_price —розничная цена анализа;
-	an_group — ID группа анализов.
# Есть таблица групп анализов Groups:
-	gr_id — ID группы;
-	gr_name — название группы;
-	gr_temp — температурный режим хранения.
# Есть таблица заказов Orders:
-	ord_id — ID заказа;
-	ord_datetime — дата и время заказа;
-	ord_an — ID анализа.
