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
                <span class="open">상품 수정</span>
              </div>
              
            </div>
          </div>
        </div>
        <div class="col-lg-12">
          <div class="main-content">
            <form action="${pageContext.request.contextPath }/sellerEdit" method="post"  id="addForm" name="detailFrom">
                          
                           
                           
                     <h4>상품등록</h4>
                    <h6>대표사진</h6>
                    <br>
                    <div class="image-container2">
                            
                            
                            <img  style='width:auto;height:auto; max-width: 350px; max-height: 350px; object-fit: contain;' id="preview-image3" src="${p.img}">
                        </div>
                        <br>
                        <br>
                        <h6>상품명: <input type="text" value="${p.name}" name="name"></h6><br><br>
                    	<h6>수량 : <input type="text" value="${p.quantity}" name="quantity"></h6><br><br>
                    	<h6>가격 : <input type="text" value="${p.price}" name="price"></h6><br><br>
                    	<h6>카테고리:  <input type="text"  name="category" value="${p.category}" readonly="readonly">
                        </h6><br><br>
                        <div>
                        <h6>상세설명:</h6>
                        <input type="text" value="${p.content}" name="content"  >
                        </div>
                            
                    <div class="main-button">
                    <input type="submit" value="수정">
                    <input id="delBtn" type="button" value="삭제" onclick="deleteProduct()">
                    </div>
                    <input id="num" type="text" name="num" value="${p.num}">
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
  <script src="/SemiProject2/view/assets/js/address.js"></script>
  <script src="/SemiProject2/view/assets/js/table.js"></script>


  <script>
/*     function readImage3(input) {
           // 인풋 태그에 파일이 있는 경우
           if(input.files && input.files[0]) {
               // 이미지 파일인지 검사 (생략)
               // FileReader 인스턴스 생성
               const reader = new FileReader()
               // 이미지가 로드가 된 경우
               reader.onload = e => {
                   const previewImage = document.getElementById("preview-image3")
                   previewImage.src = e.target.result
               }
               // reader가 이미지 읽도록 하기
               reader.readAsDataURL(input.files[0])
           }
       }
       // input file에 change 이벤트 부여
       const inputImage3 = document.getElementById("input-image3")
       inputImage3.addEventListener("change", e => {
           readImage3(e.target)
       }) */
       
       	function deleteProduct(){
		var flag = confirm("정말 삭제하겠습니까?")
		if(flag){
			document.detailFrom.action="${pageContext.request.contextPath }/Delproduct?num=${p.num }";
			document.detailFrom.submit();
		}else{
			alert("삭제가 취소되었습니다.");
		}
	}
       var num = document.querySelector('#num');
       num.style.display = "none"; 
  </script>
  </body>
</html>
