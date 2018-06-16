package servlet.user;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.websocket.Session;

import bean.powerbean;
import bean.userbean;
import dao.powerdao;
import dao.userdao;

/**
 * Servlet implementation class userservlet
 */
@WebServlet("/userservlet")
public class userservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		String method=req.getParameter("method");
		if(method.equals("createnew")){
			createnew(req,resp);
		}else if(method.equals("login")){
			checkuser(req,resp);
		}else if (method.equals("yhgl")) {
			yhgl(req, resp);
		}else if (method.equals("createnewad")) {
			createnewad(req, resp);
		}else if (method.equals("delete")) {
			delete(req, resp);
		}else if (method.equals("jsgl")) {
			jsgl(req, resp);
		}else if (method.equals("changejs")) {
			changejs(req, resp);
		}else if (method.equals("findbyuser")) {
			findbyuser(req, resp);
		}else if (method.equals("updatemima")) {
			updatemima(req, resp);
		}else if (method.equals("changexinxi")) {
			changexinxi(req, resp);
		}
	}

	

	



	private void changexinxi(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		// TODO 自动生成的方法存根
		String id1=req.getParameter("id");
		int id=Integer.parseInt(id1);
		String username=req.getParameter("username");
		String name=req.getParameter("name");
		String shenfen=req.getParameter("shenfen");
		String sex=req.getParameter("sex");
		String sheng=req.getParameter("sheng");
		String shi=req.getParameter("shi");
		String danwei=req.getParameter("danwei");
		String zhuanye=req.getParameter("zhuanye");
		String hangye=req.getParameter("hangye");
		String jiaoyu=req.getParameter("jiaoyu");
		String nicheng=req.getParameter("nicheng");
		String tongxun=req.getParameter("tongxun");
		String bianma=req.getParameter("bianma");
		String phone=req.getParameter("phone");
		String guding=req.getParameter("guding");
		String address=req.getParameter("address");
		String qq=req.getParameter("qq");
		String msn=req.getParameter("msn");
		userbean UserBean=new userbean();
		UserBean.setId(id);
		UserBean.setUsername(username);
		UserBean.setName(name);
		UserBean.setSex(sex);
		UserBean.setZhuanye(zhuanye);
		UserBean.setShi(shi);
		UserBean.setSheng(sheng);
		UserBean.setHangye(hangye);
		UserBean.setDanwei(danwei);
		UserBean.setJiaoyu(jiaoyu);
		UserBean.setNicheng(nicheng);
		UserBean.setTongxun(tongxun);
		UserBean.setBianma(bianma);
		UserBean.setPhone(phone);
		UserBean.setGuding(guding);
		UserBean.setAddress(address);
		UserBean.setQq(qq);
		UserBean.setMsn(msn);
		UserBean.setShenfen(shenfen);
		userdao userDao=new userdao();
		userbean userbean2=new userbean();
			userDao.update(UserBean);
		userbean2=	userDao.getbyid(id);
		req.getSession().setAttribute("userb", UserBean);
		resp.sendRedirect(req.getContextPath()+"/gerenxinxicu.jsp");
		
	}



	private void updatemima(HttpServletRequest req, HttpServletResponse resp) throws ServletException {
		// TODO 自动生成的方法存根
		String id1=req.getParameter("id");
		int id=Integer.parseInt(id1);
		String password=req.getParameter("password");
		userdao userdao3=new userdao();
		userdao3.updatemima(id,password);
		req.setAttribute("msg", "修改成功");
		try {
			
			req.getRequestDispatcher("changemima.jsp").forward(req, resp);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	private void findbyuser(HttpServletRequest req, HttpServletResponse resp) {
		// TODO 自动生成的方法存根
		String username=req.getParameter("username");
		userdao Userdao=new userdao();
		userbean userbean1=new userbean();
		userbean1=Userdao.fingbyuser(username);
		if(userbean1!=null){
			req.setAttribute("c", userbean1);
			try {		
				req.getRequestDispatcher("jsglcrete.jsp").forward(req, resp);

		} catch (Exception e) {
			e.printStackTrace();
		}
		}
	}

	private void changejs(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		// TODO 自动生成的方法存根
		String username=req.getParameter("username");
		String juese=req.getParameter("juese");
		System.out.println("juese"+juese);
		userdao Userdao=new userdao();
		boolean flag=false;
		flag=Userdao.changej(username,juese);
		
		if(flag){
			req.setAttribute("msg", "修改成功");
			resp.sendRedirect(req.getContextPath() + "/userservlet?method=jsgl");
		}else{
			req.setAttribute("msg", "修改失败");
			resp.sendRedirect(req.getContextPath() + "/userservlet?method=jsgl");
		}
	}

	private void jsgl(HttpServletRequest req, HttpServletResponse resp) {
		// TODO 自动生成的方法存根
		userdao Userdao=new userdao();
		List<userbean> Userbean=Userdao.findal();
		System.out.println("全部"+Userbean);
		req.setAttribute("c", Userbean);
		try {		
			req.getRequestDispatcher("jsgl.jsp").forward(req, resp);

	} catch (Exception e) {
		e.printStackTrace();
	}
	}

	private void delete(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		// TODO 自动生成的方法存根
		String username=req.getParameter("username");
		userdao Userdao=new userdao();
		userbean UserBean=new userbean();
		UserBean=Userdao.getbyuser(username);
		if(UserBean!=null){
			req.setAttribute("msg", "删除成功");
			try {
				Userdao.deletebyuser(username);
				resp.sendRedirect(req.getContextPath() + "/userservlet?method=yhgl");
			} catch (IOException e) {
				// TODO 自动生成的 catch 块
				e.printStackTrace();
			}
		}else{
			req.setAttribute("msg", "删除失败");
			resp.sendRedirect(req.getContextPath() + "/userservlet?method=yhgl");
		}
	}

	private void createnewad(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		// TODO 自动生成的方法存根
		String username=req.getParameter("username");
		String password=req.getParameter("password");
		String name=req.getParameter("name");
		String juese=req.getParameter("juese");
		userbean Userbean=new userbean();
		userbean UserBean=new userbean();
		userdao Userdao=new userdao();
		Userbean=Userdao.getbyuser(username);
		UserBean.setUsername(username);
		UserBean.setPassword(password);
		UserBean.setName(name);
		UserBean.setJuese(juese);
		
		if(Userbean==null){
			Userdao.add1(UserBean);
			req.setAttribute("msg", "添加成功");
			resp.sendRedirect(req.getContextPath() + "/userservlet?method=yhgl");
		}else{
			req.setAttribute("msg", "添加失败，该用户已经存在");
			try {
				req.getRequestDispatcher("adminadd.jsp").forward(req, resp);
			} catch (ServletException e) {
				// TODO 自动生成的 catch 块
				e.printStackTrace();
			}
		}
	}

	private void yhgl(HttpServletRequest req, HttpServletResponse resp) {
		// TODO 自动生成的方法存根
	
		userdao Userdao=new userdao();
		List<userbean> Userbean=Userdao.findall();
		System.out.println("全部"+Userbean);
		req.setAttribute("c", Userbean);
		try {		
			req.getRequestDispatcher("yhgl.jsp").forward(req, resp);

	} catch (Exception e) {
		e.printStackTrace();
	}
	}

	private void createnew(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		// TODO 自动生成的方法存根
		System.out.println(1);
		String username=req.getParameter("username");
		String password=req.getParameter("password");
		String name=req.getParameter("name");
		String shenfen=req.getParameter("shenfen");
		String sex=req.getParameter("sex");
		String sheng=req.getParameter("sheng");
		String shi=req.getParameter("shi");
		String danwei=req.getParameter("danwei");
		String zhuanye=req.getParameter("zhuanye");
		String hangye=req.getParameter("hangye");
		String jiaoyu=req.getParameter("jiaoyu");
		String nicheng=req.getParameter("nicheng");
		String tongxun=req.getParameter("tongxun");
		String bianma=req.getParameter("bianma");
		String phone=req.getParameter("phone");
		String guding=req.getParameter("guding");
		String address=req.getParameter("address");
		String qq=req.getParameter("qq");
		String msn=req.getParameter("msn");
		userbean UserBean=new userbean();
	
		UserBean.setUsername(username);
		UserBean.setPassword(password);
		UserBean.setName(name);
		UserBean.setSex(sex);
		UserBean.setZhuanye(zhuanye);
		UserBean.setShi(shi);
		UserBean.setSheng(sheng);
		UserBean.setHangye(hangye);
		UserBean.setDanwei(danwei);
		UserBean.setJiaoyu(jiaoyu);
		UserBean.setNicheng(nicheng);
		UserBean.setTongxun(tongxun);
		UserBean.setBianma(bianma);
		UserBean.setPhone(phone);
		UserBean.setGuding(guding);
		UserBean.setAddress(address);
		UserBean.setQq(qq);
		UserBean.setMsn(msn);
		UserBean.setShenfen(shenfen);
		UserBean.setJuese("填报员");
		userdao userDao=new userdao();
		userbean userBean=userDao.getbyuser(username);
		System.out.println(userBean);

		if(userBean==null){
			System.out.println(UserBean);
			userDao.add(UserBean);
			 resp.sendRedirect(req.getContextPath()+"/nlogin.jsp");
		}else{
			System.out.println(2);

		}
	}

	private void checkuser(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		// TODO 自动生成的方法存根
		 String username=req.getParameter("username");
		 String password=req.getParameter("password");
		 userbean Userbean=new userbean();
		 powerbean powerbean1=new powerbean();
		 powerdao powerdao1=new powerdao();
		 String userDL="userb";
		 userdao Userdao=new userdao();
		 Userbean=Userdao.getbyuser(username);
		 
		 if(Userbean!=null){
			 if(Userbean.getPassword().equals(password)){
				 	powerbean1=powerdao1.findbyjs(Userbean.getJuese());
				 	req.getSession().setAttribute("pp", powerbean1);
				 	req.getSession().setAttribute("userb", Userbean);
					resp.sendRedirect(req.getContextPath()+"/main.jsp");
			 }else{
				 resp.sendRedirect(req.getContextPath()+"/nlogin.jsp?status=1");
			 }
		 }else{
			 resp.sendRedirect(req.getContextPath()+"/create.jsp");
		 }
	}
}
