package com.direct.servletH;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.direct.DaoQ.DBhelperQ;
import com.direct.Entity.leaveinfo;
import com.direct.Entity.releaveinfo;

public class add_releave extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public add_releave() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		HttpSession session=request.getSession();
		String cont=request.getParameter("cont");
//		
		
		int releave_user=Integer.parseInt(request.getParameter("rename"));
//		
		DBhelperQ db=new DBhelperQ();
		releaveinfo re=new releaveinfo();
		leaveinfo le=new leaveinfo();
		le.setLeavecontent(cont);
//
		le.setLeave_name(releave_user);
//	
		le.setName(session.getAttribute("user").toString());
//		
		re.setRelea_user(releave_user);
//		
		re.setReleav_content(cont);
		re.setReleav_name(session.getAttribute("user").toString());
		
		if(db.add_releave(re)){
			if(db.add_leave(le)){
				response.sendRedirect("../black/leave.jsp");
			}
			
		}else{
			response.sendRedirect("../black/500.jsp");
		}
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
