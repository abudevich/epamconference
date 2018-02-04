<%--
  Created by IntelliJ IDEA.
  User: Asus
  Date: 01.02.2018
  Time: 18:00
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update section info</title>
</head>
<body>
<script src="js/validation.js"></script>
<%@include file="header.jsp" %>
<h1>Update section info</h1>
<form name="updateSectionInfoForm" onsubmit="return validateUpdateSectionForm()">
    <input type="hidden" name="command" value="updatesectioninfo" />
    <input type="hidden" name="sectionId" value="${section.sectionId}" />
    Section name:<br/>
    <input type="text" name="sectionName" value="${section.sectionName}"/>
    <br/>Max number reports:<br/>
    <input type="number" name="maxNumberReports" value="${section.maxNumberReports}"/>
    <br/>Section beginning:<br/>
    <input type="datetime" name="sectionBeginning" value="${section.sectionBeginning}"/>
    <br/>Section end:<br/>
    <input type="datetime" name="sectionEnd" value="${section.sectionEnd}"/>
    <br/>Section address:<br/>
    <input type="text" name="sectionAddress" value="${section.sectionAddress}"/>
    <br/>Section content:<br/>
    <input type="text" name="sectionContent" value="${section.sectionContent}"/>
    <br/>Section status:<br/>
    <select name="sectionStatus">
        <option value="RECRUITED">RECRUITED</option>
        <option value="ACCEPTED">ACCEPTED</option>
        <option value="RUNNING">RUNNING</option>
        <option value="COMPLETED">COMPLETED</option>
    </select>
    <br/>
    <input type="submit" value="Update section" formmethod="post" formaction="controller"/>
</form>
<br>
<%@include file="usermenu.jsp" %>
</body>
</html>
