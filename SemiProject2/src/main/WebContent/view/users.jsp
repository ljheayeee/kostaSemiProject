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

    <title>SnapX Photographer Page</title>

     <!-- Bootstrap core CSS -->
    <link href="/SemiProject2/view/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">


    <!-- Additional CSS Files -->
     <link rel="stylesheet" href="/SemiProject2/view/assets/css/tablestyle.css">
    <link rel="stylesheet" href="/SemiProject2/view/assets/css/fontawesome.css">
    <link rel="stylesheet" href="/SemiProject2/view/assets/css/templatemo-snapx-photography.css">
    <link rel="stylesheet" href="/SemiProject2/view/assets/css/owl.css">
    <link rel="stylesheet" href="/SemiProject2/view/assets/css/animate.css">
    <link rel="stylesheet"href="https://unpkg.com/swiper@7/swiper-bundle.min.css"/>

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
          <h2><em>자유</em>게시판</h2>
          <p>If you wish to <a rel="nofollow" href="https://templatemo.com/contact" target="_blank">support TemplateMo</a>, you shall make a little amount of contribution via PayPal. We hope this SnapX template is useful for your web development. Thank you.</p>
        </div>
      </div>
    </div>
  </div>

  <div class="user-info">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <div class="avatar">
            <img src="assets/images/user-avatar.jpg" alt="">
            <h4>#007772 John Walker</h4>
          </div>
        </div>
        <div class="col-lg-2 col-sm-6">
          <div class="info">
            <h6>Rank</h6>
            <h4>#121</h4>
            <span>of 1680</span>
          </div>
        </div>
        <div class="col-lg-2 col-sm-6">
          <div class="info">
            <h6>Ratings</h6>
            <h4>4.56</h4>
            <span>of 5.00 Stars</span>
          </div>
        </div>
        <div class="col-lg-2 col-sm-6">
          <div class="info">
            <h6>Top Rated</h6>
            <h4>Nature</h4>
            <span>Picture Category</span>
          </div>
        </div>
        <div class="col-lg-2 col-sm-6">
          <div class="info">
            <h6>Profile Views</h6>
            <h4>8,250</h4>
            <span>Monthly</span>
          </div>
        </div>
        <div class="col-lg-2 col-sm-6">
          <div class="info">
            <h6>Contests Won</h6>
            <h4>90</h4>
            <span>of 12,400</span>
          </div>
        </div>
        <div class="col-lg-2 col-sm-6">
          <div class="info">
            <h6>Total Earned</h6>
            <h4>$68,000</h4>
            <span>All Time</span>
          </div>
        </div>
      </div>
    </div>
  </div>

  <section class="portfolio">
    <div class="container">
      <div class="row">
        <div class="col-lg-3">
          <div class="thumb">
            <img src="assets/images/portfolio-01.jpg" alt="">
            <div class="hover-effect">
              <div class="content">
                <h4>Walk In the Beach</h4>
                <span>Ranked: <em>2nd</em></span>
                <span>Award Won: <em>None</em></span>
                <ul>
                  <li><a href="#"><i class="fa fa-heart"></i></a></li>
                  <li><a href="#"><i class="fa fa-eye"></i></a></li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-5">
          <div class="thumb">
            <img src="assets/images/portfolio-02.jpg" alt="">
            <div class="hover-effect">
              <div class="content">
                <h4>Walk In The Nature</h4>
                <span>Ranked: <em>3rd</em></span>
                <span>Award Won: <em>EOS R3</em></span>
                <ul>
                  <li><a href="#"><i class="fa fa-heart"></i></a></li>
                  <li><a href="#"><i class="fa fa-eye"></i></a></li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-4">
          <div class="thumb">
            <img src="assets/images/portfolio-03.jpg" alt="">
            <div class="hover-effect">
              <div class="content">
                <h4>Walk In The Forest</h4>
                <span>Ranked: <em>4th</em></span>
                <span>Award: <em>EOS R7</em></span>
                <ul>
                  <li><a href="#"><i class="fa fa-heart"></i></a></li>
                  <li><a href="#"><i class="fa fa-eye"></i></a></li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-3">
          <div class="thumb">
            <img src="assets/images/portfolio-04.jpg" alt="">
            <div class="hover-effect">
              <div class="content">
                <h4>Forest Nature</h4>
                <span>Ranked: <em>2nd</em></span>
                <span>Award: <em>EOS R3</em></span>
                <ul>
                  <li><a href="#"><i class="fa fa-heart"></i></a></li>
                  <li><a href="#"><i class="fa fa-eye"></i></a></li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-6">
          <div class="thumb">
            <img src="assets/images/portfolio-05.jpg" alt="">
            <div class="hover-effect">
              <div class="content">
                <h4>Fly thru the river</h4>
                <span>Ranked: <em>1st</em></span>
                <span>Award: <em>EOS R1</em></span>
                <ul>
                  <li><a href="#"><i class="fa fa-heart"></i></a></li>
                  <li><a href="#"><i class="fa fa-eye"></i></a></li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-3">
          <div class="thumb">
            <img src="assets/images/portfolio-06.jpg" alt="">
            <div class="hover-effect">
              <div class="content">
                <h4>Rocky Mountain</h4>
                <span>Ranked: <em>2nd</em></span>
                <span>Award Won: <em>None</em></span>
                <ul>
                  <li><a href="#"><i class="fa fa-heart"></i></a></li>
                  <li><a href="#"><i class="fa fa-eye"></i></a></li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-5">
          <div class="thumb">
            <img src="assets/images/portfolio-07.jpg" alt="">
            <div class="hover-effect">
              <div class="content">
                <h4>Rocky Mountain . Part 2</h4>
                <span>Ranked: <em>2nd</em></span>
                <span>Award Won: <em>None</em></span>
                <ul>
                  <li><a href="#"><i class="fa fa-heart"></i></a></li>
                  <li><a href="#"><i class="fa fa-eye"></i></a></li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-3">
          <div class="thumb">
            <img src="assets/images/portfolio-08.jpg" alt="">
            <div class="hover-effect">
              <div class="content">
                <h4>Blue Lake Nature</h4>
                <span>Ranked: <em>4th</em></span>
                <span>Award Won: <em>None</em></span>
                <ul>
                  <li><a href="#"><i class="fa fa-heart"></i></a></li>
                  <li><a href="#"><i class="fa fa-eye"></i></a></li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-4">
          <div class="thumb">
            <img src="assets/images/portfolio-09.jpg" alt="">
            <div class="hover-effect">
              <div class="content">
                <h4>Walk In The Forest</h4>
                <span>Ranked: <em>3rd</em></span>
                <span>Award Won: <em>None</em></span>
                <ul>
                  <li><a href="#"><i class="fa fa-heart"></i></a></li>
                  <li><a href="#"><i class="fa fa-eye"></i></a></li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-12">
          <div class="main-button">
            <a href="#">Load More Photos</a>
          </div>
        </div>
      </div>
    </div>
  </section>

  <section class="contact-us">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <div class="section-heading text-center">
            <h6>Contact This User</h6>
            <h4>Don't Be Shy <em></em> to contact the <em>Photographer Now</em></h4>
          </div>
        </div>
        <div class="col-lg-4">
          <div class="info-item">
            <i class="fa fa-phone"></i>
            <h4>Phone Numbers</h4>
            <span><a href="#">010-020-0340</a><br><a href="#">090-080-0760</a></span>
          </div>  
        </div>
        <div class="col-lg-4">
          <div class="info-item">
            <i class="fa fa-envelope"></i>
            <h4>Email Addresses</h4>
            <span><a href="#">info@company.com</a><br><a href="#">SnapX@company.com</a></span>
          </div>
        </div>
        <div class="col-lg-4">
          <div class="info-item">
            <i class="fa fa-map-marked"></i>
            <h4>Office Location</h4>
            <span><a href="#">155 Michigan Ave, Chicago,<br>IL 60601, United States</a></span>
          </div>
        </div>
        <div class="col-lg-12">
          <form id="contact" action="" method="post">
            <div class="row">
              <div class="col-lg-6">
                <fieldset>
                  <input type="text" name="name" id="name" placeholder="Your Name..." autocomplete="on" required>
                </fieldset>
              </div>
              <div class="col-lg-6">
                <fieldset>
                  <input type="text" name="telephone" id="telephone" placeholder="Your Telephone..." autocomplete="on" required>
                </fieldset>
              </div>
              <div class="col-lg-6">
                <fieldset>
                  <input type="email" name="email" id="email" placeholder="Your E-mail..." required="">
                </fieldset>
              </div>
              <div class="col-lg-6">
                <fieldset>
                  <input type="text" name="subject" id="subject" placeholder="Subject..." autocomplete="on" >
                </fieldset>
              </div>
              <div class="col-lg-12">
                <fieldset>
                  <textarea name="message" id="message" placeholder="Your Message"></textarea>
                </fieldset>
              </div>
              <div class="col-lg-12">
                <fieldset>
                  <button type="submit" id="form-submit" class="orange-button">Send Message Now</button>
                </fieldset>
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
  </section>
<div class="">
        <c:if test="${not empty m }">
            <form action="${pageContext.request.contextPath }/EditController" method="post">


                <label>이메일</label>
                <input name="email" type="email" id="email" value="${m.email }" readonly="readonly"/>
                <br />

                <label>패스워드</label>
                
                <br />
				  <br />
                <label>이름</label>
                <input name="name" type="text"  value="${m.name }" readonly="readonly"/>
                <br />
              <label>주소</label>
                
                <!--  카카오 주소 -->
                <input class="btn" type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br><br>
                <input type="text" name="postcode" id="postcode" placeholder="우편번호" readonly="readonly" value="${m.postcode }">
				<input type="text" name="roadAddress" id="roadAddress" placeholder="도로명주소" readonly="readonly" value="${m.roadAddress }">
				<span id="guide" style="color:#999;display:none"></span>
				<input type="text" name="detailAddress" id="detailAddress" placeholder="상세주소를 입력해주세요" value="${m.detailAddress }">
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
            </c:if>
            </div>
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