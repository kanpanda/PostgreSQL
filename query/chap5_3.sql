--問題5-3
--1
update embroidery
set mozinum = length(replace(mozi,'　',' '));

--2
select orderday ,orderid, mozinum,
	case coalesce(typefacecode, '1')
		when '1' then 'ブロック体'
		when '2' then '筆記体'
		when '3' then '草書体' end as typefacename,
	case COALESCE(typefacecode, '1')
		when '1' then 100
		when '2' then 150
		when '3' then 200 end as price,
	case when mozinum >10 then 500
		else 0 end as specialprocessingfee
from embroidery order by orderday, orderid;

--3
update embroidery 
set mozi =replace(mozi, ' ', '★')
where orderid ='113';
