package st.semi.goods.shop.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import st.semi.goods.model.service.GoodsService;
import st.semi.goods.model.vo.GoodsVo;

@WebServlet("/shop")
public class IntoAllmenuServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public IntoAllmenuServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		GoodsService service = new GoodsService();
		List<GoodsVo> volist = service.selectList();

		System.out.println("[SB2S]" + volist);
		if (volist != null) {
			request.setAttribute("goodslist", volist);
			request.getRequestDispatcher("/WEB-INF/view/shop/shop.jsp").forward(request, response);
		} else {
			request.getRequestDispatcher("/WEB-INF/view/searchFail.jsp").forward(request, response);
		}
	}

//	protected void doPost(HttpServletRequest request, HttpServletResponse response)
//			throws ServletException, IOException {
//		doGet(request, response);
//	}

}
