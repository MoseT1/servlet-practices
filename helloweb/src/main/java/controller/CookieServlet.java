package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CookieServlet
 */
public class CookieServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CookieServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int visitCount = 0;
		
		//쿠기 읽기
		Cookie[] cookies = request.getCookies();
		
		if(cookies != null && cookies.length >0) {
			for (Cookie cookie : cookies) {
				if("visitCount".equals(cookie.getName())) {
					visitCount = Integer.parseInt(cookie.getValue());
				}
			}
		}
		
		//방문 횟수 증가
		visitCount++;
		
		//쿠키 쓰기
		Cookie cookie = new Cookie("visitCount", String.valueOf(visitCount));
		cookie.setPath(request.getContextPath());
		cookie.setMaxAge(24*60*60);
		response.addCookie(cookie);
		
	
		
		// 화면 출력
		response.setContentType("text/html; charset=utf-8");
		response.getWriter().println("<h1>방문횟수:" + visitCount + "</h1>");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
