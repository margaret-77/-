package com.neusoft.utils;

public class StrUtil {
	public static boolean isNullOrEmptry(String str){
		if(str == null || "".equals(str)){
			return true;
		}else{
			return false;
		}
	}
	public static String linkSql(String [] params){
		String result = "(";
		for (int i = 0; i < params.length; i++) {
			if(i == params.length-1){
				result+=params[i];
			}else{
				result+=params[i]+",";
			}
		}
		return result+=")";
	}
}
