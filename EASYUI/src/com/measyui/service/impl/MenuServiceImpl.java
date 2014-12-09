package com.measyui.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.measyui.dao.MenuDao;
import com.measyui.entity.DataGrid;
import com.measyui.entity.MenuPo;
import com.measyui.entity.TreeNode;
import com.measyui.service.MenuService;
import com.measyui.util.TreeUtil;

@Service(value="menuService")
public class MenuServiceImpl implements MenuService{

	@Autowired
	private MenuDao menuDao;
	
	public List<MenuPo> getAllMenus(){
		if(menus == null){
			menus = this.menuDao.getMenu();
		}
		return menus;
	}
	
	public TreeNode getMenuTree(){
		return TreeUtil.buildTree(getAllMenus());
	}
	
	public List<MenuPo> getMenus(MenuPo menu, DataGrid dg){
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("name", "%"+(menu.getName()==null?"":menu.getName())+"%");
		param.put("createTimeFormat", menu.getCreateTimeFormat());
		param.put("start", dg.getStartRows());
		param.put("end", dg.getEndRows());
		return this.menuDao.getMenuWithPage(param);
	}
	
	//菜单树
	private static List<MenuPo> menus = null;
}
