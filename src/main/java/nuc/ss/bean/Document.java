package nuc.ss.bean;

import java.io.Serializable;

public class Document implements Serializable{

	private Integer id;
	private String title;
	private String filename;
	private String remark;
	private String createdate;
	private String username;
	private Integer userId;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public String getCreatedate() {
		return createdate;
	}
	public void setCreatedate(String createdate) {
		this.createdate = createdate;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	
	public Document() {
		super();
	}
	public Document(Integer id, String title, String filename, String remark, String createdate, String username,
			Integer userId) {
		super();
		this.id = id;
		this.title = title;
		this.filename = filename;
		this.remark = remark;
		this.createdate = createdate;
		this.username = username;
		this.userId = userId;
	}
	
}
