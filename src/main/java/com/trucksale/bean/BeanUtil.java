package com.trucksale.bean;

import java.util.ArrayList;
import java.util.List;

public class BeanUtil {
	
	public static <T,E> List<T> convertToList (Iterable<E> es, Class<T> clst) throws Exception{
		List<T> ts = new ArrayList<T>();
	 
		for(E e : es){	
			 T t = (T) clst.getDeclaredConstructor(e.getClass()).newInstance(e);
			 ts.add(t);
		}
		return ts;
	}
}
