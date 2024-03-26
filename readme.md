## 🙌 TodoList 강의용 자료

## ❓ 학습 목표   
- Spring MVC 패턴에 대한 이해
- Mybatis에 대한 이해 및 CRUD SQL 쿼리 작성
- JSP와 Bootstrap을 활용한 화면 개발
- Ajax를 통한 클라이언트와 서버간 통신 이해

## 🙋‍♀️ 사용 기술 
서버) Java 17, SpringBoot 3.1.9, Mybatis 3.0,.3, H2 Database

클라이언트) JSP, JSTL, JQuery, Bootstrap

## 🛠 기능 목록   
1. 회원
    - 회원가입
    - 이메일 중복 확인
    - 세션을 통한 로그인
    - 로그아웃
2. 투두 리스트
    - 투두리스트 등록
    - 투두리스트 삭제
    - 투두리스트 수정
    - 투두리스트 조회
  
## 빌드   
📝 사전 조건 : Java 17 다운로드, H2 Database 설치, H2 Database에 테이블 생성
(하단 Code block 참조)
### Code block
```
sql

create table member(
  id int auto_increment primary_key,
  name varchar(50) not null,
  email varchar(255) not nuill
);

create table todolist(
  id int auto_increment primary_key,
  title varchar(255) not null,
  detail text not null,
  done boolean not null,
  register_dt timestamp not null,
  update_dt timestamp not null,
  foreign key (member_id) references member(id)
);
```

