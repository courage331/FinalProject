package com.lec.gazua.domain;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class CustomerDTO {

	private int cus_uid;
	private String cus_id;
	private String cus_pw;
	private String cus_nickname;
	private String cus_name;
	private String cus_gender;
	private int cus_money;
	private int cus_stack;
	private int cus_icon;
	private Timestamp cus_birth;
	
	public String getBirth() {
		return new SimpleDateFormat("yyyy-MM-dd").format(cus_birth);
	}
	
	
}
