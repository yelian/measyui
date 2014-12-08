package com.measyui.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.measyui.entity.TreeNode;
import com.measyui.service.MenuService;

@RequestMapping("/login")
@Controller
public class LoginController {

	@Resource(name="menuService")
	private MenuService menuService;
	
	@RequestMapping("login.do")
	public String login(){
		return "main";
	}
	
	@RequestMapping("menu.do")
	public String menu(){
		return "menu";
	}
	
	@RequestMapping("menutree.do")
	@ResponseBody
	public String menutree(HttpServletRequest req){
		List<TreeNode> nodes = new ArrayList<TreeNode>();
		nodes.add(this.menuService.getMenuTree());
		return JSON.toJSONString(nodes);
	}
}
