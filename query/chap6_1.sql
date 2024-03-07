-- 練習問題6-1
--1
--日本全体としての年間降水量の合計と、年間の最高気温・最低気温の平均
select sum(precipitation), avg(maxtemp), avg(mintemp)
from weather;

--2
--東京の年間降水量と、各月の最高気温、最低気温
select sum(precipitation), avg(maxtemp), avg(mintemp)
from weather
where cityname = '東京';

--3
--各都市の降水量の平均と、最も低かった最高気温、最も高かった最低気温
select cityname ,avg(precipitation),min(maxtemp),max(mintemp)
from weather
group by cityname;

--4
--月別の降水量、最高気温、最低気温の平均
select thuki ,avg(precipitation),avg(maxtemp),avg(mintemp)
from weather
group by thuki;

--5
--1年間で最も高い気温が38度以上を記録した月のある都市名とその気温
select cityname, max(maxtemp)
from weather
group by cityname
having max(maxtemp) >= 38;

--6
--1年間で最も低い気温が－10度以下を記録した月のある都市名とその気温
select cityname, min(mintemp)
from weather
group by cityname
having min(mintemp) <= -10;

