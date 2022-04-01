<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="dao.*"%>
<%
	StaffDao staffDao = new StaffDao();
	List<Map<String, Object>> list = staffDao.selectStaffList();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Staff List</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">

</head>
<body>
	<div class="container-fluid">
		<a href="">index</a>
		<h1>Staff List</h1>
		<table class="table table-striped">
			<thead>
				<tr>
					<th>staffId</th>
					<th>staffName</th>
					<th>addressId</th>
					<th>picture</th>
					<th>email</th>
					<th>storeId</th>
					<th>active</th>
					<th>username</th>
					<th>password</th>
					<th>lastUpdate</th>
				</tr>
			</thead>
			<tbody>
			<%
				for(Map m : list) {
			%>
					<tr>
						
						<td><%=m.get("staffId")%></td>
						<td><%=m.get("staffName")%></td>
						<td><%=m.get("addressId")%></td>
						<td><%=m.get("picture")%></td>
						<td><%=m.get("email")%></td>
						<td><%=m.get("storeId")%></td>
						<td><%=m.get("active")%></td>
						<td><%=m.get("username")%></td>
						<td><%=m.get("password")%></td>
						<td><%=m.get("lastUpdate")%></td>
					</tr>
			<%
				}
			%>
			</tbody>
		</table>
	</div>
</body>
</html>