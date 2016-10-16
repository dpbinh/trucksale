package com.trucksale.bean;


public class ActionResult {
	private boolean isSuccess = true;
	
	private String message = "";
	
	
	
	public ActionResult() {
		super();
	}

	public ActionResult(boolean isSuccess, String message) {
		super();
		this.isSuccess = isSuccess;
		this.message = message;
	}

	public boolean isSuccess() {
		return isSuccess;
	}

	public void setSuccess(boolean isSuccess) {
		this.isSuccess = isSuccess;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
}
