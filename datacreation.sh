service mysql start
service mysql status
echo "create user 'scalereal' identified by 'scalereal';
GRANT CREATE, ALTER, DROP, INSERT, UPDATE, DELETE, SELECT, REFERENCES, RELOAD on *.* TO 'scalereal' WITH GRANT OPTION;
exit" > data.sql
mysql -u root --password="" < data.sql
echo "CREATE DATABASE scalerealInterns;
USE scalerealInterns;

CREATE TABLE internData( 
intern_id int primary key,
name varchar(25),
address varchar(100),
mobile_number bigint(10),
pan_number varchar(10)
);

INSERT INTO internData VALUES(1,'Syed Ubed Ali','Indore','6262209099','DCWPA6666E');
INSERT INTO internData VALUES(2,'Rahul Vaidya','Mumbai','1234567899','DQPA3266B');
INSERT INTO internData VALUES(3,'Aamir Islam','Bulandshahar','1234567899','WSUH4231F');

SELECT * FROM internData;" > interndata.sql

mysql -u 'scalereal' --password="scalereal" < interndata.sql



