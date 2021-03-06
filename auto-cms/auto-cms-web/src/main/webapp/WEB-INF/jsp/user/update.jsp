<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<c:set var="basePath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>
<title>edit user</title>
</head>
<body>
<<div class="breadcrumb">
	<span class="crust"><a href="${basePath}/" class="crumb">Home</a><span class="arrow"><span>&gt;</span></span></span>
	<span class="crust"><a href="${basePath}/user" class="crumb">User manage</a><span class="arrow"><span>&gt;</span></span></span>
	<span class="crust"><a href="" class="crumb">Add user</a><span class="arrow"><span>&gt;</span></span></span>
</div>
<div id="main">
	<form id="form" method="post">
	<input type="hidden" name="_csrf" value="${_csrf.token}" />
	<table border="1">
		<caption>Edit user</caption>
		<tr><td>username：<font color="#cc0000">*</font></td><td><input id="username" type="text" name="username" placeholder="required" required="true" maxlength="20" autofocus value="${user.username}"/></td></tr>
		<tr><td>password：<font color="#cc0000">*</font></td><td><input id="password" type="password" name="password" placeholder="required" required="true" maxlength="20" value="${user.password}"/></td></tr>
		<tr><td>nickname：<font color="#cc0000">*</font></td><td><input id="nickname" type="text" name="nickname" placeholder="required" required="true" maxlength="20" value="${user.nickname}"/></td></tr>
		<tr>
			<td>gender：<font color="#cc0000">*</font></td>
			<td>
				<select id="sex" name="sex">
					<option value="0">-Select-</option>
					<option value="1" <c:if test="${user.sex==1}">selected="selected"</c:if>>male</option>
					<option value="2" <c:if test="${user.sex==2}">selected="selected"</c:if>>female</option>
				</select>
			</td>
		</tr>
		<tr><td></td><td><a href="${basePath}/user">cancle</a>　<input type="submit" value="save"/></td></tr>
	</table>
	</form>
</div>
</body>
</html>