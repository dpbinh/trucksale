package com.trucksale.model;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class ProductImg {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long id;
	
	private long productId;
	
	private String img;
	
	@Enumerated(EnumType.STRING)
	private ImgGroupType imgGroup;

	public ProductImg() {
		super();
	}

	public ProductImg(long productId, String img, ImgGroupType imgGroup) {
		super();
		this.productId = productId;
		this.img = img;
		this.imgGroup = imgGroup;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public long getProductId() {
		return productId;
	}

	public void setProductId(long productId) {
		this.productId = productId;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public ImgGroupType getImgGroup() {
		return imgGroup;
	}

	public void setImgGroup(ImgGroupType imgGroup) {
		this.imgGroup = imgGroup;
	}

}
