<%@page import="fr.imie.UserDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<link href="./uikit-2.15.0/css/uikit.gradient.min.css" rel="stylesheet"
	type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div
		class="uk-panel uk-panel-box uk-panel-header uk-width-1-2 uk-container-center uk-panel-box-secondary">
		<table class="uk-table uk-table-hover uk-table-striped ">
			<tr>
				<th>login</th>
			</tr>
			<%
				List<UserDTO> dtos = (List<UserDTO>) request.getAttribute("users");
				for (UserDTO userDTO : dtos) {
			%>
			<tr>
				<td><%=userDTO.getLogin()%></td>
			</tr>

			<%
				}
			%>
		</table>
	</div>

</body>
</html>