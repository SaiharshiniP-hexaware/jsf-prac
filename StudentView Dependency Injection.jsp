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

.head {
	background-color: gray;
	color: white;
}

.odd {
	background-color: lightblue;
}

.even {
	background-color: wheat;
}
</style>
	</head>
	<body>
		<h1 align="center">Student details</h1>
		<h5 align="center">
			<a href="Main.jsf">Home</a>
		</h5>
		<hr size="2" />
		<h:dataTable value="#{sbean.slist}" var="s" cellpadding="10"
			headerClass="head" rowClasses="even,odd">
			<h:column>
				<f:facet name="header">
					<h:outputText value="#{msg.stuid}" />
				</f:facet>
				<h:outputText value="#{s.stuId}" />
			</h:column>
			<h:column>
				<f:facet name="header">
					<h:outputText value="#{msg.stuname}" />
				</f:facet>
				<h:outputText value="#{s.stuName}" />
			</h:column>

			<h:column>
				<f:facet name="header">
					<h:outputText value="#{msg.marks}" />
				</f:facet>
				<h:outputText value="#{s.marks}" />
			</h:column>
			<h:column>
				<f:facet name="header">
					<h:outputText value="#{msg.dept }" />
				</f:facet>
				<h:outputText value="#{s.dept}" />
			</h:column>
			<h:column>
				<f:facet name="header">
					<h:outputText value="#{msg.dob}" />
				</f:facet>
				<h:outputText value="#{s.dob}">
					<f:convertDateTime pattern="dd-MMM-yyyy" />

				</h:outputText>
			</h:column>

		</h:dataTable>
	</body>
</f:view>
</html>