-- 気象観測テーブルの作成
create table 気象観測2(
	月 integer

	-- 	最高気温最低気温 integer
-- 	湿度 integer
-- 降水量以降の列でなぜかエラーが出る
	
-- 	alter table(気象観測2) add (降水量)(integer)(0)
	ALTER TABLE aaa ADD COLUMN カラム名 integer
)

-- 降水量以降の列でなぜかエラーが出る