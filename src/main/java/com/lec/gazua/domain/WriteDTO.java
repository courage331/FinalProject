package com.lec.gazua.domain;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class WriteDTO {
	private int por_uid;
	private String subject;
	private String content;
	private int viewcnt;
	private int por_up;
	private int por_down;
	private int por_report;
	private Timestamp regDate;
	
	
}
