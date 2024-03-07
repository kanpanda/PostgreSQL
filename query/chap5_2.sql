--問題5-2
--1 
update qanswer
set countryname = case substring (trim(mailaddress),length(trim(mailaddress))-1,2)
	when 'jp' then '日本'
	when 'uk' then 'イギリス'
	when 'cn' then '中国'
	when 'vn' then 'ベトナム'
	when 'fr' then 'フランス' end;
	
--2
select trim(mailaddress) as mailaddress,
case when age >= 20 and age <30 then '20代'
	when age >= 30 and age <40 then '30代'
	when age >= 40 and age <50 then '40代'
	when age >= 50 and age <60 then '50代' end 
	|| ':' ||
	case residence when 'D' then '戸建て'
					when 'C' then '集合住宅' end as 属性
from qanswer;


