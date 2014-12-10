<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script>
	function getDataGrid(){
		//$('#ff').form('submit');
		var name = $('input[name="name"]').val();
		var createTime = $('#createTime').datebox('getValue');
		
		var param = {};
		if(name){
			param.name = name;
		};
		if(createTime){
			param.createTime = createTime;
		}
		$('#dg').datagrid({
			'queryParams':param
		});
		//var options = $('#dg').datagrid('options');
		$('#dg').datagrid('load', param);
	}
	function reset(){
		$('#ff').form('clear');
	}
	
	$(function(){
		$('#dg').datagrid({
			url:'../menu/datagrid.do',
		    pagination:true,
		    fitColumns:true,
		    columns:[[
				{field:'id',title:'ID'},
		        {field:'code',title:'编号',width:100},
		        {field:'parentCode',title:'父编号',width:100},  
		        {field:'name',title:'菜单名',width:100},  
		        {field:'createTimeFormat',title:'创建时间',align:'right'},
		        {field:'url',title:'路径',align:'right'}
		   	]]
		});
	});
</script>
<div class="easyui-layout" style="width:100%; height:100%">
	<div data-options="region:'north',border:true" style="height:90px;padding:1px">
		<div style="padding:5px 5px 5px 5px">
	    	<table style="width:100%;" cellpadding="1" cellspacing="10"	>
	    		<tr>
	    			<td style="text-align:right">菜单名</td>
	    			<td><input class="easyui-textbox" type="text" name="name"></input></td>
	    			
	    			<td style="text-align:right">创建时间</td>
	    			<td><input id="createTime" class="easyui-datebox" name="createTime" type="text"></input></td>
	    		</tr>
	    	</table>
	    
		    <div style="text-align:center;padding:1px">
		    	<a href="javascript:void(0)" class="easyui-linkbutton" onclick="getDataGrid();">查询</a>
		    	<a href="javascript:void(0)" class="easyui-linkbutton" onclick="reset();">重置</a>
		    </div>
	    </div>
	</div>
	
	<div data-options="region:'center', border:false">
		<table id="dg" style="width:100%; height: 100%"></table>
	</div>	
</div>