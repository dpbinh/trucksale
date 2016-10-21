package com.trucksale.bean;

public class ActionResultSingle<T> extends ActionResult {
	private T object;
	
	public ActionResultSingle() {
		super();
	}

	public ActionResultSingle(boolean isSuccess, String message) {
		super(isSuccess, message);
	}

	public ActionResultSingle(T object) {
		super();
		this.object = object;
	}

	public T getObject() {
		return object;
	}

	public void setObject(T object) {
		this.object = object;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	protected void runWoker(ExecuteWorker worker) throws Exception {
		 
		object = (T) worker.doWork();
	}
}
