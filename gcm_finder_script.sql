----------------
-- GCM FINDER --
----------------


----------------------------------------------
-- Make UTM coordinates table

create table UTM
(
    ID        integer       not null
        constraint UTM_pk
            primary key,

    NORTHING  decimal(7, 3) not null,
    EASTING   decimal(6, 3) not null,
    N_STD_DEV decimal(1, 3),
    E_STD_DEV decimal(1, 3)
);

create unique index UTM_ID_uindex
    on UTM (ID);

-----------------------------------------------
-- make geographic coordinates table

create table GEOGRAPHIC
(
    ID  integer       not null
        constraint GEO_pk
            primary key,

    LAT decimal(2, 5) not null,
    LON decimal(3, 5) not null
);

create unique index GEO_ID_uindex
    on GEOGRAPHIC (ID);

-----------------------------------------------
-- Create quality table

create table QUALITY
(
    ID         integer not null
        constraint QUALITY_pk
            primary key,

    QLTY_CLSS  char(1),
    CONDTN     varchar(20),
    LST_UPDATE char(10)
);

create unique index QUALITY_ID_uindex
    on QUALITY (ID);

-----------------------------------------------

-- Create vertical table

create table VERT
(
    ID          integer       not null
        constraint VERT_pk
            primary key,

    ELEV        decimal(4, 3) not null,
    GEOID_MOD   var_char(10),
    SURV_METHOD var_char(30)
);

create unique index VERT_ID_uindex
    on VERT (ID);

-----------------------------------------------

-- Create additional details table

create table EXTRA
(
    ID             integer not null
        constraint EXTRA_pk
            primary key,

    TABLET_MARKING varchar(20),
    MUNICIP        varchar(40)
);

create unique index VERT_ID_uindex
    on EXTRA (ID);

-----------------------------------------------






