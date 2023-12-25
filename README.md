# 세미 프로젝트

날씨 제공 해주는 쇼핑몰 사이트

---

시작페이지 index.jsp

---

## ** 윈도우 환경

1. uploadPath 와 p.setImg변경 필요(윈도우 환경에 맞게 이미지 경로 변경)
    
    **uploadPath, p.setImg 위치
    

product.controller.AddController.java

product.controller.ProdDelController.java

1. 프로젝트 build Path의 jar파일 변경 필요
    
    build path → Libraries
    
    1. ojdbc11.jar
    2. javax.servlet.jsp.jstl-api-1.2.1.jar
    
    jar 변경
    

---

```java
RequestDispatcher rd = request.getRequestDispatcher(path);
rd.forward(request, response);
```

**rd.forward 할 때 css와 js가 따라오지 않을 때 →톰캣 web.xml에서 servlet-mapping 수정

```java

<servlet-mapping>
        <servlet-name>default</servlet-name>
         <url-pattern>/</url-pattern>
        <url-pattern>*.js</url-pattern>
        <url-pattern>*.css</url-pattern>
        <url-pattern>*.jpg</url-pattern>
    </servlet-mapping>
```

---

## 기능

### 헤더

- 홈으로 돌아가기
- 로그인/회원가입
- 로그인시 내정보

---

### 로그인 /회원가입

- 구현기능
    - 로그인
        - 로그인시 가입한 이메일 보여주기
        
    - 회원가입
        - admin~으로 시작하면 판매자 권한으로 회원가입
        - ex) asd@gmail.com → 구매자
        - ex) admin@gmail.com → 판매자
        - ex) admin1234@gmail.com → 판매자
        - 다음 주소 api 활용 주소 기입
        
    - 내 정보 수정
        - 비밀번호와 주소만 변경 가능
        
    - 회원 탈퇴
        - 내 정보 수정에서 가능
    
    ---
    

### 내 정보화면

- 판매자일 때
    - 상품 등록과 등록된 상품 목록

- 구매자일 때
    - 내 주문 목록과 장바구니 확인
    - 장바구니에 담은 아이템 삭제 기능
    - 장바구니에 담은 아이템 주문 기능
    

---

### 홈 화면

- 구현 기능
    - openWeatherMap api를 통한 현재 날씨 구현
    - 공공 데이터 api를 통한 3일간의 날씨 구현(용산구 기준)
    - 등록된 전체 상품 보여주기
    - 조회수가 가장 높은 6개의 품목 보여주기

---

### 상품 화면

- 검색기능 이름과 카테고리
- 검색할 제품의 이름과 카테고리 선택 후 검색
- 검색할 제품의 일부 이름만 검색해도 결과가 나오도록 함
- ex) 제품이름: 검정색 데님 바지 → 검색: 검정색 or 데님 or 바지
