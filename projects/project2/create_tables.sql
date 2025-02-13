-- Создание таблицы Analysis
CREATE TABLE Analysis (
    an_id NUMBER PRIMARY KEY,
    an_name VARCHAR2(30),
    an_cost NUMBER,
    an_price NUMBER,
    an_group NUMBER,
    FOREIGN KEY (an_group) REFERENCES GROUPS (gr_id)
);

-- Создание последовательности для Analysis
CREATE SEQUENCE analysiss_seq
    START WITH 1
    INCREMENT BY 1
    NOCACHE;

-- Создание таблицы Groups
CREATE TABLE Groups (
    gr_id NUMBER PRIMARY KEY,
    gr_name VARCHAR(30),
    gr_temp VARCHAR(30)
);

-- Создание последовательности для Groups
CREATE SEQUENCE group_seq
    START WITH 1
    INCREMENT BY 1
    NOCACHE;

-- Создание таблицы Orders
CREATE TABLE Orders (
    ord_id NUMBER PRIMARY KEY,
    ord_datetime DATE,
    ord_an NUMBER,
    FOREIGN KEY (ord_an) REFERENCES ANALYSIS (an_id)
);

-- Создание последовательности для Orders
CREATE SEQUENCE ords_seq
    START WITH 1
    INCREMENT BY 1
    NOCACHE;
