package nuc.ss.bean;

import java.io.Serializable;

public class Contract implements Serializable{

	private Integer id;
	private Integer deptId;
	private Integer jobId;
	private Integer statusId;
	private Integer empId;
	private Integer trainContractid;
	private Integer laborContractid;
	private String  createDate;
	private Integer confidentialityContractid;
	private String employeename;
	private String jobname;
	private String deptname;
	private String trainContractname;
	private String laborContractname;
	private String confidentialityContractname;
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
	public Integer getStatusId() {
		return statusId;
	}
	public void setStatusId(Integer statusId) {
		this.statusId = statusId;
	}
	public Integer getEmpId() {
		return empId;
	}
	public void setEmpId(Integer empId) {
		this.empId = empId;
	}
	public Integer getTrainContractid() {
		return trainContractid;
	}
	public void setTrainContractid(Integer trainContractid) {
		this.trainContractid = trainContractid;
	}
	public Integer getLaborContractid() {
		return laborContractid;
	}
	public void setLaborContractid(Integer laborContractid) {
		this.laborContractid = laborContractid;
	}
	public String getCreateDate() {
		return createDate;
	}
	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}
	public Integer getConfidentialityContractid() {
		return confidentialityContractid;
	}
	public void setConfidentialityContractid(Integer confidentialityContractid) {
		this.confidentialityContractid = confidentialityContractid;
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
	
	
	public String getTrainContractname() {
		return trainContractname;
	}
	public void setTrainContractname(String trainContractname) {
		this.trainContractname = trainContractname;
	}
	public String getLaborContractname() {
		return laborContractname;
	}
	public void setLaborContractname(String laborContractname) {
		this.laborContractname = laborContractname;
	}
	public String getConfidentialityContractname() {
		return confidentialityContractname;
	}
	public void setConfidentialityContractname(String confidentialityContractname) {
		this.confidentialityContractname = confidentialityContractname;
	}
	public Contract() {
		super();
	}
	public Contract(Integer id, Integer deptId, Integer jobId, Integer statusId, Integer empId, Integer trainContractid,
			Integer laborContractid, String createDate, Integer confidentialityContractid, String employeename,
			String jobname, String deptname) {
		super();
		this.id = id;
		this.deptId = deptId;
		this.jobId = jobId;
		this.statusId = statusId;
		this.empId = empId;
		this.trainContractid = trainContractid;
		this.laborContractid = laborContractid;
		this.createDate = createDate;
		this.confidentialityContractid = confidentialityContractid;
		this.employeename = employeename;
		this.jobname = jobname;
		this.deptname = deptname;
	}
	public Contract(Integer id, Integer deptId, Integer jobId, Integer statusId, Integer empId, Integer trainContractid,
			Integer laborContractid, String createDate, Integer confidentialityContractid, String employeename,
			String jobname, String deptname, String trainContractname, String laborContractname,
			String confidentialityContractname) {
		super();
		this.id = id;
		this.deptId = deptId;
		this.jobId = jobId;
		this.statusId = statusId;
		this.empId = empId;
		this.trainContractid = trainContractid;
		this.laborContractid = laborContractid;
		this.createDate = createDate;
		this.confidentialityContractid = confidentialityContractid;
		this.employeename = employeename;
		this.jobname = jobname;
		this.deptname = deptname;
		this.trainContractname = trainContractname;
		this.laborContractname = laborContractname;
		this.confidentialityContractname = confidentialityContractname;
	}
	
	
}
