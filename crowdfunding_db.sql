create table category (
	category_id varchar not null,
	category varchar not null,
	primary key(category_id)
);

create table subcategory (
	subcategory_id varchar not null,
	subcategory varchar not null,
	primary key(subcategory_id)
);

create table contacts (
	contact_id int not null,
	first_name varchar not null,
	last_name varchar not null,
	email varchar not null,
	primary key(contact_id)
);

create table campaign (
	cf_id int not null,
	contact_id int not null,
	company_name varchar not null,
	description varchar not null,
	goal float not null,
	pledged float not null,
	outcome varchar not null,
	backers_count int not null,
	country varchar not null,
	currency varchar not null,
	launched_date date not null,
	end_date date not null,
	category_id varchar not null,
	subcategory_id varchar not null,
	primary key(cf_id),
	foreign key(contact_id) references contacts(contact_id),
	foreign key(category_id) references category(category_id),
	foreign key(subcategory_id) references subcategory(subcategory_id)
);

select * from category;
select * from subcategory;
select * from contacts;
select * from campaign;