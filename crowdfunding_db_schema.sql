CREATE TABLE contacts(
	contact_id INT PRIMARY KEY,
	first_name VARCHAR (50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	email VARCHAR(50) NOT NULL
);

CREATE TABLE category(
	category_id VARCHAR NOT NULL PRIMARY KEY,
	category VARCHAR (50) NOT NULL
);

CREATE TABLE subcategory(
	subcategory_id VARCHAR(50) NOT NULL PRIMARY KEY,
	subcategory VARCHAR (50) NOT NULL
);

CREATE TABLE campaign(
	cf_id INT NOT NULL,
	contact_id INT NOT NULL,
	company_name VARCHAR(50) NOT NULL,
	description TEXT NOT NULL,
	goal FLOAT NOT NULL,
	pledged FLOAT NOT NULL,
	outcome VARCHAR(50) NOT NULL,
	backers_count INT NOT NULL,
	country VARCHAR(50) NOT NULL,
	currency VARCHAR(50) NOT NULL,
	launch_date DATE NOT NULL,
	end_date DATE NOT NULL,
	category_id VARCHAR(50) NOT NULL,
	subcategory_id VARCHAR(50) NOT NULL,
	PRIMARY KEY(cf_id),
	FOREIGN KEY(category_id) REFERENCES category(category_id),
	FOREIGN KEY(contact_id) REFERENCES contacts(contact_id),
	FOREIGN KEY(subcategory_id) REFERENCES subcategory(subcategory_id)
);

select * from contacts;
select * from category;
select * from subcategory;
select * from campaign;

