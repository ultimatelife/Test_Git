<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="Test02.jsp" method = "post">
		<%	
			String str = "asdf";
			for(int i = 0 ; i < 2 ; i++){
				out.println("<input type = \"checkbox\" name = \"check\" value =" + i +">");
			}
		%>
		<input type = "submit"/>
	</form>
</body>
</html>