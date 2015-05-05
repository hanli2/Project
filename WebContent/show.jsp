<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
 <%
 String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
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
  <%
  String name=request.getParameter("username");
  String Newname=new String(name.getBytes("ISO-8859-1"),"GBK");
  out.print(Newname);
  out.print("<br>");
  String sex=request.getParameter("sex");
  String Newsex=new String(sex.getBytes("ISO-8859-1"),"GBK");
  out.print(Newsex);
  out.print("<br>");
  String[] love=request.getParameterValues("love");
  for(int i=0;i<love.length;i++) {
  out.print(love[i]+" ");
  }
  
 
   %>
    <br>
  </body>
</html>