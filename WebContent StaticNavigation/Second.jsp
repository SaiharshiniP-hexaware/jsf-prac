<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<!DOCTYPE html>
<html>
<f:view>
	<head>
<title>Second page</title>
	</head>
	<body>
		<h1 align="center">Second page</h1>
		<hr size="2">
		<h:form>
			<div align="center">
				<h:commandLink value="go to the home page" action="home" />

			</div>
		</h:form>
	</body>
</f:view>
</html>