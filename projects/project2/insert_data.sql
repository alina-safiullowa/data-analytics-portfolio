-- Вставка данных в таблицу Analysis
INSERT INTO ANALYSIS (an_id, an_name, an_cost, an_price, an_group) 
VALUES (ANALYSISS_SEQ.NEXTVAL, 'анализ 1', 300, 600, 1);

INSERT INTO ANALYSIS (an_id, an_name, an_cost, an_price, an_group) 
VALUES (ANALYSISS_SEQ.NEXTVAL, 'анализ 2', 400, 800, 2);

INSERT INTO ANALYSIS (an_id, an_name, an_cost, an_price, an_group) 
VALUES  (ANALYSISS_SEQ.NEXTVAL, 'анализ 3', 300, 600, 2);

INSERT INTO ANALYSIS (an_id, an_name, an_cost, an_price, an_group) 
VALUES  (ANALYSISS_SEQ.NEXTVAL, 'анализ 4', 450, 900, 3);

INSERT INTO ANALYSIS (an_id, an_name, an_cost, an_price, an_group) 
VALUES  (ANALYSISS_SEQ.NEXTVAL, 'анализ 5', 100, 300, 4);

INSERT INTO ANALYSIS (an_id, an_name, an_cost, an_price, an_group) 
VALUES  (ANALYSISS_SEQ.NEXTVAL, 'анализ 6', 200, 500, 1);

INSERT INTO ANALYSIS (an_id, an_name, an_cost, an_price, an_group) 
VALUES  (ANALYSISS_SEQ.NEXTVAL, 'анализ 7', 700, 1500, 1);

-- Вставка данных в таблицу Groups
INSERT INTO GROUPS (gr_id, gr_name, gr_temp)
VALUES (GROUP_SEQ.NEXTVAL, 'группа 1', 'от 0 до -10');

INSERT INTO GROUPS (gr_id, gr_name, gr_temp)
VALUES (GROUP_SEQ.NEXTVAL, 'группа 2', 'от -10 до -20');

INSERT INTO GROUPS (gr_id, gr_name, gr_temp)
VALUES  (GROUP_SEQ.NEXTVAL, 'группа 3', 'от -20 до -30');

-- Вставка данных в таблицу Orders
INSERT INTO ORDERS (ord_id, ord_datetime, ord_an)
VALUES (ords_seq.NEXTVAL, TO_DATE('2023-01-09 15:30:45', 'YYYY-MM-DD HH24:MI:SS'), 4);

INSERT INTO ORDERS (ord_id, ord_datetime, ord_an)
VALUES (ords_seq.NEXTVAL, TO_DATE('2023-01-16 12:30:45', 'YYYY-MM-DD HH24:MI:SS'), 7);

INSERT INTO ORDERS (ord_id, ord_datetime, ord_an)
VALUES  (ords_seq.NEXTVAL, TO_DATE('2023-02-05 15:30:45', 'YYYY-MM-DD HH24:MI:SS'), 4);

INSERT INTO ORDERS (ord_id, ord_datetime, ord_an)
VALUES  (ords_seq.NEXTVAL, TO_DATE('2023-02-07 10:30:40', 'YYYY-MM-DD HH24:MI:SS'), 6);

INSERT INTO ORDERS (ord_id, ord_datetime, ord_an)
VALUES  (ords_seq.NEXTVAL, TO_DATE('2023-02-12 13:10:40', 'YYYY-MM-DD HH24:MI:SS'), 3);

INSERT INTO ORDERS (ord_id, ord_datetime, ord_an)
VALUES  (ords_seq.NEXTVAL, TO_DATE('2023-06-03 11:30:40', 'YYYY-MM-DD HH24:MI:SS'), 2);

INSERT INTO ORDERS (ord_id, ord_datetime, ord_an)
VALUES  (ords_seq.NEXTVAL, TO_DATE('2023-08-10 15:30:45', 'YYYY-MM-DD HH24:MI:SS'), 1);

INSERT INTO ORDERS (ord_id, ord_datetime, ord_an)
VALUES  (ords_seq.NEXTVAL, TO_DATE('2023-08-12 15:30:45', 'YYYY-MM-DD HH24:MI:SS'), 4);

INSERT INTO ORDERS (ord_id, ord_datetime, ord_an)
VALUES  (ords_seq.NEXTVAL, TO_DATE('2023-12-12 16:31:45', 'YYYY-MM-DD HH24:MI:SS'), 5);


INSERT INTO ORDERS (ord_id, ord_datetime, ord_an)
VALUES  (ords_seq.NEXTVAL, TO_DATE('2024-01-12 16:31:45', 'YYYY-MM-DD HH24:MI:SS'), 1);

INSERT INTO ORDERS (ord_id, ord_datetime, ord_an)
VALUES  (ords_seq.NEXTVAL, TO_DATE('2024-04-12 12:31:45', 'YYYY-MM-DD HH24:MI:SS'), 7);

INSERT INTO ORDERS (ord_id, ord_datetime, ord_an)
VALUES  (ords_seq.NEXTVAL, TO_DATE('2024-05-12 12:35:45', 'YYYY-MM-DD HH24:MI:SS'), 1);

INSERT INTO ORDERS (ord_id, ord_datetime, ord_an)
VALUES  (ords_seq.NEXTVAL, TO_DATE('2024-06-12 12:01:45', 'YYYY-MM-DD HH24:MI:SS'), 2);

INSERT INTO ORDERS (ord_id, ord_datetime, ord_an)
VALUES  (ords_seq.NEXTVAL, TO_DATE('2024-07-12 11:31:45', 'YYYY-MM-DD HH24:MI:SS'), 3);
