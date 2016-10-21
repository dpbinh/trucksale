package com.trucksale.bean;

import java.util.List;

public class ActionResultT<T> extends ActionResult{
 
	private List<T> objects;

	public ActionResultT() {
		super();
	}

	public ActionResultT(boolean isSuccess, String message, List<T> objects) {
		super(isSuccess, message);
		this.objects = objects;
	}

	public List<T> getObjects() {
		return objects;
	}

	public void setObjects(List<T> objects) {
		this.objects = objects;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	protected void runWoker(ExecuteWorker worker) throws Exception { 
		objects = (List<T>) worker.doWork();
	}
}
