package nuc.ss.bean;

import java.io.Serializable;

public class User_inf implements Serializable{
	private Integer id;
	private String loginname;
	private String password;
	private String email;
	private Integer statusId;//״̬id
	private String createdate;//����ʱ��
	private String username;
	private Integer empId;
	private Integer cheId;
	private Integer conId;
	private Integer salId;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getLoginname() {
		return loginname;
	}
	public void setLoginname(String loginname) {
		this.loginname = loginname;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Integer getStatusId() {
		return statusId;
	}
	public void setStatusId(Integer statusId) {
		this.statusId = statusId;
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
	public Integer getEmpId() {
		return empId;
	}
	public void setEmpId(Integer empId) {
		this.empId = empId;
	}
	public Integer getCheId() {
		return cheId;
	}
	public void setCheId(Integer cheId) {
		this.cheId = cheId;
	}
	public Integer getConId() {
		return conId;
	}
	public void setConId(Integer conId) {
		this.conId = conId;
	}
	public Integer getSalId() {
		return salId;
	}
	public void setSalId(Integer salId) {
		this.salId = salId;
	}
	
	public User_inf() {
		super();
	}
	public User_inf(Integer id, String loginname, String password, String email, Integer statusId, String createdate,
			String username, Integer empId, Integer cheId, Integer conId, Integer salId) {
		super();
		this.id = id;
		this.loginname = loginname;
		this.password = password;
		this.email = email;
		this.statusId = statusId;
		this.createdate = createdate;
		this.username = username;
		this.empId = empId;
		this.cheId = cheId;
		this.conId = conId;
		this.salId = salId;
	}
	
	
	
}
