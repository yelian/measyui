package com.measyui.login;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/login")
@Controller
public class LoginController {

	@RequestMapping("login.do")
	public String login(){
		return "main";
	}
}
