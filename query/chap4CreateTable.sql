--練習問題4.7
--テーブル作成
drop table 注文履歴;

CREATE TABLE 注文履歴(
	日付 date,
	注文番号 integer,
	注文枝番 integer,
	商品名 varchar,
	分類 char,
	サイズ char,
	単価 integer,
	数量 integer,
	注文金額 integer
);

-- 行の追加
-- このままで実行するとなぜかエラーがでるのでファイルを分ける【解決】テーブル作成の最後に「；」をつける
-- INSERT INTO public.注文履歴 (日付,注文番号,注文枝番,商品名,分類,サイズ,単価,数量,注文金額) values('2022-01-01',101,1,'ブレンドコーヒー',1,'S',210,1,210);
-- INSERT INTO public.注文履歴 (日付,注文番号,注文枝番,商品名,分類,サイズ,単価,数量,注文金額) values();
-- INSERT INTO public.注文履歴 (日付,注文番号,注文枝番,商品名,分類,サイズ,単価,数量,注文金額) values('2022-01-01',101,1,'ブレンドコーヒー',1,'S',210,1,210);



--表示
-- select *
-- from 注文履歴