-- 問題3-2

-- 都道府県名が川でおわる
select *
from 都道府県
where 都道府県名 like '%川';

-- 都道府県名に島が含まれる
select *
from 都道府県
where 都道府県名 like '%島%';

-- 都道府県名が愛で始まる
select *
from 都道府県
where 都道府県名 like '愛%';

-- 都道府県名と県庁所在地が一致する
select *
from 都道府県
where 都道府県名 = 県庁所在地;

-- 都道府県名と県庁所在地が一致しない
select *
from 都道府県
where 都道府県名 <> 県庁所在地;

