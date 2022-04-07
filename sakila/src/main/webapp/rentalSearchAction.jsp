<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "dao.*" %>
<%@ page import = "java.util.*" %>
<%
	int storeId = Integer.parseInt(request.getParameter("storeId"));
	String customerName = request.getParameter("customerName");
	String beginDate = request.getParameter("beginDate");
	String endDate = request.getParameter("endDate");
	int beginRow = Integer.parseInt(request.getParameter("deginRow"));
	int rowPerPage = Integer.parseInt(request.getParameter("rowPerPage"));
	
	//
	
	RentalDao rentalDao = new RentalDao();
	List<Map<String,Object>> list = rentalDao.selectRentalSearchList(storeId, customerName, beginDate, endDate, beginRow, rowPerPage);
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>검색 결과 리스트</h1>
   <%
      for(Map<String,Object> m : list) {
         
      }
   %>
	
</body>
</html>