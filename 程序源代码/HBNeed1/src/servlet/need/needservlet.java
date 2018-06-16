package servlet.need;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSON;

import bean.needbean;
import bean.selectbean;
import dao.needdao;

/**
 * Servlet implementation class needservlet
 */
@WebServlet("/needservlet")
public class needservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		req.setCharacterEncoding("utf-8");
		String method = req.getParameter("method");
		if (method.equals("add")) {
			add(req, resp);
		} else if (method.equals("find")) {
			find(req, resp);
		} else if (method.equals("getbyid")) {
			getbyid(req, resp);
		} else if (method.equals("typefind")) {
			typefind(req, resp);
		} else if (method.equals("getbyid1")) {
			getbyid1(req, resp);
		}else if (method.equals("getbyid2")) {
			getbyid2(req, resp);
		}else if (method.equals("change")) {
			change(req, resp);
		}else if (method.equals("findno")) {
			findno(req, resp);
		}else if (method.equals("getbyid3")) {
			getbyid3(req, resp);
		}else if (method.equals("getbyid4")) {
			getbyid4(req, resp);
		}else if (method.equals("shenhe")) {
			shenhe(req, resp);
		}else if (method.equals("select")) {
			select(req, resp);
		}else if (method.equals("display")) {
			try {
				display(req, resp);
			} catch (Exception e) {
				// TODO �Զ����ɵ� catch ��
				e.printStackTrace();
			}
		}
	}

	private void display(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		// TODO �Զ����ɵķ������	
		needdao needdao1 = new needdao();
		int duli = needdao1.typenum("��������");
		int weituo = needdao1.typenum("ί���з�");
		int hezuo = needdao1.typenum("�����з�");
		int qita = needdao1.typenum("����");
		String num = "";
		num += ""+duli+","+weituo+","+hezuo+","+qita;
		
		PrintWriter out = resp.getWriter();
		out.print(JSON.toJSONString(num));
		out.flush();
		out.close();

	}
	private void select(HttpServletRequest req, HttpServletResponse resp) {
		// TODO �Զ����ɵķ������
		String tiaojian1=req.getParameter("tiaojian1");
		String tiaojian2=req.getParameter("tiaojian2");
		String tiaojian3=req.getParameter("tiaojian3");
		String qh2=req.getParameter("qh2");
		String qh3=req.getParameter("qh3");
		String select1=req.getParameter("select1");
		String select2=req.getParameter("select2");
		String select3=req.getParameter("select3");
		selectbean selectbean1=new selectbean();
		selectbean1.setTj1(tiaojian1);
		selectbean1.setTj2(select1);
		selectbean1.setTj3(qh2);
		selectbean1.setTj4(tiaojian2);
		selectbean1.setTj5(select2);
		selectbean1.setTj6(qh3);
		selectbean1.setTj7(tiaojian3);
		selectbean1.setTj8(select3);
		
		needdao needdao1=new needdao();
		
		List<needbean> needbean1=needdao1.select(selectbean1);
		System.out.println("needbean1"+needbean1);
		if(needbean1!=null){
		req.setAttribute("c", needbean1);
		}
		try {
			req.getRequestDispatcher("select.jsp").forward(req, resp);
		} catch (Exception e) {

			e.printStackTrace();
		}
	}


	private void shenhe(HttpServletRequest req, HttpServletResponse resp) {
		// TODO �Զ����ɵķ������
		String id1 = req.getParameter("id");
		int id = Integer.parseInt(id1);
		System.out.println("id"+id);	
		int status=-1;
		String status1=req.getParameter("passj");
		System.out.println("status"+status1);
		if(status1.equals("ͨ��")){status=1;};
		if(status1.equals("��ͨ��")){status=2;};
		needdao needDao = new needdao();
			
			needDao.findbyid3(id,status);
			try {
				resp.sendRedirect(req.getContextPath() + "/needservlet?method=findno");
			} catch (Exception e) {

				e.printStackTrace();
			}
	}

	private void getbyid4(HttpServletRequest req, HttpServletResponse resp) {
		// TODO �Զ����ɵķ������
		String id1 = req.getParameter("id");
		int id = Integer.parseInt(id1);
		needdao needDao = new needdao();
		needbean needBean = new needbean();
		needBean = needDao.findbyid(id);
		req.setAttribute("b", needBean);
		try {		
				req.getRequestDispatcher("cretejudge.jsp").forward(req, resp);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	private void getbyid3(HttpServletRequest req, HttpServletResponse resp) {
		// TODO �Զ����ɵķ������
		String id1 = req.getParameter("id");
		int id = Integer.parseInt(id1);
		String status1=req.getParameter("status");
		int status=Integer.parseInt(status1);
		needdao needDao = new needdao();
			
			needDao.findbyid3(id,status);
			try {
				resp.sendRedirect(req.getContextPath() + "/needservlet?method=findno");
			} catch (Exception e) {

				e.printStackTrace();
			}
	}

	private void findno(HttpServletRequest req, HttpServletResponse resp) {
		// TODO �Զ����ɵķ������
		needdao needDao = new needdao();
		List<needbean> needBean = needDao.findno();

		req.setAttribute("c", needBean);
		try {
			req.getRequestDispatcher("select.jsp").forward(req, resp);
		} catch (Exception e) {

			e.printStackTrace();
		}
	}

	private void change(HttpServletRequest req, HttpServletResponse resp) throws ServletException {
		// TODO �Զ����ɵķ������
		String id1=req.getParameter("id");
		System.out.println("id1"+id1);
		int id=Integer.parseInt(id1);
		String name = req.getParameter("name");
		String bumen = req.getParameter("bumen");
		String txaddress = req.getParameter("txaddress");
		String diyu = req.getParameter("diyu");

		String danweiwz = req.getParameter("danweiwz");

		String email = req.getParameter("email");
		String daibiao = req.getParameter("daibiao");
		String bianma = req.getParameter("bianma");
		String lianxi = req.getParameter("lianxi");
		String dianhua = req.getParameter("dianhua");
		String phone = req.getParameter("phone");
		String chuanzhen = req.getParameter("chuanzhen");
		String jigou = req.getParameter("jigou");

		String info = req.getParameter("info");
		String needname = req.getParameter("needname");
		String begin = req.getParameter("begin");
		System.out.println("bgin"+begin);
		String end = req.getParameter("end");
		String info1 = req.getParameter("info1");
		String type = req.getParameter("type");
		type.trim();
		System.out.println("type"+type);
		
		String key1 = req.getParameter("key1");
		String key2 = req.getParameter("key2");
		String key3 = req.getParameter("key3");
		String key4 = req.getParameter("key4");
		String key5 = req.getParameter("key5");
		String key = key1 + "," + key2 + "," + key3 + "," + key4 + "," + key5;
		String money = req.getParameter("money");
		
		System.out.println("money"+money);
		String xuekeda = req.getParameter("xuekeda");
		String xuekexiao=req.getParameter("xuekexiao");
		String[] lingyu1 = req.getParameterValues("lingyu");
		String daye = req.getParameter("daye");
		if (daye.equals("0")) {
			daye = "ũ������ҵ";
		} else if (daye.equals("1")) {
			daye = "�ɿ�ҵ";
		} else if (daye.equals("2")) {
			daye = "����ҵ";
		} else if (daye.equals("3")) {
			daye = "����ҵ";
		} else if (daye.equals("4")) {
			daye = "��������ҵ";
		}
		if (xuekeda.equals("0")) {
			xuekeda = "��ѧ��";
		} else if (xuekeda.equals("1")) {
			xuekeda = "Ӣ����";
		} else if (xuekeda.equals("2")) {
			xuekeda = "��ѧ��";
		} 
		String xiaoye = req.getParameter("xiaoye");
		String qtjishu = req.getParameter("qtjishu");

		String model = req.getParameter("model");

		String lingyu = "";
		if (lingyu1 != null && !"".equals(lingyu1)) {
			for (String s : lingyu1) {
				if (s != null) {
					if ("".equals(lingyu)) {
						lingyu = s;
					} else {
						lingyu += "," + s;
					}
				}
			}
		}

		needbean Needbean = new needbean();
		Needbean.setId(id);
		Needbean.setBegin(begin);
		Needbean.setEnd(end);
		Needbean.setKeys(key);
		Needbean.setName(name);
		Needbean.setBumen(bumen);
		Needbean.setTxaddress(txaddress);
		Needbean.setDiyu(diyu);
		Needbean.setDanweiwz(danweiwz);
		Needbean.setEmail(email);
		Needbean.setDaibiao(daibiao);
		Needbean.setBianma(bianma);
		Needbean.setLianxi(lianxi);
		Needbean.setDianhua(dianhua);
		Needbean.setPhone(phone);
		Needbean.setChuanzhen(chuanzhen);
		Needbean.setJigou(jigou);
		Needbean.setInfo(info);
		Needbean.setInfo1(info1);
		Needbean.setNeedname(needname);
		Needbean.setType(type);
		Needbean.setModel(model);
		Needbean.setXuekeda(xuekeda);
		Needbean.setXuekexiao(xuekexiao);
		Needbean.setLingyu(lingyu);
		Needbean.setDaye(daye);
		Needbean.setXiaoye(xiaoye);
		Needbean.setQtjishu(qtjishu);
		Needbean.setMoney(money);

		needdao Needdao = new needdao();
		Needdao.change(Needbean);
	
		req.setAttribute("msg", "�޸ĳɹ�");
		try {
			//resp.sendRedirect(req.getContextPath() + "/needservlet?method=find");
			req.getRequestDispatcher("change.jsp").forward(req, resp);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	private void getbyid2(HttpServletRequest req, HttpServletResponse resp) {
		// TODO �Զ����ɵķ������
		String id1 = req.getParameter("id");
		int id = Integer.parseInt(id1);
		needdao needDao = new needdao();
		needbean needBean = new needbean();
		needBean = needDao.findbyid(id);
		req.setAttribute("b", needBean);
		try {
			if (needBean.getStatus() == 0) {
				
				req.getRequestDispatcher("change.jsp").forward(req, resp);
				System.out.println(needBean);
			} 
			else {
				req.getRequestDispatcher("lists.jsp").forward(req, resp);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	private void getbyid1(HttpServletRequest req, HttpServletResponse resp) {
		// TODO �Զ����ɵķ������
		String id1 = req.getParameter("id");
		int id = Integer.parseInt(id1);
		needdao needDao = new needdao();
			needDao.findbyid1(id);
			try {
				resp.sendRedirect(req.getContextPath() + "/needservlet?method=find");
			} catch (Exception e) {

				e.printStackTrace();
			}
	}

	private void typefind(HttpServletRequest req, HttpServletResponse resp) {
		// TODO �Զ����ɵķ������
		String type = req.getParameter("value");
		String xuekeda = req.getParameter("xuekeda");
		String xuekexiao=req.getParameter("xuekexiao");
		String daye = req.getParameter("daye");
		String xiaoye = req.getParameter("xiaoye");
		System.out.println("type" + type);
		System.out.println("xuekeda" + xuekeda);
		needdao needDao = new needdao();
		List<needbean> needBean = new ArrayList<>();
		if (type.equals("�����о�")) {
			if (xuekeda != null&&xuekexiao!=null) {
				needBean = needDao.findjj(type, xuekeda,xuekexiao);
			} else if(xuekeda != null&&xuekexiao==null){
				needBean = needDao.findjc(type, xuekeda);
			}
			
			else {
				needBean = needDao.findpt(type);
			}
			req.setAttribute("c", needBean);
			try {
				req.getRequestDispatcher("list.jsp").forward(req, resp);
			} catch (Exception e) {

				e.printStackTrace();
			}
		} else if (type.equals("�����Ի")) {
			System.out.println("daye"+daye);
			if (daye != null && xiaoye != null) {
				needBean = needDao.findqt(type, daye, xiaoye);
			}
			if (daye == null) {
				needBean = needDao.findpt(type);
			}
			if (daye != null && xiaoye == null) {
				needBean = needDao.finddaye(type, daye);
			}
			req.setAttribute("c", needBean);
			try {
				req.getRequestDispatcher("list.jsp").forward(req, resp);
			} catch (Exception e) {

				e.printStackTrace();
			}
		} else {
			needBean = needDao.findpt(type);
			System.out.println("ttype" + type);
			req.setAttribute("c", needBean);
			try {
				req.getRequestDispatcher("list.jsp").forward(req, resp);
			} catch (Exception e) {

				e.printStackTrace();
			}
		}

	}

	private void getbyid(HttpServletRequest req, HttpServletResponse resp) {
		// TODO �Զ����ɵķ������
		String id1 = req.getParameter("id");
		int id = Integer.parseInt(id1);
		needdao needDao = new needdao();
		needbean needBean = new needbean();
		needBean = needDao.findbyid(id);
		req.setAttribute("b", needBean);
		try {
			if (needBean.getStatus() == 0) {
				
				req.getRequestDispatcher("lists.jsp").forward(req, resp);
			} 
			else {
				req.getRequestDispatcher("lists.jsp").forward(req, resp);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	private void find(HttpServletRequest req, HttpServletResponse resp) {
		// TODO �Զ����ɵķ������
		needdao needDao = new needdao();
		List<needbean> needBean = needDao.find();

		req.setAttribute("c", needBean);
		try {
			req.getRequestDispatcher("list.jsp").forward(req, resp);
		} catch (Exception e) {

			e.printStackTrace();
		}
	}

	private void add(HttpServletRequest req, HttpServletResponse resp) {
		// TODO �Զ����ɵķ������
		String name = req.getParameter("name");
		String bumen = req.getParameter("bumen");
		String txaddress = req.getParameter("txaddress");
		String diyu = req.getParameter("diyu");

		String danweiwz = req.getParameter("danweiwz");

		String email = req.getParameter("email");
		String daibiao = req.getParameter("daibiao");
		String bianma = req.getParameter("bianma");
		String lianxi = req.getParameter("lianxi");
		String dianhua = req.getParameter("dianhua");
		String phone = req.getParameter("phone");
		String chuanzhen = req.getParameter("chuanzhen");
		String jigou = req.getParameter("jigou");

		String info = req.getParameter("info");
		String needname = req.getParameter("needname");
		String begin = req.getParameter("begin");
		System.out.println("bgin"+begin);
		String end = req.getParameter("end");
		String info1 = req.getParameter("info1");
		String type = req.getParameter("type");
		String key1 = req.getParameter("key1");
		String key2 = req.getParameter("key2");
		String key3 = req.getParameter("key3");
		String key4 = req.getParameter("key4");
		String key5 = req.getParameter("key5");
		String key = key1 + "," + key2 + "," + key3 + "," + key4 + "," + key5;
		String money = req.getParameter("money");
		String xuekeda = req.getParameter("xuekeda");
		String xuekexiao=req.getParameter("xuekexiao");
		String[] lingyu1 = req.getParameterValues("lingyu");
		String daye = req.getParameter("daye");
		if (daye.equals("0")) {
			daye = "ũ������ҵ";
		} else if (daye.equals("1")) {
			daye = "�ɿ�ҵ";
		} else if (daye.equals("2")) {
			daye = "����ҵ";
		} else if (daye.equals("3")) {
			daye = "����ҵ";
		} else if (daye.equals("4")) {
			daye = "��������ҵ";
		}
		if (xuekeda.equals("0")) {
			xuekeda = "��ѧ��";
		} else if (xuekeda.equals("1")) {
			xuekeda = "Ӣ����";
		} else if (xuekeda.equals("2")) {
			xuekeda = "��ѧ��";
		}  
		String xiaoye = req.getParameter("xiaoye");
		String qtjishu = req.getParameter("qtjishu");

		String model = req.getParameter("model");

		String lingyu = "";
		if (lingyu1 != null && !"".equals(lingyu1)) {
			for (String s : lingyu1) {
				if (s != null) {
					if ("".equals(lingyu)) {
						lingyu = s;
					} else {
						lingyu += "," + s;
					}
				}
			}
		}

		needbean Needbean = new needbean();
		Needbean.setBegin(begin);
		Needbean.setEnd(end);
		Needbean.setXuekexiao(xuekexiao);
		Needbean.setKeys(key);
		Needbean.setName(name);
		Needbean.setBumen(bumen);
		Needbean.setTxaddress(txaddress);
		Needbean.setDiyu(diyu);
		Needbean.setDanweiwz(danweiwz);
		Needbean.setEmail(email);
		Needbean.setDaibiao(daibiao);
		Needbean.setBianma(bianma);
		Needbean.setLianxi(lianxi);
		Needbean.setDianhua(dianhua);
		Needbean.setPhone(phone);
		Needbean.setChuanzhen(chuanzhen);
		Needbean.setJigou(jigou);
		Needbean.setInfo(info);
		Needbean.setInfo1(info1);
		Needbean.setNeedname(needname);
		Needbean.setType(type);
		Needbean.setModel(model);
		Needbean.setXuekeda(xuekeda);
		Needbean.setXuekexiao(xuekexiao);
		Needbean.setLingyu(lingyu);
		Needbean.setDaye(daye);
		Needbean.setXiaoye(xiaoye);
		Needbean.setQtjishu(qtjishu);
		Needbean.setMoney(money);

		needdao Needdao = new needdao();
		Needdao.add(Needbean);

		req.setAttribute("msg", "��ӳɹ�");
		try {
			req.getRequestDispatcher("need.jsp").forward(req, resp);
		} catch (ServletException | IOException e) {
			e.printStackTrace();
		}

	}
}
