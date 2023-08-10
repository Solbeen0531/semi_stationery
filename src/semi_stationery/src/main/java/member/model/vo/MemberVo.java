package member.model.vo;

public class MemberVo {
//	MID      NOT NULL VARCHAR2(20)   
//	MNIC     NOT NULL VARCHAR2(20)   
//	MPW      NOT NULL VARCHAR2(20)   
//	MADDRESS          VARCHAR2(1000) 
	private String mId;
	private String mNic;
	private String mPw;
	private String mAddress;
	
	@Override
	public String toString() {
		return "MemberVo [mId=" + mId + ", mNic=" + mNic + ", mPw=" + mPw + ", mAddress=" + mAddress + "]";
	}

	public MemberVo() {
		super();
	}

	public MemberVo(String mId, String mNic, String mPw, String mAddress) {
		this.mId = mId;
		this.mNic = mNic;
		this.mPw = mPw;
		this.mAddress = mAddress;
	}

	public String getmId() {
		return mId;
	}

	public void setmId(String mId) {
		this.mId = mId;
	}

	public String getmNic() {
		return mNic;
	}

	public void setmNic(String mNic) {
		this.mNic = mNic;
	}

	public String getmPw() {
		return mPw;
	}

	public void setmPw(String mPw) {
		this.mPw = mPw;
	}

	public String getmAddress() {
		return mAddress;
	}

	public void setmAddress(String mAddress) {
		this.mAddress = mAddress;
	}
	
	
}
