package spring;

import lombok.Data;

@Data
public class BoardInfo {
	int bno;
	String writer;
	String title;
	String content;
	int viewcnt;
	String regdate;
	

}
