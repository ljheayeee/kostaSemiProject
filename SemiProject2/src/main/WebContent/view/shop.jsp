<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<title>Insert title here</title>

    <meta charset="utf-8">
    <meta name="author" content="templatemo">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">

    <title>SnapX Photo Contests</title>

    <!-- Bootstrap core CSS -->
    <link href="/SemiProject2/view/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">


    <!-- Additional CSS Files -->
     <link rel="stylesheet" href="/SemiProject2/view/assets/css/tablestyle.css">
    <link rel="stylesheet" href="/SemiProject2/view/assets/css/fontawesome.css">
    <link rel="stylesheet" href="/SemiProject2/view/assets/css/templatemo-snapx-photography.css">
    <link rel="stylesheet" href="/SemiProject2/view/assets/css/owl.css">
    <link rel="stylesheet" href="/SemiProject2/view/assets/css/animate.css">
    <link rel="stylesheet"href="https://unpkg.com/swiper@7/swiper-bundle.min.css"/>
<!--

TemplateMo 576 SnapX Photography

https://templatemo.com/tm-576-snapx-photography

-->
</head>
<body>

  <!-- ***** Header Area Start ***** -->
 	<%@ include file="header.jsp" %>

  <div id="modal" class="popupContainer" style="display:none;">
    <div class="popupHeader">
        <span class="header_title">로그인</span>
        <span class="modal_close"><i class="fa fa-times"></i></span>
    </div>

    <section class="popupBody">
        <!-- Social Login -->
       <div class="social_login">
    
            
            <div class="action_btns">
                <div class="one_half"><a href="#" id="login_form" class="btn">로그인</a></div>
                <div class="one_half last"><a href="#" id="register_form" class="btn">회원가입 </a></div>
            </div>
        </div>

        <!-- Username & Password Login form -->
        <div class="user_login">
            <form action="${pageContext.request.contextPath }/LoginController" method="post">
                <label>이메일</label>
                <input name="email" type="text"  />
              <br />

                <label>비밀번호</label>
                <input name="pw" type="password"  />
              
            
              <br />

                <div class="checkbox">
                    
                </div>

                <div class="action_btns">
                    <div class="one_half"><a href="#" class="btn back_btn"><i class="fa fa-angle-double-left"></i> 뒤로</a></div>
                    <div class="one_half last"><button type="submit" class="btn btn_red">로그인</button></div>
                </div>
            </form>

            
        </div>

        <!-- Register Form -->
        <div class="user_register">
            <form action="${pageContext.request.contextPath }/JoinController" method="post">


                <label>이메일</label>
                <input name="email" type="email" id="email" />
                <br />

                <label>패스워드</label>
                <input name="pw" type="password" />
                <br />
				  <br />
                <label>이름</label>
                <input name="name" type="text"  />
                <br />
              <label>주소</label>
                
                <!--  카카오 주소 -->
                <input class="btn" type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br><br>
                <input type="text" name="postcode" id="postcode" placeholder="우편번호" >
				<input type="text" name="roadAddress" id="roadAddress" placeholder="도로명주소" >
				<span id="guide" style="color:#999;display:none"></span>
				<input type="text" name="detailAddress" class="detailAddress" placeholder="상세주소를 입력해주세요">
				<!--  카카오 주소 -->
				<br>
				
                <div class="checkbox">
                    <input id="send_updates" type="checkbox" />
                    <label for="send_updates">Send me occasional email updates</label>
                </div>

                <div class="action_btns">
                    <div class="one_half"><a href="#" class="btn back_btn"><i class="fa fa-angle-double-left"></i>뒤로</a></div>
                    <div class="one_half last"><button type="submit" class="btn btn_red">회원가입</button></div>
                </div>
            </form>
        </div>
        
    </section>
  </div>

  <div class="page-heading">
    <div class="container">
      <div class="row">
        <div class="col-lg-8 offset-lg-2 header-text">
          <h2>내일 뭐 <em>입지?</em></h2>
          
        </div>
      </div>
    </div>
  </div>

  <div class="search-form">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <form id="search-form" name="gs" method="submit" role="search" action="#">
            <div class="row">
              <div class="col-lg-4">
                <fieldset>
                    <label for="contest" class="form-label">상품 이름</label>
                    <input type="text" name="contest" class="searchText" placeholder="상품 이름..." autocomplete="on" required>
                </fieldset>
              </div>
              <div class="col-lg-4">
                <fieldset>
                    <label for="category" class="form-label">카테고리</label>
                    <select name="category" class="form-select" aria-label="Choose a category" id="category" onchange="this.form.click()">
                        <option selected>카테고리 선택</option>
                        <option type="checkbox" name="Nature" value="Nature">상의</option>
                        <option value="Portrait">하의</option>
                        <option value="Space">신발</option>
                        <option value="Space">악세사리</option>
                    </select>
                </fieldset>
              </div>
              
              <div class="col-lg-2">                        
                <fieldset>
                    <button class="main-button">Search Now</button>
                </fieldset>
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>

  

  <section class="contest-win">
    <div class="container-fluid">
      <div class="row">
        <div class="col-lg-12">
          <div class="section-heading text-center">
            <h6>내일 뭐 입지?</h6>
            <h4>상품<em>목록</em></h4>
          </div>
        </div>
        <div class="col-lg-3">
          <div class="contest-item">
            <div class="top-content">
              <span class="award">Award Price</span>
              <span class="price">$1,200</span>
            </div>
            <img src="assets/images/contest-01.jpg" alt="">
            <h4>Walk In The Nature Night</h4>
            <div class="info">
              <span class="participants"><img src="assets//images/icon-03.png" alt=""><br>80 Participants</span>
              <span class="submittions"><img src="assets//images/icon-01.png" alt=""><br>260 Submissions</span>
            </div>
            <div class="border-button">
              <a href="contest-details.jsp">Browse Nature Pic Contests</a>
            </div>
            <span class="info">* Client will pay via Online Payments</span>
          </div>
        </div>
        <div class="col-lg-3">
          <div class="contest-item">
            <div class="top-content">
              <span class="award">Award Price</span>
              <span class="price">$2,400</span>
            </div>
            <img src="assets/images/contest-02.jpg" alt="">
            <h4>Walk In The Nature Night</h4>
            <div class="info">
              <span class="participants"><img src="assets//images/icon-03.png" alt=""><br>60 Participants</span>
              <span class="submittions"><img src="assets//images/icon-01.png" alt=""><br>212 Submissions</span>
            </div>
            <div class="border-button">
              <a href="contest-details.jsp">Browse Nature Pic Contests</a>
            </div>
            <span class="info">* Client will pay via Online Payments</span>
          </div>
        </div>
        <div class="col-lg-3">
          <div class="contest-item">
            <div class="top-content">
              <span class="award">Award Price</span>
              <span class="price">$3,600</span>
            </div>
            <img src="assets/images/contest-03.jpg" alt="">
            <h4>Walk In The Nature Night</h4>
            <div class="info">
              <span class="participants"><img src="assets//images/icon-03.png" alt=""><br>55 Participants</span>
              <span class="submittions"><img src="assets//images/icon-01.png" alt=""><br>150 Submissions</span>
            </div>
            <div class="border-button">
              <a href="contest-details.jsp">Browse Nature Pic Contests</a>
            </div>
            <span class="info">* Client will pay via Online Payments</span>
          </div>
        </div>
        <div class="col-lg-3">
          <div class="contest-item">
            <div class="top-content">
              <span class="award">Award Price</span>
              <span class="price">$4,800</span>
            </div>
            <img src="assets/images/contest-04.jpg" alt="">
            <h4>Walk In The Nature Night</h4>
            <div class="info">
              <span class="participants"><img src="assets//images/icon-03.png" alt=""><br>40 Participants</span>
              <span class="submittions"><img src="assets//images/icon-01.png" alt=""><br>120 Submissions</span>
            </div>
            <div class="border-button">
              <a href="contest-details.jsp">Browse Nature Pic Contests</a>
            </div>
            <span class="info">* Client will pay via Online Payments</span>
          </div>
        </div>
        <div class="col-lg-12">
          <ul class="pagination">
            <li><a href="#"><i class="fa fa-arrow-left"></i></a></li>
            <li><a href="#">1</a></li>
            <li class="active"><a href="#">2</a></li>
            <li><a href="#">3</a></li>
            <li><a href="#"><i class="fa fa-arrow-right"></i></a></li>
          </ul>
        </div>
      </div>
    </div>
  </section>

<%@ include file="footer.jsp" %>

<!-- Scripts -->
  <!-- Bootstrap core JavaScript -->
  <script src="/SemiProject2/view/vendor/jquery/jquery.min.js"></script>
  <script src="/SemiProject2/view/vendor/bootstrap/js/bootstrap.min.js"></script>

  <script src="/SemiProject2/view/assets/js/isotope.min.js"></script>
  <script src="/SemiProject2/view/assets/js/owl-carousel.js"></script>

  <script src="/SemiProject2/view/assets/js/tabs.js"></script>
  <script src="/SemiProject2/view/assets/js/popup.js"></script>
  <script src="/SemiProject2/view/assets/js/custom.js"></script>
  <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
  <script src="/SemiProject2/view/assets/js/weather.js"></script>
  <script src="/SemiProject2/view/assets/js/todayWeather.js"></script>
  <script src="/SemiProject2/view/assets/js/address.js"></script>
  <script src="/SemiProject2/view/assets/js/table.js"></script>


  </body>
</html>