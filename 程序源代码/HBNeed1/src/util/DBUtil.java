package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import com.sun.corba.se.spi.orbutil.fsm.Guard.Result;

public class DBUtil {
	public static String url="jdbc:mysql://localhost:3306/hbneed1?useUnicode=true&characterEncoding=UTF-8";
	public static String username="root";
	public static String password="123456";
	public static Connection getConn(){
		Connection conn=null;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			conn=DriverManager.getConnection(url, username, password);
			System.out.println("连接成功");
		}catch(Exception e){
			e.printStackTrace();
			System.out.println("连接失败");
		}
		return conn;
	}
	public static void close(Statement state,Connection con){
		if(state!=null){
			
			try{
				state.close();
			}catch(Exception e ){
				e.printStackTrace();
			}
		}
		if(con!=null){
			try{
				con.close();
				
			}catch(Exception e){
				e.printStackTrace();
			}
		}
	}
	public static void close(ResultSet rs,Statement state,Connection con){
		if(rs!=null){
			try{
				rs.close();
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		if(state!=null){
			try{
				state.close();
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		if(con!=null){
			try{
				con.close();
			}catch(Exception e){
				e.printStackTrace();
			}
		}
	}
}
