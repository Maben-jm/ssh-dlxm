package com.maben.dlxm.util;

import org.apache.commons.lang.StringUtils;

import java.util.ArrayList;
import java.util.List;

public class StringToListUtils {

	/**将String类型的name按照flag进行分割，将分割后的结果转换成List，并返回*/
	public static List<String> stringToList(String name, String flag) {
		List<String> list = new ArrayList<String>();
		if(StringUtils.isNotBlank(name)){
			String [] arrays = name.split(flag);
			if(arrays!=null && arrays.length>0){
				for(String array:arrays){
					list.add(array);
				}
			}
		}
		return list;
	}

}
