package db_connect;

public class MovieVO {
	private String IMG;
	private String NAME;
	private String CONTENT;
	private String RATE;
	private String RUNNING;
	private String CODE;
	
	public String getIMG() {
		return IMG;
	}
	public void setIMG(String iMG) {
		IMG = iMG;
	}
	public String getCODE() {
		return CODE;
	}
	public void setCODE(String cODE) {
		CODE = cODE;
	}
	public String getNAME() {
		return NAME;
	}
	public void setNAME(String nAME) {
		NAME = nAME;
	}
	public String getCONTENT() {
		return CONTENT;
	}
	public void setCONTENT(String cONTENT) {
		CONTENT = cONTENT;
	}
	public String getRATE() {
		return RATE;
	}
	public void setRATE(String rATE) {
		RATE = rATE;
	}
	public String getRUNNING() {
		return RUNNING;
	}
	public void setRUNNING(String rUNNING) {
		RUNNING = rUNNING;
	}
	@Override
	public String toString() {
		return "MovieVO [IMG=" + IMG + ", NAME=" + NAME + ", CONTENT=" + CONTENT + ", RATE=" + RATE + ", RUNNING="
				+ RUNNING + ", CODE=" + CODE + "]";
	}
	
	
}
