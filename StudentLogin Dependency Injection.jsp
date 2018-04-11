<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>

<!DOCTYPE html>
<html>
<f:view>
	<head>

<title>Student details</title>
<style>
table {
	margin: 0 auto;
	border-collapse: collapse;
}

.css1 {
	background-color: orange;
}

.css2 {
	color: blue;
}
</style>
	</head>
	<body>
		<h1 align="center">view by student id</h1>
		<hr size="2" />
		<h:form>
			<div align="center">
				<h:outputText value="Student Id"></h:outputText>
				<h5 align="center"><a href="Main.jsf">Home</a></h5>
				<h:inputText id="stuid" value="#{sbean.sid}" required="true"
					requiredMessage="income is mandatory"
					converterMessage="must be a number"></h:inputText>
				<h:commandButton value="search" actionListener="#{sbean.viewbyId}" />
			</div>
		</h:form>
		<hr size="2" />
		<h:panelGrid columns="2" cellpadding="10" columnClasses="css1,css2"
			rendered="#{sbean.stu ne null }">
			<f:facet name="header">
				<h:outputText value="Student Details" />
			</f:facet>
			<h:outputText value="Student ID" />
			<h:outputText value="#{sbean.stu.stuId}" />
			<h:outputText value="Student Name" />
			<h:outputText value="#{sbean.stu.stuName}" />
			<h:outputText value="Student Dept" />
			<h:outputText value="#{sbean.stu.dept}" />
			<h:outputText value="Student Marks" />
			<h:outputText value="#{sbean.stu.marks}" />
			<h:outputText value="Student dob" />
			<h:outputText value="#{sbean.stu.dob}">
				<f:convertDateTime pattern="dd-MMM-yyyy" />
			</h:outputText>
		</h:panelGrid>
		<h:panelGrid bgcolor="wheat" rendered="#{sbean.panelFlag}">
			<f:facet name="header">
				<h:outputText value="Student Details" />
			</f:facet>
			<h:outputText value="No such student found "></h:outputText>

		</h:panelGrid>
	</body>

</f:view>
</html>