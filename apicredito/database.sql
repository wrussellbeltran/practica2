CREATE DATABASE IF NOT EXISTS dbcredito;
USE dbcredito;

CREATE TABLE users(
	id 		    int(255) auto_increment not null,
	role	    varchar(20),
	name	    varchar(255),
	surname	    varchar(255),
	email       varchar(255),
	password    varchar(255),
	image       varchar(255),
	created_at  datetime DEFAULT NULL,
	updated_at  datetime DEFAULT NULL,
	remember_token varchar(255),
	CONSTRAINT pk_users PRIMARY KEY(id)
)ENGINE=InnoDb;

CREATE TABLE customers(
	id				int(255) auto_increment not null,
	name			varchar(50),
	surname			varchar(50),
	second_surname	varchar(50),
	rfc				varchar(50),
	created_at  	datetime DEFAULT NULL,
	updated_at  	datetime DEFAULT NULL,
	CONSTRAINT pk_customers PRIMARY KEY(id)
)ENGINE=InnoDb;

CREATE TABLE articles(
	id				int(255) auto_increment not null,
	description		varchar(255),
	model			varchar(255),
	price			decimal(10,2),
	stock			int(255) not null,
	created_at 	 	datetime DEFAULT NULL,
	updated_at  	datetime DEFAULT NULL,
	CONSTRAINT pk_articles PRIMARY KEY(id)
)ENGINE=InnoDb;

CREATE TABLE configurations(
	id					int(255) auto_increment not null,
	financing			decimal(10,2),
	hitch				decimal(10,2),
	dead_line			int(255) not null,
	created_at  		datetime DEFAULT NULL,
	updated_at  		datetime DEFAULT NULL,
	CONSTRAINT pk_configurations PRIMARY KEY(id)
)ENGINE=InnoDb;

CREATE TABLE sales(
	id 				int(255) auto_increment not null,
	customer_id		int(255) not null,
	total			decimal(10,2),
	date			datetime DEFAULT NULL,
	status			boolean,
	created_at  	datetime DEFAULT NULL,
	updated_at  	datetime DEFAULT NULL,
	CONSTRAINT pk_sales PRIMARY KEY(id),
	CONSTRAINT fk_sales_customers FOREIGN KEY (customer_id) REFERENCES customers(id)
)ENGINE=InnoDb;

CREATE TABLE sales_details(
	sale_id			int(255) not null,
	customer_id		int(255) not null,
	amount			decimal(10,2),
	created_at  	datetime DEFAULT NULL,
	updated_at  	datetime DEFAULT NULL
)ENGINE=InnoDb;
