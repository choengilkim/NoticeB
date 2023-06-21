
--게시판 db 만들기

drop table board;

--기본키,wkrtjdwkdlfma, 제목, 내용, 작성일, 조회수
create table board(
	board_idx		number(4) primary key,
	board_name		varchar2(20),
	board_title		varchar2(100),
	board_content	varchar2(300),
	board_date		date default sysdate,
	board_hit		number(4) default 0
);

drop sequence board_seq;
create sequence board_seq;

insert into board (board_idx, board_name, board_title, board_content,board_date)					
values (board_seq.nextval, '홍길동', '글 제목1', '글 내용1', sysdate);
insert into board (board_idx, board_name, board_title, board_content,board_date)					
values (board_seq.nextval, '변사또', '글 제목2', '글 내용2', sysdate);
insert into board (board_idx, board_name, board_title, board_content,board_date)					
values (board_seq.nextval, '사임당', '글 제목3', '글 내용3', sysdate);

select * from board;

drop table reply;

--reply_board_idx : 외래키 - 다른 테이블의 인덱스키를 가지고있음.
create table reply(
	reply_idx		number(4) primary key,
	reply_name		varchar2(20),
	reply_content	varchar2(300),
	reply_date		date default sysdate,
	reply_board_idx	number(4)
);

drop sequence reply_board_seq;
create sequence reply_board_seq;

insert into reply (reply_idx, reply_name, reply_content, reply_date, reply_board_idx)					
values (board_seq.nextval, '홍두깨', '댓글 제목1', sysdate, 1);
insert into reply (reply_idx, reply_name, reply_content, reply_date, reply_board_idx)					
values (board_seq.nextval, '심청', '댓글 제목2', sysdate, 2);
insert into reply (reply_idx, reply_name, reply_content, reply_date, reply_board_idx)					
values (board_seq.nextval, '심봉사', '댓글 제목2', sysdate, 3);

select * from reply;

commit;
