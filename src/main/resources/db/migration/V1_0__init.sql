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
    PRODUCT_GROUP_ID bigint,
    OVERALL_DEMENSION varchar(256),
    INSIDE_CARGO_BOX_DEMENSION varchar(256),
    FRONT_REAR_TREAD varchar(256),
    WHEEL_BASE varchar(256),
    GROUND_CLEARANCE varchar(256),
    CURB_WEIGHT varchar(256),
    LOAD_WEIGHT varchar(256),
    GROSS_WEIGHT varchar(256),
    NUMBER_OF_SEATS varchar(256),
    CAR_ENGINE varchar(256),
    ENGINE_TYPE varchar(256),
    DISPLACEMENT varchar(256),
    DIAMETER_PISTON_STROKE varchar(256),
    MAX_POWER_ROTATION_SPEED varchar(256),
    MAX_TORQUE_ROTATION_SPEED varchar(256),
    CLUTCH varchar(256),
    MANUAL varchar(256),
    STEARING_SYSTEM varchar(256),
    BRAKES_SYSTEM varchar(256),
    FRONT varchar(256),
    REAR varchar(256),
    FRONT_REAR varchar(256),
    HILL_CLIMBING_ABILITY varchar(256),
    MINIMUM_TURNING_RADIUS varchar(256),
    MAXIMUM_SPEED varchar(256),
    CAPACITY_FUEL_TANK varchar(256),
    SEAT_BELT varchar(256),
    LOCK_DOOR varchar(256),
    DAMPING varchar(256),
    BRAKE_LIGHT varchar(256),
    BURGALAR varchar(256),
    INSIDE_IMG_DIR varchar(256),
    OUTSIDE_IMG_DIR varchar(256)
);
 
alter table USERS
add constraint users_role foreign key(ROLE_ID) references ROLE(ID);

alter table PRODUCT
add constraint product_groupproduct foreign key ( PRODUCT_GROUP_ID) references PRODUCT_GROUP(ID);
 

insert into ROLE(NAME) values ('ADMIN');

insert into PRODUCT_GROUP(ID, NAME, IMG) values(1, 'Suzuki', '/static/img/logo/suzuki.png');
insert into PRODUCT_GROUP(ID, NAME, IMG) values(2, 'Hino', '/static/img/logo/hino.png');
insert into PRODUCT_GROUP(ID, NAME, IMG) values(3, 'Hyundai', '/static/img/logo/huyndai.png');
insert into PRODUCT_GROUP(ID, NAME, IMG) values(4, 'Isuzu', '/static/img/logo/isuzu.png');
insert into PRODUCT_GROUP(ID, NAME, IMG) values(5, 'Dongfeng', '/static/img/logo/dongfeng.png');
insert into PRODUCT_GROUP(ID, NAME, IMG) values(6, 'Mitsubishi', '/static/img/logo/misubishi.png');
insert into PRODUCT_GROUP(ID, NAME, IMG) values(7, 'Veam', '/static/img/logo/veam.png');
