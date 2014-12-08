package com.measyui.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.measyui.dao.MenuDao;
import com.measyui.entity.MenuPo;
import com.measyui.service.MenuService;

@Service(value="menuService")
public class MenuServiceImpl implements MenuService{

	@Autowired
	private MenuDao menuDao;
	
	public List<MenuPo> getAllMenus(){
		return this.menuDao.getMenu();
	}
}
