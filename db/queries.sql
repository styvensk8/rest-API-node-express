USE dbmysql;

SELECT * FROM specialty;
SELECT * FROM type_document;
SELECT * FROM user;
SELECT * FROM doctor;
SELECT * FROM appointment;

SELECT * FROM specialty where id = 1
SELECT * FROM type_document where id = 1
SELECT * FROM user where id = 1
SELECT * FROM doctor where id = 1
SELECT * FROM appointment where id = 1

DELETE FROM user WHERE id = 2