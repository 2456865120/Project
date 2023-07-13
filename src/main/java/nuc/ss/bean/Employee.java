package nuc.ss.bean;

import java.io.Serializable;

public class Employee implements Serializable{
	private Integer id;
	private Integer deptId;
	private Integer jobId;
	private String name;
	private String cardId;
	private String address;
	private String phone;
	private Integer sexId;
	private String sexname;
	private Integer educationId;
	private String creatTimeStr;
	private Integer userId;
	private String username;
	private String useremail;
	private String jobname;
	private String deptname;
	private String educationname;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getDeptId() {
		return deptId;
	}
	public void setDeptId(Integer deptId) {
		this.deptId = deptId;
	}
	public Integer getJobId() {
		return jobId;
	}
	public void setJobId(Integer jobId) {
		this.jobId = jobId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCardId() {
		return cardId;
	}
	public void setCardId(String cardId) {
		this.cardId = cardId;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public Integer getSexId() {
		return sexId;
	}
	public void setSexId(Integer sexId) {
		this.sexId = sexId;
	}
	public Integer getEducationId() {
		return educationId;
	}
	public void setEducationId(Integer educationId) {
		this.educationId = educationId;
	}
	public String getCreatTimeStr() {
		return creatTimeStr;
	}
	public void setCreatTimeStr(String creatTimeStr) {
		this.creatTimeStr = creatTimeStr;
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
	public String getUseremail() {
		return useremail;
	}
	public void setUseremail(String useremail) {
		this.useremail = useremail;
	}
	public String getJobname() {
		return jobname;
	}
	public void setJobname(String jobname) {
		this.jobname = jobname;
	}
	public String getDeptname() {
		return deptname;
	}
	public void setDeptname(String deptname) {
		this.deptname = deptname;
	}
	public String getEducationname() {
		return educationname;
	}
	public void setEducationname(String educationname) {
		this.educationname = educationname;
	}
	
	public Employee() {
		super();
	}
	
	
	public String getSexname() {
		return sexname;
	}
	public void setSexname(String sexname) {
		this.sexname = sexname;
	}
	public Employee(Integer id, String name, String cardId, String address, String phone, Integer sexId,
			String creatTimeStr, String username, String useremail, String jobname, String deptname,
			String educationname) {
		super();
		this.id = id;
		this.name = name;
		this.cardId = cardId;
		this.address = address;
		this.phone = phone;
		this.sexId = sexId;
		this.creatTimeStr = creatTimeStr;
		this.username = username;
		this.useremail = useremail;
		this.jobname = jobname;
		this.deptname = deptname;
		this.educationname = educationname;
	}
	public Employee(Integer id, Integer deptId, Integer jobId, String name, String cardId, String address,
			String phone, Integer sexId, Integer educationId, String creatTimeStr, Integer userId, String username,
			String useremail, String jobname, String deptname, String educationname) {
		super();
		this.id = id;
		this.deptId = deptId;
		this.jobId = jobId;
		this.name = name;
		this.cardId = cardId;
		this.address = address;
		this.phone = phone;
		this.sexId = sexId;
		this.educationId = educationId;
		this.creatTimeStr = creatTimeStr;
		this.userId = userId;
		this.username = username;
		this.useremail = useremail;
		this.jobname = jobname;
		this.deptname = deptname;
		this.educationname = educationname;
	}
	public Employee(Integer id, Integer deptId, Integer jobId, String name, String cardId, String address, String phone,
			Integer sexId, String sexname, Integer educationId, String creatTimeStr, Integer userId, String username,
			String useremail, String jobname, String deptname, String educationname) {
		super();
		this.id = id;
		this.deptId = deptId;
		this.jobId = jobId;
		this.name = name;
		this.cardId = cardId;
		this.address = address;
		this.phone = phone;
		this.sexId = sexId;
		this.sexname = sexname;
		this.educationId = educationId;
		this.creatTimeStr = creatTimeStr;
		this.userId = userId;
		this.username = username;
		this.useremail = useremail;
		this.jobname = jobname;
		this.deptname = deptname;
		this.educationname = educationname;
	}
	
	
	
	
}
