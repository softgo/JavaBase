package com.javabase.code.gengerate.mian;

import com.javabase.code.gengerate.def.FtlDef;
import com.javabase.code.gengerate.factory.CodeGenerateFactory;

/**
 * 
 * @author bruce
 *
 */

public class CodeProductorUtil {
	
	/**
	 * test it .
	 * @param args
	 */
	public static void main(String[] args) {
		
		String tableName = "test_student";
	    
		String codeName = "学生管理列表";
	    
	    String codePrefix = "学生管理列表";
	    
	    String entityPackage = "test\\"; //如果是目录就用"\\",否则就不用.
	    
	    CodeGenerateFactory.codeGenerate(tableName, codeName, entityPackage, FtlDef.KEY_TYPE_AUTO);
	    
	    //CodeGenerateFactory.codeGenerate(tableName, codeName, entityPackage, FtlDef.KEY_TYPE_MAN);
	    
	    //CodeGenerateFactory.addMenus(tableName,codeName,codePrefix);
	    
	}
}
