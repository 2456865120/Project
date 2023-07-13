package nuc.ss.bean;

import java.io.Serializable;

public class Checkwork implements Serializable{

	private Integer id;
	private Integer deptId;
	private Integer jobId;
	private Integer empId;
	private Integer workingdays;
	private Integer daysleave;
	private Integer daysout;
	private String creatdate;
	private String employeename;
	private String jobname;
	private String deptname;
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
	public Integer getEmpId() {
		return empId;
	}
	public void setEmpId(Integer empId) {
		this.empId = empId;
	}
	public Integer getWorkingdays() {
		return workingdays;
	}
	public void setWorkingdays(Integer workingdays) {
		this.workingdays = workingdays;
	}
	public Integer getDaysleave() {
		return daysleave;
	}
	public void setDaysleave(Integer daysleave) {
		this.daysleave = daysleave;
	}
	public Integer getDaysout() {
		return daysout;
	}
	public void setDaysout(Integer daysout) {
		this.daysout = daysout;
	}
	public String getCreatdate() {
		return creatdate;
	}
	public void setCreatdate(String creatdate) {
		this.creatdate = creatdate;
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
	
	
	public Checkwork() {
		super();
	}
	public Checkwork(Integer id, Integer deptId, Integer jobId, Integer empId, Integer workingdays, Integer daysleave,
			Integer daysout, String creatdate, String employeename, String jobname, String deptname) {
		super();
		this.id = id;
		this.deptId = deptId;
		this.jobId = jobId;
		this.empId = empId;
		this.workingdays = workingdays;
		this.daysleave = daysleave;
		this.daysout = daysout;
		this.creatdate = creatdate;
		this.employeename = employeename;
		this.jobname = jobname;
		this.deptname = deptname;
	}
	
	
}
