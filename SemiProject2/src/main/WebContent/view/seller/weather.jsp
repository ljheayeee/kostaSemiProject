<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- 6gPufIJDTWuD7nyCQx1r3g -->
<meta charset="UTF-8">
<title>Insert title here</title>
<script>

</script>
</head>
<body>
<%= application.getContextPath()  %><br>
<%= request.getSession().getServletContext().getRealPath("/") %><br>
<%= application.getRealPath("/")  %><br>
</body>
</html>