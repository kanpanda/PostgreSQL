-- tableの作成
drop table 家計簿;

CREATE TABLE 家計簿(
日付 DATE,
費目 VARCHAR(20),
メモ VARCHAR(20),
入金額 INTEGER,
出金額 INTEGER
);

-- 行の追加
INSERT INTO public.家計簿 (日付,費目,メモ,入金額,出金額) values('2022-02-03','食費','コーヒーを購入',0,380);
INSERT INTO public.家計簿 (日付,費目,メモ,入金額,出金額) values('2022-02-10','給料','1月の給料',280000,0);
INSERT INTO public.家計簿 (日付,費目,メモ,入金額,出金額) values('2022-02-11','教養娯楽費','書籍を購入',0,2800);
INSERT INTO public.家計簿 (日付,費目,メモ,入金額,出金額) values('2022-02-14','交際費','同窓会の会費',0,5000);
INSERT INTO public.家計簿 (日付,費目,メモ,入金額,出金額) values('2022-02-18','水道光熱費','1月の電気代',0,7560);

select *
from 家計簿;