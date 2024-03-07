--練習問題4.7
--テーブル作成
drop table orderRep;

CREATE TABLE orderRep(
	day date,
	orderNumber integer,
	orderBranchNumber integer,
	item varchar,
	itemClass char,
	sizz char,
	price integer,
	quantity integer,
	orderPrice integer
);

--texファイルをGUIからインポートする

--表示
select *
from orderRep;