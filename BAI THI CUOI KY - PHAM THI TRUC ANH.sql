create database quanlidulieuuuuuuuuu
use quanlidulieuuuuuuuuu

create table CauThu(
MaCauThu char(2) primary key,
TenCauThu varchar(30),
NgaySinh date,
Phai char(1),
NoiSinh varchar(30)
)
create table ThiDau(
MaDoi char(2),
NgayThiDau date,
HieuSo int,
KetQua int
)
create table Penelty(
MaPhat char(2) primary key,
MaCauThu char(2),
NgayPhat date,
SoLanPhat int,
TienPhat decimal(15,2),
LoaiThe char(1)
)
alter table Penelty add constraint FK_PENELTY_MACAUTHU foreign key (MaCauThu) references CauThu(MaCauThu)
insert into CauThu values ('01','Huynh Duc','7194/09/12','1','Tp.HCM');
insert into CauThu values ('02','Hong Son','1973/05/10','1','Ha Noi');
insert into CauThu values ('03','Thanh Nam','1978/12/25','1','Nam Dinh');
insert into CauThu values ('04','Bao Khanh','1980/12/01','1','Ha Noi');
insert into CauThu values ('05','Duc Thang','1976/11/15','1','Ha Noi');

insert into ThiDau values ('A1','2004/12/22',2,1);
insert into ThiDau values ('A1','2005/10/26',1,0);
insert into ThiDau values ('A3','2005/10/25',0,0);
insert into ThiDau values ('A5','2005/10/10',3,1);
insert into ThiDau values ('B2','2004/03/08',1,1);
insert into ThiDau values ('B2','2005/08/19',3,0);
insert into ThiDau values ('C1','2005/05/19',1,1);
insert into ThiDau values ('C2','2004/10/30',2,0);

insert into Penelty values ('P1','01','2004/12/22',2,250000,'V');
insert into Penelty values ('P2','01','2005/08/19',1,450000,'D');
insert into Penelty values ('P3','02','2005/10/10',2,250000,'V');
insert into Penelty values ('P4','02','2005/10/26',1,100000,'V');thidau
insert into Penelty values ('P5','03','2005/10/25',1,450000,'D');
