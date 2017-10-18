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
import javax.swing.JApplet;

import com.direct.DaoH.DBhelper;
import com.direct.Entity.saidinfo;
import com.jspsmart.upload.SmartUpload;
import com.jspsmart.upload.SmartUploadException;

public class imageUpload extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public imageUpload() {
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

		//获取一个pagecontext的对象
		//参数列表分别为：servlet  请求  响应  错误储存路径  是否需要session  缓存大小 是否需要刷新
		PageContext page=JspFactory.getDefaultFactory().getPageContext(this, request, response, "", true, 8*1024, true);
		SmartUpload smart=new SmartUpload();
		//初始化smart
		smart.initialize(page);
		try {
			smart.upload();
			smart.getFiles().getFile(0).saveAs("image/"+smart.getFiles().getFile(0).getFileName());
			//System.out.println(smart.getFiles().getFile(0).getFileExt());
			request.setCharacterEncoding("utf-8");
			response.setCharacterEncoding("utf-8");
			String cont=request.getParameter("cont");
			DBhelper db=new DBhelper();
			saidinfo sa=new saidinfo();
			HttpSession session=request.getSession();
			
			sa.setSaname(session.getAttribute("user").toString());
			sa.setSacont(cont);
			if (db.add(sa)) {
				response.sendRedirect("../black/social.jsp");
			}else {
				response.sendRedirect("../black/500.jsp");
			}
		
		
		} catch (SmartUploadException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
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
