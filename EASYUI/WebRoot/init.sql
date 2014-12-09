create table menu(
	id varchar(40) not null,
	code varchar(40) not null,
	parent_code varchar(100),
	name varchar(40) not null,
	create_time date not null,
	url varchar(300) not null,
	primary key (id)
)
--for mysql
alter table menu modify column name varchar(100);
alter table menu add column url varchar(300);

insert into menu(id, code, parent_code, name, create_time) values ('ijkae900w', 'ROOT', null, 'root', now());
insert into menu(id, code, parent_code, name, create_time) values ('ijkae900www', 'c1', 'ROOT', 'node1', now());
insert into menu(id, code, parent_code, name, create_time) values ('ijkae900dwww', 'c11', 'c1', 'node11', now());
insert into menu(id, code, parent_code, name, create_time) values ('ijkae900wqw2d3w', 'c12', 'c1', 'node12', now());
insert into menu(id, code, parent_code, name, create_time) values ('ijkae900wasd3w', 'c2', 'ROOT', 'node2', now());