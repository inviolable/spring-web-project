package spring;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ReplyDAO {
	@Autowired
	SqlSession sqlsession;
	
	public List<ReplyInfo> selectByNo(int no) {
		List<ReplyInfo> r = this.sqlsession.selectList("selectRByNo", no);
		return r;
	}

	public void insertReply(ReplyInfo info) {
		this.sqlsession.insert("insertReply", info);
	}

}
