

create view vtopOrders as
select * from orders where orderValue>3000;

show full tables where table_type='VIEW';

select * from vtopOrders;