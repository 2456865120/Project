package nuc.ss.bean;

import java.io.Serializable;

public class Train implements Serializable{

	private Integer id;
	private Integer empId;
	private Integer deptId;
	private Integer jobId;
	private String content;
	private String startdata;
	private String enddata;
	private Integer totallength;
	private Integer completion;
	private Integer grade;
	private String traintime;
	private String employeename;
	private String jobname;
	private String deptname;
	private String completionname;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getEmpId() {
		return empId;
	}
	public void setEmpId(Integer empId) {
		this.empId = empId;
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
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getStartdata() {
		return startdata;
	}
	public void setStartdata(String startdata) {
		this.startdata = startdata;
	}
	public String getEnddata() {
		return enddata;
	}
	public void setEnddata(String enddata) {
		this.enddata = enddata;
	}
	public Integer getTotallength() {
		return totallength;
	}
	public void setTotallength(Integer totallength) {
		this.totallength = totallength;
	}
	public Integer getCompletion() {
		return completion;
	}
	public void setCompletion(Integer completion) {
		this.completion = completion;
	}
	public Integer getGrade() {
		return grade;
	}
	public void setGrade(Integer grade) {
		this.grade = grade;
	}
	public String getTraintime() {
		return traintime;
	}
	public void setTraintime(String traintime) {
		this.traintime = traintime;
	}
	public String getEmployeename() {
		return employeename;
	}
	public void setEmployeename(String employeename) {
		this.employeename = employeename;
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
	public String getCompletionname() {
		return completionname;
	}
	public void setCompletionname(String completionname) {
		this.completionname = completionname;
	}
	
	
	public Train() {
		super();
	}
	public Train(Integer id, Integer empId, Integer deptId, Integer jobId, String content, String startdata,
			String enddata, Integer totallength, Integer completion, Integer grade, String traintime,
			String employeename, String jobname, String deptname, String completionname) {
		super();
		this.id = id;
		this.empId = empId;
		this.deptId = deptId;
		this.jobId = jobId;
		this.content = content;
		this.startdata = startdata;
		this.enddata = enddata;
		this.totallength = totallength;
		this.completion = completion;
		this.grade = grade;
		this.traintime = traintime;
		this.employeename = employeename;
		this.jobname = jobname;
		this.deptname = deptname;
		this.completionname = completionname;
	}
	
	
}
