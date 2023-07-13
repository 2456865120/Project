package nuc.ss.bean;

import java.io.Serializable;

public class UserVisit implements Serializable{
	private Integer id;
	private String loginname;
	private String loginTime;
	private String exitTime;
	private String visitIp;
	private String iphone;
	private String browser;
	private String system;
	private String version;
	private String userAddress;
	private String userFrom;
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
	public String getLoginTime() {
		return loginTime;
	}
	public void setLoginTime(String loginTime) {
		this.loginTime = loginTime;
	}
	public String getExitTime() {
		return exitTime;
	}
	public void setExitTime(String exitTime) {
		this.exitTime = exitTime;
	}
	public String getVisitIp() {
		return visitIp;
	}
	public void setVisitIp(String visitIp) {
		this.visitIp = visitIp;
	}
	public String getIphone() {
		return iphone;
	}
	public void setIphone(String iphone) {
		this.iphone = iphone;
	}
	public String getBrowser() {
		return browser;
	}
	public void setBrowser(String browser) {
		this.browser = browser;
	}
	public String getSystem() {
		return system;
	}
	public void setSystem(String system) {
		this.system = system;
	}
	public String getVersion() {
		return version;
	}
	public void setVersion(String version) {
		this.version = version;
	}
	public String getUserAddress() {
		return userAddress;
	}
	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}
	public String getUserFrom() {
		return userFrom;
	}
	public void setUserFrom(String userFrom) {
		this.userFrom = userFrom;
	}
	
	
	public UserVisit() {
		super();
	}
	public UserVisit(Integer id, String loginname, String loginTime, String exitTime, String visitIp, String iphone,
			String browser, String system, String version, String userAddress, String userFrom) {
		super();
		this.id = id;
		this.loginname = loginname;
		this.loginTime = loginTime;
		this.exitTime = exitTime;
		this.visitIp = visitIp;
		this.iphone = iphone;
		this.browser = browser;
		this.system = system;
		this.version = version;
		this.userAddress = userAddress;
		this.userFrom = userFrom;
	}
	
	
	
}
