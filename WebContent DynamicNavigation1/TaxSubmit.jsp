<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<!DOCTYPE html >
<html>
<f:view>
	<head>
<title>Tax Calculation</title>
<style>
table {
	margin: 0 auto;
	border-collapse: collapse;
}

.css1 {
	background-color: orange;
}
tfoot,thead{
background-color: red;
text-algin:center;
color:white;

}
</style>
	</head>
	<body>
		<h1 align="center">Tax Result</h1>
		<a href="Main.jsf">Home</a>
		<hr size="3" />

		<h:panelGrid id="pg" columns="2" columnClasses="css1" bgcolor="wheat" cellpadding="10">
		<f:facet name="header">
			<h:outputText value="TaxResult"/>
			</f:facet>
			<h:outputText value="Employee name" />
			<h:outputText value="#{tbean.ename}" />
			<h:outputText value="Income" />
			<h:outputText value="#{tbean.income}" />

			<h:outputText value="Result" />
			<h:outputText value="#{tbean.tax}" >
			<f:convertNumber maxFractionDigits="2" minFractionDigits="2"/>
			</h:outputText>
		</h:panelGrid>
	</body>
                            
</f:view>
</html>
