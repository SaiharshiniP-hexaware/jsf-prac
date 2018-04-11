<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<!DOCTYPE html >
<html>
<f:view>
	<head>

<title>Interest Calculation</title>
<style>
	table {
	margin: 0 auto;
	border-collapse: collapse;
}
	
</style>
	</head>
	<body>
		<h1 align="center">Interest Result</h1>
		<hr size="3"/>

		<h:panelGrid id="pg2" columns="2"  bgcolor="wheat" cellpadding="10">
	
			<h:outputText value="Amount entered" />
			<h:outputText value="#{ibean.amt}" />
			<h:outputText value="year" />
			<h:outputText value="#{ibean.years}"/>
				<h:outputText value="rate" />
			<h:outputText value="#{ibean.rate}"/>

			<h:outputText value="Result" />
			<h:outputText value="#{ibean.result}" />
		</h:panelGrid>
	</body>

</f:view>
</html>
