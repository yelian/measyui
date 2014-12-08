<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Full Layout - jQuery EasyUI Demo</title>
	<link rel="stylesheet" type="text/css" href="../resource/jquery-easyui-1.4.1/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="../resource/jquery-easyui-1.4.1/themes/icon.css">
	<link rel="stylesheet" type="text/css" href="../resource/jquery-easyui-1.4.1/themes/demo.css">
	<script type="text/javascript" src="../resource/jquery-easyui-1.4.1/jquery.min.js"></script>
	<script type="text/javascript" src="../resource/jquery-easyui-1.4.1/jquery.easyui.min.js"></script>
</head>
<body class="easyui-layout">
	<div data-options="region:'north',border:false" style="height:60px;background:#B3DFDA;padding:10px">north region</div>
	<div data-options="region:'west',split:true,title:'West',border:false" style="width:210px;" href="menu.do"></div>
	<div data-options="region:'east',split:true,collapsed:true,title:'East'" style="width:100px;padding:10px;">east region</div>
	<div data-options="region:'south',border:false" style="height:20px;background:#A9FACD;padding:1px;">south region</div>
	<div data-options="region:'center',title:'Center', border:true">
		<div class="easyui-tabs">
			<div title="About" style="padding:10px; border: false">
				<p style="font-size:14px">jQuery EasyUI framework helps you build your web pages easily.</p>
				<ul>
					<li>easyui is a collection of user-interface plugin based on jQuery.</li>
					<li>easyui provides essential functionality for building modem, interactive, javascript applications.</li>
					<li>using easyui you don't need to write many javascript code, you usually defines user-interface by writing some HTML markup.</li>
					<li>complete framework for HTML5 web page.</li>
					<li>easyui save your time and scales while developing your products.</li>
					<li>easyui is very easy but powerful.</li>
				</ul>
			</div>
			<div title="My Documents" style="padding:10px">
				<ul class="easyui-tree" data-options="url:'tree_data1.json',method:'get',animate:true"></ul>
			</div>
			<div title="Help" data-options="iconCls:'icon-help',closable:true" style="padding:10px">
				This is the help content.
				This is the help content.
				This is the help content.
				This is the help content.This is the help content.
				This is the help content.
				This is the help content.
				This is the help content.
				This is the help content.
			</div>
		</div>
	</div>
</body>
</html>