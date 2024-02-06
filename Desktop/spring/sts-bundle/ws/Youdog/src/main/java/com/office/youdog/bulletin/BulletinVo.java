package com.office.youdog.bulletin;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class BulletinVo {
	int bulletin_no;      
	String bulletin_cate;		
	String bulletin_title;
	String bulletin_content; 
	String bulletin_writer;  
	int bulletin_writer_no;  
	String bulletin_reg_date;
	String bulletin_mod_date;
	int bulletin_likes;		
	int bulletin_views;		


	
	
}
