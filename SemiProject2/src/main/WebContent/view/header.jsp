<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="model.Member" %>
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

    <title>SnapX Photography by TemplateMo</title>

    <!-- Bootstrap core CSS -->
    <link href="/SemiProject2/view/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">


    <!-- Additional CSS Files -->
     <link rel="stylesheet" href="/SemiProject2/view/assets/css/tablestyle.css">
    <link rel="stylesheet" href="/SemiProject2/view/assets/css/fontawesome.css">
    <link rel="stylesheet" href="/SemiProject2/view/assets/css/templatemo-snapx-photography.css">
    <link rel="stylesheet" href="/SemiProject2/view/assets/css/owl.css">
    <link rel="stylesheet" href="/SemiProject2/view/assets/css/animate.css">
    <link rel="stylesheet"href="https://unpkg.com/swiper@7/swiper-bundle.min.css"/>
   <style>
  .login{
  
    text-align: center;
    border-left: 0px;
    border-right: 0px;
   	margin-left: 0px;
    margin-right: 0px;
  }
.header h4{
  color: #00bdfe;
  font-size: 40px;
  font-weight: 700;
  /* line-height: 74px; */
}

.header h4 em {
  font-style: normal;
  color: #00bdfe;
}
</style>
</head>
<body>
<!-- ***** Header Area Start ***** -->
  <header class="header-area header-sticky">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <nav class="main-nav">
                    <!-- ***** Logo Start ***** -->
                    
                    <a href="${pageContext.request.contextPath }/home" class="logo">
                        <div class="header"><h4>오늘 <em>뭐</em> 입지?</h4></div></a>
                    <!-- ***** Logo End ***** -->
                    <!-- ***** Menu Start ***** -->
                    <ul class="nav">
                        <li><a href="${pageContext.request.contextPath }/home" class="active">홈</a></li>
                        <li>
                        <c:choose>
                        <c:when test="${memberType == 2 }">
                        <a href="${pageContext.request.contextPath }/sellerList">상품 관리</a>
                        </c:when>
                        <c:otherwise>
                        <a href="${pageContext.request.contextPath }/orderList">쇼핑</a>
                        </c:otherwise>
                        </c:choose>
                        </li>
                        <!-- <li><a href="users.jsp">게시판</a></li> -->
                    </ul>
                    <c:choose>
					    <c:when test="${sessionScope.login eq null}">
					       <div class="border-button">
		                      	<a id="modal_trigger" href="#modal" class="sign-in-up"><i class="fa fa-user"></i>로그인/회원가입</a>
	                       </div>
					    </c:when>
					    <c:otherwise>
					    	
						    <div class="border-button login">
						    		<a href="${pageContext.request.contextPath }/Search">${sessionScope.login }님</a>
	                    	</div>
	                    	<div class="border-button login">
					    			<a href="${pageContext.request.contextPath }/LogoutController">로그아웃</a><br>
	                    	</div>
					    
					    </c:otherwise>
					</c:choose>   
                    
                    <a class='menu-trigger'>
                        <span>Menu</span>
                    </a>
                    <!-- ***** Menu End ***** -->
                </nav>
            </div>
        </div>
    </div>
  </header>
  <!-- ***** Header Area End ***** -->
  
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