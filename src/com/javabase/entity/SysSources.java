package com.javabase.entity;

import java.util.*;
import java.io.*;

/**
 * 实体bean
 * 
 * @author bruce
 *
 */

@SuppressWarnings("serial")
public class SysSources implements Serializable {

	private final long serialVersionUID = 1L;
	private String parentName;//  资源父级名称
	private Integer isIframe;//   是否是iframe;1:是,0:否
	
	private Set<SysRoles> roles = new HashSet<SysRoles>(0);
	private Set<SysSources> childs = new HashSet<SysSources>(0);
	public SysSources() {
		super();
	}
	
	public SysSources(Integer sourceId, String sourceName, Integer parentId,
			String sourceKey, String sourceType,String sourceUrl, Integer sourceLevel,String description) {
		super();
		this.sourceId = sourceId;
		this.sourceName = sourceName;
		this.parentId = parentId;
		this.sourceKey = sourceKey;
		this.sourceType = sourceType;
		this.sourceUrl = sourceUrl;
		this.sourceLevel = sourceLevel;
		this.description = description;
	}

	public SysSources(Integer sourceId, String sourceName, Integer parentId,
			String parentName, String sourceKey, String sourceType,
			String sourceUrl, Integer sourceLevel, String description,
			Integer sourceStatus, Integer isIframe) {
		super();
		this.sourceId = sourceId;
		this.sourceName = sourceName;
		this.parentId = parentId;
		this.parentName = parentName;
		this.sourceKey = sourceKey;
		this.sourceType = sourceType;
		this.sourceUrl = sourceUrl;
		this.sourceLevel = sourceLevel;
		this.description = description;
		this.sourceStatus = sourceStatus;
		this.isIframe = isIframe;
	}

	public SysSources(Integer sourceId, String sourceName, Integer parentId,
			String parentName, String sourceKey, String sourceType,
			String sourceUrl, Integer sourceLevel, String description,
			Integer sourceStatus, Integer isIframe, Set<SysRoles> roles,
			Set<SysSources> childs) {
		super();
		this.sourceId = sourceId;
		this.sourceName = sourceName;
		this.parentId = parentId;
		this.parentName = parentName;
		this.sourceKey = sourceKey;
		this.sourceType = sourceType;
		this.sourceUrl = sourceUrl;
		this.sourceLevel = sourceLevel;
		this.description = description;
		this.sourceStatus = sourceStatus;
		this.isIframe = isIframe;
		this.roles = roles;
		this.childs = childs;
	}
	
	public Integer getSourceId() {
	public String getParentName() {
		return parentName;
	}
	public void setParentName(String parentName) {
		this.parentName = parentName;
	}
	
	public Integer getIsIframe() {
		return isIframe;
	}
	public void setIsIframe(Integer isIframe) {
		this.isIframe = isIframe;
	}
}
