todolist

java 17, springboot 3.1.9
h2 database

- springboot project
- application.yml 설정
- mybatis를 활용한 데이터 관리 및 sql문 작성
- mvc 패턴을 활용한 crud 개발
- jsp와 bootstrap을 통한 화면 구성


CREATE TABLE MEMBER (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(255) NOT NULL
);

CREATE TABLE TODOLIST (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    detail TEXT NOT NULL,
    member_id INT NOT NULL,
    done BOOLEAN NOT NULL,
    FOREIGN KEY (member_id) REFERENCES MEMBER(id),
    register_dt TIMESTAMP NOT NULL,
    update_dt TIMESTAMP NOT NULL
);

숙제
1. 스프링과 스프링부트의 차이점 정리
2. 스프링 mvc 동작 구성도 그려보기
3. select, insert, update, delete 구문 정리해보기
4. Model 에 대해서 정리해보기


Spring MVC에서 Model 인터페이스는 다음과 같은 방식으로 동작합니다:
컨트롤러에서 데이터 추가: 클라이언트의 요청을 처리하는 컨트롤러에서는 처리된 데이터를 Model 객체에 추가합니다. 이 데이터는 주로 클라이언트에게 표시할 데이터이며, 이름-값 쌍의 형태로 추가됩니다.
뷰로 전달: 컨트롤러에서 추가된 데이터는 자동으로 뷰로 전달됩니다. Spring MVC는 컨트롤러가 반환하는 뷰 이름과 Model 객체를 함께 뷰 리졸버(View Resolver)에 전달합니다.
뷰에서 데이터 사용: 뷰 리졸버는 컨트롤러가 반환한 뷰 이름을 기반으로 실제 뷰 템플릿 파일을 찾아내고, 해당 뷰 템플릿에 Model 객체를 전달합니다. 뷰 템플릿에서는 전달받은 Model 객체를 사용하여 데이터를 표시합니다.
클라이언트 응답: 뷰 템플릿에서 처리된 데이터를 포함한 HTML 문서가 생성되어 클라이언트에게 응답으로 전송됩니다. 클라이언트는 이 HTML 문서를 받아서 화면에 표시합니다.
즉, Model 인터페이스는 컨트롤러와 뷰 간의 데이터 전달을 중개하는 역할을 합니다. 컨트롤러에서 데이터를 추가하면, 이 데이터는 자동으로 뷰로 전달되어 화면에 표시됩니다. 이를 통해 개발자는 컨트롤러와 뷰 간의 데이터 전달에 대해 신경 쓰지 않고도 편리하게 데이터를 관리할 수 있습니다.

http 메서드 정리
https://inpa.tistory.com/entry/WEB-%F0%9F%8C%90-HTTP-%EB%A9%94%EC%84%9C%EB%93%9C-%EC%A2%85%EB%A5%98-%ED%86%B5%EC%8B%A0-%EA%B3%BC%EC%A0%95-%F0%9F%92%AF-%EC%B4%9D%EC%A0%95%EB%A6%AC
http 상태 정리
https://hongong.hanbit.co.kr/http-%EC%83%81%ED%83%9C-%EC%BD%94%EB%93%9C-%ED%91%9C-1xx-5xx-%EC%A0%84%EC%B2%B4-%EC%9A%94%EC%95%BD-%EC%A0%95%EB%A6%AC/
