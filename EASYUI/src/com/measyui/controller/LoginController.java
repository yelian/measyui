package com.measyui.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.measyui.entity.MenuPo;
import com.measyui.service.MenuService;

@RequestMapping("/login")
@Controller
public class LoginController {

	@Resource(name="menuService")
	private MenuService menuService;
	
	@RequestMapping("login.do")
	public String login(){
		buildMenu();
		return "main";
	}
	
	@RequestMapping("menu.do")
	public String menu(){
		return "menu";
	}
	
	private void buildMenu(){
		List<MenuPo> menus = this.menuService.getAllMenus();
		
	}
}
