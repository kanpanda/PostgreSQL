--問題6-2
--1現在入室中の社員数を取得
select count(*) as 社員数
from entrymanagement
where exitroom is null;

--2社員ごとの入室回数を、回数の多い順に取得
select personname ,count(*) as 入室回数
from entrymanagement
group by personname
order by 2 desc;

--3事由ごとの入室回数を取得
select case reason 
	when '1' then 'メンテナンス'
	when '2' then 'リリース作業'
	when '3' then '障害対応'
	when '9' then 'その他'
	end as 理由,
	count(*) as 入室回数
from entrymanagement
group by reason;

--4入出回数が10回を超える社員について、社員名と入室回数を取得
select personname,count(*)as 入室回数
	from entrymanagement
	group by personname
	having count(*) >10;

--5これまでに障害対応が発生した日付と、それに対応した社員数を取得
select niti,
count(personname) as 対応社員数
from entrymanagement
where reason ='3'
group by niti;



