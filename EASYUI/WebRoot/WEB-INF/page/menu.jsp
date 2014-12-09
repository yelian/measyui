<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<script type="text/javascript">
   	$(function(){
   		$('#menu').tree({
			onClick: function(node){
				//alert(node.text);  // alert node text property when clicked
				var pp = $('#mainTabs').tabs('getSelected');  
				var tab = pp.panel('options').tab;
				
				var title = node.text;
				var url = node.attributes.url;
				url = "http://localhost:8080/EASYUI/menu/index.do";
				
				$('#mainTabs').tabs('add',{
				    title:title,
				    href: url,
				    closable:true,
				    tools:[{
				        iconCls:'icon-mini-refresh',  
				        handler:function(){
				            alert('refresh');
				        }
				    }]
				});
			}
		});
   	});
</script>
<div class="easyui-panel" style="width:100%; height:100%; border:false">
	<ul id="menu" class="easyui-tree" data-options="animate:true, url:'menutree.do'"></ul>  
</div>
