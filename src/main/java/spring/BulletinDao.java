package spring;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;;

public class BulletinDao {
	
	private JdbcTemplate jdbcTemplate;

	public BulletinDao(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	
	public Bulletin_board selectByNum(int num) {
		List<Bulletin_board> results = jdbcTemplate.query(
				"select * from bulletin_board3 where num = ?",
				new RowMapper<Bulletin_board>() {
					@Override
					public Bulletin_board mapRow(ResultSet rs, int rowNum) throws SQLException {
						Bulletin_board bulboard = new Bulletin_board(
								rs.getInt("num"),
								rs.getString("title"),
								rs.getString("writer"),
								rs.getString("body"));
						return bulboard;
					}
				}, num);

		return results.isEmpty() ? null : results.get(0);
	}//리턴될 요소는 unique한 속성이어야 됨, 즉 1개밖에  검색 안 됨, get(0)은 첫번째 요소(유일한)를 리턴
	
	
	
	public void insert(Bulletin_board bulboard) {

		String sql = "insert into bulletin_board3 values(?,?,?,?)";
		int result = jdbcTemplate.update(sql, bulboard.getNum(), bulboard.getTitle(),
				bulboard.getWriter(), bulboard.getBody());
						
		
	}
	
	
	
	public void update(Bulletin_board bulboard) {
		jdbcTemplate.update(
				"update bulletin_board3 set num = ?, title = ?, writer = ?, body = ? where num = ?",
				bulboard.getNum(), bulboard.getTitle(), bulboard.getWriter(), bulboard.getBody(),
				bulboard.getNum());
	}	
	
	
	public List<Bulletin_board> selectAll() {
		List<Bulletin_board> results = jdbcTemplate.query("select * from bulletin_board3 order by num desc",
				(ResultSet rs, int rowNum) -> {
					Bulletin_board bulboard = new Bulletin_board(
							rs.getInt("num"),
							rs.getString("title"),
							rs.getString("writer"),
							rs.getString("body"));
					return bulboard;
				});
		return results;
	}
	
	public int count() {
		Integer count = jdbcTemplate.queryForObject(
				"select count(*) from bulletin_board3", Integer.class);
		return count;
	}
	
	public void deleteByNum(int num) {
		 String sql = "delete from bulletin_board3 where num = ?";
		 int result = jdbcTemplate.update(sql, num);	
		
	}
	
	public int maxNum() {
		Integer count = jdbcTemplate.queryForObject(
				"select max(num) from bulletin_board3", Integer.class);
		return count;
	}


	
}
