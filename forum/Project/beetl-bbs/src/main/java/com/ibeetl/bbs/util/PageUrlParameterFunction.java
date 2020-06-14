package com.ibeetl.bbs.util;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.StringUtils;
import org.beetl.core.Context;
import org.beetl.core.Function;


public class PageUrlParameterFunction implements Function {

	@Override
	public String call(Object[] paras, Context ctx) {
			HttpServletRequest  req = (HttpServletRequest)ctx.getGlobal("request");
			String qs = req.getQueryString();
			String para = "";
			if(!StringUtils.isEmpty(qs)){
				para = "?"+qs;
			}
			return para;
	}

}
