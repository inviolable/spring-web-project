package spring;

import lombok.Data;

@Data
public class ReplyInfo {
	int reply_no;
	String reply_id;
	String reply_cont;
	String reply_previous;
	int reply_writing_no;
	String regdate;
}
