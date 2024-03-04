todolist

java 17, springboot 3.1.9
h2 database

- springboot project
- application.yml 설정
- mybatis를 활용한 데이터 관리 및 sql문 작성
- mvc 패턴을 활용한 crud 개발
- jsp와 bootstrap을 통한 화면 구성


CREATE TABLE MEMBER (
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);

CREATE TABLE TODOLIST (
    id INT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    detail TEXT NOT NULL,
    member_id INT NOT NULL,
    done BOOLEAN NOT NULL,
    FOREIGN KEY (member_id) REFERENCES MEMBER(id),
    registerDt TIMESTAMP NOT NULL,
    updateDt TIMESTAMP NOT NULL
);
