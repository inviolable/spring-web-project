select * from memberT1111;
drop table memberT1111;
delete from MEMBERT1111;
insert into memberT1111 values('invio','111','홍길동','aaa@daum.net','010-1111-2222');

create table memberT1111(
 id varchar2(100) primary key
 ,pwd varchar2(100)
 ,name varchar2(100)
 ,email varchar2(1000)
 ,phone varchar2(1000)
)

alter table memberT1111 add primary key(id);

--tbl_board 연습용 게시판 테이블 생성
create table boardT111(
	bno number(38) primary key --게시판 번호
	,writer varchar2(50) not null --글쓴이
	,title varchar2(500) not null --제목
	,content varchar2(4000) --글내용
	,viewcnt number(38) default 0 --조회수, default 0 제약조건은 해당컬럼에 굳이 레코드를 저장하지 않아도 기본값 0이 저장됨.
	,regdate date --등록 날짜
);

select * from boardT111 order by bno desc;

--bno_seq 시퀀스 생성
create sequence bno_seq111
start with 1 --1부터 시작
increment by 1 --1씩 증가
nocache; --임시 메모리를 사용하지 않겠다는 뜻

--시퀀스 다음 번호값 확인
select bno_seq111.nextval from dual;

select * from replyT111;

drop table replyT111;

create table replyT111(
 reply_no number(38) primary key
 ,reply_id varchar(500) not null
 ,reply_cont varchar(4000) not null
 ,reply_previous varchar(500)
 ,reply_writing_no number(38) not null
 ,regdate date default sysdate not null
)

drop sequence reply_seq2;

create sequence reply_seq2
start with 1
increment by 1
nocache;

select reply_seq2.nextval from dual;

--alter table replyT111 add regdate date default sysdate not null;

