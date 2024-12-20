-- liquibase formatted sql

-- changeset your.name:1 labels:example-label context:example-context
-- comment: example comment
create table person (
    id int auto_increment not null,
    name varchar(50) not null,
    address1 varchar(50),
    address2 varchar(50),
    city varchar(30),
    primary key (id)
)
-- rollback DROP TABLE person;

-- changeset your.name:2 labels:example-label context:example-context
-- comment: example comment
create table company (
    id int auto_increment not null,
    name varchar(50) not null,
    address1 varchar(50),
    address2 varchar(50),
    city varchar(30),
    primary key (id)
)
-- rollback DROP TABLE company;

-- changeset other.dev:3 labels:example-label context:example-context
-- comment: example comment
alter table person add column country varchar(2)
-- rollback ALTER TABLE person DROP COLUMN country;

-- changeset other.dev:4 labels:example-label context:example-context
-- comment: example comment
alter table company add column country varchar(2)
-- rollback ALTER TABLE company DROP COLUMN country;

-- changeset other.dev:5 labels:example-label context:example-context
-- comment: example comment
alter table person add column state varchar(50)
-- rollback ALTER TABLE person DROP COLUMN state;

-- changeset other.dev:6 labels:example-label context:example-context
-- comment: example comment
alter table company add column state varchar(50)
-- rollback ALTER TABLE company DROP COLUMN state;

-- changeset other.dev:7 labels:example-label context:example-context
-- comment: example comment1
alter table person add column address3 varchar(50)
-- rollback ALTER TABLE person DROP COLUMN address3;

-- changeset other.dev:8 labels:example-label context:example-context
-- comment: example comment1
alter table company add column address3 varchar(50)
-- rollback ALTER TABLE company DROP COLUMN address3;

-- changeset your.name:3 labels:example-label context:example-context
-- comment: example comment
create table company2 (
    id int auto_increment not null,
    name varchar(50) not null,
    address1 varchar(50),
    address2 varchar(50),
    city varchar(30),
    primary key (id)
)
-- rollback DROP TABLE company2;

-- changeset your.name:4 labels:example-label context:example-context
-- comment: example comment
create table company3 (
    id int auto_increment not null,
    name varchar(50) not null,
    address1 varchar(50),
    address2 varchar(50),
    city varchar(30),
    primary key (id)
)
-- rollback DROP TABLE company3;
