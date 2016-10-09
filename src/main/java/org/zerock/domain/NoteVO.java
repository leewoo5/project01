package org.zerock.domain;
import java.util.Date;
public class NoteVO {
	
	private Integer no;
	private String title;
	private String content;
	private String sender;
	private String senderid;
	private Boolean viewing;
	public String getSenderid() {
		return senderid;
	}
	public void setSenderid(String senderid) {
		this.senderid = senderid;
	}
	public Boolean getViewing() {
		return viewing;
	}
	public void setViewing(Boolean viewing) {
		this.viewing = viewing;
	}
	public Integer getNo() {
		return no;
	}
	public void setNo(Integer no) {
		this.no = no;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getSender() {
		return sender;
	}
	public void setSender(String sender) {
		this.sender = sender;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	private Date date;
	private String uname;
	@Override
	public String toString() {
		return "NoteVO [no=" + no + ", title=" + title + ", content="
				+ content + ", sender=" + sender + ", senderid=" + senderid + ", date=" + date
				+ ", uname=" + uname + "]";
	}
}
