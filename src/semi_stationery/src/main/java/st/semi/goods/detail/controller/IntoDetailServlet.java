package st.semi.goods.detail.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import st.semi.goods.model.service.GoodsService;
import st.semi.goods.model.vo.GoodsVo;

@WebServlet("/intodetail")
public class IntoDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private GoodsService service = new GoodsService();

	public IntoDetailServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String goodsId = request.getParameter("goId");
		System.out.println("[SB1ids]" + goodsId);
		GoodsVo result = service.selectOne(goodsId);
		System.out.println("[SB2ids]" + result);
		
		if (result != null) {
			request.setAttribute("gid", result);
			request.getRequestDispatcher("/WEB-INF/view/shop/detailGoods.jsp").forward(request, response);
		} else {
			request.getRequestDispatcher("/WEB-INF/view/searchFail.jsp").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
