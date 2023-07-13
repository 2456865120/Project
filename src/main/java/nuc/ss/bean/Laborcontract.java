package nuc.ss.bean;

import java.io.Serializable;

public class Laborcontract implements Serializable{
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
	
	public Laborcontract() {
		super();
	}
	public Laborcontract(Integer id, String name) {
		super();
		this.id = id;
		this.name = name;
	}
	
}
