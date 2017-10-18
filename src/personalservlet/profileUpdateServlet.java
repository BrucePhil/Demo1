package personalservlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

import registeredDao.DBhelperZ;

import com.direct.Entity.userInfo;

public class profileUpdateServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public profileUpdateServlet() {
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
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		int id = Integer.parseInt(request.getParameter("user_id"));
		String name = request.getParameter("user_name");
		String pwd = request.getParameter("userpwd");
		String queren_pwd = request.getParameter("queren_userpwd");
		String phone = request.getParameter("phone");
		String e_mail = request.getParameter("e_mail");
		String sex = request.getParameter("sex");
		if (pwd.equals(queren_pwd)) {
			userInfo ui = new userInfo();
			ui.setUser_name(name);
			ui.setUserpwd(pwd);
			ui.setPhone(phone);
			ui.setE_mail(e_mail);
			ui.setSex(sex);
			DBhelperZ db = new DBhelperZ();
			if (db.update(name,pwd,sex,e_mail,phone,id)) {
				response.sendRedirect("../black/profile.jsp");
			}else {
				response.sendRedirect("../black/404.jsp");
			}
		}else {
			JOptionPane.showMessageDialog(null, "两次密码不一致！");
			response.sendRedirect("../black/profile.jsp");
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