package com.trucksale.bean;


public class ActionResult{
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
	
	public void execute(ExecuteWorker worker){
		try{
			runWoker(worker);
		} catch(Exception e){
			this.setSuccess(false);
			this.setMessage(e.getMessage());
		}
	}
	
	protected void runWoker(ExecuteWorker worker) throws Exception{
		worker.doWork();
	}
}
