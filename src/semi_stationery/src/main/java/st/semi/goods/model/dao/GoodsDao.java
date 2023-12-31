package st.semi.goods.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import st.semi.common.jdbc.JdbcTemplate;

import st.semi.goods.model.vo.GoodsVo;

public class GoodsDao {

	// 상품 다건 조회
	public List<GoodsVo> selectList(Connection conn) {
//		GOID    NOT NULL VARCHAR2(20)  
//		GONM    NOT NULL VARCHAR2(50)  
//		GOPRICE NOT NULL NUMBER        
//		GOIMG   NOT NULL VARCHAR2(100) 
//		GOTY    NOT NULL NUMBER(2)
		List<GoodsVo> result = new ArrayList<GoodsVo>();

		String query = "SELECT GOID,GONM, GOPRICE, GOIMG, GOTY "
				+ " FROM GOODS ";
		PreparedStatement pstmt = null;
		ResultSet rset = null;

		try {
			pstmt = conn.prepareStatement(query);
			rset = pstmt.executeQuery();

			while (rset.next() == true) {
				GoodsVo gvo = new GoodsVo(rset.getString("GOID"), rset.getString("GONM"), rset.getInt("GOPRICE"),
						rset.getString("GOIMG"), rset.getInt("GOTY"));
				result.add(gvo);

			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcTemplate.close(rset);
			JdbcTemplate.close(pstmt);
		}

		return result;
	}

	// 상품 1건 조회
	public GoodsVo selectOne(Connection conn, String goId) {
		System.out.println("[selectOne] goId: "+goId);
		GoodsVo result = null;

		String query = "SELECT GOID, GONM, GOPRICE, GOIMG, GOTY "
				+ " FROM GOODS "
				+ " WHERE GOID = ?";
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, goId);
			rset = pstmt.executeQuery();
			if (rset.next()) {

				result = new GoodsVo(rset.getString("GOID"), rset.getString("GONM"), rset.getInt("GOPRICE"),
						rset.getString("GOIMG"), rset.getInt("GOTY"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcTemplate.close(rset);
			JdbcTemplate.close(pstmt);
		}
		System.out.println("/"+result+"[SB1D]");
		return result;
	}
}
