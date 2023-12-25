<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

    <meta charset="utf-8">
    <meta name="author" content="templatemo">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">

    <title>SnapX Photo Contest Detail</title>
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
   #preview-image3:hover{
        content:url(shopImages/addIMG.png);
    }
    .image-container{
  display: flex;
  align-items: center;
  justify-content: center;
  flex-direction: column;
  padding-right: 50px;
  object-fit: cover;
  border-radius: 30px;
  
 }
 .selected_pic{
    display: flex;
    justify-content: center;
    align-items: center;
 	background-color: #AAAAAA;
 }
.main-button input {
  font-size: 15px;
  color: #fff;
  background-color: #00bdfe;
  border: 1px solid #00bdfe;
  padding: 10px 30px;
  display: inline-block;
  border-radius: 10px;
  font-weight: 500;
  text-transform: capitalize;
  letter-spacing: 0.5px;
  transition: all .3s;
}

.main-button input:hover {
  background-color: transparent;
  color: #00bdfe;
}

#delBtn {
  font-size: 15px;
  color: #fff;
  background-color: #FE4847;
  border: 1px solid #FE4847;
  padding: 10px 30px;
  display: inline-block;
  border-radius: 10px;
  font-weight: 500;
  text-transform: capitalize;
  letter-spacing: 0.5px;
  transition: all .3s;
}

#delBtn:hover {
  background-color: transparent;
  color: #FE4847;
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
         
    
        </div>
      </div>
    </div>
  </div>

  <div class="contest-details">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <div class="top-content">
            <div class="row">
              <div class="col-lg-4">
              <c:if test="${m.type == 2 }">
                <span class="open">내 정보 수정 및 상품 등록</span>
                </c:if>
                <c:if test="${m.type == 1 }">
                <span class="open">내 정보 수정</span>
                </c:if>
              </div>
              
            </div>
          </div>
        </div>
        <div class="col-lg-12">
          <div class="main-content">
          
          
            <form action="${pageContext.request.contextPath }/EditController" method="post"  id="addForm" name="detailFrom">
    
                
                           
                           
                     <h4>내 정보 수정</h4>
                    <h6>이메일<input name="email" type="email" id="email" value="${m.email }" readonly="readonly"/></h6><br>
                    
                    
                        <br>
                        <br>
                        <h6>패스워드 : <input name="pw" type="password" value="${m.pw }"/></h6><br><br>
                    	<h6>이름 : <input name="name" type="text"  value="${m.name }" readonly="readonly"/></h6><br><br>
                    	<input class="btn" type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br><br>
                    	<h6>주소 : </h6>
                        
                <input type="text" name="postcode" class="postcode" placeholder="우편번호" readonly="readonly" value="${m.postcode }">
				<input type="text" name="roadAddress" class="roadAddress" placeholder="도로명주소" readonly="readonly" value="${m.roadAddress }">
				<span id="guide" style="color:#999;display:none"></span>
				<input type="text" name="detailAddress" class="detailAddress" placeholder="상세주소를 입력해주세요" value="${m.detailAddress }">
                    <div class="main-button">
                    <input type="submit" value="내 정보 수정">
                    <input id="delBtn" type="button" value="탈퇴" onclick="deleteMember()">
                    <br><br>
                    <c:if test="${m.type == 2 }">
		           			 <a href="${pageContext.request.contextPath }/sellerAddForm">새 상품 등록</a>
		           			 <br><br>
		           			 <a href="${pageContext.request.contextPath }/sellerList">내 등록 상품보기</a>
                		</c:if>
                		<c:if test="${m.type == 1 }">
		           			 <a href="${pageContext.request.contextPath }/order_myList?o_state=0">내 구매 목록</a>
		           			 <br><br>
		           			 <a href="${pageContext.request.contextPath }/order_myList?o_state=1">장바구니 보기</a>
                		</c:if>
                    <br><br>
                    	
                    </div>
                    
            </form>
            </div>
          </div>
        </div>
      </div>
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
  <!-- <script src="/SemiProject2/view/assets/js/address.js"></script> -->
  <script src="/SemiProject2/view/assets/js/table.js"></script>


  <script>
  
       	function deleteMember(){
		var flag = confirm("정말 삭제하겠습니까?")
		if(flag){
			document.detailFrom.action="${pageContext.request.contextPath }/DelController";
			document.detailFrom.submit();
		}else{
			alert("삭제가 취소되었습니다.");
		}
	}
       var num = document.querySelector('#num');
       num.style.display = "none"; 
       
       
     //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
       function sample4_execDaumPostcode() {
    	   
    	   $('input[name=postcode]').attr('value',"");
    	   $('input[name=roadAddress]').attr('value',"");
    	   $('input[name=detailAddress]').attr('value',"");
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
