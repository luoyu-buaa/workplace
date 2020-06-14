package com.ibeetl.bbs.util;

import org.beetl.core.Context;
import org.beetl.core.Function;

import javax.servlet.http.HttpServletRequest;

public class PageUrlPatternFunction implements Function {

	@Override
	public String call(Object[] paras, Context ctx) {
			HttpServletRequest  req = (HttpServletRequest)ctx.getGlobal("request");
			String url = req.getServletPath();
			//网站有俩种翻页url格式
			int index = url.lastIndexOf("-");
			if(index==-1){
				int lastIndex = url.lastIndexOf("/")+1;
				if (url.substring(lastIndex).matches("\\d+|/")){
					return url.substring(0, url.lastIndexOf("/")+1);
				} else {
					return url;
				}
			}else{
				return url.substring(0, index+1);
			}


	}

}
