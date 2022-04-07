<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Index</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
</head>
<body>
	<h1> 목록 </h1>
	
	<ol>
	
		<li><a href="<%=request.getContextPath()%>/StoreList.jsp" class="btn btn-outline-dark" role="button">Store List</a></li>
			
		<li><a href="<%=request.getContextPath()%>/StaffList.jsp" class="btn btn-outline-dark" role="button">Staff List</a></li>
	</ol>
		
	<h2> 리스트 뷰 </h2>
		
	<ol>
		<li><a href="<%=request.getContextPath()%>/ActorInfoList.jsp" class="btn btn-outline-dark" role="button">actorInfo List</a></li>
		
		<li><a href="<%=request.getContextPath()%>/CustomerList.jsp" class="btn btn-outline-dark" role="button">customerList</a></li>
		
		<li><a href="<%=request.getContextPath()%>/FilmList.jsp" class="btn btn-outline-dark" role="button">filmList</a></li>
		
		<li><a href="<%=request.getContextPath()%>/NicerButSLowerFilmList.jsp" class="btn btn-outline-dark" role="button">nicerButSLowerFilmList</a></li>
		
		<li><a href="<%=request.getContextPath()%>/SalesByStore.jsp" class="btn btn-outline-dark" role="button">salesByStore</a></li>
		
		<li><a href="<%=request.getContextPath()%>/SalesByFilmCategory.jsp" class="btn btn-outline-dark" role="button">salesByFilmCategory</a></li>
		
		<li><a href="<%=request.getContextPath()%>/StaffListView.jsp" class="btn btn-outline-dark" role="button">staffListView</a></li>
	</ol>
	
	<h3> 상세 검색 </h3> 
		
	<ol>
		<li><a href="<%=request.getContextPath()%>/filmSearchForm.jsp" class="btn btn-outline-dark" role="button">필름 상세검색</a></li>
		
		<li><a href="<%=request.getContextPath()%>/rentalSearchForm.jsp" class="btn btn-outline-dark" role="button">대여 상세검색</a></li>
	</ol>
	
	<h4> 통계 </h4>
	
	<ol>
		
		
		
	</ol>
</body>
</html>