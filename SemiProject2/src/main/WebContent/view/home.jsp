<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="model.Member" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>오늘 뭐 입지?</title>

    <meta charset="utf-8">
    <meta name="author" content="templatemo">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">

    
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
<style>
 .tw-weather h4{
  color: white;
  font-size: 40px;
  font-weight: 700;
   line-height: 74px;
}

.tw-weather h4 em {
  font-style: normal;
  color: #00bdfe;
} 
td{
  font-weight: 600;
  font-size: 18px;
}
th{
font-size: 20px;
}

</style>
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
                <input type="text" name="postcode" class="postcode" placeholder="우편번호" >
				<input type="text" name="roadAddress" class="roadAddress" placeholder="도로명주소" >
				<span id="guide" style="color:#999;display:none"></span>
				<input type="text" name="detailAddress" class="detailAddress" placeholder="상세주소를 입력해주세요">
				<!--  카카오 주소 -->
				<br>
				
                

                <div class="action_btns">
                    <div class="one_half"><a href="#" class="btn back_btn"><i class="fa fa-angle-double-left"></i>뒤로</a></div>
                    <div class="one_half last"><button type="submit" class="btn btn_red">회원가입</button></div>
                </div>
            </form>
        </div>
        
    </section>
  </div>

  <!-- ***** Main Banner Area Start ***** -->
  <div class="main-banner">
    <div class="container">
      <div class="row">
        <div class="col-lg-10 offset-lg-1">
          <div class="header-text ">
            <h2>오늘 <em>뭐</em> 입지?</h2>
            
            <p></p>
            <h2>오늘 <em>날씨</em></h2>
            <div class="tw-weather">
              <h4>기온 <em class="tw-temperature"></em> </h4>
              <h4>위치 <em class="tw-place"></em> </h4>
              <h4>날씨 <em class="tw-description"></em> <img style="height: 75px; width: 75px;" class="tw-icon" /></h4>
              
            </div>
            <p></p>
            
            <div class="weatherReportDiv">
    <div class="weatherReport">
        <input class="labelHover" type="button" id="check-btn" onclick="toggleBtn()"  value="날씨 상세보기"/>    
        
        <table class="table1">
          <thead>
            <tr>
                <th class ="th_today"></th>
              <th></th>
              <th></th>
              <th></th>
              <th class ="th_tmr"></th>
              <th></th>
              <th></th>
              <th></th>
              <th class ="th_dat"></th>
              <th></th>
              <th></th>
              <th></th>
            </tr>
          </thead>
          <tbody>
            <tr>
                <td>최저,최고 기온</td>
              <td></td>
              <td class="td_today_tmp"></td>
              <td></td>
              <td>최저,최고 기온</td>
              <td></td>
              <td class="td_tmr_tmp"></td>
              <td></td>
              <td>최저,최고 기온</td>
              <td></td>
              <td class="td_dat_tmp"></td>
              <td></td>
            </tr>
            <tr>
              <td>강수 확률</td>
              <td></td>
              <td class="td_today_pop"></td>
              <td></td>
              <td>강수 확률</td>
              <td></td>
              <td class="td_tmr_pop"></td>
              <td></td>
              <td>강수 확률</td>
              <td></td>
              <td class="td_dat_pop"></td>
              <td></td>
            </tr>
            <tr>
              <td>습도</td>
              <td></td>
              <td class="td_today_reh"></td>
              <td></td>
              <td>습도</td>
              <td></td>
              <td class="td_tmr_reh"></td>
              <td></td>
              <td>습도</td>
              <td></td>
              <td class="td_dat_reh"></td>
              <td></td>
            </tr>
            <tr>
              <td>날씨</td>
              <td></td>
              <td class="td_today_sky"></td>
              <td></td>
              <td>날씨</td>
              <td></td>
              <td class="td_tmr_sky"></td>
              <td></td>
              <td>날씨</td>
              <td></td>
              <td class="td_dat_sky"></td>
              <td></td>
            </tr>
          </tbody>
        </table>
            </div>
<!-- 
  <div >
    <h3 id="todayW"></h3>
  </div>
  <div id="">
    <h3 id="tmrW"></h3>
  </div>
  <div >
    <h3 id="datW"></h3>
  </div> -->
          </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- ***** Main Banner Area End ***** -->


   <section class="featured-items" id="featured-items">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <div class="owl-features owl-carousel" style="position: relative; z-index: 5;">
          
          <c:forEach var="p" items="${products }">
            <div class="item">
              <div class="thumb">
                <img src="${p.img}" alt="">
                <div class="hover-effect">
                  <div class="content">
                    <h4>${p.name}</h4>
                    <ul>
                    <li><span>카테고리</span>${p.category}</li>
                      <li><span>가격</span>${p.price}원</li>
                      <li><span>조회수: </span> ${p.count}</li>
                      <li><span><a href="${pageContext.request.contextPath }/sellerDetail?num=${p.num }">상세 보기</a></span></li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
             </c:forEach>
           
          </div>
        </div>
      </div>
    </div>
  </section>

<section class="featured-contests">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <div class="section-heading text-center">
            <h6>내일 뭐 입지?</h6>
            <h4> 가장 많이 본 아이템<em>Top 6</em></h4>
          </div>
        </div>
        <c:forEach var="top5" items="${top5Products }">
        <div class="col-lg-4">    
          <div class="item">
            <div class="thumb">
              <img src="${top5.img}" alt="">
              <div class="hover-effect">
                <div class="content">
                  <div class="top-content">
                    <span class="award">${top5.category}</span>
                    <span class="price">${top5.price}원</span>
                  </div>
                  <h4>${top5.name}</h4>
                  <div class="info">
                    <span class="participants"><img src="/SemiProject2/view/assets//images/icon-03.png" alt=""><br>조회수: <br>${top5.count}</span>
                    <span class="submittions"><img src="/SemiProject2/view/assets//images/icon-01.png" alt=""><br>수량<br>${top5.quantity}</span>
                  </div>
                  <div class="border-button">
                  <a href="${pageContext.request.contextPath }/sellerDetail?num=${top5.num }">상세 보기</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        </c:forEach>
       
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
 <!--  <script type="text/javascript" src="/SemiProject2/view/assets/js/address.js"></script> -->
  <script src="/SemiProject2/view/assets/js/table.js"></script>
 <script type="text/javascript">


	

//본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
function sample4_execDaumPostcode() {
   
   new daum.Postcode({
       oncomplete: function(data) {
           // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

           // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
           // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
           var roadAddr = data.roadAddress; // 도로명 주소 변수
           var extraRoadAddr = ''; // 참고 항목 변수

           // 법정동명이 있을 경우 추가한다. (법정리는 제외)
           // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
           if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
               extraRoadAddr += data.bname;
           }
           // 건물명이 있고, 공동주택일 경우 추가한다.
           if(data.buildingName !== '' && data.apartment === 'Y'){
              extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
           }
           // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
           if(extraRoadAddr !== ''){
               extraRoadAddr = ' (' + extraRoadAddr + ')';
           }

           // 우편번호와 주소 정보를 해당 필드에 넣는다.
           document.querySelector('.postcode').value = data.zonecode;
           document.querySelector(".roadAddress").value = roadAddr;
           document.querySelector(".jibunAddress").value = data.jibunAddress;
           
           // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
           if(roadAddr !== ''){
               document.getElementById("sample4_extraAddress").value = extraRoadAddr;
           } else {
               document.getElementById("sample4_extraAddress").value = '';
           }

           var guideTextBox = document.getElementById("guide");
           // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
           if(data.autoRoadAddress) {
               var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
               guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
               guideTextBox.style.display = 'block';

           } else if(data.autoJibunAddress) {
               var expJibunAddr = data.autoJibunAddress;
               guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
               guideTextBox.style.display = 'block';
           } else {
               guideTextBox.innerHTML = '';
               guideTextBox.style.display = 'none';
           }
       }
   }).open({autoClose: false});
}
</script> 


  </body>
</html>