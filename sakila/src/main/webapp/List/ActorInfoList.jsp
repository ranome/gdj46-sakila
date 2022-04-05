<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="dao.ActorInfoDao" %>
<%@ page import ="vo.ActorInfo" %>
<%@ page import ="java.util.*" %>
<%
		ActorInfoDao actorInfoDao = new ActorInfoDao();
		// 페이징
		int currentPage = 1; // 페이지 값 1
		if(request.getParameter("currentPage") != null){
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
			System.out.println(currentPage + "<-- actorInfoList currentPage");
		}
		int rowPerPage = 10; // 표기 페이지 값 10
		int beginRow = (currentPage - 1) * rowPerPage;
		List<ActorInfo> list = actorInfoDao.selectActorInfoListByPage(beginRow, rowPerPage); // 페이징 메서드
		int lastPage = 0; 
		int totalCount = actorInfoDao.selectActorInfoTotalRow(); 
		
		
		lastPage = totalCount / rowPerPage;
		if(totalCount % rowPerPage != 0){
			lastPage++;
		}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ActorInfoList</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
</head>
<body>
	<div class="container row" style="float: none; margin:100 auto;">
		<div class="col-md-3" style="float: none; margin:0 auto;">
			<a href="<%=request.getContextPath()%>/index.jsp" class="btn btn-outline-dark" role="button">index</a>
		</div>
	</div>
	
	<div class="container">
	<table class="table table-striped">
	<thead class="thead-dark">
	<h3>ActorInfo_List</h3>
		<tr>
			<th>ActorId</th>
			<th>firstName</th>
			<th>lastName</th>
			<th>filmInfo</th>
		</tr>
		<tbody>
			<%
				for(ActorInfo a : list){
			%>
		<tr>
			<td><%=a.getActorId()%></td>
			<td><%=a.getFirstName()%></td>	
			<td><%=a.getLastName()%></td>
			<td><%=a.getFilmInfo()%></td>
		</tr>
			<%
				}
			 %>
		</tbody>
	</table>
</div>
<!-- 페이지 목록 표시 부분 -->

<div class="container row" style="float: none; margin:100 auto;">
	<div class="col-md-3" style="float: none; margin:0 auto;">
		<div class="btn-group btn-group-lg">
		<%
			if(currentPage > 1){
		%>
			<a href="<%=request.getContextPath()%>/actorInfoList.jsp?currentPage=<%=currentPage - 1%>" class="btn btn-primary-outline-dark" role="button">이전</a>
		<%
			}
		%>
		<%
			if(currentPage < lastPage){
		%>
			<a href="<%=request.getContextPath()%>/actorInfoList.jsp?currentPage=<%=currentPage+1%>" class="btn btn-primary-outline-dark" role="button">다음</a>
		<%
			}
		%>
		</div>
	</div>
</div>
</body>
</html>