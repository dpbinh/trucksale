package com.trucksale.bean;

public class ImgProductResource {
	private ResourceType type;
	
	private String path;

	public ResourceType getType() {
		return type;
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
	
	
}
