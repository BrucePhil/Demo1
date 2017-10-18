package com.direct.servletH;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.direct.DaoQ.DBhelperQ;
import com.direct.Entity.leaveinfo;
import com.direct.Entity.userInfo;

public class add_leave extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public add_leave() {
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
		String count=request.getParameter("cont");
		String name= request.getParameter("rename");
		DBhelperQ db=new DBhelperQ();
		ArrayList<userInfo>arr=db.query_userid(session.getAttribute("users").toString());
		userInfo ui=arr.get(0);
		leaveinfo le=new leaveinfo();
		le.setName(name);
		le.setLeavecontent(count);
		le.setLeave_name(ui.getUser_id());
		if(db.add_leave(le)){
			response.sendRedirect("../userblack/leave.jsp");
		}else{
			response.sendRedirect("../userblack/500.jsp");
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
