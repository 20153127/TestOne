package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.PreparedStatement;

import bean.needbean;
import bean.selectbean;
import util.DBUtil;

public class needdao {
	public void add(needbean needBean) {
		System.out.println(needBean.toString());
		// TODO 自动生成的方法存根
		Connection conn=DBUtil.getConn();
		Statement state=null;
		try{
				state=conn.createStatement();
				String sql="insert into need(name,bumen,txaddress,diyu,danweiwz,email,daibiao,bianma,lianxi,dianhua,phone,chuanzhen,jigou,info,needname,`begin`,`end`,info1,`keys`,money,type,medol,xuekeda,xuekexiao,lingyu,daye,xiaoye,qtjishu,status,date) values('"+needBean.getName()+"','"+needBean.getBumen()+"','"+needBean.getTxaddress()+"','"+needBean.getDiyu()+"','"+needBean.getDanweiwz()+"','"+needBean.getEmail()+"','"+needBean.getDaibiao()+"','"+needBean.getBianma()+"','"+needBean.getLianxi()+"','"+needBean.getDianhua()+"','"+needBean.getPhone()+"','"+needBean.getChuanzhen()+"','"+needBean.getJigou()+"','"+needBean.getInfo()+"','"+needBean.getNeedname()+"','"+needBean.getBegin()+"','"+needBean.getEnd()+"','"+needBean.getInfo1()+"','"+needBean.getKeys()+"','"+needBean.getMoney()+"','"+needBean.getType()+"','"+needBean.getModel()+"','"+needBean.getXuekeda()+"','"+needBean.getXuekexiao()+"','"+needBean.getLingyu()+"','"+needBean.getDaye()+"','"+needBean.getXiaoye()+"','"+needBean.getQtjishu()+"','"+needBean.getStatus()+"',now())";
				System.out.println(sql);
				state.executeUpdate(sql);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			DBUtil.close(state, conn);
		}
	}
	public int typenum(String moshi) throws Exception
	{
		Connection conn=DBUtil.getConn();
		Statement state=null;
		
		ResultSet rs = null;
		
		int a=0;
		try {
			state=conn.createStatement();
			String sql ="select * from need where medol='"+moshi+"'";
			rs = state.executeQuery(sql);
		
			while(rs.next())
			{
				a++;
			}
			System.out.println("数量 "+a);
		} catch (Exception e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}finally{
			DBUtil.close(rs, state, conn);
		}
		
		return a;
	}

	public void change(needbean needBean) {
		System.out.println(needBean.toString());
		// TODO 自动生成的方法存根
		Connection conn=DBUtil.getConn();
		Statement state=null;
		try{
				state=conn.createStatement();
				String sql="update  need set name='"+needBean.getName()+"',bumen='"+needBean.getBumen()+"',txaddress='"+needBean.getTxaddress()+"',diyu='"+needBean.getDiyu()+"',danweiwz='"+needBean.getDanweiwz()+"',email='"+needBean.getEmail()+"',daibiao='"+needBean.getDaibiao()+"',bianma='"+needBean.getBianma()+"',lianxi='"+needBean.getLianxi()+"',dianhua='"+needBean.getDianhua()+"',phone='"+needBean.getPhone()+"',chuanzhen='"+needBean.getChuanzhen()+"',jigou='"+needBean.getJigou()+"',info='"+needBean.getInfo()+"',needname='"+needBean.getNeedname()+"',`begin`='"+needBean.getBegin()+"',`end`='"+needBean.getEnd()+"',info1='"+needBean.getInfo1()+"',`keys`='"+needBean.getKeys()+"',money='"+needBean.getMoney()+"',type='"+needBean.getType()+"',medol='"+needBean.getModel()+"',xuekeda='"+needBean.getXuekeda()+"',xuekexiao='"+needBean.getXuekexiao()+"',lingyu='"+needBean.getLingyu()+"',daye='"+needBean.getDaye()+"',xiaoye='"+needBean.getXiaoye()+"',qtjishu='"+needBean.getQtjishu()+"',status='"+needBean.getStatus()+"',date=now() where id='"+needBean.getId()+"'";
				System.out.println(sql);
				state.executeUpdate(sql);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			DBUtil.close(state, conn);
		}
	}
	public void findbyid3(int id,int status) {
		// TODO 自动生成的方法存根
		Connection conn=DBUtil.getConn();
		Statement state=null;
		try{
				state=conn.createStatement();
				String sql="update  need set status='"+status+"' where id='"+id+"'";
				System.out.println(sql);
				state.executeUpdate(sql);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			DBUtil.close(state, conn);
		}
	}
	public List<needbean> find() {
		// TODO 自动生成的方法存根
		List<needbean> list = new ArrayList<>();	
		Connection conn=DBUtil.getConn();
		Statement state=null;
		ResultSet rs=null;
		try{
			state=conn.createStatement();
			String sql="select * from need ";
			rs=state.executeQuery(sql);
			while(rs.next()){
				needbean needBean=new needbean();
				needBean.setId(rs.getInt("id"));
				needBean.setName(rs.getString("name"));
				needBean.setTxaddress(rs.getString("txaddress"));
				needBean.setDanweiwz(rs.getString("danweiwz"));
				needBean.setEmail(rs.getString("email"));
				needBean.setDaibiao(rs.getString("daibiao"));
				needBean.setBianma(rs.getString("bianma"));
				needBean.setLianxi(rs.getString("lianxi"));
				needBean.setDianhua(rs.getString("dianhua"));
				needBean.setPhone(rs.getString("phone"));
				needBean.setChuanzhen(rs.getString("chuanzhen"));
				needBean.setJigou(rs.getString("jigou"));
				needBean.setInfo(rs.getString("info"));
				needBean.setInfo1(rs.getString("info1"));
				needBean.setNeedname(rs.getString("needname"));
				needBean.setType(rs.getString("type"));
				needBean.setModel(rs.getString("medol"));
				needBean.setXuekeda(rs.getString("xuekeda"));
				needBean.setXuekexiao(rs.getString("xuekexiao"));
				needBean.setLingyu(rs.getString("lingyu"));
				needBean.setDaye(rs.getString("daye"));
				needBean.setXiaoye(rs.getString("xiaoye"));
				needBean.setBumen(rs.getString("bumen"));
				needBean.setDiyu(rs.getString("diyu"));
				needBean.setBegin(rs.getString("begin"));
				needBean.setEnd(rs.getString("end"));
				needBean.setKeys(rs.getString("keys"));
				needBean.setModel(rs.getString("medol"));
				needBean.setCreatedate(rs.getString("date"));
				needBean.setMoney(rs.getString("money"));
				needBean.setStatus(rs.getInt("status"));
				list.add(needBean);
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			DBUtil.close(rs, state, conn);
		}
		return list;
	}
	public List<needbean> findno() {
		// TODO 自动生成的方法存根
		List<needbean> list = new ArrayList<>();	
		Connection conn=DBUtil.getConn();
		Statement state=null;
		ResultSet rs=null;
		try{
			state=conn.createStatement();
			String sql="select * from need where status='"+0+"'";
			rs=state.executeQuery(sql);
			while(rs.next()){
				needbean needBean=new needbean();
				needBean.setId(rs.getInt("id"));
				needBean.setName(rs.getString("name"));
				needBean.setTxaddress(rs.getString("txaddress"));
				needBean.setDanweiwz(rs.getString("danweiwz"));
				needBean.setEmail(rs.getString("email"));
				needBean.setDaibiao(rs.getString("daibiao"));
				needBean.setBianma(rs.getString("bianma"));
				needBean.setLianxi(rs.getString("lianxi"));
				needBean.setDianhua(rs.getString("dianhua"));
				needBean.setPhone(rs.getString("phone"));
				needBean.setChuanzhen(rs.getString("chuanzhen"));
				needBean.setJigou(rs.getString("jigou"));
				needBean.setInfo(rs.getString("info"));
				needBean.setInfo1(rs.getString("info1"));
				needBean.setNeedname(rs.getString("needname"));
				needBean.setType(rs.getString("type"));
				needBean.setModel(rs.getString("medol"));
				needBean.setXuekeda(rs.getString("xuekeda"));
				needBean.setXuekexiao(rs.getString("xuekexiao"));
				needBean.setLingyu(rs.getString("lingyu"));
				needBean.setDaye(rs.getString("daye"));
				needBean.setXiaoye(rs.getString("xiaoye"));
				needBean.setBumen(rs.getString("bumen"));
				needBean.setDiyu(rs.getString("diyu"));
				needBean.setBegin(rs.getString("begin"));
				needBean.setEnd(rs.getString("end"));
				needBean.setKeys(rs.getString("keys"));
				needBean.setModel(rs.getString("medol"));
				needBean.setCreatedate(rs.getString("date"));
				needBean.setMoney(rs.getString("money"));
				needBean.setStatus(rs.getInt("status"));
				list.add(needBean);
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			DBUtil.close(rs, state, conn);
		}
		return list;
	}
	public needbean findbyid(int id) {
		// TODO 自动生成的方法存根
		Connection conn=DBUtil.getConn();
		needbean needBean=null;
		
		Statement state=null;
		ResultSet rs=null;
		try{
			state=conn.createStatement();
			String sql="select * from need where id='"+id+"'";
			rs=state.executeQuery(sql);
			if(rs.next()){
				needBean=new needbean();
				needBean.setId(rs.getInt("id"));
				needBean.setName(rs.getString("name"));
				needBean.setTxaddress(rs.getString("txaddress"));
				needBean.setDanweiwz(rs.getString("danweiwz"));
				needBean.setEmail(rs.getString("email"));
				needBean.setDaibiao(rs.getString("daibiao"));
				needBean.setBianma(rs.getString("bianma"));
				needBean.setLianxi(rs.getString("lianxi"));
				needBean.setDianhua(rs.getString("dianhua"));
				needBean.setPhone(rs.getString("phone"));
				needBean.setChuanzhen(rs.getString("chuanzhen"));
				needBean.setJigou(rs.getString("jigou"));
				needBean.setInfo(rs.getString("info"));
				needBean.setInfo1(rs.getString("info1"));
				needBean.setNeedname(rs.getString("needname"));
				needBean.setType(rs.getString("type"));
				needBean.setModel(rs.getString("medol"));
				needBean.setXuekeda(rs.getString("xuekeda"));
				needBean.setXuekexiao(rs.getString("xuekexiao"));
				needBean.setLingyu(rs.getString("lingyu"));
				needBean.setDaye(rs.getString("daye"));
				needBean.setXiaoye(rs.getString("xiaoye"));
				needBean.setBumen(rs.getString("bumen"));
				needBean.setDiyu(rs.getString("diyu"));
				needBean.setBegin(rs.getString("begin"));
				needBean.setEnd(rs.getString("end"));
				needBean.setKeys(rs.getString("keys"));
				needBean.setQtjishu(rs.getString("qtjishu"));
				needBean.setModel(rs.getString("medol"));
				needBean.setStatus(rs.getInt("status"));
				needBean.setCreatedate(rs.getString("date"));
				needBean.setSuggest(rs.getString("suggest"));
				needBean.setMoney(rs.getString("money"));
			}
			
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			DBUtil.close(state, conn);
		}
		
		return needBean;
		
	}
	public void findbyid1(int id) {
		// TODO 自动生成的方法存根
		Connection conn=DBUtil.getConn();	
		Statement state=null;
	
		try{
			state=conn.createStatement();
			String sql="delete  from need where id='"+id+"'";
			state.executeUpdate(sql);			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			DBUtil.close(state, conn);
		}	
	}

	public List<needbean> findjc(String type,String xuekeda) {
		// TODO 自动生成的方法存根
		List<needbean> list = new ArrayList<>();	
		Connection conn=DBUtil.getConn();
		Statement state=null;
		ResultSet rs=null;
		try{
			state=conn.createStatement();
			String sql="select * from need where type='"+type+"' and xuekeda='"+xuekeda+"'";
			rs=state.executeQuery(sql);
			while(rs.next()){
				needbean needBean=new needbean();
				needBean.setId(rs.getInt("id"));
				needBean.setName(rs.getString("name"));
				needBean.setTxaddress(rs.getString("txaddress"));
				needBean.setDanweiwz(rs.getString("danweiwz"));
				needBean.setEmail(rs.getString("email"));
				needBean.setDaibiao(rs.getString("daibiao"));
				needBean.setBianma(rs.getString("bianma"));
				needBean.setLianxi(rs.getString("lianxi"));
				needBean.setDianhua(rs.getString("dianhua"));
				needBean.setPhone(rs.getString("phone"));
				needBean.setChuanzhen(rs.getString("chuanzhen"));
				needBean.setJigou(rs.getString("jigou"));
				needBean.setInfo(rs.getString("info"));
				needBean.setInfo1(rs.getString("info1"));
				needBean.setNeedname(rs.getString("needname"));
				needBean.setType(rs.getString("type"));
				needBean.setModel(rs.getString("medol"));
				needBean.setXuekeda(rs.getString("xuekeda"));
				needBean.setXuekexiao(rs.getString("xuekexiao"));
				needBean.setLingyu(rs.getString("lingyu"));
				needBean.setDaye(rs.getString("daye"));
				needBean.setXiaoye(rs.getString("xiaoye"));
				needBean.setBumen(rs.getString("bumen"));
				needBean.setDiyu(rs.getString("diyu"));
				needBean.setBegin(rs.getString("begin"));
				needBean.setEnd(rs.getString("end"));
				needBean.setKeys(rs.getString("keys"));
				needBean.setModel(rs.getString("medol"));
				needBean.setQtjishu(rs.getString("qtjishu"));
				needBean.setMoney(rs.getString("money"));
				
				needBean.setCreatedate(rs.getString("date"));
				list.add(needBean);
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			DBUtil.close(rs, state, conn);
		}
		return list;
	}
	public List<needbean> findjj(String type,String xuekeda,String xuekexiao) {
		// TODO 自动生成的方法存根
		List<needbean> list = new ArrayList<>();	
		Connection conn=DBUtil.getConn();
		Statement state=null;
		ResultSet rs=null;
		try{
			state=conn.createStatement();
			String sql="select * from need where type='"+type+"' and xuekeda='"+xuekeda+"' and xuekexiao='"+xuekexiao+"'";
			rs=state.executeQuery(sql);
			while(rs.next()){
				needbean needBean=new needbean();
				needBean.setId(rs.getInt("id"));
				needBean.setName(rs.getString("name"));
				needBean.setTxaddress(rs.getString("txaddress"));
				needBean.setDanweiwz(rs.getString("danweiwz"));
				needBean.setEmail(rs.getString("email"));
				needBean.setDaibiao(rs.getString("daibiao"));
				needBean.setBianma(rs.getString("bianma"));
				needBean.setLianxi(rs.getString("lianxi"));
				needBean.setDianhua(rs.getString("dianhua"));
				needBean.setPhone(rs.getString("phone"));
				needBean.setChuanzhen(rs.getString("chuanzhen"));
				needBean.setJigou(rs.getString("jigou"));
				needBean.setInfo(rs.getString("info"));
				needBean.setInfo1(rs.getString("info1"));
				needBean.setNeedname(rs.getString("needname"));
				needBean.setType(rs.getString("type"));
				needBean.setModel(rs.getString("medol"));
				needBean.setXuekeda(rs.getString("xuekeda"));
				needBean.setXuekexiao(rs.getString("xuekexiao"));
				needBean.setLingyu(rs.getString("lingyu"));
				needBean.setDaye(rs.getString("daye"));
				needBean.setXiaoye(rs.getString("xiaoye"));
				needBean.setBumen(rs.getString("bumen"));
				needBean.setDiyu(rs.getString("diyu"));
				needBean.setBegin(rs.getString("begin"));
				needBean.setEnd(rs.getString("end"));
				needBean.setKeys(rs.getString("keys"));
				needBean.setModel(rs.getString("medol"));
				needBean.setQtjishu(rs.getString("qtjishu"));
				needBean.setMoney(rs.getString("money"));
				
				needBean.setCreatedate(rs.getString("date"));
				list.add(needBean);
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			DBUtil.close(rs, state, conn);
		}
		return list;
	}
	public List<needbean> finddaye(String type,String daye) {
		// TODO 自动生成的方法存根
		List<needbean> list = new ArrayList<>();	
		Connection conn=DBUtil.getConn();
		Statement state=null;
		ResultSet rs=null;
		try{
			state=conn.createStatement();
			String sql="select * from need where type='"+type+"' and daye='"+daye+"'";
			rs=state.executeQuery(sql);
			while(rs.next()){
				needbean needBean=new needbean();
				needBean.setId(rs.getInt("id"));
				needBean.setName(rs.getString("name"));
				needBean.setTxaddress(rs.getString("txaddress"));
				needBean.setDanweiwz(rs.getString("danweiwz"));
				needBean.setEmail(rs.getString("email"));
				needBean.setDaibiao(rs.getString("daibiao"));
				needBean.setBianma(rs.getString("bianma"));
				needBean.setLianxi(rs.getString("lianxi"));
				needBean.setDianhua(rs.getString("dianhua"));
				needBean.setPhone(rs.getString("phone"));
				needBean.setChuanzhen(rs.getString("chuanzhen"));
				needBean.setJigou(rs.getString("jigou"));
				needBean.setInfo(rs.getString("info"));
				needBean.setInfo1(rs.getString("info1"));
				needBean.setNeedname(rs.getString("needname"));
				needBean.setType(rs.getString("type"));
				needBean.setModel(rs.getString("medol"));
				needBean.setXuekeda(rs.getString("xuekeda"));
				needBean.setXuekexiao(rs.getString("xuekexiao"));
				needBean.setLingyu(rs.getString("lingyu"));
				needBean.setDaye(rs.getString("daye"));
				needBean.setXiaoye(rs.getString("xiaoye"));
				needBean.setBumen(rs.getString("bumen"));
				needBean.setDiyu(rs.getString("diyu"));
				needBean.setBegin(rs.getString("begin"));
				needBean.setEnd(rs.getString("end"));
				needBean.setKeys(rs.getString("keys"));
				needBean.setModel(rs.getString("money"));
				needBean.setQtjishu(rs.getString("qtjishu"));
			
				needBean.setCreatedate(rs.getString("date"));
				list.add(needBean);
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			DBUtil.close(rs, state, conn);
		}
		return list;
	}

	public List<needbean> findqt(String type,String daye,String xiaoye) {
		// TODO 自动生成的方法存根
		List<needbean> list = new ArrayList<>();	
		Connection conn=DBUtil.getConn();
		Statement state=null;
		ResultSet rs=null;
		try{
			state=conn.createStatement();
			String sql="select * from need where 1=1 and type='"+type+"' and daye='"+daye+"' and xiaoye='"+xiaoye+"'";
			System.out.println("sql:"+sql);
			rs=state.executeQuery(sql);
			while(rs.next()){
				needbean needBean=new needbean();
				needBean.setId(rs.getInt("id"));
				needBean.setName(rs.getString("name"));
				needBean.setTxaddress(rs.getString("txaddress"));
				needBean.setDanweiwz(rs.getString("danweiwz"));
				needBean.setEmail(rs.getString("email"));
				needBean.setDaibiao(rs.getString("daibiao"));
				needBean.setBianma(rs.getString("bianma"));
				needBean.setLianxi(rs.getString("lianxi"));
				needBean.setDianhua(rs.getString("dianhua"));
				needBean.setPhone(rs.getString("phone"));
				needBean.setChuanzhen(rs.getString("chuanzhen"));
				needBean.setJigou(rs.getString("jigou"));
				needBean.setInfo(rs.getString("info"));
				needBean.setInfo1(rs.getString("info1"));
				needBean.setNeedname(rs.getString("needname"));
				needBean.setType(rs.getString("type"));
				needBean.setModel(rs.getString("medol"));
				needBean.setXuekeda(rs.getString("xuekeda"));
				needBean.setXuekexiao(rs.getString("xuekexiao"));
				needBean.setLingyu(rs.getString("lingyu"));
				needBean.setDaye(rs.getString("daye"));
				needBean.setXiaoye(rs.getString("xiaoye"));
				needBean.setBumen(rs.getString("bumen"));
				needBean.setDiyu(rs.getString("diyu"));
				needBean.setBegin(rs.getString("begin"));
				needBean.setEnd(rs.getString("end"));
				needBean.setKeys(rs.getString("keys"));
				needBean.setModel(rs.getString("money"));
				
				needBean.setQtjishu(rs.getString("qtjishu"));
				
				needBean.setCreatedate(rs.getString("date"));
				list.add(needBean);
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			DBUtil.close(rs, state, conn);
		}
		return list;
	}

	public List<needbean> findpt(String type) {
		// TODO 自动生成的方法存根
		List<needbean> list = new ArrayList<>();	
		Connection conn=DBUtil.getConn();
		Statement state=null;
		ResultSet rs=null;
		try{
			state=conn.createStatement();
			String sql="select * from need where type='"+type+"'";
			rs=state.executeQuery(sql);
			while(rs.next()){
				needbean needBean=new needbean();
				needBean.setId(rs.getInt("id"));
				needBean.setName(rs.getString("name"));
				needBean.setTxaddress(rs.getString("txaddress"));
				needBean.setDanweiwz(rs.getString("danweiwz"));
				needBean.setEmail(rs.getString("email"));
				needBean.setDaibiao(rs.getString("daibiao"));
				needBean.setBianma(rs.getString("bianma"));
				needBean.setLianxi(rs.getString("lianxi"));
				needBean.setDianhua(rs.getString("dianhua"));
				needBean.setPhone(rs.getString("phone"));
				needBean.setChuanzhen(rs.getString("chuanzhen"));
				needBean.setJigou(rs.getString("jigou"));
				needBean.setInfo(rs.getString("info"));
				needBean.setInfo1(rs.getString("info1"));
				needBean.setNeedname(rs.getString("needname"));
				needBean.setType(rs.getString("type"));
				needBean.setModel(rs.getString("medol"));
				needBean.setXuekeda(rs.getString("xuekeda"));
				needBean.setXuekexiao(rs.getString("xuekexiao"));
				needBean.setLingyu(rs.getString("lingyu"));
				needBean.setDaye(rs.getString("daye"));
				needBean.setXiaoye(rs.getString("xiaoye"));
				needBean.setBumen(rs.getString("bumen"));
				needBean.setDiyu(rs.getString("diyu"));
				needBean.setBegin(rs.getString("begin"));
				needBean.setEnd(rs.getString("end"));
				needBean.setKeys(rs.getString("keys"));
				needBean.setModel(rs.getString("money"));
				needBean.setQtjishu(rs.getString("qtjishu"));
			
				needBean.setCreatedate(rs.getString("date"));
				list.add(needBean);
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			DBUtil.close(rs, state, conn);
		}
		return list;
	}
	public List<needbean> select(selectbean selectbean1) {
		// TODO 自动生成的方法存根
		List<needbean> list = new ArrayList<>();	
		Connection conn=DBUtil.getConn();
		Statement state=null;
		ResultSet rs=null;	
		try{
			state=conn.createStatement();
			String sql="select * from need where status='"+0+"'  ";
			if(selectbean1.getTj2()!=null){
				sql+="and `"+selectbean1.getTj1()+"` like '%"+selectbean1.getTj2()+"%' ";
			}
			if(selectbean1.getTj5()!=null&&!"".equals(selectbean1.getTj5())){
				sql+=" "+selectbean1.getTj3()+" `"+selectbean1.getTj4()+"` like '%"+selectbean1.getTj5()+"%' ";	
			}
				
			if(selectbean1.getTj8()!=null&&!"".equals(selectbean1.getTj8())){
				sql+=" "+selectbean1.getTj6()+" `"+selectbean1.getTj7()+"` like '%"+selectbean1.getTj8()+"%' ";	
			}
			System.out.println("sqlduo"+sql);
			rs=state.executeQuery(sql);
			
			while(rs.next()){
				
				needbean needBean=new needbean();
				needBean.setId(rs.getInt("id"));
				needBean.setName(rs.getString("name"));
				needBean.setTxaddress(rs.getString("txaddress"));
				needBean.setDanweiwz(rs.getString("danweiwz"));
				needBean.setEmail(rs.getString("email"));
				needBean.setDaibiao(rs.getString("daibiao"));
				needBean.setBianma(rs.getString("bianma"));
				needBean.setLianxi(rs.getString("lianxi"));
				needBean.setDianhua(rs.getString("dianhua"));
				needBean.setPhone(rs.getString("phone"));
				needBean.setChuanzhen(rs.getString("chuanzhen"));
				needBean.setJigou(rs.getString("jigou"));
				needBean.setInfo(rs.getString("info"));
				needBean.setInfo1(rs.getString("info1"));
				needBean.setNeedname(rs.getString("needname"));
				needBean.setType(rs.getString("type"));
				needBean.setModel(rs.getString("medol"));
				needBean.setXuekeda(rs.getString("xuekeda"));
				needBean.setXuekexiao(rs.getString("xuekexiao"));
				needBean.setLingyu(rs.getString("lingyu"));
				needBean.setDaye(rs.getString("daye"));
				needBean.setXiaoye(rs.getString("xiaoye"));
				needBean.setBumen(rs.getString("bumen"));
				needBean.setDiyu(rs.getString("diyu"));
				needBean.setBegin(rs.getString("begin"));
				needBean.setEnd(rs.getString("end"));
				needBean.setKeys(rs.getString("keys"));
				needBean.setModel(rs.getString("money"));
				
				needBean.setQtjishu(rs.getString("qtjishu"));
				
				needBean.setCreatedate(rs.getString("date"));
				list.add(needBean);
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			DBUtil.close(rs, state, conn);
		}
		return list;
	}

}
