package com.s5.sand5rang.sangmi.vo;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@Setter
@Getter
@ToString
public class Inquery {

	private int inqNo;  //문의 번호
	private String inqTitle; //문의제목
	private String inqDate;  //문의날짜
	private String inqQuery; //문의내용
	private String inqAnswer; //문의답변
	private String status; //문의글상태
	private String ansDate; //답변날짜
	private String category; //문의카테고리
	private String storeId; //가맹점아이디
	
	private String storeName; //가맹점이름
	
	
}
