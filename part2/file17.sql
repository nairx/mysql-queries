alter table users add column acc_balance int;


set autocommit = 0;

update users set acc_balance=1000;

start transaction;

update users set acc_balance=acc_balance-200
where userid=1;

update users set acc_balance=acc_balance+200
where userid=100101;

commit;

rollback;