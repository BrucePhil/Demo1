package registeredDao;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;


import com.direct.Entity.userInfo;
import com.direct.Entity.usphoto;
import com.mysql.jdbc.Connection;
import com.sun.xml.internal.ws.api.streaming.XMLStreamReaderFactory.Default;

public class DBhelperZ {
	private static final String DBDRIVER = "com.mysql.jdbc.Driver"; 		// 驱动类类名
	private static final String DBURL = "jdbc:mysql://139.199.194.191:3306/blogdb?characterEncoding=utf-8"; // 连接URL
	private static final String DBUSER = "root"; 							// 数据库用户名
	private static final String DBPASSWORD = "123456";

	public Connection getcon() {
		Connection conn = null; 											// 声明一个连接对象
		try {
			Class.forName(DBDRIVER); 										// 注册驱动
			conn = (Connection) DriverManager.getConnection(DBURL, DBUSER, DBPASSWORD); 											// 获得连接对象
		} catch (ClassNotFoundException e) { 								// 捕获驱动类无法找到异常
			e.printStackTrace();
		} catch (SQLException e) {											// 捕获SQL异常
			e.printStackTrace();
		}
		return conn;//fanhui 
	}

	// 用户注册，数据插入数据库
	public boolean add(userInfo ui) {
		Connection con = getcon();
		Date d = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String sql = "insert into userinfo values(null,'" + ui.getUser_name() + "','" + ui.getUserpwd() + "','" + ui.getSex() + "','" + sdf.format(d) + "','" + ui.getE_mail() + "','" + ui.getPhone() + "',default)";
		try {
			Statement sta = con.createStatement();
			int count = sta.executeUpdate(sql);
			if (count > 0) {
				return true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	
	//登陆
	public boolean login_test(String name,String pwd){
		Connection con = getcon();
		String sql = "select * from userinfo where user_name = '"+name+"' and userpwd='"+pwd+"'";
		try {
			Statement sta = con.createStatement();
			ResultSet rs = sta.executeQuery(sql);
			if (rs.next()) {
				return true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}try {
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	
	//显示个人信息
	public ArrayList<userInfo> query_all(String name){
		ArrayList<userInfo> arr = new ArrayList<userInfo>();
		Connection con = getcon();
		String sql = "select * from userInfo where user_name = '"+name+"'";
		try {
			Statement sta = con.createStatement();
			ResultSet rs = sta.executeQuery(sql);
			while (rs.next()) {
				userInfo ui = new userInfo();
				ui.setUser_id(rs.getInt("user_id"));
				ui.setUser_name(rs.getString("user_name"));
				ui.setSex(rs.getString("sex"));
				ui.setBirthday(rs.getString("birthday"));
				ui.setE_mail(rs.getString("e_mail"));
				ui.setPhone(rs.getString("phone"));
				ui.setPhoto(rs.getString("photo"));
				arr.add(ui);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}try {
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return arr;
	}
	
	//修改个人信息
	public boolean update (String name,String pwd,String sex,String e_mail,String phone,int id){
		Connection con = getcon();
		String sql = "update userinfo set user_name = '"+name+"', userpwd = '"+pwd+"', sex = '"+sex+"',e_mail = '"+e_mail+"',phone = '"+phone+"' where user_id = '"+id+"';";
		try {
			Statement sta = con.createStatement();
			int count = sta.executeUpdate(sql);
			if (count>0) {
				return true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}try {
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	
	public boolean LockScreenLogin(String name, String pwd){
		Connection con = getcon();
		String sql = "select * from userinfo where user_name = '"+name+"' and userpwd = '"+pwd+"';";
		try {
			Statement sta = con.createStatement();
			ResultSet rs = sta.executeQuery(sql);
			if (rs.next()) {
				return true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}try {
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	
	//上传头像
	public boolean HeadPortrait_add(String name,int id){
		Connection con = getcon();
		/*Date d = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		sdf.format(d)*/
		String sql = "update userinfo set photo='"+name+"' where user_id='"+id+"';";
		try {
			Statement sta = con.createStatement();
			int count = sta.executeUpdate(sql);
			if (count>0) {
				return true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}try {
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	
	//查询头像名字
	public ArrayList<userInfo> usp_arr(int id){
		ArrayList<userInfo>arr=new ArrayList<userInfo>();
		Connection con = getcon();
		String sql = "select * from userInfo where user_id = '"+id+"';";
		try {
			Statement sta = con.createStatement();
			ResultSet rs = sta.executeQuery(sql);
			while(rs.next()){
				userInfo usp = new userInfo();
				usp.setPhoto(rs.getString("photo"));
				arr.add(usp);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}try {
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		return arr;
	}
}
