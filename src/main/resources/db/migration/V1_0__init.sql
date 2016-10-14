create table if not exists Role 
(
	id bigint primary key auto_increment,
    rolename varchar(20)
);

create table if not exists Users 
(
	id bigint primary key auto_increment,
    username varchar(256),
    password varchar(256),
    roleId bigint
);

create table if not exists ProductGroup
(
	id bigint primary key auto_increment,
    groupname text
);

create table if not exists Product
(
	id bigint primary key auto_increment,
    productname text,
    img varchar(256),
    price bigint,
    groupproductId bigint
);

create table if not exists SpecificationProduct
(
	id bigint primary key auto_increment,
    specId bigint,
    productId bigint,
    specvalue text
);

create table if not exists ProductImg
(
	id bigint primary key auto_increment,
    productId bigint,
    img varchar(256),
    imggroup varchar(20)
);

create table if not exists Specification 
(
	id bigint primary key auto_increment,
    specname text,
    specnameen text,
    specgroupId bigint
);

create table if not exists SpecificationGroup
(
	id bigint primary key auto_increment,
    specgroupname text
);

alter table Users
add constraint users_role foreign key(roleId) references Role(id);

alter table Product
add constraint product_groupproduct foreign key ( groupproductId) references ProductGroup(id);

alter table SpecificationProduct 
add constraint specproduct_product foreign key (productid) references product(id);

alter table SpecificationProduct
add constraint specproduct_spec foreign key (specid) references specification(id);

alter table productimg 
add constraint productimg_product foreign key (productid) references product(id);

alter table specification
add constraint specification foreign key (specgroupid) references specificationgroup(id);

