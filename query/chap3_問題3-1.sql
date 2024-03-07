-- 問題3-1
-- 6月のデータを取得する
select *
from 気象観測
where 月 = 6;

-- 6月以外のデータを取得する
select *
from 気象観測
where 月 <> 6;

-- 降水量が100未満のデータ
select *
from 気象観測
where 降水量 < 100;

-- 降水量が200より多いデータ
select *
from 気象観測
where 降水量 > 200;

-- 最高気温が30以上のデータ
select *
from 気象観測
where 最高気温 > 30;

-- 最低気温が0以下のデータ
select *
from 気象観測
where 最低気温 <= 0;

-- 3，5，7月のデータ
select *
from 気象観測
where 月 in (3,5,7);

-- 3，5，7月以外のデータ
select *
from 気象観測
where 月 not in (3,5,7);

-- 降水量が100以下　かつ　湿度が50より低いデータ
select *
from 気象観測
where 降水量 <= 100 and 湿度 < 50;

-- 最低気温が5未満　または　最高気温が35より高いデータ
select *
from 気象観測
where 最低気温 < 5 or 最高気温 > 35;

-- 湿度が60-79の範囲(60以上かつ79以下）にあるデータ
select *
from 気象観測
where 湿度 between 60 and 79;

-- 観測データのない列のある月のデータ
select *
from 気象観測
where 降水量 is NULL or
	最高気温 is null or
	最低気温 is NULL or
	湿度 is NULL;


