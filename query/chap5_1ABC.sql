--問題5-1
--1.A
update testresult 
set pm1 = (80*4)-(86+68+91)
where personid ='SW1046';
--1.B
update testresult
set essay =(68*4)-(65+53+70)
where personid ='SW1350';
--1.C
update testresult
set am =(56*4)-(56+56+36)
where personid ='SW1877';

--2.合格者の抽出
select personid as passid
from testresult
--(1)午前の点数は60以上
where am >=60 and
--(2)午後1と午後2を合計した点数が120以上
pm1 + pm2 >= 120 and
--(3)論述の点数が全科目の合計点の3割以上
essay >= (am + pm1 + pm2)*0.3;

--問題5-2
