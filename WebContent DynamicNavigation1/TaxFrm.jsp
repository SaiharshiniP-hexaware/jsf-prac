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

.css3 {
	color: red;
}

tfoot, thead {
	background-color: red;
	text-algin: center;
	color: white;
}
</style>
	<body>
		<h1 align="center">Tax Calculation</h1>
		<a href="Main.jsf">Home</a>
		<hr size="2" />
		<h:form id="tfrm">
			<h:panelGrid id="pg1" columns="3" columnClasses="css1,,css3"
				cellpadding="10" bgcolor="wheat">
				<f:facet name="header">
					<h:outputText value="TaxForm" />
				</f:facet>
				<h:outputText value="Employee Name"></h:outputText>
				<h:inputText id="aname" value="#{tbean.ename}" required="true"
					requiredMessage="name is mandatory" validatorMessage="name must be within range(3-10) and only be alphabet">  
					<f:validateLength minimum="3" maximum="10"/>
					<f:validateRegex pattern="[a-zA_Z]+"/>
					
					
					</h:inputText>
				<h:message for="aname"></h:message>
				<h:outputText value="Annual income"></h:outputText>
				<h:inputText id="aincome" value="#{tbean.income}" required="true"
					requiredMessage="income is mandatory" converterMessage="must be a number"></h:inputText>
				<h:message for="aincome"></h:message>
				<h:commandButton value="calcTax" action="#{tbean.calcTax}" />
				<f:facet name="footer">
				<h:outputText value="" />
				</f:facet>
			</h:panelGrid>

		</h:form>
	</body>
	</head>
</f:view>
</html>