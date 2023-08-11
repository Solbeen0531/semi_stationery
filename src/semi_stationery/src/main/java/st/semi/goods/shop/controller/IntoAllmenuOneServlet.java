package st.semi.goods.shop.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import st.semi.goods.model.service.GoodsService;
import st.semi.goods.model.vo.GoodsVo;


@WebServlet("/shop/one")
public class IntoAllmenuOneServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private GoodsService service = new GoodsService();
	
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String goTyStr = request.getParameter("goTy");
		int goTy = 0;
		try {
			goTy = Integer.parseInt(goTyStr);
		} catch (NumberFormatException e) {
			e.printStackTrace();
		}
		GoodsVo result = service.selectOne(goTy);

		if (result != null) {
			request.setAttribute("gvo", result);
			request.getRequestDispatcher("/WEB-INF/view/shop/oneshop.jsp").forward(request, response);
		} else {
			request.getRequestDispatcher("/WEB-INF/views/searchFail.jsp").forward(request, response);
		}
	}

}
