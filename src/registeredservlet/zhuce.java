package registeredservlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

import registeredDao.DBhelperZ;

import com.direct.Entity.userInfo;


public class zhuce extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public zhuce() {
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
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		String email = request.getParameter("Email");
		String user = request.getParameter("User");
		String password = request.getParameter("Password");
		String once_again_password = request.getParameter("once_again_Pssword");
		String telephone = request.getParameter("telephone");
		String sex = request.getParameter("country-nofake");
		DBhelperZ db = new DBhelperZ();
			userInfo ui = new userInfo();
			ui.setE_mail(email);
			ui.setUser_name(user);
			ui.setUserpwd(password);
			ui.setOnce_again_userpwd(once_again_password);
			ui.setPhone(telephone);
			ui.setSex(sex);
			boolean flag=db.add(ui);
				if(flag){
					
					out.print("<script>alert(\"注册成功!\");</script>");
					out.print("<script>     window.location='../registered.jsp'</script>");
				
					}else {
						out.print("<script>alert(\"注册失败用户名重复!\");</script>");
						out.print("<script>     window.location='../registered.jsp'</script>");
					
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
