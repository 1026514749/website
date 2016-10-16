package project.login.controller;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.Mapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import commons.webapp.result.ActionResult;

@Controller
public class LoginController {
	@RequestMapping("/login.do")
	public ActionResult login(HttpServletRequest request,HttpServletResponse response)throws SQLException{
		ActionResult result = new ActionResult(false);
		System.out.println("123 login!!!");
		result.setSuccess(true);
		return result;
	}

}
