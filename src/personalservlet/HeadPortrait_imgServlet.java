package personalservlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.jsp.JspFactory;
import javax.servlet.jsp.PageContext;

import registeredDao.DBhelperZ;

import com.direct.Entity.userInfo;
import com.direct.Entity.usphoto;
import com.jspsmart.upload.SmartUpload;
import com.jspsmart.upload.SmartUploadException;

public class HeadPortrait_imgServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public HeadPortrait_imgServlet() {
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
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		request.setCharacterEncoding("GBK");
		response.setCharacterEncoding("UTF-8");
		PageContext page=JspFactory.getDefaultFactory().getPageContext(this, request, response, "", true, 8*1024, true);
		SmartUpload smar=new SmartUpload();
		smar.initialize(page);
		try {
			smar.upload();
			smar.getFiles().getFile(0).saveAs("HeadPortrait_img/"+smar.getFiles().getFile(0).getFileName());
			String photo_name = smar.getFiles().getFile(0).getFileName();
			DBhelperZ db = new DBhelperZ();
			HttpSession session = request.getSession();
		 	String user_name = session.getAttribute("user").toString();
		 	ArrayList<userInfo> arr = db.query_all(user_name);
			userInfo ui  =	arr.get(0);
			usphoto usp = new usphoto();
			usp.setUsphotoname(photo_name);
			if (db.HeadPortrait_add(photo_name,ui.getUser_id())) {
				response.sendRedirect("../black/profile.jsp");
			} else {
				response.sendRedirect("../black/404.jsp");
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
