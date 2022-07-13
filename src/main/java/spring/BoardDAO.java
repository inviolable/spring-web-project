package spring;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BoardDAO {
	@Autowired
	SqlSession sqlsession;
	
	public int Insert(MemberInfo info) {
		int result = this.sqlsession.insert("b_insert", info);
		
		return result;
	}

	public List<MemberInfo> selectAllMemberList() {
		
		List<MemberInfo> m1 = this.sqlsession.selectList("selectAll");
		
		return m1;
	}

	public String passwordById(String id) {
		
		
		String password = this.sqlsession.selectOne("idByPassword", id);
		
		return password;
	}
	
	public int Insert_board(BoardInfo info) {
		int result = this.sqlsession.insert("insert_board", info);
		
		return result;
	}
	
	public List<BoardInfo> selectAllBoardList(){
		List<BoardInfo> m1 = this.sqlsession.selectList("select_all_board");
		return m1;
	}
	
	public int boardCount() {
		int count = this.sqlsession.selectOne("board_count");
		return count;
	}
	
	public BoardInfo selectByNo(int no) {
		BoardInfo b = this.sqlsession.selectOne("selectByNo", no);
		return b;
		
	}


}
