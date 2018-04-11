<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<!DOCTYPE html >
<html>
<f:view>
	<head>
<title>Simple Interest Calculation</title>
<style>
table {
	margin: 0 auto;
	border-collapse: collapse;
}

.css1 {
	background-color: wheat;
}

.css3 {
	color: red;
}

tfoot, thead {
	background-color: blue;
	text-algin: center;
	color: white;
}
</style>
	<body>
		<h1 align="center">Simple Interest</h1>
		<a href="Main.jsf">Home</a>
		<hr size="2" />
		<h:form id="tfrm">
			<h:panelGrid id="pg1" columns="3" columnClasses="css1,,css3"
				cellpadding="10" bgcolor="wheat">
				<f:facet name="header">
					<h:outputText value="Calculate Interest" />
				</f:facet>
				<h:outputText value="Amount"></h:outputText>
				<h:inputText id="xamt" value="#{ibean.amt}" required="true"
					requiredMessage=" enter a valid amount" validatorMessage="Amount must be minimum 5000">
					<f:validateDoubleRange minimum="5000"></f:validateDoubleRange></h:inputText>
				<h:message for="xamt"></h:message>
				<h:outputText value="Rate"></h:outputText>
				<h:inputText id="xrate" value="#{ibean.rate}" required="true"
					requiredMessage="enter a valid rate" validatorMessage="rate must be minimum 1">
					<f:validateDoubleRange minimum="1" maximum="30"/></h:inputText>
				<h:message for="xrate"></h:message>
				<h:outputText value="years"></h:outputText>
				<h:inputText id="xyears" value="#{ibean.years}" required="true"
					requiredMessage="enter valid years" validatorMessage="years must be minimum 1">
					<f:validateLongRange minimum="1" maximum="30"/></h:inputText>
				<h:message for="xyears"></h:message>
				<h:commandButton value="calcInterest"
					action="#{ibean.calculateInterest}" />
					<h:commandButton value="calcComInterest"
					action="#{ibean.calculateComInterest}" />
				<f:facet name="footer">
					<h:outputText value="" />
				</f:facet>
			</h:panelGrid>

		</h:form>
	</body>
	</head>
</f:view>
</html>