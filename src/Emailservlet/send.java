package Emailservlet;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.security.Security;
import java.util.Date;
import java.util.Properties;

import javax.activation.DataHandler;
import javax.activation.FileDataSource;
import javax.mail.Address;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.mail.internet.MimeMessage.RecipientType;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sun.misc.BASE64Encoder;

import com.mysql.jdbc.EscapeTokenizer;
import com.sun.net.ssl.internal.ssl.Provider;

public class send extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public send() {
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
	
	
		String name= request.getParameter("name");
		String email= request.getParameter("email");
		String message=request.getParameter("message");
		String form="746020920@qq.com";
		Properties pro=new Properties();
		Security.addProvider(new Provider());
		pro.setProperty("mail.smtp.socketFactory.class","javax.net.ssl.SSLSocketFactory");
		pro.setProperty("mail.smtp.port","465");
		pro.setProperty("mail.smtp.socketFactory.port", "465");
		pro.setProperty("mail.smtp.host", "smtp.qq.com");
		pro.put("mail.smtp.auth", "true");
		Session se=Session.getInstance(pro);
		MimeMessage msg=new MimeMessage(se);
		try {
			Address add=new InternetAddress(form);

			try {
				msg.setFrom(add);
				msg.setRecipient(RecipientType.TO,new InternetAddress(email));
				
				msg.setSubject(email);
				MimeBodyPart mb= new MimeBodyPart();
				
				mb.setContent("<b>test</b>","text/html;charset=gbk");
				MimeMultipart mm= new MimeMultipart();
				mm.addBodyPart(mb);
				
				
				
				msg.setContent(mm);
				msg.setText(message);
				msg.setSentDate(new Date());
				Transport ts=se.getTransport("smtp");
				ts.connect("smtp.qq.com","746020920@qq.com","jmsloyrkfvifbcjd");
				ts.sendMessage(msg, msg.getAllRecipients());
				ts.close();
				response.sendRedirect("../index.jsp");
			
				
			} catch (MessagingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
			
			
		
		} catch (AddressException e) {
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
