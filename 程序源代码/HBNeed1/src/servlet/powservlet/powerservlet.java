package servlet.powservlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.powerbean;
import dao.powerdao;

/**
 * Servlet implementation class powerservlet
 */
@WebServlet("/powerservlet")
public class powerservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		String method=req.getParameter("method");
		if(method.equals("qxgl")){
			qxgl(req,resp);
		}else if(method.equals("update")){
			update(req,resp);
		}
	}

	private void update(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		// TODO 自动生成的方法存根
		String juese=req.getParameter("juese");
		System.out.println("juese"+juese);
		String xqtianbao=req.getParameter("xqtianbao");
		String xqgl=req.getParameter("xqgl");
		String shenhe=req.getParameter("shenhe");
		String typefind=req.getParameter("typefind");
		String xinxigl=req.getParameter("xinxigl");
		String mimaxg=req.getParameter("mimaxg");
		String jsqx=req.getParameter("jsqx");
		String zhjs=req.getParameter("zhjs");
		String tjbb=req.getParameter("tjbb");
		powerbean powerbean1=new powerbean(juese,xqtianbao,xqgl,shenhe,typefind,xinxigl,mimaxg,jsqx,zhjs,tjbb);
		powerdao powerdao1=new powerdao();
		powerdao1.update(powerbean1);
		resp.sendRedirect(req.getContextPath() + "/powerservlet?method=qxgl");
	}

	private void qxgl(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		// TODO 自动生成的方法存根
		powerdao powerdao1=new powerdao();
		powerbean powerbean1=new powerbean();
		powerbean powerbean2=new powerbean();
		System.out.println("servlt");
		powerbean1=powerdao1.findbyjs("填报员");
		powerbean2=powerdao1.findbyjs("审核员");	
		try {
			req.getSession().setAttribute("p1", powerbean1);
			req.getSession().setAttribute("p2", powerbean2);
			req.getRequestDispatcher("qxgl.jsp").forward(req, resp);
		} catch (ServletException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}
	}

}
