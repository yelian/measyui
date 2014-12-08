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
		<ul id="tt" class="easyui-tree">  
		    <li>  
		        <span>Folder</span>  
		        <ul>  
		            <li>  
		                <span>Sub Folder 1</span>  
		                <ul>  
		                    <li>  
		                        <span><a href="#">File 11</a></span>  
		                    </li>  
		                    <li>  
		                        <span>File 12</span>  
		                    </li>  
		                    <li>  
		                        <span>File 13</span>  
		                    </li>  
		                </ul>  
		            </li>  
		            <li>  
		                <span>File 2</span>  
		            </li>  
		            <li>  
		                <span>File 3</span>  
		            </li>  
		        </ul>  
		    </li>  
		    <li>  
		        <span>File21</span>  
		    </li>  
		    <li>  
		        <span>Folder</span>  
		        <ul>  
		            <li>  
		                <span>Sub Folder 1</span>  
		                <ul>  
		                    <li>  
		                        <span><a href="#">File 11</a></span>  
		                    </li>  
		                    <li>  
		                        <span>File 12</span>  
		                    </li>  
		                    <li>  
		                        <span>File 13</span>  
		                    </li>  
		                </ul>  
		            </li>  
		            <li>  
		                <span>File 2</span>  
		            </li>  
		            <li>  
		                <span>File 3</span>  
		            </li>  
		        </ul>  
		    </li>  
		    <li>  
		        <span>File21</span>  
		    </li>  
		</ul>  
	</div>
  </body>
</html>
