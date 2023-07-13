package nuc.ss.bean;

import java.io.Serializable;

public class Status_inf implements Serializable{
	private Integer id;
	private String name;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public Status_inf() {
		super();
	}
	public Status_inf(Integer id, String name) {
		super();
		this.id = id;
		this.name = name;
	}
	
}
