<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Full Layout - jQuery EasyUI Demo</title>
	<link rel="stylesheet" type="text/css" href="../resource/jquery-easyui-1.4.1/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="../resource/jquery-easyui-1.4.1/themes/icon.css">
	<link rel="stylesheet" type="text/css" href="../resource/jquery-easyui-1.4.1/themes/demo.css">
	<script type="text/javascript" src="../resource/jquery-easyui-1.4.1/jquery-1.8.3.js"></script>
	<script type="text/javascript" src="../resource/jquery-easyui-1.4.1/jquery.easyui.min.js"></script>
</head>
<body class="easyui-layout">
	<div data-options="region:'north',border:false" style="height:60px;background:#B3DFDA;padding:10px">north region</div>
	<div data-options="region:'west',split:true,title:'West',border:false" style="width:210px;" href="menu.do"></div>
	<div data-options="region:'east',split:true,collapsed:true,title:'East'" style="width:100px;padding:10px;">east region</div>
	<div data-options="region:'south',border:false" style="height:20px;background:#A9FACD;padding:1px;">south region</div>
	<div data-options="region:'center',title:'Center', border:true">
		<div id="mainTabs" class="easyui-tabs" data-options="fit:true">  
		    <div title="Tab1" style="padding:20px;">  
		        tab1
		    </div>  
		    <div title="Tab2" data-options="closable:true" style="overflow:auto;padding:20px;">  
		        tab2  
		    </div>  
		    <div title="Tab3" data-options="iconCls:'icon-reload',closable:true" style="padding:20px;">  
		        tab3  
		    </div>  
		</div>
	</div>
</body>
</html>