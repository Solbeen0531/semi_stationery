package st.semi.goods.model.vo;

public class GoodsVo {
//	GOID NOT NULL VARCHAR2(20) 
//	GONM NOT NULL VARCHAR2(50) 
//	GOTY          VARCHAR2(20)
	private String goId;
	private String goNm;
	private String goTy;
	
	@Override
	public String toString() {
		return "GoodsVo [goId=" + goId + ", goNm=" + goNm + ", goTy=" + goTy + "]";
	}

	public GoodsVo(String goId, String goNm, String goTy) {
		this.goId = goId;
		this.goNm = goNm;
		this.goTy = goTy;
	}

	public GoodsVo() {
		super();
	}

	public String getGoId() {
		return goId;
	}

	public void setGoId(String goId) {
		this.goId = goId;
	}

	public String getGoNm() {
		return goNm;
	}

	public void setGoNm(String goNm) {
		this.goNm = goNm;
	}

	public String getGoTy() {
		return goTy;
	}

	public void setGoTy(String goTy) {
		this.goTy = goTy;
	}
	
	
}
