package com.the3.entity.cms;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.apache.commons.lang3.builder.ToStringBuilder;

import com.the3.base.entity.BaseEntity;

/**
 * Channel.java
 *
 * @author Ethan Wong
 * @time 2014年3月2日下午4:44:32
 */
@Entity
@Table(name="imethan_cms_channel")
public class Channel extends BaseEntity {
	
	private static final long serialVersionUID = 567346114281964527L;
	
	@NotNull
	@Size(min=4, max=20,message="title must be between 4 and 20")
	private String title;//标题
	
	@NotNull
	@Size(min=1,message="intro must not by null")
	private String intro;//介绍

	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getIntro() {
		return intro;
	}
	public void setIntro(String intro) {
		this.intro = intro;
	}
	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this);
	}
}
