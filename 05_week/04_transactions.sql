use week_05;

show tables;

create table if not exists bank_account
(
      id int auto_increment primary key,
      account_number varchar(20) not null,
      balance decimal(10,2) not null,
      created_at datetime default current_timestamp,
      updated_at datetime default current_timestamp on update current_timestamp,
      account_type enum('savings', 'current', 'fixed') not null
);

insert into bank_account VALUES
(1,"1234567890",1000.00,"2023-01-01 10:00:00","2023-01-01 10:00:00","savings"),
(2,"0987654321",2000.00,"2023-02-01 11:00:00","2023-02-01 11:00:00","current"),
(3,"1122334455",1500.00,"2023-03-01 12:00:00","2023-03-01 12:00:00","fixed"),
(4,"5566778899",2500.00,"2023-04-01 13:00:00","2023-04-01 13:00:00","savings"),
(5,"9988776655",3000.00,"2023-05-01 14:00:00","2023-05-01 14:00:00","current"),
(6,"2233445566",3500.00,"2023-06-01 15:00:00","2023-06-01 15:00:00","fixed"),
(7,"3344556677",4000.00,"2023-07-01 16:00:00","2023-07-01 16:00:00","savings"),
(8,"4455667788",4500.00,"2023-08-01 17:00:00","2023-08-01 17:00:00","current"),
(9,"5566778899",5000.00,"2023-09-01 18:00:00","2023-09-01 18:00:00","fixed"),
(10,"6677889900",5500.00,"2023-10-01 19:00:00","2023-10-01 19:00:00","savings");

--- transaction start here

Start TRANSACTION;
update bank_account set balance=balance+1000 where id=1;

select balance FROM bank_account where id=1;

update bank_account set balance=balance-1000 where id=2;
select balance from bank_account where id=2;

commit;

select * from bank_account;




--- for rollback

DELIMITER $$

CREATE PROCEDURE AdjustBalance()
BEGIN
    DECLARE current_balance DECIMAL(10,2);

    START TRANSACTION;

    UPDATE bank_account SET balance = balance - 1000 WHERE id = 1;

    SELECT balance INTO current_balance FROM bank_account WHERE id = 1;

    IF current_balance < 0 THEN
        ROLLBACK;
    ELSE
        COMMIT;
    END IF;
END$$

DELIMITER ;

CALL AdjustBalance();

select * from bank_account;