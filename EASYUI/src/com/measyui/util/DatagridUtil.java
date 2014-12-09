package com.measyui.util;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.alibaba.fastjson.JSON;

public class DatagridUtil {

	public static String list2Json(List<? extends Object> objs){
		Map<String, Object> ret = new HashMap<String, Object>();
		ret.put("total", objs.size());
		ret.put("rows", objs);
		return JSON.toJSONString(ret);
	}
}
