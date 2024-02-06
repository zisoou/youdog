package com.office.youdog.event;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class EventVo {
	int event_no;
	String event_title;
	String event_thumbnail;
	String event_link;
	Date reg_date;
	int startRow;
	int endRow;
	int RN;
}