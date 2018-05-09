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
  <a href="stu_new.jsp">add</a>
  <table style="border:1px solid green"><tr><td>id<td>username<td>java<td>math<td>os<td>action
    <s:iterator value="stus" var="row2">
    <tr>
      <td><s:property value="#row2[0]"/>
      <td><s:property value="#row2[1]"/>
      <td><s:property value="#row2[2]"/>
      <td><s:property value="#row2[3]"/>
      <td><s:property value="#row2[4]"/>
      <td>
      <s:url var="editUrl" action="stu_edit">
         <s:param name="stu.id" value="#row2[0]"/>
      </s:url>
      <a href="${editUrl}">edit</a>
      <s:url var="delUrl" action="stu_del">
         <s:param name="stu.id" value="#row2[0]"/>
      </s:url>
      <a href="${delUrl}" onClick="return readyDel();">del</a>
    </s:iterator>
    </table>
    <s:iterator value="stusByObj" var="stu">
       <s:property value="id"/>--
       <s:property value="#stu.username"/><br>
    </s:iterator>
    <script>
      function readyDel(){
        return confirm("是否真的删除?");
      }
    </script>
  </body>
</html>
