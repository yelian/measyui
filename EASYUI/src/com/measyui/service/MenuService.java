package com.measyui.service;

import java.util.List;

import com.measyui.entity.DataGrid;
import com.measyui.entity.MenuPo;
import com.measyui.entity.TreeNode;

public interface MenuService {

	public List<MenuPo> getAllMenus();
	public TreeNode getMenuTree();
	public List<MenuPo> getMenus(MenuPo menu, DataGrid dg);
}
