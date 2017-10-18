package com.direct.DaoH;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import com.direct.Entity.leaveinfo;
import com.direct.Entity.replyinfo;
import com.direct.Entity.replywzinfo;
import com.direct.Entity.reviewinfo;
import com.direct.Entity.saidinfo;
import com.direct.Entity.saidreviewinfo;
import com.direct.Entity.titleinfo;
import com.direct.Entity.userInfo;
import com.mysql.jdbc.Connection;


public class DBhelper {
	private static final String DBDRIVER = "com.mysql.jdbc.Driver" ;			//驱动类类名
    private static final String DBURL = "jdbc:mysql://139.199.194.191:3306/blogdb?characterEncoding=utf-8";//连接URL
    private static final String DBUSER = "root" ;								//数据库用户名
    private static final String DBPASSWORD = "123456";			
	public Connection getcon(){
		Connection conn = null;													//声明一个连接对象
		try {
			Class.forName(DBDRIVER);											//注册驱动
			conn = (Connection) DriverManager.getConnection(DBURL,DBUSER,DBPASSWORD);		//获得连接对象
		} catch (ClassNotFoundException e) {									//捕获驱动类无法找到异常
			e.printStackTrace();										
		} catch (SQLException e) {												//捕获SQL异常
			e.printStackTrace();
		}
		
		return conn;
	}	
	//发布说说
	public boolean add(saidinfo sa) {
		Connection con = getcon();
		Date d = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String sql = "insert into shuoinfo values(null,'" + sa.getSaname() + "','" + sa.getSacont() + "','"+sa.getImage()+"','" + sdf.format(d) + "')";
		try {
			Statement sta =(Statement) con.createStatement();
			int count = sta.executeUpdate(sql);
			if (count > 0) {
				return true;
			}
			
			
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return false;
		
	}
	//发布未带图片的说说
	public boolean adds(saidinfo sa) {
		Connection con = getcon();
		Date d = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String sql = "insert into shuoinfo values(null,'" + sa.getSaname() + "','" + sa.getSacont() + "',Null,'" + sdf.format(d) + "')";
		try {
			Statement sta =(Statement) con.createStatement();
			int count = sta.executeUpdate(sql);
			if (count > 0) {
				return true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
		
	//查询文章
	public ArrayList<titleinfo>query_title(){
		ArrayList<titleinfo> arr=new ArrayList<titleinfo>();
		Connection con=getcon();
		String sql="SELECT * FROM titleinfo INNER JOIN typeinfo ON titleinfo.typeid = typeinfo.typeid";
		try {
			Statement sta=(Statement) con.createStatement();
			ResultSet rs=(ResultSet) sta.executeQuery(sql);
			while(rs.next()){
				titleinfo ti=new titleinfo();
				ti.setTitleid(rs.getInt("tid"));
				ti.setTitle(rs.getString("title"));
				ti.setTypeid(rs.getInt("typeid"));
				ti.setCreate_time(rs.getString("create_time"));
				ti.setTitlecontent(rs.getString("titcontent"));
				ti.setTypename(rs.getString("typename"));
				arr.add(ti);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return arr;
	}

//查询文章留言
public ArrayList<reviewinfo>query_reviewinfo(String name){
	ArrayList<reviewinfo>arr=new ArrayList<reviewinfo>();
	Connection con=getcon();
	String sql="SELECT * FROM  reviewinfo INNER JOIN titleinfo ON reviewinfo.rewnul = titleinfo.tid INNER JOIN userinfo ON reviewinfo.user_id = userinfo.user_id WHERE titleinfo.author='"+name+"'";
	try {
		Statement sta=(Statement) con.createStatement();
		ResultSet rs=(ResultSet) sta.executeQuery(sql);
		while(rs.next()){
			reviewinfo re=new reviewinfo();
			re.setReviewcontent(rs.getString("recontent"));
			re.setReviewtime(rs.getString("retime"));
			re.setRename(rs.getString("user_name"));
			re.setTitname(rs.getString("title"));
			re.setUser_id(rs.getInt("user_id"));
			
			arr.add(re);
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	try {
		con.close();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return arr;
}


//查询说说评论
public ArrayList<saidreviewinfo>query_saidreviewinfo(String name){
	ArrayList<saidreviewinfo>arr=new ArrayList<saidreviewinfo>();
	Connection con=getcon();
	String sql="SELECT * FROM  saidplinfo INNER JOIN shuoinfo ON saidplinfo.saidnum = shuoinfo.shuoid INNER JOIN userinfo ON saidplinfo.saidrenid = userinfo.user_id WHERE shuoinfo.user_id='"+name+"'";
	try {
		Statement sta=(Statement) con.createStatement();
		ResultSet rs=(ResultSet) sta.executeQuery(sql);
		while(rs.next()){
			saidreviewinfo re=new saidreviewinfo();
			re.setSrcont(rs.getString("saidcont"));
			//查看评论内容
			re.setSrname(rs.getString("user_name"));
			//查看评论人
			re.setSrtime(rs.getString("saidtime"));
			//查看评论时间
			re.setSaidid(rs.getString("shuocontent"));
			re.setSaidnum(rs.getInt("saidnum"));
			re.setShuoid(rs.getInt("saidreid"));
			//查看评论的说说内容
			re.setUserid(rs.getInt("userinfo.user_id"));
			arr.add(re);
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	try {
		con.close();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return arr;
}


//查询说说
    public ArrayList<saidinfo> query_shuo(){
	ArrayList<saidinfo>arr=new ArrayList<saidinfo>();
	Connection con=getcon();
	String sql="SELECT *from shuoinfo";
	try {
		Statement sta= con.createStatement();
		ResultSet rs=(ResultSet) sta.executeQuery(sql);
		while(rs.next()){
			saidinfo sa=new saidinfo();
			sa.setSaname(rs.getString("user_id"));
			sa.setSaid(rs.getInt("shuoid"));
			sa.setSacont(rs.getString("shuocontent"));
			sa.setSatime(rs.getString("shuotime"));
			sa.setImage(rs.getString("shuophoto"));
			arr.add(sa);
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	try {
		con.close();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return arr;	
}
    
    
    //回复说说评论
    public boolean add(replyinfo re) {
		Connection con = getcon();
		Date d = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String sql = "insert into replyinfo values(null,'" +re.getReplyuserid() + "','" + re.getReplycont() + "','" + sdf.format(d) + "','"+re.getReplyid()+"')";
		try {
			
			Statement sta =(Statement) con.createStatement();
			int count = sta.executeUpdate(sql);
			if (count > 0) {
				return true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
    //查询回复别人说说的内容
    public ArrayList<replyinfo> query_reply(int said){
    	ArrayList<replyinfo>arr=new ArrayList<replyinfo>();
    	Connection con=getcon();
    	String sql="SELECT *from replyinfo where replysaidid='"+said+"'";
    	try {
    		Statement sta= con.createStatement();
    		ResultSet rs=(ResultSet) sta.executeQuery(sql);
    		while(rs.next()){
    			replyinfo re=new replyinfo();
    			re.setReplycont(rs.getString("replycont"));
    			re.setReplytime(rs.getString("replytime"));
    			re.setReplyuserid(rs.getInt("replyuserid"));
    			arr.add(re);
    			
    		}
    	} catch (SQLException e) {
    		// TODO Auto-generated catch block
    		e.printStackTrace();
    	}
    	try {
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	return arr;	
    }
    //添加回复文章评论
    public boolean add(replywzinfo re) {
		Connection con = getcon();
		Date d = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String sql = "insert into replywzinfo values(null,'" +re.getReplywzuserid() + "','" + re.getReplywzcont() + "','" + sdf.format(d) + "','"+re.getReplymywzname()+"')";
		try {
			Statement sta =(Statement) con.createStatement();
			int count = sta.executeUpdate(sql);
			if (count > 0) {
				return true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
   
    
    
  //查询回复别人文章评论的内容
    public ArrayList<replywzinfo> query_replywz(){
    	ArrayList<replywzinfo>arr=new ArrayList<replywzinfo>();
    	Connection con=getcon();
    	String sql="SELECT *from replywzinfo ";
    	try {
    		Statement sta= con.createStatement();
    		ResultSet rs=(ResultSet) sta.executeQuery(sql);
    		while(rs.next()){
    			replywzinfo re=new replywzinfo();
    			re.setReplywzcont(rs.getString("replywzcont"));
    			re.setReplywztime(rs.getString("replywztime"));
    			re.setReplywzuserid(rs.getInt("replywzuserid"));
    			arr.add(re);
    			
    		}
    	} catch (SQLException e) {
    		// TODO Auto-generated catch block
    		e.printStackTrace();
    	}
    	try {
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	return arr;	
    }
}

	


