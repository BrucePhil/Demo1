package com.direct.servletH;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.jsp.JspFactory;
import javax.servlet.jsp.PageContext;

import com.direct.DaoH.DBhelper;
import com.direct.Entity.saidinfo;
import com.jspsmart.upload.SmartUpload;
import com.jspsmart.upload.SmartUploadException;
import com.sun.net.httpserver.HttpPrincipal;


public class addsaid extends HttpServlet {

	private PageContext pagecontext;

	/**
	 * Constructor of the object.
	 */
	public addsaid() {
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

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out
				.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
		out.println("<HTML>");
		out.println("  <HEAD><TITLE>A Servlet</TITLE></HEAD>");
		out.println("  <BODY>");
		out.print("    This is ");
		out.print(this.getClass());
		out.println(", using the GET method");
		out.println("  </BODY>");
		out.println("</HTML>");
		out.flush();
		out.close();
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
		PrintWriter out = response.getWriter();
		request.setCharacterEncoding("GBK");
		response.setCharacterEncoding("UTF-8");
		PageContext page=JspFactory.getDefaultFactory().getPageContext(this, request, response, "", true, 8*1024, true);
		SmartUpload smar=new SmartUpload();
		smar.initialize(page);
		try {
			smar.upload();
			smar.getFiles().getFile(0).saveAs("photo/"+smar.getFiles().getFile(0).getFileName());
			String photo_name = smar.getFiles().getFile(0).getFileName();
		String cont=smar.getRequest().getParameter("con");
		DBhelper db=new DBhelper();
		saidinfo sa=new saidinfo();
		HttpSession session=request.getSession();
		sa.setSaname(session.getAttribute("user").toString());
		sa.setSacont(cont);
		sa.setImage(photo_name);
		if (db.add(sa)) {
			response.sendRedirect("../black/blog-shuo.jsp");
		}else {
			response.sendRedirect("../black/500.jsp");
		}
	
		} catch (SmartUploadException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		out.flush();
		out.close();
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
