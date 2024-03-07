-- すでに「成績表」という名前のテーブルがある場合は削除する
drop table 成績表;

-- 問題3-3　テーブル作成
create table 成績表(
	学籍番号 char(4),
	学生名 varchar(20),
	法学 integer,
	経済学 integer,
	哲学 integer,
	情報理論 integer,
	外国語 integer,
	総合成績 char(1)
);

--　行の追加
INSERT INTO public.成績表 (
	学籍番号,学生名,法学,経済学,哲学,情報理論,外国語,総合成績) 
	values('S001','織田信長',49,45,43,42,40,NULL);
INSERT INTO public.成績表 (
	学籍番号,学生名,法学,経済学,哲学,情報理論,外国語,総合成績) 
	values('A003','豊臣秀吉',80,80,95,75,85,NULL);
INSERT INTO public.成績表 (
	学籍番号,学生名,法学,経済学,哲学,情報理論,外国語,総合成績) 
	values('E004','徳川家康',80,83,85,90,85,NULL);

-- テーブルを表示
select *
from 成績表;

--3
--学籍番号S001の法学を85，哲学を67に修正
update 成績表 set 法学 = 85, 哲学 = 67
where 学籍番号 = 'S001';
-- テーブルを表示
select *
from 成績表;

--4
--学籍番号A003とE004の外国語を81に修正
update 成績表 set 外国語 = 81
where 学籍番号 IN('A003','E004');

-- テーブルを表示
select *
from 成績表;

--5
--全科目が80以上学生はＡとする
update 成績表 set 総合成績 = 'A'
where 法学 >= 80 and 経済学 >= 80 and 哲学 >= 80 and 情報理論 >= 80 and 外国語 >= 80;
--法学と外国語のどちらかが80以上、かつ経済学と哲学のどちらかが80以上でＢ
update 成績表 set 総合成績 = 'B'
where (法学 >= 80 or 外国語>= 80) and (経済学 >= 80 or 哲学 >= 80);
--それ以外はＣ
update 成績表 set 総合成績 = 'C'
where 総合成績 is null;
--いずれかの科目に0がある学生を表から削除
delete from 成績表 
where 法学=0 or
	経済学=0 or
	哲学=0 or
	情報理論=0 or
	外国語=0;

-- テーブルを表示S
select *
from 成績表;
FROM


