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
	<h1>index</h1>
	<ol>
		<li><a href="<%=request.getContextPath()%>/storeList.jsp" class="btn btn-outline-dark" role="button">Store List</a></li>
			
		<li><a href="<%=request.getContextPath()%>/staffList.jsp" class="btn btn-outline-dark" role="button">Staff List</a></li>
		
		<li><a href="<%=request.getContextPath()%>/actorInfoList.jsp" class="btn btn-outline-dark" role="button">actorInfo List</a></li>
		
		<li><a href="<%=request.getContextPath()%>/customerList.jsp" class="btn btn-outline-dark" role="button">customerList</a></li>
		
		<li><a href="<%=request.getContextPath()%>/filmList.jsp" class="btn btn-outline-dark" role="button">filmList</a></li>
		
		<li><a href="<%=request.getContextPath()%>/nicerButSLowerFilmList.jsp" class="btn btn-outline-dark" role="button">nicerButSLowerFilmList</a></li>
		
		<li><a href="<%=request.getContextPath()%>/salesByStore.jsp" class="btn btn-outline-dark" role="button">salesByStore</a></li>
		
		<li><a href="<%=request.getContextPath()%>/salesByFilmCategory.jsp" class="btn btn-outline-dark" role="button">salesByFilmCategory</a></li>
		
		<li><a href="<%=request.getContextPath()%>/staffListView.jsp" class="btn btn-outline-dark" role="button">staffListView</a></li>
	
	</ol>
</body>
</html>