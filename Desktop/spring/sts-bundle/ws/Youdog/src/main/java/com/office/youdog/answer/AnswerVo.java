package com.office.youdog.answer;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class AnswerVo {
	int answer_no;
	String answer_content;
	String answer_writer; 
	String answer_reg_date;
	String answer_mod_date;
	int answer_likes;	
	int board_num ;

}
