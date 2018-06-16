package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import bean.powerbean;
import util.DBUtil;

public class powerdao {

	public powerbean findbyjs(String juese) {
		// TODO 自动生成的方法存根
		
		Connection conn=DBUtil.getConn();
		powerbean powerBean=null;
		
		Statement state=null;
		ResultSet rs=null;
		try{
			state=conn.createStatement();
			String sql="select * from pow where juese='"+juese+"'";
			rs=state.executeQuery(sql);
			if(rs.next()){
				powerBean=new powerbean();
				powerBean.setJuese(rs.getString("juese"));
				powerBean.setJsqx(rs.getString("jsqx"));
				powerBean.setMimaxg(rs.getString("mimaxg"));
				powerBean.setShenhe(rs.getString("shenhe"));
				powerBean.setTjbb(rs.getString("tjbb"));
				powerBean.setTypefind(rs.getString("typefind"));
				powerBean.setXinxigl(rs.getString("xinxigl"));
				powerBean.setXqgl(rs.getString("xqgl"));
				powerBean.setXqtianbao(rs.getString("xqtianbao"));
				powerBean.setZhjs(rs.getString("zhjs"));
			}
			
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			DBUtil.close(state, conn);
		}
		
		return powerBean;
	}

	public void update(powerbean powerbean1) {
		// TODO 自动生成的方法存根
		Connection conn=DBUtil.getConn();
		Statement state=null;
		try{
				state=conn.createStatement();
				String sql="update  pow set xqtianbao='"+powerbean1.getXqtianbao()+"',xqgl='"+powerbean1.getXqgl()+"',shenhe='"+powerbean1.getShenhe()+"',typefind='"+powerbean1.getTypefind()+"',xinxigl='"+powerbean1.getXinxigl()+"',mimaxg='"+powerbean1.getMimaxg()+"',jsqx='"+powerbean1.getJsqx()+"',zhjs='"+powerbean1.getZhjs()+"',tjbb='"+powerbean1.getTjbb()+"' where juese='"+powerbean1.getJuese()+"'";
				System.out.println(sql);
				System.out.println(sql);
				state.executeUpdate(sql);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			DBUtil.close(state, conn);
		}
	}

}
