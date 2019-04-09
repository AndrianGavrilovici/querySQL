-- 20->>1
SELECT * FROM nobel_win WHERE YEAR=1970 AND NOT SUBJECT IN ('Physiology', 'Economics');
-- 21->>2
SELECT * FROM nobel_win WHERE SUBJECT='Physiology' AND YEAR<1971
UNION
SELECT * FROM nobel_win WHERE SUBJECT='Peace' AND YEAR>=1974;
-- 22->>3
SELECT * FROM nobel_win WHERE WINNER='Johannes Georg Bednorz';
-- 23->>4
SELECT * FROM nobel_win WHERE WINNER NOT LIKE 'P%' ORDER BY YEAR DESC, WINNER;
-- 24->>5
SELECT * FROM nobel_win WHERE YEAR=1970 ORDER BY 
CASE
    WHEN SUBJECT IN ('Econimics', 'Chemistry') THEN 1
ELSE 0
END ASC,
SUBJECT, WINNER;
-- 25->>6
SELECT * FROM item_mast WHERE pro_price BETWEEN 200 AND 600;
-- 26->>7
SELECT AVG(pro_price) FROM item_mast WHERE pro_com=16;
-- 27->>8
SELECT pro_name AS 'Item name', pro_price AS 'Price in Rs' FROM item_mast;
-- 28->>9
SELECT pro_name, pro_price FROM item_mast WHERE pro_price>=250 ORDER BY pro_price DESC, pro_name;
-- 29->>10
SELECT pro_com, AVG(pro_price) FROM item_mast GROUP BY pro_com;

