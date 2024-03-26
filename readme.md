## 🙌 TodoList 강의용 자료

## ❓ 학습 목표   
- Spring MVC 패턴에 대한 이해
- Mybatis에 대한 이해 및 CRUD SQL 쿼리 작성
- JSP와 Bootstrap을 활용한 화면 개발
- Ajax를 통한 클라이언트와 서버간 통신 이해

## 🙋‍♀️ 사용 기술 
- 서버) Java 17, SpringBoot 3.1.9, Mybatis 3.0,.3, H2 Database

- 클라이언트) JSP, JSTL, JQuery, Bootstrap

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
  
## 🎶 빌드   
- 사전 조건 : Java 17 다운로드, H2 Database 설치, H2 Database에 테이블 생성
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
- github 다운 후 로컬에서 빌드하면 됩니다.

## 📍 정리내용
1. spring mvc 데이터 흐름
2. http 를 통한 클라이언트와 서버간 통신

## 🚢 느낀점
처음으로 누군가를 가르쳐보다보니 부족한 점이 많았던 것 같다. 하지만 그럼에도 불구하고 끝까지 따라와주신 형에게 감사한 마음이다.
머리속으로 알고 있다고 생각했던 지식들을 막상 말로 전달하려다보니 흐릿하게 되어 있는 부분들이 있었다. 그래서 다시금 찾아보고 공부하면서 나 역시 많이 발전한 것 같다.
작은 기능이지만 spring mvc와 간단한 crud 그리고 ajax를 통한 클라이언트와 서버간 통신을 이해하는데 필수적인 기능들을 담았다.
부다 다른 분들에게도 이 자료가 도움이 될 수 있으면 좋겠다.

(아 그리고 박상진 이라는 계정으로 커밋된게 있는데... 회사에서 다른 분 계정으로 커밋한거라서.. ㄷㄷ 이건 모른척 부탁드립니다.)
