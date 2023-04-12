-- mine DB생성
create database mine;


-- mine DB 사용
use mine;

-- -------------------다연 ------------------------------------------------------------------------------------
-- Me(다이어리) DB -----------------------------------------------------------------
-- 일기?리스트 db
create table calendar(
	seq int auto_increment primary key,
	id varchar(50) not null, 
	title varchar(200) not null,
	content varchar(4000),
	rdate varchar(12) not null,
	wdate timestamp not null
);
-- id참조
alter table calender
add foreign key(id) references member(id);


-- todo리스트 db
create table todo(
	seq int auto_increment primary key,
	id varchar(50) not null, 
	title varchar(200) not null,
	content varchar(4000),
	rdate varchar(12) not null,
	wdate timestamp not null
);
-- id참조
alter table todo
add foreign key(id) references member(id);



-- 온라인 명함 DB -------------------------------------------
create table businesscard(
    seq int auto_increment primary key,
	id varchar(50) not null,
    name varchar(50) not null,
    email varchar(50) unique,
    url varchar(255),  -- 깃허브 블로그등 주소
    historydate varchar(200) not null, -- 수행했던 날짜
    wdate timestamp not null,
	content varchar(4000),
    thumbnail  varchar(1000) not null
);




-- 커스텀 DB -------------------------------------
create table style (
    hair  varchar(1000) not null,
    eyes  varchar(1000) not null,
    nose  varchar(1000) not null,
    eyebrow  varchar(1000) not null,
    mouth  varchar(1000) not null
);

-- 캐릭터 디폴트값
create table main (
    hair  varchar(1000) not null,
    eyes  varchar(1000) not null,
    nose  varchar(1000) not null,
    eyebrow  varchar(1000) not null,
    mouth  varchar(1000) not null
);

-- -------------------다연 ------------------------------------------------------------------------------------

-- mine 이미지와 텍스트 저장
create table mine_mine(
    seq int auto_increment primary key,
    id varchar(50) not null, 
    pagenumber int not null,
    position int not null,
    imgurl varchar(300) not null,
    imgtext varchar(500) not null
);
