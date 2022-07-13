package config;

import org.apache.tomcat.jdbc.pool.DataSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import spring.BoardDAO;
import spring.BulletinDao;
import spring.MainController;


@Configuration
public class ControllerConfig {

	/*
	@Bean
	public MainController helloController() {
		return new MainController();
	}*/
	
	/*
	@Bean
	public BoardDAO boardDao() {
		return new BoardDAO();
	}*/
	
}
