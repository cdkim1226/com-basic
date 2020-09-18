package com.ncs.vo;

public class ReplyVO {

	private int rseq;
	private String rid;
	private String rcontent;
	private String rregdate;
	private String rupdatedate;
	private int rexist;
	private int seq;
	private String board;
	
	
	public int getRseq() {
		return rseq;
	}
	public void setRseq(int rseq) {
		this.rseq = rseq;
	}
	public String getRid() {
		return rid;
	}
	public void setRid(String rid) {
		this.rid = rid;
	}
	public String getRcontent() {
		return rcontent;
	}
	public void setRcontent(String rcontent) {
		this.rcontent = rcontent;
	}
	public String getRregdate() {
		return rregdate;
	}
	public void setRregdate(String rregdate) {
		this.rregdate = rregdate;
	}
	public String getRupdatedate() {
		return rupdatedate;
	}
	public void setRupdatedate(String rupdatedate) {
		this.rupdatedate = rupdatedate;
	}
	public int getRexist() {
		return rexist;
	}
	public void setRexist(int rexist) {
		this.rexist = rexist;
	}
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getBoard() {
		return board;
	}
	public void setBoard(String board) {
		this.board = board;
	}
	@Override
	public String toString() {
		return "ReplyVO [rseq=" + rseq + ", rid=" + rid + ", rcontent=" + rcontent + ", rregdate=" + rregdate
				+ ", rupdatedate=" + rupdatedate + ", rexist=" + rexist + ", seq=" + seq + ", board=" + board + "]";
	}
	
	
}
