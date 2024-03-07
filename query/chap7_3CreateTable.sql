--問題7-3
--個体識別テーブルを作成
create table kotaishikibethu (
	kotaiNum char(4), --個体識別番号
	barthDay date, --出生日
	maleandfemale char(1), --雌雄コード
	femaleNum char(4), --母牛番号
	varietycode char(4), --品種コード
	breedingpref varchar(10) --飼育県
);