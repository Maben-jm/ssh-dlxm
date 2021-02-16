package com.maben.dlxm.util;

import java.lang.reflect.ParameterizedType;
/**
 * 范类转换
 * */
public class GenericSuperClass {

	/**范类转换*/
	public static Class getGenericSuperclass(Class entity) {
		ParameterizedType type = (ParameterizedType) entity.getGenericSuperclass();
		Class entityClass = (Class) type.getActualTypeArguments()[0];
		return entityClass;
	}

}