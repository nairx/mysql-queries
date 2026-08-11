alter table users add column acc_balance int;

update users set acc_balance=1000;

set autocommit = 1;

start transaction;

update users set acc_balance=acc_balance-200 where userid=1;

update users set acc_balance=acc_balance+200 where userid=100101;

commit;

rollback;


set autocommit = 1;