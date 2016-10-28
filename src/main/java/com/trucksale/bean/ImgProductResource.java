package com.trucksale.bean;

public class ImgProductResource {
	private ResourceType type;
	
	private String path;
	
	private String name;
	
	private String id;
	
	public ResourceType getType() {
		return type;
	}
	
	
	
	public ImgProductResource() {
		super();
	}



	public ImgProductResource(ResourceType type, String path) {
		super();
		this.type = type;
		this.path = path;
	}



	public void setType(ResourceType type) {
		this.type = type;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}



	public String getName() {
		return name;
	}



	public void setName(String name) {
		this.name = name;
	}



	public String getId() {
		return id;
	}



	public void setId(String id) {
		this.id = id;
	}
	
	
}
