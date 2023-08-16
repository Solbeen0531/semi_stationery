package st.semi.goods.model.service;

import st.semi.common.jdbc.JdbcTemplate;
import java.sql.Connection;
import java.util.List;
import st.semi.goods.model.dao.GoodsDao;
import st.semi.goods.model.vo.GoodsVo;


public class GoodsService {
	private GoodsDao dao = new GoodsDao();
	
	// 상품 전체 조회
	public List<GoodsVo> selectList(){
		List<GoodsVo> result = null;
		Connection conn = JdbcTemplate.getConnection();
		result = dao.selectList(conn);
		JdbcTemplate.close(conn);
		return result;		
	}
	
	// 상품 1건 조회
	public GoodsVo selectOne(String goId) {
		GoodsVo result = null;
		Connection conn = JdbcTemplate.getConnection();
		result = dao.selectOne(conn, goId);
		JdbcTemplate.close(conn);
		return result;

	}

}
