--4－7練習問題
--1
--注文順かつ明細順にすべての注文データを取得
select *
from orderrep
order by ordernumber ,orderbranchnumber;

--2
--2022年1月に注文のあった商品名の一覧を商品名順に取得する
select distinct item from orderrep
where day >= '2022-01-01' and day <= '2022-01-31';

--3
--ドリンクの商品を対象に、注文金額の低いほうから2-4番目の注文の注文番号と注文枝番、注文金額を取得
select ordernumber,orderbranchnumber,orderprice from orderrep
where itemclass = '1' order by orderprice
offset 1 rows fetch next 3 rows only;

--4
--その他の商品について、2つ以上同時に購入された商品を取得し、日付、商品名、単価、数量、注文金額を購入日順に表示する。
--ただし同日に売り上げたものは数量の多い順に表示する
select itemclass ,day, item, price, quantity,orderprice from orderrep
where itemclass ='3' and quantity >=2 order by day ,quantity desc;

--5
--商品の分類ごとに分類、商品名、サイズ、単価を１つの表として取得する
--また、サイズはドリンクの商品についてのみ表示し、分類と商品名順に並べる
select DISTINCT itemclass, item, sizz, price from orderrep
	where itemclass ='1' union
select DISTINCT itemclass, item, NULL, price from orderrep
	where itemclass ='2' union
select DISTINCT itemclass, item, NULL, price from orderrep
	where itemclass ='3' union 
	order by 1, 2;
	
	--エラーが出たがよくわからん

