<%@ page language="java" pageEncoding="utf-8" contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'stu_list.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  <s:debug/>
  <table style="border:1px solid green"><tr><td>id
    <s:iterator value="locs" var="loc">
    <tr>
      <td><s:property value="#loc.displayName"/>
     <td><s:property value="#loc.getDisplayName(#loc)"/>
    </s:iterator>
    </table>    
    班级:
    <select>
      <option value="1501">cs1501</option>
      <option value="1502">cs1502</option>
      <option value="1503">cs1503</option>
    </select>
    <s:select list="locs" listKey="" listValue="displayName"/>
    <s:select list="locsMap" listKey="key"
    listValue="value"/>
  </body>
</html>
