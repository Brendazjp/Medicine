package com.util;

import java.util.Map;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class MyInteceptor extends AbstractInterceptor {

	@Override
	public String intercept(ActionInvocation arg0) throws Exception {
		Map map = arg0.getInvocationContext().getSession();
		if (arg0.getProxy().getMethod().equals("login")){
			return arg0.invoke();
		}
		if (null == map.get("user")){
			return "login1";

		}
		return arg0.invoke();

	}

}
