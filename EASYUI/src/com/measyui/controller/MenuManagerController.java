package com.measyui.controller;

import java.beans.PropertyEditorSupport;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.measyui.entity.DataGrid;
import com.measyui.entity.MenuPo;
import com.measyui.service.MenuService;
import com.measyui.util.DatagridUtil;

@Controller
@RequestMapping(value="/menu")
public class MenuManagerController {
	
	private static final Logger log = Logger.getLogger(MenuManagerController.class);
	
	@Autowired
	private MenuService menuService;
	
	@RequestMapping(value="/index.do")
	public String index(){
		return "menuManager";
	}
	
	@RequestMapping(value="/datagrid.do")
	@ResponseBody
	public String datagrid(HttpServletRequest req, @ModelAttribute MenuPo menu, @ModelAttribute DataGrid dg){
		List<MenuPo> menus = menuService.getMenus(menu, dg);
		String result = DatagridUtil.list2Json(menus);
		log.debug("菜单树："+result);
		return result;
	}
	
	/*@InitBinder
	public void initBinder(WebDataBinder binder){
		binder.registerCustomEditor(String.class, new PropertyEditorSupport(){
			public void setAsText(String text){
				try {
					setValue(new String(text.getBytes("ISO-8859-1"), "utf-8"));
				} catch (UnsupportedEncodingException e) {
					e.printStackTrace();
				}
			};
		});
	}*/
}
