package nuc.ss.bean;

import java.io.Serializable;

public class Business implements Serializable{
	private Integer id;
	private Integer mailmarketing;
	private Integer allianceadvertising;
	private Integer videoadvertising;
	private Integer directaccess;
	private Integer searchengine;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getMailmarketing() {
		return mailmarketing;
	}
	public void setMailmarketing(Integer mailmarketing) {
		this.mailmarketing = mailmarketing;
	}
	public Integer getAllianceadvertising() {
		return allianceadvertising;
	}
	public void setAllianceadvertising(Integer allianceadvertising) {
		this.allianceadvertising = allianceadvertising;
	}
	public Integer getVideoadvertising() {
		return videoadvertising;
	}
	public void setVideoadvertising(Integer videoadvertising) {
		this.videoadvertising = videoadvertising;
	}
	public Integer getDirectaccess() {
		return directaccess;
	}
	public void setDirectaccess(Integer directaccess) {
		this.directaccess = directaccess;
	}
	public Integer getSearchengine() {
		return searchengine;
	}
	public void setSearchengine(Integer searchengine) {
		this.searchengine = searchengine;
	}
	
	public Business() {
		super();
	}
	
	
	public Business(Integer mailmarketing, Integer allianceadvertising, Integer videoadvertising, Integer directaccess,
			Integer searchengine) {
		super();
		this.mailmarketing = mailmarketing;
		this.allianceadvertising = allianceadvertising;
		this.videoadvertising = videoadvertising;
		this.directaccess = directaccess;
		this.searchengine = searchengine;
	}
	public Business(Integer id, Integer mailmarketing, Integer allianceadvertising, Integer videoadvertising,
			Integer directaccess, Integer searchengine) {
		super();
		this.id = id;
		this.mailmarketing = mailmarketing;
		this.allianceadvertising = allianceadvertising;
		this.videoadvertising = videoadvertising;
		this.directaccess = directaccess;
		this.searchengine = searchengine;
	}
	
	
}
