create table cust_audit(
    id int,
    name varchar(200),
    action varchar(200),
    changedAt datetime
);

create trigger before_cust_update
 before update on customer
 for each row
 insert into cust_audit
 set action='update',
 id = old.id,
 name = old.name,
 changedAt=now();

 show triggers;

 update customer set name='John Smith' where id=1;

 drop trigger before_cust_update;