package nuc.ss.bean;

import java.io.Serializable;

public class Notice implements Serializable{
	private Integer id;
	private String title;
	private String content;
	private String createdate;
	private Integer userId;
	private String username;
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
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getCreatedate() {
		return createdate;
	}
	public void setCreatedate(String createdate) {
		this.createdate = createdate;
	}
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	
	public Notice() {
		super();
	}
	
	public Notice(Integer id, String title, String content, String createdate, String username) {
		super();
		this.id = id;
		this.title = title;
		this.content = content;
		this.createdate = createdate;
		this.username = username;
	}
	public Notice(Integer id, String title, String content, String createdate, Integer userId, String username) {
		super();
		this.id = id;
		this.title = title;
		this.content = content;
		this.createdate = createdate;
		this.userId = userId;
		this.username = username;
	}
	
	
}
