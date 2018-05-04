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
    
    <title>My JSP 'login_suc.jsp' starting page</title>
    
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
 <a href="<%=basePath%>/upload/<s:property value='uploadFileName'/>">下载</a>
 <s:url var="downUrl" action="fileDown2">
   <s:param name="path" value="uploadPath"/>
 </s:url>
 <a href="${downUrl}">通过action下载</a>
 
 <s:url var="complexDownUrl" action="complexFileDown">
   <s:param name="contentType" value="uploadContentType"/>
   <s:param name="fileName" value="uploadFileName"/>
   <s:param name="path" value="uploadPath"/>
 </s:url>
 <a href="${complexDownUrl}">复杂参数文件下载</a>
 多文件上传 
 <s:iterator value="uploadsFileName">
   <s:property/><br>
 </s:iterator>
  </body>
</html>
