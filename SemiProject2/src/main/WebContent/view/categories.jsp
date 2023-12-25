<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

    <meta charset="utf-8">
    <meta name="author" content="templatemo">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">

    <title>SnapX Photography Categories</title>

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
        <span class="header_title">Login</span>
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
                <input name="email" type="text" id="username" />
              <br />

                <label>비밀번호</label>
                <input name="pw" type="password" id="password" />
              
            
              <br />

                <div class="checkbox">
                    <input id="remember" type="checkbox" />
                    <label for="remember">Remember me on this computer</label>
                </div>

                <div class="action_btns">
                    <div class="one_half"><a href="#" class="btn back_btn"><i class="fa fa-angle-double-left"></i> Back</a></div>
                    <div class="one_half last"><button type="submit" class="btn btn_red">Login</button></div>
                </div>
            </form>

            <a href="#" class="forgot_password">Forgot password?</a>
        </div>

        <!-- Register Form -->
        <div class="user_register">
            <form action="${pageContext.request.contextPath }/JoinController" method="post">


                <label>이메일</label>
                <input name="email" type="email" id="email" />
                <br />

                <label>패스워드</label>
                <input name="pw" type="password" id="password" />
                <br />
				  <br />
                <label>이름</label>
                <input name="name" type="text" id="username" />
                <br />
              <label>주소</label>
                
                <!--  카카오 주소 -->
                <input class="btn" type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br><br>
                <input type="text" name="postcode" id="postcode" placeholder="우편번호" readonly="readonly">
				<input type="text" name="roadAddress" id="roadAddress" placeholder="도로명주소" readonly="readonly">
				<span id="guide" style="color:#999;display:none"></span>
				<input type="text" name="detailAddress" id="detailAddress" placeholder="상세주소를 입력해주세요">
				<!--  카카오 주소 -->
				<br>
				
                <div class="checkbox">
                    <input id="send_updates" type="checkbox" />
                    <label for="send_updates">Send me occasional email updates</label>
                </div>

                <div class="action_btns">
                    <div class="one_half"><a href="#" class="btn back_btn"><i class="fa fa-angle-double-left"></i> Back</a></div>
                    <div class="one_half last"><button type="submit" class="btn btn_red">Register</button></div>
                </div>
            </form>
        </div>
        
    </section>
  </div>

  <div class="page-heading">
    <div class="container">
      <div class="row">
        <div class="col-lg-8 offset-lg-2 header-text">
          <h2>Discover Most Popular Categories on <em>SnapX</em></h2>
          <p>You are allowed to freely use SnapX Photography Template for your commercial websites. You are not allowed to redistribute the template ZIP file on any other Free CSS websites.</p>
        </div>
      </div>
    </div>
  </div>

  <div class="top-categories">
    <div class="container">
      <div class="row">
        <div class="col-lg col-sm-4">
          <div class="item">
            <div class="icon">
              <img src="assets/images/icon-01.png" alt="">
            </div>
            <h4>Nature Picture</h4>
            <span>Available Contests</span>
            <span class="counter">128</span>
          </div>
        </div>
        <div class="col-lg col-sm-4">
          <div class="item">
            <div class="icon">
              <img src="assets/images/icon-02.png" alt="">
            </div>
            <h4>Space Contest</h4>
            <span>Available Contests</span>
            <span class="counter">224</span>
          </div>
        </div>
        <div class="col-lg col-sm-4">
          <div class="item">
            <div class="icon">
              <img src="assets/images/icon-03.png" alt="">
            </div>
            <h4>Portrait Picture</h4>
            <span>Available Contests</span>
            <span class="counter">145</span>
          </div>
        </div>
        <div class="col-lg col-sm-4">
          <div class="item">
            <div class="icon">
              <img src="assets/images/icon-04.png" alt="">
            </div>
            <h4>Nature Picture</h4>
            <span>Available Contests</span>
            <span class="counter">268</span>
          </div>
        </div>
        <div class="col-lg col-sm-4">
          <div class="item">
            <div class="icon">
              <img src="assets/images/icon-01.png" alt="">
            </div>
            <h4>Space Picture</h4>
            <span>Available Contests</span>
            <span class="counter">310</span>
          </div>
        </div>
      </div>
    </div>
  </div>

  <section class="featured-contests">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <div class="section-heading text-center">
            <h6>Featured Contests</h6>
            <h4>View Most <em>Popular</em> Category <em>Contests</em></h4>
          </div>
        </div>
        <div class="col-lg-6">
          <div class="item">
            <div class="thumb">
              <img src="assets/images/featured-image-02.jpg" alt="">
              <div class="hover-effect">
                <div class="content">
                  <div class="top-content">
                    <span class="award">Award Price</span>
                    <span class="price">$1,600</span>
                  </div>
                  <h4>Walk In The Nature Night</h4>
                  <div class="info">
                    <span class="participants"><img src="assets//images/icon-03.png" alt=""><br>60<br>Participants</span>
                    <span class="submittions"><img src="assets//images/icon-01.png" alt=""><br>188<br>Submissions</span>
                  </div>
                  <div class="border-button">
                    <a href="contest-details.jsp">Browse Nature Contests</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-6">
          <div class="item">
            <div class="thumb">
              <img src="assets/images/featured-image-01.jpg" alt="">
              <div class="hover-effect">
                <div class="content">
                  <div class="top-content">
                    <span class="award">Award Price</span>
                    <span class="price">$3,200</span>
                  </div>
                  <h4>Walk In The Nature Night</h4>
                  <div class="info">
                    <span class="participants"><img src="assets//images/icon-03.png" alt=""><br>78<br>Participants</span>
                    <span class="submittions"><img src="assets//images/icon-01.png" alt=""><br>240<br>Submissions</span>
                  </div>
                  <div class="border-button">
                    <a href="contest-details.jsp">Browse Nature Contests</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-4">
          <div class="item">
            <div class="thumb">
              <img src="assets/images/featured-image-03.jpg" alt="">
              <div class="hover-effect">
                <div class="content">
                  <div class="top-content">
                    <span class="award">Award Price</span>
                    <span class="price">$4,100</span>
                  </div>
                  <h4>Walk In The Nature Night</h4>
                  <div class="info">
                    <span class="participants"><img src="assets//images/icon-03.png" alt=""><br>112<br>Participants</span>
                    <span class="submittions"><img src="assets//images/icon-01.png" alt=""><br>286<br>Submissions</span>
                  </div>
                  <div class="border-button">
                    <a href="contest-details.jsp">Browse Nature Contests</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-4">
          <div class="item">
            <div class="thumb">
              <img src="assets/images/featured-image-04.jpg" alt="">
              <div class="hover-effect">
                <div class="content">
                  <div class="top-content">
                    <span class="award">Award Price</span>
                    <span class="price">$3,400</span>
                  </div>
                  <h4>Walk In The Nature Night</h4>
                  <div class="info">
                    <span class="participants"><img src="assets//images/icon-03.png" alt=""><br>54<br>Participants</span>
                    <span class="submittions"><img src="assets//images/icon-01.png" alt=""><br>140<br>Submissions</span>
                  </div>
                  <div class="border-button">
                    <a href="contest-details.jsp">Browse Nature Contests</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-4">
          <div class="item">
            <div class="thumb">
              <img src="assets/images/featured-image-05.jpg" alt="">
              <div class="hover-effect">
                <div class="content">
                  <div class="top-content">
                    <span class="award">Award Price</span>
                    <span class="price">$2,200</span>
                  </div>
                  <h4>Walk In The Nature Night</h4>
                  <div class="info">
                    <span class="participants"><img src="assets//images/icon-03.png" alt=""><br>68<br>Participants</span>
                    <span class="submittions"><img src="assets//images/icon-01.png" alt=""><br>162<br>Submissions</span>
                  </div>
                  <div class="border-button">
                    <a href="contest-details.jsp">Browse Nature Contests</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <section class="testimonials">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <div class="section-heading text-center">
            <h6>What Clients Say</h6>
            <h4>What <em>Website</em> Users Are Saying <em>Topics</em></h4>
          </div>
        </div>
        <div class="col-lg-8 offset-lg-2">
          <div class="owl-testimonials owl-carousel">
            <div class="item">
              <div class="content">
                <div class="left-content">
                  <p>“SnapX Photography is a professional website template for photo and video related businesses. This Bootstrap v5.1.3 jsp CSS template is provided by TemplateMo website.”</p>
                  <h4>Thomas Wilson</h4>
                  <span>User #007704</span>
                </div>
                <div class="image">
                  <img src="assets/images/author.jpg" alt="">
                </div>
              </div>
            </div>
            <div class="item">
              <div class="content">
                <div class="left-content">
                  <p>“You may visit Too CSS website for latest collections of great templates. There are a variety of different categories for jsp CSS templates.”</p>
                  <h4>John Walker</h4>
                  <span>User #007772</span>
                </div>
                <div class="image">
                  <img src="assets/images/author.jpg" alt="">
                </div>
              </div>
            </div>
            <div class="item">
              <div class="content">
                <div class="left-content">
                  <p>“If you need a working contact form, please visit TemplateMo contact page for more information. You can easily buy and use a simple PHP contact form.”</p>
                  <h4>Vincent Anthon</h4>
                  <span>User #007794</span>
                </div>
                <div class="image">
                  <img src="assets/images/author.jpg" alt="">
                </div>
              </div>
            </div>
            <div class="item">
              <div class="content">
                <div class="left-content">
                  <p>“When you need Free CSS Templates, you just remember our website TemplateMo. We provide you best quality website templates at absolutely free of charge. No hidden cost involved.”</p>
                  <h4>Alan Smithee</h4>
                  <span>User #007765</span>
                </div>
                <div class="image">
                  <img src="assets/images/author.jpg" alt="">
                </div>
              </div>
            </div>
            <div class="item">
              <div class="content">
                <div class="left-content">
                  <p>“We hope this template is very useful for your website development. If you wish to <a rel="nofollow" href="https://templatemo.com/contact" target="_blank">support TemplateMo</a>, you may make a small amount of donation via PayPal.”</p>
                  <h4>Alan Smithee</h4>
                  <span>User #007724</span>
                </div>
                <div class="image">
                  <img src="assets/images/author.jpg" alt="">
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-12">
          <div class="clients">
            <div class="row">
              <div class="col-lg-2 col-4">
                <img src="assets/images/contest-01.jpg" alt="">
              </div>
              <div class="col-lg-2 col-4">
                <img src="assets/images/contest-02.jpg" alt="">
              </div>
              <div class="col-lg-2 col-4">
                <img src="assets/images/contest-01.jpg" alt="">
              </div>
              <div class="col-lg-2 col-4">
                <img src="assets/images/contest-02.jpg" alt="">
              </div>
              <div class="col-lg-2 col-4">
                <img src="assets/images/contest-01.jpg" alt="">
              </div>
              <div class="col-lg-2 col-4">
                <img src="assets/images/contest-02.jpg" alt="">
              </div>
            </div>
          </div>
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