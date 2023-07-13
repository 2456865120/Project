package nuc.ss.bean;

import java.io.Serializable;

public class Salary implements Serializable{

	private Integer id;
	private Integer deptId;
	private Integer jobId;
	private Integer empId;
	private Integer salaryStation;
	private Integer salaryLevel;
	private Integer seniorityPay;
	private Integer performance;
	private double individualIncome;
	private String employeename;
	private String createDate;
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
	public Integer getSalaryStation() {
		return salaryStation;
	}
	public void setSalaryStation(Integer salaryStation) {
		this.salaryStation = salaryStation;
	}
	public Integer getSalaryLevel() {
		return salaryLevel;
	}
	public void setSalaryLevel(Integer salaryLevel) {
		this.salaryLevel = salaryLevel;
	}
	public Integer getSeniorityPay() {
		return seniorityPay;
	}
	public void setSeniorityPay(Integer seniorityPay) {
		this.seniorityPay = seniorityPay;
	}
	public Integer getPerformance() {
		return performance;
	}
	public void setPerformance(Integer performance) {
		this.performance = performance;
	}
	public double getIndividualIncome() {
		return individualIncome;
	}
	public void setIndividualIncome(double individualIncome) {
		this.individualIncome = individualIncome;
	}
	public String getEmployeename() {
		return employeename;
	}
	public void setEmployeename(String employeename) {
		this.employeename = employeename;
	}
	public String getCreateDate() {
		return createDate;
	}
	public void setCreateDate(String createDate) {
		this.createDate = createDate;
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
	public Salary() {
		super();
	}
	public Salary(Integer id, Integer deptId, Integer jobId, Integer empId, Integer salaryStation, Integer salaryLevel,
			Integer seniorityPay, Integer performance, double individualIncome, String employeename, String createDate,
			String jobname, String deptname) {
		super();
		this.id = id;
		this.deptId = deptId;
		this.jobId = jobId;
		this.empId = empId;
		this.salaryStation = salaryStation;
		this.salaryLevel = salaryLevel;
		this.seniorityPay = seniorityPay;
		this.performance = performance;
		this.individualIncome = individualIncome;
		this.employeename = employeename;
		this.createDate = createDate;
		this.jobname = jobname;
		this.deptname = deptname;
	}
	
	
}
