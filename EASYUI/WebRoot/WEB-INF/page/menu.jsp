<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>menu</title>
  </head>
  
  <body>
	<div class="easyui-panel" style="width:100%; height:100%; border:false">
		<!-- <ul class="easyui-tree" data-options="url:'tree_data1.json',method:'get',animate:true"></ul> -->
		<ul id="tt" class="easyui-tree" data-options="animate:true, url:'menutree.do'"></ul>  
	</div>
  </body>
</html>
