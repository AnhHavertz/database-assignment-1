DROP DATABASE IF EXISTS `TRUONGHOC`;


CREATE DATABASE `TRUONGHOC`;


USE TRUONGHOC;



 drop table if exists phonggd;
 create table phonggd(
     maphonggd CHAR(3) NOT NULL,
     tenphonggd VARCHAR(50) DEFAULT NULL,
     PRIMARY KEY(maphonggd)
     )ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

 drop table if exists loaihinh;
 create table loaihinh(
     maloaihinh char(5) not null,
     tenloaihinh varchar(50) default null,
     primary key(maloaihinh)
     )ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


drop table if exists loaitruong;
create table loaitruong(
     maloaitruong char(5) not null,
     tenloaitruong varchar(50) default null,
     primary key(maloaitruong)
     )ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


drop table if exists capbac;
 create table capbac(
     macapbac char(2) not null,
     tencapbac varchar(50) not null,
     primary key(macapbac)
     )ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


drop table if exists thongtintruong;
 create table thongtintruong(
    matruong varchar(20) not null,
    tentruong varchar(100) not null,
    diachi varchar(256) default null,
    capbac char(2) not null,
    phonggd char(3) not null,
    loaihinh char(5) not null,
    loaitruong char(5) not null,
    primary key(matruong),
    CONSTRAINT fk_capbac FOREIGN KEY(capbac) REFERENCES capbac(macapbac),
    CONSTRAINT fk_phonggd FOREIGN KEY(phonggd) REFERENCES phonggd(maphonggd),
    CONSTRAINT fk_loaihinh FOREIGN KEY(loaihinh) REFERENCES loaihinh(maloaihinh),
    CONSTRAINT fk_loaitruong FOREIGN KEY(loaitruong) REFERENCES loaitruong(maloaitruong)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
