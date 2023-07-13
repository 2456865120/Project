package nuc.ss.bean;

import java.io.Serializable;

public class Leave implements Serializable{

	private Integer id;
	private Integer empId;
	private Integer deptId;
	private Integer jobId;
	private String startdata;
	private String enddata;
	private String leavedays;
	private Integer leavetype;
	private String content;
	private Integer leavestatus;
	private String leavetime;
	private String employeename;
	private String jobname;
	private String deptname;
	private String leavetypename;
	private String leavestatusname;
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
	public String getLeavedays() {
		return leavedays;
	}
	public void setLeavedays(String leavedays) {
		this.leavedays = leavedays;
	}
	public Integer getLeavetype() {
		return leavetype;
	}
	public void setLeavetype(Integer leavetype) {
		this.leavetype = leavetype;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Integer getLeavestatus() {
		return leavestatus;
	}
	public void setLeavestatus(Integer leavestatus) {
		this.leavestatus = leavestatus;
	}
	public String getLeavetime() {
		return leavetime;
	}
	public void setLeavetime(String leavetime) {
		this.leavetime = leavetime;
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
	public String getLeavetypename() {
		return leavetypename;
	}
	public void setLeavetypename(String leavetypename) {
		this.leavetypename = leavetypename;
	}
	public String getLeavestatusname() {
		return leavestatusname;
	}
	public void setLeavestatusname(String leavestatusname) {
		this.leavestatusname = leavestatusname;
	}
	
	public Leave() {
		super();
	}
	public Leave(Integer id, Integer empId, Integer deptId, Integer jobId, String startdata, String enddata,
			String leavedays, Integer leavetype, String content, Integer leavestatus, String leavetime,
			String employeename, String jobname, String deptname, String leavetypename, String leavestatusname) {
		super();
		this.id = id;
		this.empId = empId;
		this.deptId = deptId;
		this.jobId = jobId;
		this.startdata = startdata;
		this.enddata = enddata;
		this.leavedays = leavedays;
		this.leavetype = leavetype;
		this.content = content;
		this.leavestatus = leavestatus;
		this.leavetime = leavetime;
		this.employeename = employeename;
		this.jobname = jobname;
		this.deptname = deptname;
		this.leavetypename = leavetypename;
		this.leavestatusname = leavestatusname;
	}
	
}
