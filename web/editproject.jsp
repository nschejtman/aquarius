<%@ page import="model.Project" %>
<%--
  Created by IntelliJ IDEA.
  User: franco
  Date: 14/05/2014
  Time: 10:59 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
    <form id="projectForm" method="post" action="editproject">
        <input type="hidden" value="<%=((Project)request.getAttribute("project")).getId()%>"><br>
        <input type="text" id="projectName" name="projectName" value="<%=((Project)request.getAttribute("project")).getName()%>"><br>
        <input type="text" id="description" name="description" value="<%=((Project)request.getAttribute("project")).getDescription()%>"><br>
        <input type="date" id="startDate" name="startDate" ><br>
        <input type="date" id="endDate" name="endDate" ><br>
        <input type="text" id="type" name="type" value="<%=((Project)request.getAttribute("project")).getType().getName()%>" ><br>
        <input type="text" id="tags" name="tags" value="<%=((Project)request.getAttribute("project")).getStringTags()%>" ><br>
        <input type="submit">
</form>
</body>
</html>
