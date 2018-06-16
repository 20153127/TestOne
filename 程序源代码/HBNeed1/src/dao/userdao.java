package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import bean.needbean;
import bean.userbean;
import util.DBUtil;

public class userdao {

	public userbean getbyuser(String username) {
		// TODO 自动生成的方法存根
		userbean Userbean=null;
		Connection conn=DBUtil.getConn();
		Statement state=null;
		ResultSet rs=null;
		try{
			state=conn.createStatement();
			String sql="select * from log where username='"+username+"'";
			System.out.println(sql);
			rs=state.executeQuery(sql);
			if(rs.next()){
				Userbean = new userbean();
				Userbean.setId(rs.getInt("id"));
				Userbean.setUsername(rs.getString("username"));
				Userbean.setPassword(rs.getString("password"));
				Userbean.setName(rs.getString("name"));
				Userbean.setSex(rs.getString("sex"));
				Userbean.setZhuanye(rs.getString("zhuanye"));
				Userbean.setShi(rs.getString("shi"));
				Userbean.setSheng(rs.getString("sheng"));
				Userbean.setHangye(rs.getString("hangye"));
				Userbean.setDanwei(rs.getString("danwei"));
				Userbean.setJiaoyu(rs.getString("jiaoyu"));
				Userbean.setNicheng(rs.getString("nicheng"));
				Userbean.setTongxun(rs.getString("tongxun"));
				Userbean.setBianma(rs.getString("bianma"));
				Userbean.setPhone(rs.getString("phone"));
				Userbean.setGuding(rs.getString("guding"));
				Userbean.setAddress(rs.getString("address"));
				Userbean.setQq(rs.getString("qq"));
				Userbean.setMsn(rs.getString("msn"));
				Userbean.setShenfen(rs.getString("shenfen"));
				Userbean.setJuese(rs.getString("juese"));
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			DBUtil.close(rs, state, conn);
		}
		return Userbean;
	}
	public List<userbean> findall() {
		// TODO 自动生成的方法存根
		List<userbean> list = new ArrayList<>();	
		Connection conn=DBUtil.getConn();
		Statement state=null;
		ResultSet rs=null;
		try{
			state=conn.createStatement();
			String sql="select * from log ";
			rs=state.executeQuery(sql);
			while(rs.next()){
			userbean	Userbean = new userbean();
				Userbean.setUsername(rs.getString("username"));
				Userbean.setPassword(rs.getString("password"));
				Userbean.setName(rs.getString("name"));
				Userbean.setSex(rs.getString("sex"));
				Userbean.setZhuanye(rs.getString("zhuanye"));
				Userbean.setShi(rs.getString("shi"));
				Userbean.setSheng(rs.getString("sheng"));
				Userbean.setHangye(rs.getString("hangye"));
				Userbean.setDanwei(rs.getString("danwei"));
				Userbean.setJiaoyu(rs.getString("jiaoyu"));
				Userbean.setNicheng(rs.getString("nicheng"));
				Userbean.setTongxun(rs.getString("tongxun"));
				Userbean.setBianma(rs.getString("bianma"));
				Userbean.setPhone(rs.getString("phone"));
				Userbean.setGuding(rs.getString("guding"));
				Userbean.setAddress(rs.getString("address"));
				Userbean.setQq(rs.getString("qq"));
				Userbean.setMsn(rs.getString("msn"));
				Userbean.setShenfen(rs.getString("shenfen"));
				Userbean.setJuese(rs.getString("juese"));
				list.add(Userbean);
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			DBUtil.close(rs, state, conn);
		}
		return list;
	}
	
	public List<userbean> findal() {
		// TODO 自动生成的方法存根
		List<userbean> list = new ArrayList<>();	
		Connection conn=DBUtil.getConn();
		Statement state=null;
		ResultSet rs=null;
		try{
			state=conn.createStatement();
			String sql="select * from log where username !='admin'";
			rs=state.executeQuery(sql);
			while(rs.next()){
			userbean	Userbean = new userbean();
				Userbean.setUsername(rs.getString("username"));
				Userbean.setPassword(rs.getString("password"));
				Userbean.setName(rs.getString("name"));
				Userbean.setSex(rs.getString("sex"));
				Userbean.setZhuanye(rs.getString("zhuanye"));
				Userbean.setShi(rs.getString("shi"));
				Userbean.setSheng(rs.getString("sheng"));
				Userbean.setHangye(rs.getString("hangye"));
				Userbean.setDanwei(rs.getString("danwei"));
				Userbean.setJiaoyu(rs.getString("jiaoyu"));
				Userbean.setNicheng(rs.getString("nicheng"));
				Userbean.setTongxun(rs.getString("tongxun"));
				Userbean.setBianma(rs.getString("bianma"));
				Userbean.setPhone(rs.getString("phone"));
				Userbean.setGuding(rs.getString("guding"));
				Userbean.setAddress(rs.getString("address"));
				Userbean.setQq(rs.getString("qq"));
				Userbean.setMsn(rs.getString("msn"));
				Userbean.setShenfen(rs.getString("shenfen"));
				Userbean.setJuese(rs.getString("juese"));
				list.add(Userbean);
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			DBUtil.close(rs, state, conn);
		}
		return list;
	}
	public void add(userbean userBean) {
		// TODO 自动生成的方法存根
		Connection conn=DBUtil.getConn();
		Statement state=null;
		String sql="insert into log(username,password,name,shenfen,sex,sheng,shi,danwei,zhuanye,hangye,jiaoyu,nicheng,tongxun,bianma,phone,guding,address,qq,msn,juese)"+"value('"+userBean.getUsername()+"','"+userBean.getPassword()+"','"+userBean.getName()+"','"+userBean.getShenfen()+"','"+userBean.getSex()+"','"+userBean.getSheng()+"','"+userBean.getShi()+"','"+userBean.getDanwei()+"','"+userBean.getZhuanye()+"','"+userBean.getHangye()+"','"+userBean.getJiaoyu()+"','"+userBean.getNicheng()+"','"+userBean.getTongxun()+"','"+userBean.getBianma()+"','"+userBean.getPhone()+"','"+userBean.getGuding()+"','"+userBean.getAddress()+"','"+userBean.getQq()+"','"+userBean.getMsn()+"','填报员')";
		try {
			state=conn.createStatement();
			state.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}finally{
			DBUtil.close(state, conn);
			
		}
		
	}
	public void add1(userbean userBean) {
		// TODO 自动生成的方法存根
		Connection conn=DBUtil.getConn();
		Statement state=null;
		String sql="insert into log(username,password,name,juese)"+"value('"+userBean.getUsername()+"','"+userBean.getPassword()+"','"+userBean.getName()+"','"+userBean.getJuese()+"')";
		try {
			state=conn.createStatement();
			state.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}finally{
			DBUtil.close(state, conn);
			
		}
		
	}
	public void deletebyuser(String username) {
		// TODO 自动生成的方法存根
		Connection conn=DBUtil.getConn();
		Statement state=null;
		String sql="delete from log where username='"+username+"'";
		try {
			state=conn.createStatement();
			state.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}finally{
			DBUtil.close(state, conn);
			
		}
	}
	public boolean changej(String username, String juese) {
		// TODO 自动生成的方法存根
		boolean flag=false;
		Connection conn=DBUtil.getConn();
		Statement state=null;
		int i=0;
		String sql="update log set juese='"+juese+"' where username='"+username+"'";
		System.out.println(sql);
		try {
			state=conn.createStatement();
			i=state.executeUpdate(sql);
			if(i==1){
				flag=true;
			}
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}finally{
			DBUtil.close(state, conn);
			
		}
		return flag;
	}
	public userbean fingbyuser(String username) {
		// TODO 自动生成的方法存根
		
		userbean Userbean=null;
		Connection conn=DBUtil.getConn();
		Statement state=null;
		ResultSet rs=null;
		try{
			state=conn.createStatement();
			String sql="select * from log where username='"+username+"'";
			System.out.println(sql);
			rs=state.executeQuery(sql);
			if(rs.next()){
				Userbean = new userbean();
				Userbean.setUsername(rs.getString("username"));
				Userbean.setPassword(rs.getString("password"));
				Userbean.setName(rs.getString("name"));
				Userbean.setSex(rs.getString("sex"));
				Userbean.setZhuanye(rs.getString("zhuanye"));
				Userbean.setShi(rs.getString("shi"));
				Userbean.setSheng(rs.getString("sheng"));
				Userbean.setHangye(rs.getString("hangye"));
				Userbean.setDanwei(rs.getString("danwei"));
				Userbean.setJiaoyu(rs.getString("jiaoyu"));
				Userbean.setNicheng(rs.getString("nicheng"));
				Userbean.setTongxun(rs.getString("tongxun"));
				Userbean.setBianma(rs.getString("bianma"));
				Userbean.setPhone(rs.getString("phone"));
				Userbean.setGuding(rs.getString("guding"));
				Userbean.setAddress(rs.getString("address"));
				Userbean.setQq(rs.getString("qq"));
				Userbean.setMsn(rs.getString("msn"));
				Userbean.setShenfen(rs.getString("shenfen"));
				Userbean.setJuese(rs.getString("juese"));
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			DBUtil.close(rs, state, conn);
		}
		return Userbean;
	}
	public void update(userbean userBean) {
		// TODO 自动生成的方法存根
		Connection conn=DBUtil.getConn();
		Statement state=null;
		String sql="update log set username='"+userBean.getUsername()+"',name='"+userBean.getName()+"',shenfen='"+userBean.getShenfen()+"',sex='"+userBean.getSex()+"',sheng='"+userBean.getSheng()+"',shi='"+userBean.getShi()+"',danwei='"+userBean.getDanwei()+"',zhuanye='"+userBean.getZhuanye()+"',hangye='"+userBean.getHangye()+"',jiaoyu='"+userBean.getJiaoyu()+"',nicheng='"+userBean.getNicheng()+"',tongxun='"+userBean.getTongxun()+"',bianma='"+userBean.getBianma()+"',phone='"+userBean.getPhone()+"',guding='"+userBean.getGuding()+"',address='"+userBean.getAddress()+"',qq='"+userBean.getQq()+"',msn='"+userBean.getMsn()+"',juese='"+userBean.getJuese()+"' where id='"+userBean.getId()+"'";
		try {
			state=conn.createStatement();
			state.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}finally{
			DBUtil.close(state, conn);		
		}
	}
	public userbean getbyid(int id) {
		// TODO 自动生成的方法存根
		userbean Userbean=null;
		Connection conn=DBUtil.getConn();
		Statement state=null;
		ResultSet rs=null;
		try{
			state=conn.createStatement();
			String sql="select * from log where id='"+id+"'";
			System.out.println(sql);
			rs=state.executeQuery(sql);
			if(rs.next()){
				Userbean = new userbean();
				Userbean.setUsername(rs.getString("username"));
				Userbean.setPassword(rs.getString("password"));
				Userbean.setName(rs.getString("name"));
				Userbean.setSex(rs.getString("sex"));
				Userbean.setZhuanye(rs.getString("zhuanye"));
				Userbean.setShi(rs.getString("shi"));
				Userbean.setSheng(rs.getString("sheng"));
				Userbean.setHangye(rs.getString("hangye"));
				Userbean.setDanwei(rs.getString("danwei"));
				Userbean.setJiaoyu(rs.getString("jiaoyu"));
				Userbean.setNicheng(rs.getString("nicheng"));
				Userbean.setTongxun(rs.getString("tongxun"));
				Userbean.setBianma(rs.getString("bianma"));
				Userbean.setPhone(rs.getString("phone"));
				Userbean.setGuding(rs.getString("guding"));
				Userbean.setAddress(rs.getString("address"));
				Userbean.setQq(rs.getString("qq"));
				Userbean.setMsn(rs.getString("msn"));
				Userbean.setShenfen(rs.getString("shenfen"));
				Userbean.setJuese(rs.getString("juese"));
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			DBUtil.close(rs, state, conn);
		}
		return Userbean;
	}
	public void updatemima(int id, String password) {
		// TODO 自动生成的方法存根
		Connection conn=DBUtil.getConn();
		Statement state=null;
		String sql="update log set password='"+password+"' where id='"+id+"'";
		try {
			state=conn.createStatement();
			state.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}finally{
			DBUtil.close(state, conn);		
		}
	}
}
