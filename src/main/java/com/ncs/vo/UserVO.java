package com.ncs.vo;

import org.springframework.stereotype.Repository;

@Repository
public class UserVO {

	private String userid;
	private String userpw;
	private String userpwcheck;
	private String enabled;
	private String email;
	private String sex;
	private String username;
	private String nickname;
	private String joindate;
	private String outdate;
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getUserpw() {
		return userpw;
	}
	public void setUserpw(String userpw) {
		this.userpw = userpw;
	}
	public String getUserpwcheck() {
		return userpwcheck;
	}
	public void setUserpwcheck(String userpwcheck) {
		this.userpwcheck = userpwcheck;
	}
	public String getEnabled() {
		return enabled;
	}
	public void setEnabled(String enabled) {
		this.enabled = enabled;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getJoindate() {
		return joindate;
	}
	public void setJoindate(String joindate) {
		this.joindate = joindate;
	}
	public String getOutdate() {
		return outdate;
	}
	public void setOutdate(String outdate) {
		this.outdate = outdate;
	}
	@Override
	public String toString() {
		return "UserVO [userid=" + userid + ", userpw=" + userpw + ", userpwcheck=" + userpwcheck + ", enabled="
				+ enabled + ", email=" + email + ", sex=" + sex + ", username=" + username + ", nickname=" + nickname
				+ ", joindate=" + joindate + ", outdate=" + outdate + "]";
	}

	
	
}