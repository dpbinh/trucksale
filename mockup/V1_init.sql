create table if not exists ROLE 
(
	ID bigint primary key auto_increment,
    NAME varchar(20)
);

create table if not exists USERS 
(
	ID bigint primary key auto_increment,
    USER_NAME varchar(256),
    PASSWORD varchar(256),
    ROLE_ID bigint
);

create table if not exists PRODUCT_GROUP
(
	ID bigint primary key auto_increment,
    NAME varchar(256),
    IMG varchar(256)
);

create table if not exists PRODUCT
(
	ID bigint primary key auto_increment,
    NAME varchar(256),
    IMG varchar(256),
    PRICE bigint,
    PRODUCT_GROUP_ID bigint
);

create table if not exists SPECIFICATION_PRODUCT
(
	ID bigint primary key auto_increment,
    SPECIFICATION_ID bigint,
    PRODUCT_ID bigint,
    SPECIFICATION_VALUE varchar(256)
);

create table if not exists PRODUCT_IMG
(
	ID bigint primary key auto_increment,
    PRODUCT_ID bigint,
    IMG varchar(256),
    IMG_GROUP varchar(20)
);

create table if not exists SPECIFICATION 
(
	ID bigint primary key auto_increment,
    NAME varchar(256),
    NAME_EN varchar(256),
    ACTIVE  tinyint(1),
    QUICK_SHOW tinyint(1),
    PRIORITY integer,
    SPECIFICATION_GROUP_ID bigint
);

create table if not exists SPECIFICATION_GROUP
(
	ID bigint primary key auto_increment,
    NAME varchar(256),
    PRIORITY integer
);

alter table USERS
add constraint users_role foreign key(ROLE_ID) references ROLE(ID);

alter table PRODUCT
add constraint product_groupproduct foreign key ( PRODUCT_GROUP_ID) references PRODUCT_GROUP(ID);

alter table SPECIFICATION_PRODUCT
add constraint specproduct_product foreign key (PRODUCT_ID) references PRODUCT(ID);

alter table SPECIFICATION_PRODUCT
add constraint specproduct_spec foreign key (SPECIFICATION_ID) references SPECIFICATION(ID);

alter table PRODUCT_IMG 
add constraint productimg_product foreign key (PRODUCT_ID) references PRODUCT(ID);

alter table SPECIFICATION
add constraint specification foreign key (SPECIFICATION_GROUP_ID) references SPECIFICATION_GROUP(ID);

insert into ROLE(NAME) values ('ADMIN');

