package st.semi.goods.model.service;

import st.semi.common.jdbc.JdbcTemplate;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;
import st.semi.goods.model.dao.GoodsDao;
import st.semi.goods.model.vo.GoodsVo;


public class GoodsService {
	private GoodsDao dao = new GoodsDao();
	
	// 상품 전체 조회
	public List<GoodsVo> selectList(String goTyName) throws SQLException {
		List<GoodsVo> result = null;
		Connection conn = JdbcTemplate.getConnection();
		result = dao.selectList(conn, goTyName);
		JdbcTemplate.close(conn);
		return result;		
	}
	
	// 상품 1건 조회
	public GoodsVo selectOne(int goTy) {
		GoodsVo result = null;
		Connection conn = JdbcTemplate.getConnection();
		result = dao.selectOne(conn, goTy);
		JdbcTemplate.close(conn);
		return result;

	}

}
