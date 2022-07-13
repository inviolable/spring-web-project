package spring;

import java.time.LocalDateTime;

public class Bulletin_board {

	private int num;
	private String title;
	private String writer;
	private String body;

	public Bulletin_board() {
		this.num = 0;
		this.title = "11";
		this.writer = "22";
		this.body = "33";
	}
	public Bulletin_board(int num, String title, 
			String writer, String body) {
		this.num = num;
		this.title = title;
		this.writer = writer;
		this.body = body;
	}

	void setNum(int num) {
		this.num = num;
	}

	public int getNum() {
		return num;
	}

	void setTitle(String title) {
		this.title = title;
	}
	
	public String getTitle() {
		return title;
	}

	void setWriter(String writer) {
		this.writer=writer;
	}
	
	public String getWriter() {
		return writer;
	}
	
	void setBody(String body) {
		this.body=body;
	}

	public String getBody() {
		return body;
	}
	

/*
	public void changePassword(String oldPassword, String newPassword) {
		if (!password.equals(oldPassword))
			throw new WrongIdPasswordException();
		this.password = newPassword;
	}*/

}
