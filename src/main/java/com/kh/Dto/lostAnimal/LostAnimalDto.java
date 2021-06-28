package com.kh.Dto.lostAnimal;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class LostAnimalDto {

	private int lostNo;
	private String lostName;
	private int lostAge;
	private String lostKind;
	private String lostCategory;
	private String lostDate;
	private Date createDate;
	private String lostAddr;
	private String fileRealName;
	private String lostWriter;
	private String lostContent;
	private String lostGender;
	
}
