create table menu(
	id varchar(40) not null,
	code varchar(40) not null,
	parent_code varchar(40) not null,
	name varchar(40) not null,
	create_time date not null,
	primary key (id)
)