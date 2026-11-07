-- Câu lệnh tạo database
-- create database + tên db

create database if not exists netflix;

-- nguoi_dung
create table if not exists nguoi_dung(
    id int auto_increment primary key,
    ten_dang_nhap varchar(50),
    mat_khau varchar(30),
    email varchar(50),
    so_dien_thoai varchar(10)
);
-- phim
create table if not exists phim(
    id int auto_increment primary key, --key
    ten_phim varchar(100),
    thoi_luong int,
    nam int,
    gioi_thieu varchar(255),
    dao_dien_id int
);
-- phim_dien_vien
create table if not exists phim_dien_vien(
    id int auto_increment primary key, --key
    phim_id int,
    dien_vien_id int
);
-- phim_the_loai
create table if not exists phim_the_loai(
    id int auto_increment primary key,--key
    phim_id int,
    the_loai_id int
);
-- dao_dien
create table if not exists dao_dien(
    id int auto_increment primary key, --key
    ten_dao_dien varchar(50)
);
-- the_loai
create table if not exists the_loai(
    id int auto_increment primary key, --key
    ten_the_loai varchar(50)
);
-- dien_vien
create table if not exists dien_vien(
    id int auto_increment primary key,
    ten_dien_vien varchar(50)
);
-- quoc_gia
create table if not exists quoc_gia(
    id int auto_increment primary key, --key
    ten_quoc_gia varchar(50)
);
-- thêm phim
INSERT INTO `phim`(`ten_phim`, `thoi_luong`, `nam`, `gioi_thieu`, `dao_dien_id`) 
VALUES ('doraemon',100,1870,'tre em',1);
INSERT INTO `phim`(`ten_phim`, `thoi_luong`, `nam`, `gioi_thieu`, `dao_dien_id`) 
VALUES ('conan',200,1999,'thu nho',2);

-- thêm dao_dien
INSERT INTO `dao_dien`( `ten_dao_dien`) 
VALUES ('dao dien 1');
INSERT INTO `dao_dien`( `ten_dao_dien`) 
VALUES ('dao dien 2');
INSERT INTO `dao_dien`(`ten_dao_dien`) 
VALUES ('dao dien 3');
INSERT INTO `dao_dien`(`ten_dao_dien`) 
VALUES ('dao dien 4');
INSERT INTO `dao_dien`(`ten_dao_dien`) 
VALUES ('dao dien 5');

-- thêm dien_vien
INSERT INTO `dien_vien`(`ten_dien_vien`) 
VALUES ('Doraemon');
INSERT INTO `dien_vien`(`ten_dien_vien`) 
VALUES ('Nobita');
INSERT INTO `dien_vien`(`ten_dien_vien`) 
VALUES ('Xuka');
INSERT INTO `dien_vien`(`ten_dien_vien`) 
VALUES ('Shinichi');
INSERT INTO `dien_vien`(`ten_dien_vien`) 
VALUES ('Mori Ran');

-- thêm nguoi_dung
INSERT INTO `nguoi_dung`(`ten_dang_nhap`, `mat_khau`, `email`, `so_dien_thoai`) 
VALUES ('toideptrai','toixautrai','deptrai@gmail.com','0453735497');
INSERT INTO `nguoi_dung`(`ten_dang_nhap`, `mat_khau`, `email`, `so_dien_thoai`) 
VALUES ('admin','123','abc@gmail.com','0385758849');
INSERT INTO `nguoi_dung`(`ten_dang_nhap`, `mat_khau`, `email`, `so_dien_thoai`) 
VALUES ('banlaai','toilatoi','toila@gmail.com','0478583745');
INSERT INTO `nguoi_dung`(`ten_dang_nhap`, `mat_khau`, `email`, `so_dien_thoai`) 
VALUES ('toilaban','banlatoi','aila@gmail.com','0478485838');
INSERT INTO `nguoi_dung`(`ten_dang_nhap`, `mat_khau`, `email`, `so_dien_thoai`) 
VALUES ('hello','xinchao','hai@gmail.com','0478457395');

-- thêm phim_dien_vien
insert into phim_dien_vien (phim_id, dien_vien_id)
values (1, 1);
insert into phim_dien_vien (phim_id, dien_vien_id)
values (1, 2);
insert into phim_dien_vien (phim_id, dien_vien_id)
values (1, 3);
insert into phim_dien_vien (phim_id, dien_vien_id)
values (2, 4);
insert into phim_dien_vien (phim_id, dien_vien_id)
values (2, 5);

-- thêm phim_the_loai
insert into phim_the_loai(phim_id, the_loai_id)
values ( 1, 1);
insert into phim_the_loai(phim_id, the_loai_id)
values ( 1, 2);
insert into phim_the_loai(phim_id, the_loai_id)
values ( 2, 3);
insert into phim_the_loai(phim_id, the_loai_id)
values ( 2, 4);

-- thêm the_loai
insert into the_loai ( ten_the_loai)
values ('Phim hành động');
insert into the_loai ( ten_the_loai)
values ('Phim hài');
insert into the_loai ( ten_the_loai)
values ('Phim tâm lý');
insert into the_loai ( ten_the_loai)
values ('Phim tình cảm');

-- cập nhật thuộc tính
update nguoi_dung set mat_khau = '1235' where id = 1
-- xóa thuộc tính
delete from phim where id = 1
-- liên kết các cột của các bảng
SELECT * FROM phim p 
join phim_the_loai ptl
on p.id = ptl.phim_id
join the_loai tl
on ptl.the_loai_id = tl.id 
where p.id = 1

SELECT * FROM phim p 
join phim_dien_vien pdv
on p.id = pdv.phim_id
join dien_vien dv
on pdv.dien_vien_id = dv.id 
where p.id = 1

SELECT * FROM phim p 
join dao_dien dd
on p.dao_dien_id = dd.id
where p.id = 1;


