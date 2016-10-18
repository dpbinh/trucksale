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
	ID bigint primary key,
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
	ID bigint primary key,
    NAME varchar(256),
    NAME_EN varchar(256),
    ACTIVE  tinyint(1),
    QUICK_SHOW tinyint(1),
    PRIORITY integer,
    SPECIFICATION_GROUP_ID bigint
);

create table if not exists SPECIFICATION_GROUP
(
	ID bigint primary key,
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

insert into PRODUCT_GROUP(ID, NAME, IMG) values(1, 'Suzuki', '/static/img/logo/suzuki.png');
insert into PRODUCT_GROUP(ID, NAME, IMG) values(2, 'Hino', '/static/img/logo/hino.png');
insert into PRODUCT_GROUP(ID, NAME, IMG) values(3, 'Hyundai', '/static/img/logo/huyndai.png');
insert into PRODUCT_GROUP(ID, NAME, IMG) values(4, 'Isuzu', '/static/img/logo/isuzu.png');
insert into PRODUCT_GROUP(ID, NAME, IMG) values(5, 'Dongfeng', '/static/img/logo/dongfeng.png');
insert into PRODUCT_GROUP(ID, NAME, IMG) values(6, 'Mitsubishi', '/static/img/logo/misubishi.png');
insert into PRODUCT_GROUP(ID, NAME, IMG) values(7, 'Veam', '/static/img/logo/veam.png');


insert into specification_group (id, name, priority) values (1, 'KÍCH THƯỚC',1);
insert into specification_group (id, name, priority) values (2, 'TẢI TRỌNG',2);
insert into specification_group (id, name, priority) values (3, 'ĐỘNG CƠ',3);
insert into specification_group (id, name, priority) values (4, 'HỘP SỐ',4);
insert into specification_group (id, name, priority) values (5, 'HỆTHỐNG LÁI',5);
insert into specification_group (id, name, priority) values (6, 'HỆ THỐNG PHANH',6);
insert into specification_group (id, name, priority) values (7, 'HỆ THỐNG TREO',7);
insert into specification_group (id, name, priority) values (8, 'LỐP XE',8);
insert into specification_group (id, name, priority) values (9, 'ĐẶC TÍNH',9);
insert into specification_group (id, name, priority) values (10, 'AN TOÀN', 10);

insert into specification (id, name, name_en,active, quick_show, priority, specification_group_id) values (1, 'Kích thước tổng thể (D x R x C)', 'Overall dimension',1, 0,1,1);
insert into specification (id, name, name_en,active, quick_show, priority, specification_group_id) values (2, 'Kích thước lọt lòng thùng (D x R x C)', 'Inside cargo box dimension',1, 1,1,1);
insert into specification (id, name, name_en,active, quick_show, priority, specification_group_id) values (3, 'Vệt bánh trước/Sau', 'Front/Rear tread',1, 0,1,1);
insert into specification (id, name, name_en,active, quick_show, priority, specification_group_id) values (4, 'Chiều dài cơ sở', 'Wheelbase',1, 0,1,1);
insert into specification (id, name, name_en,active, quick_show, priority, specification_group_id) values (5, 'Khoảng sáng gầm xe', 'Ground clearance',1, 0,1,1);
insert into specification (id, name, name_en,active, quick_show, priority, specification_group_id) values (6, 'Trọng lượng không tải', 'Curb weight',1, 0,1,2);
insert into specification (id, name, name_en,active, quick_show, priority, specification_group_id) values (7, 'Tải trọng', 'Load weight',1, 1,1,2);
insert into specification (id, name, name_en,active, quick_show, priority, specification_group_id) values (8, 'Trọng lượng toàn bộ', 'Gross weight',1, 0,1,2);
insert into specification (id, name, name_en,active, quick_show, priority, specification_group_id) values (9, 'Số chỗ ngồi', 'Number of seats',1, 0,1,2);
insert into specification (id, name, name_en,active, quick_show, priority, specification_group_id) values (10, 'ĐỘNG CƠ', 'ENGINE',1, 1,1,3);
insert into specification (id, name, name_en,active, quick_show, priority, specification_group_id) values (11, 'Loại', 'Type',1, 0,1,3);
insert into specification (id, name, name_en,active, quick_show, priority, specification_group_id) values (12, 'Dung tích xilanh', 'Displacement',1, 0,1,3);
insert into specification (id, name, name_en,active, quick_show, priority, specification_group_id) values (13, 'Đường kính x Hành trình piston', 'Diameter x Piston stroke',1, 0,1,3);
insert into specification (id, name, name_en,active, quick_show, priority, specification_group_id) values (14, 'Công suất cực đại/Tốc độ quay', 'Max power/Rotation speed',1, 0,1,3);
insert into specification (id, name, name_en,active, quick_show, priority, specification_group_id) values (15, 'Mômen xoắn cực đại/Tốc độ quay', 'Max torque/Rotation speed',1, 0,1,3);
insert into specification (id, name, name_en,active, quick_show, priority, specification_group_id) values (16, 'Ly hợp', 'Clutch',1, 0,1,4);
insert into specification (id, name, name_en,active, quick_show, priority, specification_group_id) values (17, 'Số tay', 'Manual',1, 0,1,4);
insert into specification (id, name, name_en,active, quick_show, priority, specification_group_id) values (18, 'Hệ thống Lái', 'STEERING SYSTEM',1, 0,1,5);
insert into specification (id, name, name_en,active, quick_show, priority, specification_group_id) values (19, 'Hệ thống phanh', 'BRAKES SYSTEM',1, 0,1,6);
insert into specification (id, name, name_en,active, quick_show, priority, specification_group_id) values (20, 'Trước', 'Front',1, 0,1,7);
insert into specification (id, name, name_en,active, quick_show, priority, specification_group_id) values (21, 'Sau', 'Rear',1, 0,1,7);
insert into specification (id, name, name_en,active, quick_show, priority, specification_group_id) values (23, 'Trước/Sau', 'Front/Rear',1, 0,1,8);
insert into specification (id, name, name_en,active, quick_show, priority, specification_group_id) values (24, 'Khả năng leo dốc', 'Hill-climbing ability',1, 0,1,9);
insert into specification (id, name, name_en,active, quick_show, priority, specification_group_id) values (25, 'Bán kính quay vòng nhỏ nhất', 'Minimum turning radius',1, 0,1,9);
insert into specification (id, name, name_en,active, quick_show, priority, specification_group_id) values (26, 'Tốc độ tối đa', 'Maximum speed',1, 0,1,9);
insert into specification (id, name, name_en,active, quick_show, priority, specification_group_id) values (27, 'Dung tích thùng nhiên liệu', 'Capacity fuel tank',1, 0,1,9);
insert into specification (id, name, name_en,active, quick_show, priority, specification_group_id) values (28, 'DÂY ĐAI AN TOÀN', 'seatbelt',1, 0,1,10);
insert into specification (id, name, name_en,active, quick_show, priority, specification_group_id) values (29, 'KHÓA CỬA AN TOÀN', 'lock door',1, 0,1,10);
insert into specification (id, name, name_en,active, quick_show, priority, specification_group_id) values (30, 'THANH GiẢM CHẤN', 'Damping',1, 0,1,10);
insert into specification (id, name, name_en,active, quick_show, priority, specification_group_id) values (31, 'ĐÈN BÁO PHANH', 'Brake lights',1, 0,1,10);
insert into specification (id, name, name_en,active, quick_show, priority, specification_group_id) values (32, 'CHỐNG TRỘM', 'Burglar',1, 0,1,10);



