package com.kh.config;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;


public class Script {
	
	//실패 하였을시 뒤로가기
	//Script.back(response,"원하는메시지") 이렇게 사용
	public static void back(HttpServletResponse response, String msg) {
		response.setCharacterEncoding("UTF-8");
		try {
			PrintWriter out = response.getWriter();

			out.print("<script>");
			out.print("alert('" + msg + "');");
			out.print("history.back();"); //history는 윈도우가 들고있는 객체
			out.print("</script>");
			out.flush();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
