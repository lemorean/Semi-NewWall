package com.kh.config;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


//한글 설정 필터

@WebFilter("/*")
public class CharcterFilter implements Filter {

   
	
	@Override
	public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain)
			throws IOException, ServletException {
		 HttpServletRequest request = (HttpServletRequest) req;
			HttpServletResponse response = (HttpServletResponse) resp;
			
			request.setCharacterEncoding("UTF-8");
			
			response.setCharacterEncoding("UTF-8");
			
			String fileUri = request.getRequestURI();
			
			if(fileUri.contains(".css")) {
				response.setContentType("text/css; charset=utf-8");
			} else if(fileUri.contains(".js")) {
				response.setContentType("text/js; charset=utf-8");
			}else if(fileUri.contains("image/png")) {
				response.setContentType("image/png");
			}else if(fileUri.contains(".jpg")) {
				response.setContentType("image/jpeg");
			}else {
				response.setContentType("text/html; charset=utf-8");
			}
			
			
			
			
			chain.doFilter(request, response);
	}
	//서버가 중지 될때
	@Override
	public void destroy() {
	System.out.println("중지. 필터 끝");
		
	}
	//서버가 실행 될때
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		System.out.println("시작. 필터초기화");
		
	}
}
