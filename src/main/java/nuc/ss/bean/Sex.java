package nuc.ss.bean;

import java.io.Serializable;

public class Sex implements Serializable{
	private Integer id;
	private String name;
	private Integer value;
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
	
	public Integer getCount() {
		return value;
	}
	public void setCount(Integer count) {
		this.value = count;
	}
	public Sex() {
		super();
	}
	public Sex(Integer id, String name) {
		super();
		this.id = id;
		this.name = name;
	}
	public Sex(Integer id, String name, Integer count) {
		super();
		this.id = id;
		this.name = name;
		this.value = count;
	}
	public Sex(String name, Integer value) {
		super();
		this.name = name;
		this.value = value;
	}
	@Override
	public String toString() {
		return "Sex [name=" + name + ", value=" + value + "]";
	}
	
	
}
