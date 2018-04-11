<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>

<!DOCTYPE html>
<html>
<f:view>
	<head>

<title>View By Department</title>
<style>
.head {
	background-color: gray;
	color: white;
}

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
		<h1 align="center">View by Department</h1>
		<h5 align="center">
			<a href="Main.jsf">Home</a>
		</h5>
		<hr size="2" />
		<div align="center">
			<h:form id="frm">
				<h:outputText value="Choose Department" />
				<h:selectOneMenu onchange="this.form.submit()"
					valueChangeListener="#{dbean.viewStudentsByDept }">
					<f:selectItem itemLabel="--select dept--" itemValue="" />
					<f:selectItems value="#{dbean.depts}" />
				</h:selectOneMenu>
			</h:form>
		</div>
		<hr size="2" />
		<h:dataTable value="#{requestScope.slist}" var="s" cellpadding="10"
			headerClass="head" rowClasses="even,odd"
			rendered="#{requestScope.slist }">
			<h:column>
				<f:facet name="header">
					<h:outputText value="Student ID" />
				</f:facet>
				<h:outputText value="#{s.stuId}" />
			</h:column>
			<h:column>
				<f:facet name="header">
					<h:outputText value="Student Name" />
				</f:facet>
				<h:outputText value="#{s.stuName}" />
			</h:column>

			<h:column>
				<f:facet name="header">
					<h:outputText value="Student Marks" />
				</f:facet>
				<h:outputText value="#{s.marks}" />
			</h:column>
			<h:column>
				<f:facet name="header">
					<h:outputText value="Student Dept" />
				</f:facet>
				<h:outputText value="#{s.dept}" />
			</h:column>
			<h:column>
				<f:facet name="header">
					<h:outputText value="Student DoB" />
				</f:facet>
				<h:outputText value="#{s.dob}">
					<f:convertDateTime pattern="dd-MMM-yyyy" />

				</h:outputText>
			</h:column>

		</h:dataTable>
	</body>

</f:view>
</html>