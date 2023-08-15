package st.semi.goods.model.vo;

public class GoodsVo {
//	GOID    NOT NULL VARCHAR2(20)  
//	GONM    NOT NULL VARCHAR2(50)  
//	GOPRICE NOT NULL NUMBER        
//	GOIMG   NOT NULL VARCHAR2(100) 
//	GOTY    NOT NULL NUMBER(2)
	private String goId;
	private String goNm;
	private int goPrice;
	private String goImg;
	private int goTy;

	@Override
	public String toString() {
		return "GoodsVo [goId=" + goId + ", goNm=" + goNm + ", goPrice=" + goPrice + ", goImg=" + goImg + ", goTy="
				+ goTy + "]";
	}

	public GoodsVo(String goId, String goNm, int goPrice, String goImg, int goTy) {
		this.goId = goId;
		this.goNm = goNm;
		this.goPrice = goPrice;
		this.goImg = goImg;
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

	public int getGoPrice() {
		return goPrice;
	}

	public void setGoPrice(int goPrice) {
		this.goPrice = goPrice;
	}

	public String getGoImg() {
		return goImg;
	}

	public void setGoImg(String goImg) {
		this.goImg = goImg;
	}

	public int getGoTy() {
		return goTy;
	}

	public void setGoTy(int goTy) {
		this.goTy = goTy;
	}

}
