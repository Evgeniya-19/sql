use vk;
show tables;


select * from users;  
update users set created_at = now();
update users set updated_at = now();

desc users;

alter table users change created_at created_at datetime default current_timestamp;
alter table users change updated_at updated_at datetime default current_timestamp;


select * from storehouses_products
order by if (value > 0 ,0, 1), value;

select 
 avg(timestampdiff(year, birthday_at, now())) as age
from users;

select 
   date_format(date(concat('-', year(now()), month(birthday_at), day(birthday_at)))),
   count(*) as total
from
  users
group by 
  day   
order by
  total desc;  