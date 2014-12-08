package com.measyui.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.measyui.dao.MenuDao;
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
	
	private static List<MenuPo> menus = null;
}
