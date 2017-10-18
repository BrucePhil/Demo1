package com.direct.DaoQ;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import com.direct.Entity.leaveinfo;
import com.direct.Entity.photoinfo;
import com.direct.Entity.plsaidinfo;
import com.direct.Entity.recommendinfo;
import com.direct.Entity.releaveinfo;
import com.direct.Entity.replyinfo;
import com.direct.Entity.reviewinfo;
import com.direct.Entity.saidinfo;
import com.direct.Entity.saidreviewinfo;
import com.direct.Entity.titleinfo;
import com.direct.Entity.typeinfo;
import com.direct.Entity.userInfo;
import com.mysql.jdbc.Connection;



public class DBhelperQ {
	private static final String DBDRIVER = "com.mysql.jdbc.Driver" ;			//驱动类类名
    private static final String DBURL = "jdbc:mysql://139.199.194.191:3306/blogdb";	//连接URL
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
	
	//倒序查询文章
	public ArrayList<titleinfo>query_title(){
		ArrayList<titleinfo> arr=new ArrayList<titleinfo>();
		Connection con=getcon();
		String sql="SELECT*FROM titleinfo WHERE tid ORDER BY tid DESC LIMIT 0,3";
		try {
			Statement sta=con.createStatement();
			ResultSet rs=sta.executeQuery(sql);
			while(rs.next()){
				titleinfo ti=new titleinfo();
				ti.setTitleid(rs.getInt("tid"));
				ti.setTitle(rs.getString("title"));
				ti.setAuthor(rs.getString("author"));
				ti.setTypeid(rs.getInt("typeid"));
				ti.setLoadurl(rs.getString("loadurl"));
				ti.setCreate_time(rs.getString("create_time"));
				ti.setTitlecontent(rs.getString("titcontent"));
				
				arr.add(ti);
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
	
	
	//倒序查询文章
	public ArrayList<titleinfo>query_titleDX(){
		ArrayList<titleinfo> arr=new ArrayList<titleinfo>();
		Connection con=getcon();
		String sql="select * from titleinfo order by tid desc;";
		try {
			Statement sta=con.createStatement();
			ResultSet rs=sta.executeQuery(sql);
			while(rs.next()){
				titleinfo ti=new titleinfo();
				ti.setTitleid(rs.getInt("tid"));
				ti.setTitle(rs.getString("title"));
				ti.setAuthor(rs.getString("author"));
				ti.setTypeid(rs.getInt("typeid"));
				ti.setLoadurl(rs.getString("loadurl"));
				ti.setCreate_time(rs.getString("create_time"));
				ti.setTitlecontent(rs.getString("titcontent"));
				
				arr.add(ti);
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
	
	
	//查询后台文章
	public ArrayList<titleinfo>queryH_title(String name){
		ArrayList<titleinfo> arr=new ArrayList<titleinfo>();
		Connection con=getcon();
		String sql="SELECT*FROM titleinfo WHERE author='"+name+"' ORDER BY tid DESC;";
		try {
			Statement sta=con.createStatement();
			ResultSet rs=sta.executeQuery(sql);
			while(rs.next()){
				titleinfo ti=new titleinfo();
				ti.setTitleid(rs.getInt("tid"));
				ti.setTitle(rs.getString("title"));
				ti.setAuthor(rs.getString("author"));
				ti.setTypeid(rs.getInt("typeid"));
				ti.setLoadurl(rs.getString("loadurl"));
				ti.setCreate_time(rs.getString("create_time"));
				ti.setTitlecontent(rs.getString("titcontent"));
				
				arr.add(ti);
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
	
	
	//查询文章所属的类别
	public ArrayList<titleinfo>query_title1(int id){
		ArrayList<titleinfo> arr=new ArrayList<titleinfo>();
		Connection con=getcon();
		String sql="SELECT*FROM titleinfo WHERE tid='"+id+"'";
		try {
			Statement sta=con.createStatement();
			ResultSet rs=sta.executeQuery(sql);
			while(rs.next()){
				titleinfo ti=new titleinfo();
				ti.setTitleid(rs.getInt("tid"));
				ti.setTitle(rs.getString("title"));
				ti.setAuthor(rs.getString("author"));
				ti.setTypeid(rs.getInt("typeid"));
				ti.setLoadurl(rs.getString("loadurl"));
				ti.setCreate_time(rs.getString("create_time"));
				ti.setTitlecontent(rs.getString("titcontent"));
				
				arr.add(ti);
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
	
	
	//查询文章tid
	public ArrayList<titleinfo>query_titletid(int id){
		ArrayList<titleinfo> arr=new ArrayList<titleinfo>();
		Connection con=getcon();
		String sql="SELECT*FROM titleinfo WHERE tid='"+id+"'";
		try {
			Statement sta=con.createStatement();
			ResultSet rs=sta.executeQuery(sql);
			while(rs.next()){
				titleinfo ti=new titleinfo();
				ti.setTitleid(rs.getInt("tid"));
				ti.setTitle(rs.getString("title"));
				ti.setAuthor(rs.getString("author"));
				ti.setTypeid(rs.getInt("typeid"));
				ti.setLoadurl(rs.getString("loadurl"));
				ti.setCreate_time(rs.getString("create_time"));
				ti.setTitlecontent(rs.getString("titcontent"));
				
				arr.add(ti);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return arr;
	}
	
	
	
	//查询照片
	public ArrayList<photoinfo>query_photo(){
		ArrayList<photoinfo> arr=new ArrayList<photoinfo>();
		Connection con=getcon();
	
		String sql="SELECT*FROM photoinfo ORDER BY phoid DESC;";
		try {
			Statement sta=con.createStatement();
			ResultSet rs=sta.executeQuery(sql);
			while(rs.next()){
				photoinfo ph=new photoinfo();
				ph.setPhotoid(rs.getInt("phoid"));
				ph.setPhotoname(rs.getString("phoname"));
				ph.setPhototime(rs.getString("phototime"));
				arr.add(ph);
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
	
	
	
	//查询后台照片
	public ArrayList<photoinfo>queryH_photo( int id){
		ArrayList<photoinfo> arr=new ArrayList<photoinfo>();
		Connection con=getcon();
	
		String sql="SELECT*FROM photoinfo WHERE photoinfo.user_id = "+id+"";
		try {
			Statement sta=con.createStatement();
			ResultSet rs=sta.executeQuery(sql);
			while(rs.next()){
				photoinfo ph=new photoinfo();
				ph.setPhotoid(rs.getInt("phoid"));
				ph.setPhotoname(rs.getString("phoname"));
				ph.setPhototime(rs.getString("phototime"));
				arr.add(ph);
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
	
	
	//查询所有说说
	public ArrayList<saidreviewinfo>query_said(){
		ArrayList<saidreviewinfo>arr=new ArrayList<saidreviewinfo>();
		Connection con=getcon();
		String sql="SELECT*FROM shuoinfo ORDER BY shuoid DESC";
		try {
			Statement sta=(Statement) con.createStatement();
			ResultSet rs=(ResultSet) sta.executeQuery(sql);
			while(rs.next()){
				saidreviewinfo re=new saidreviewinfo();
				
				re.setSaidid(rs.getString("shuocontent"));
				re.setShuoid(rs.getInt("shuoid"));
				//查看评论的说说内容
				re.setPhoto(rs.getString("shuophoto"));
				re.setSaidname(rs.getString("shuoinfo.user_id"));
				re.setSaidreviewid(re.getShuoid());
				re.setArr(query_pl(re.getShuoid()));
				
				arr.add(re);
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
	
//查询所有评论的内容
	public ArrayList<plsaidinfo>query_pl(int id){
		ArrayList<plsaidinfo>arr=new ArrayList<plsaidinfo>();
		Connection con=getcon();
		String sql="SELECT *from saidplinfo  where saidnum='"+id+"' ";
		try {
			Statement sta=(Statement) con.createStatement();
			ResultSet rs=(ResultSet) sta.executeQuery(sql);
			while(rs.next()){
				plsaidinfo re=new plsaidinfo();
				re.setPlcont(rs.getString("saidcont"));
				re.setSaidren(rs.getInt("saidrenid"));
				re.setPltime(rs.getString("saidtime"));
				//评论说说id
				re.setPlrenid(rs.getInt("saidreid"));
				re.setPlsaidid(rs.getInt("saidnum"));
				re.setArr(query_reply(re.getPlrenid()));
				arr.add(re);
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
	
	  //查询作者的回复内容
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
    			re.setReplyid(rs.getInt("replysaidid"));
    			arr.add(re);
    			
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
	
	//查询后台说说
	public ArrayList<saidinfo> queryH_shuo(String name){
		ArrayList<saidinfo>arr=new ArrayList<saidinfo>();
		Connection con=getcon();
		String sql="SELECT *from shuoinfo WHERE user_id='"+name+"' ORDER BY shuoid DESC;";
		try {
			Statement sta=con.createStatement();
			ResultSet rs=sta.executeQuery(sql);
			while(rs.next()){
			saidinfo sa= new saidinfo();
				sa.setSaid(rs.getInt("shuoid"));
				sa.setSaname(rs.getString("user_id"));
				sa.setSacont(rs.getString("shuocontent"));
				sa.setImage(rs.getString("shuophoto"));
				sa.setSatime(rs.getString("shuotime"));
				arr.add(sa);
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
	
	//查询文章类别
	public ArrayList<typeinfo> query_type(){
		ArrayList<typeinfo>arr=new ArrayList<typeinfo>();
		Connection con=getcon();
		String sql="select*from typeinfo";
		try {
			Statement sta=con.createStatement();
			ResultSet rs=sta.executeQuery(sql);
			while(rs.next()){
				typeinfo ty=new typeinfo();
				ty.setTypeid(rs.getInt("typeid"));
				ty.setTypename(rs.getString("typename"));
				arr.add(ty);
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
	

	//查询推荐文章
/*	public ArrayList<recommendinfo> query_recommended(){
		ArrayList<recommendinfo>arr=new ArrayList<recommendinfo>();
		Connection con=getcon();
		String sql="SELECT*FROM recommendinfo INNER JOIN titleinfo ON recommendinfo.remnum=titleinfo.tid";
		try {
			Statement sta=con.createStatement();
			ResultSet rs=sta.executeQuery(sql);
			while(rs.next()){
				recommendinfo re=new recommendinfo();
				re.setRecommendid(rs.getInt("remid"));
				re.setRecommendnum(rs.getInt("remnum"));
				re.setTitle(rs.getString("title"));
				re.setCreate_time(rs.getString("create_time"));
				arr.add(re);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return arr;
	}*/
	
//添加文章	
	public boolean add_title(titleinfo ti) {
		Connection con = getcon();
		Date d = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String sql = "insert into titleinfo values(null,'" + ti.getTitle()+ "','"+ti.getAuthor()+"','" + ti.getTypeid() + "','"+ti.getLoadurl()+"','"+sdf.format(d)+"','"+ti.getTitlecontent()+"',null)";
		try {
			Statement sta =con.createStatement();
			int count = sta.executeUpdate(sql);
			if (count > 0) {
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
	
	
	
	//添加文章类型	
	public boolean addtitle_type(typeinfo ty) {
		Connection con = getcon();
		Date d = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String sql = "insert into typeinfo values(null,'"+ty.getTypename()+"')";
		try {
			Statement sta =con.createStatement();
			int count = sta.executeUpdate(sql);
			if (count > 0) {
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
	
	
	//查询后台文章id
	public ArrayList<titleinfo>query_Htitle(int titleid){
		ArrayList<titleinfo> arr=new ArrayList<titleinfo>();
		Connection con=getcon();
		String sql="SELECT*FROM titleinfo WHERE tid='"+titleid+"'";
		try {
			Statement sta=con.createStatement();
			ResultSet rs=sta.executeQuery(sql);
			while(rs.next()){
				titleinfo ti=new titleinfo();
				ti.setTitleid(rs.getInt("tid"));
				ti.setTitle(rs.getString("title"));
				ti.setAuthor(rs.getString("author"));
				ti.setTypeid(rs.getInt("typeid"));
				ti.setLoadurl(rs.getString("loadurl"));
				ti.setCreate_time(rs.getString("create_time"));
				ti.setTitlecontent(rs.getString("titcontent"));
				
				arr.add(ti);
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
	
	
	
	//查询后台说说id
	public ArrayList<saidinfo> queryH_shuoid(int shuoid){
		ArrayList<saidinfo>arr=new ArrayList<saidinfo>();
		Connection con=getcon();
		String sql="SELECT*FROM shuoinfo where shuoid='"+shuoid+"'";
		try {
			Statement sta=con.createStatement();
			ResultSet rs=sta.executeQuery(sql);
			while(rs.next()){
			saidinfo sa= new saidinfo();
				sa.setSaid(rs.getInt("shuoid"));
				sa.setSaname(rs.getString("user_id"));
				sa.setSacont(rs.getString("shuocontent"));
				sa.setImage(rs.getString("shuophoto"));
				sa.setSatime(rs.getString("shuotime"));
				arr.add(sa);
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
	
	
	
	//前天查询台说说
	public ArrayList<saidinfo> query_shuo(){
		ArrayList<saidinfo>arr=new ArrayList<saidinfo>();
		Connection con=getcon();
		String sql="SELECT*FROM shuoinfo ";
		try {
			Statement sta=con.createStatement();
			ResultSet rs=sta.executeQuery(sql);
			while(rs.next()){
			saidinfo sa= new saidinfo();
				sa.setSaid(rs.getInt("shuoid"));
				sa.setSaname(rs.getString("user_id"));
				sa.setSacont(rs.getString("shuocontent"));
				sa.setImage(rs.getString("shuophoto"));
				sa.setSatime(rs.getString("shuotime"));
				arr.add(sa);
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
	
	
	
	//倒序查询台说说
	public ArrayList<saidinfo> query_shuoD(){
		ArrayList<saidinfo>arr=new ArrayList<saidinfo>();
		Connection con=getcon();
		String sql="SELECT*FROM shuoinfo ORDER BY shuoid DESC LIMIT 0,3";
		try {
			Statement sta=con.createStatement();
			ResultSet rs=sta.executeQuery(sql);
			while(rs.next()){
			saidinfo sa= new saidinfo();
				sa.setSaid(rs.getInt("shuoid"));
				sa.setSaname(rs.getString("user_id"));
				sa.setSacont(rs.getString("shuocontent"));
				sa.setImage(rs.getString("shuophoto"));
				sa.setSatime(rs.getString("shuotime"));
				arr.add(sa);
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
	
	
	//后台删除文章
	public boolean del_title(int id){
		Connection con=getcon();
		String sql="DELETE from titleinfo WHERE titleinfo.tid='"+id+"'";
		try {
			Statement sta=con.createStatement();
			int count=sta.executeUpdate(sql);
			if(count>0){
				return false;
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
	
	//后台删除文章的评论
	public boolean del_reviewinfo(int id){
		Connection con=getcon();
		String sql="DELETE FROM reviewinfo WHERE reviewinfo.rewnul='"+id+"'";
		try {
			Statement sta=con.createStatement();
			int count=sta.executeUpdate(sql);
			if(count>0){
				return false;
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
	
	//后台删除说说的评论
	public boolean del_saidplinfo(int id){
		Connection con=getcon();
		String sql="DELETE FROM saidplinfo WHERE saidplinfo.saidreid='"+id+"'";
		try {
			Statement sta=con.createStatement();
			int count=sta.executeUpdate(sql);
			if(count>0){
				return false;
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
	
	//查询文章是否有评论
	
	public boolean queryH_reviewinfo(int rewnul){
		
		Connection con=getcon();
		String sql="SELECT*FROM reviewinfo WHERE rewnul='"+rewnul+"'";
		try {
			Statement sta=con.createStatement();
			int count=sta.executeUpdate(sql);
			if(count>0){
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
	
	
	//查询说说是否有评论
	
	public boolean queryH_saidplinfo(int id){
		
		Connection con=getcon();
		String sql="SELECT* FROM saidplinfo WHERE saidplinfo.saidreid='"+id+"'";
		try {
			Statement sta=con.createStatement();
			int count=sta.executeUpdate(sql);
			if(count>0){
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
	
	
	//后台删除说说
	public boolean del_saidinfo(int id){
		Connection con=getcon();
		String sql="DELETE FROM shuoinfo WHERE shuoinfo.shuoid='"+id+"'";
		try {
			Statement sta=con.createStatement();
			int count=sta.executeUpdate(sql);
			if(count>0){
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
	
	
    public ArrayList<plsaidinfo> query_plsaid(){
    	ArrayList<plsaidinfo>arr=new ArrayList<plsaidinfo>();
    	Connection con=getcon();
    	String sql="SELECT *from plsaidinfo ";
    	try {
    		Statement sta= con.createStatement();
    		ResultSet rs=(ResultSet) sta.executeQuery(sql);
    		while(rs.next()){
    			plsaidinfo re=new plsaidinfo();
    			re.setPlcont(rs.getString("plsacont"));
    			re.setPltime(rs.getString("plsatime"));
    			re.setPlnum(rs.getInt("plsanum"));
    			arr.add(re);
    			
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

    //添加评论
    public boolean add(plsaidinfo re) {
		Connection con = getcon();
		Date d = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String sql = "insert into saidplinfo values(null,'" +re.getPlnum() + "','" + re.getPlcont() + "','"+sdf.format(d)+"','"+re.getPlrenid()+"')";
		try {
			Statement sta =(Statement) con.createStatement();
			int count = sta.executeUpdate(sql);
			if (count > 0) {
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
//通过用户名查询用户id
public ArrayList<userInfo> query_userid(String name){
		ArrayList<userInfo>arr=new ArrayList<userInfo>();
		Connection con=getcon();
		String sql="SELECT*FROM userinfo WHERE user_name='"+name+"'";
		try {
			Statement sta=con.createStatement();
			ResultSet rs=sta.executeQuery(sql);
			if(rs.next()){
				userInfo us=new userInfo();
				us.setUser_id(rs.getInt("user_id"));
				arr.add(us);
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





//查询用户名
public ArrayList<userInfo> query_userinfo(){
		ArrayList<userInfo>arr=new ArrayList<userInfo>();
		Connection con=getcon();
		String sql="SELECT*FROM userinfo";
		try {
			Statement sta=con.createStatement();
			ResultSet rs=sta.executeQuery(sql);
			if(rs.next()){
				userInfo us=new userInfo();
				us.setUser_name(rs.getString("user_name"));
				arr.add(us);
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


  //查询后台留言
 public ArrayList<leaveinfo> query_leave( int id){
	 ArrayList<leaveinfo>arr=new ArrayList<leaveinfo>();
	 Connection con=getcon();
	 String sql="SELECT leavid,leaveinfo.`name`, leaveinfo.leavcontent,leaveinfo.leavtime,leaveinfo.leave_name,userinfo.user_name FROM leaveinfo INNER JOIN userinfo ON leaveinfo.leave_name = userinfo.user_id where leaveinfo.leave_name='"+id+"'";
	 try {
		Statement sta=con.createStatement();
		ResultSet rs=sta.executeQuery(sql);
		while(rs.next()){
			leaveinfo li=new leaveinfo();
			li.setLeaveid(rs.getInt("leavid"));
			li.setName(rs.getString("name"));
			li.setLeavecontent(rs.getString("leavcontent"));
			li.setLeavetime(rs.getString("leavtime"));
			li.setLeave_name(rs.getInt("leave_name"));
			li.setUser_name(rs.getString("user_name"));
			arr.add(li);
			
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
 
 
 
//通过id查询用户名
 public ArrayList<userInfo> query_username(int id){
 		ArrayList<userInfo>arr=new ArrayList<userInfo>();
 		Connection con=getcon();
 		String sql="SELECT*FROM userinfo WHERE user_id='"+id+"'";
 		try {
 			Statement sta=con.createStatement();
 			ResultSet rs=sta.executeQuery(sql);
 			if(rs.next()){
 				userInfo us=new userInfo();
 				us.setUser_name(rs.getString("user_name"));
 				
 				arr.add(us);
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
 
    
 
 //回复留言
 public boolean add_releave(releaveinfo re) {
		Connection con = getcon();
		Date d = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String sql = "insert into releaveinfo values(null,'" +re.getRelea_user() + "','" + re.getReleav_content() + "','" + sdf.format(d) + "','"+re.getReleav_name()+"')";
		try {
			Statement sta =(Statement) con.createStatement();
			int count = sta.executeUpdate(sql);
			if (count > 0) {
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
 
 
 //添加留言
 public boolean add_leave(leaveinfo le) {
		Connection con = getcon();
		Date d = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String sql = "insert into leaveinfo values(null,'" +le.getName() + "','" + le.getLeavecontent() + "','" + sdf.format(d) + "','"+le.getLeave_name()+"')";
		try {
			Statement sta =(Statement) con.createStatement();
			int count = sta.executeUpdate(sql);
			if (count > 0) {
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
 
 
 
 
//查询留言
 public ArrayList<releaveinfo> query_releave(){
 		ArrayList<releaveinfo>arr=new ArrayList<releaveinfo>();
 		Connection con=getcon();
 		String sql="SELECT*FROM releaveinfo ";
 		try {
 			Statement sta=con.createStatement();
 			ResultSet rs=sta.executeQuery(sql);
 			while(rs.next()){
 				releaveinfo re=new releaveinfo();
 				re.setRelea_user(rs.getInt("releave_user"));
 				re.setReleav_content(rs.getString("releave_content"));
 				re.setReleav_time(rs.getString("releave_time"));
 				re.setReleav_name(rs.getString("releave_name"));
 				re.setReleavid(rs.getInt("releaveid"));
 				arr.add(re);
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
 
    
    
     //上传相册
 public boolean add_photo(photoinfo ph){
	 Connection con=getcon();
	 Date d = new Date();
	 SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	 String sql="insert into photoinfo values(null,'"+ph.getPhotoname()+"','"+sdf.format(d)+"','"+ph.getUser_id()+"','"+ph.getBeizhu()+"')";
	 try {
		Statement sta=con.createStatement();
		int count=sta.executeUpdate(sql);
		if(count>0){
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
 
 
 
  //上传照片时间查询
 public ArrayList<photoinfo> query_photoT(String time){
	 ArrayList<photoinfo>arr=new ArrayList<photoinfo>();
	 Connection con=getcon();
	 String sql="SELECT*FROM photoinfo WHERE phototime LIKE '"+time+"%';";
	 try {
		
		Statement sta=con.createStatement();
		ResultSet rs=sta.executeQuery(sql);
		while(rs.next()){
			photoinfo ph=new photoinfo();
			ph.setPhotoid(rs.getInt("phoid"));
			ph.setPhotoname(rs.getString("phoname"));
			ph.setPhototime(rs.getString("phototime"));
			ph.setUser_id(rs.getInt("user_id"));
			ph.setBeizhu(rs.getString("beizhu"));
			arr.add(ph);
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
 
 
 
 //上传照片用户id查询
 public ArrayList<photoinfo> query_photoid(int id){
	 ArrayList<photoinfo>arr=new ArrayList<photoinfo>();
	 Connection con=getcon();
	 String sql="SELECT*FROM photoinfo WHERE user_id="+id+"";
	 try {
		
		Statement sta=con.createStatement();
		ResultSet rs=sta.executeQuery(sql);
		while(rs.next()){
			photoinfo ph=new photoinfo();
			ph.setPhotoid(rs.getInt("phoid"));
			ph.setPhotoname(rs.getString("phoname"));
			ph.setPhototime(rs.getString("phototime"));
			ph.setUser_id(rs.getInt("user_id"));
			ph.setBeizhu(rs.getString("beizhu"));
			arr.add(ph);
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
