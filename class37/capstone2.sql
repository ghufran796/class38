CREATE TABLE nomnom(
name1 text,
neighborhood text,
cuisine text,
review real,
price text,
health text
);
INSERT into nomnom(name1, neighborhood, cuisine, review, price, health)VALUES
('peter','brooklyn','steak',4.4,'$$$$','A'),
('jongro','midtown','korean',3.5,'$$','A'),
('pocha','midtown','pizza',4,'$$$','p'),
('lighthouse','quenes','chinese',3.9,'$','A'),
('minka','downtown','american',4.3,'$$$',''),
('marea','chinatown','chinese',3.0,'$$',''),
('dirty candy','uptown','italian',4.9,'$$$$','B'),
('di fara pizza','brooklyn','pizza',3.8,'$$$','A'),
('golden unicorn','uptown','italian',3.8,'$$','A');

SELECT * FROM nomnom;
SELECT DISTINCT neighborhood FROM nomnom;
SELECT DISTINCT cuisine FROM nomnom;
SELECT * FROM nomnom WHERE cuisine = 'chinese';
SELECT * FROM nomnom WHERE review > 4.0;
SELECT * FROM nomnom WHERE name1 LIKE '%candy%';
SELECT * FROM nomnom WHERE neighborhood IN ('midtown','downtown','chinatown')
SELECT * from nomnom order by review desc LIMIT 4;