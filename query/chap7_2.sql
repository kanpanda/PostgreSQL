--7-2
--carfee テーブル
-- carcode:車種コード
-- carmodelname:車種名
-- price:価格

-- carrental　テーブル
-- rentalid:レンタルID
-- carcode:車種コード
-- rentaldays:レンタル日数

-- 1
SELECT price * (SELECT SUM(rentaldays)
                FROM carrental
               WHERE carcode = 'E01') AS kingaku
  FROM carfee
 WHERE carcode = 'E01';

-- 2
SELECT carcode,carmodelname
  FROM carfee
 WHERE carcode IN (SELECT carcode FROM carrental
                     WHERE rentaldays > 1)
 ORDER BY carcode;

-- -- 3
SELECT SUM(SUB.日数) AS 合計日数,
       COUNT(SUB.carcode) AS 車種数
  FROM (SELECT carcode, SUM(rentaldays) AS 日数
          FROM carrental
         GROUP BY carcode) AS SUB;