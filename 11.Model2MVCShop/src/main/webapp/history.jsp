<%@ page contentType="text/html; charset=EUC-KR" %>

<html>
<head>

<title>��� ��ǰ ����</title>

</head>
<body>
	����� ��� ��ǰ�� �˰� �ִ�
<br>
<br>
<%
	request.setCharacterEncoding("euc-kr");
	response.setCharacterEncoding("euc-kr");
	
	String history = null;
	Cookie[] cookies = request.getCookies();
	System.out.println("history.jsp���� cookies.length : "+cookies.length);
	
	if (cookies!=null && cookies.length > 0) {
		for (int i = 0; i < cookies.length; i++) {
			Cookie cookie = cookies[i];
			
			//if (cookie.getName().equals("history")) {
			if (cookie.getName() != null && cookie.getName().startsWith("history")) {
			
				history = cookie.getValue();
				
				System.out.println("history.jsp���� cookie.getName : "+cookie.getName());
				System.out.println("history.jsp���� history : "+history);
		
				
				%>
				<a href="/product/getProduct?prodNo=<%=history%>&menu=search"  target="rightFrame"><%=history%></a>
				<br>
				<%
			
			}
		}
	}
	
%>

</body>
</html>