package Alex.quick1;

import javax.sql.DataSource;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

@Configuration
public class config {
@Bean
public DriverManagerDataSource datasource() {
	DriverManagerDataSource ds=new DriverManagerDataSource();
	ds.setDriverClassName("com.mysql.cj.jdbc.Driver");
	ds.setUrl("jdbc:mysql://localhost:3306/finalcse");
	ds.setUsername("root");
	ds.setPassword("*Abhishek123#");
	return ds;
}
@Bean
public JdbcTemplate jdbcTemplate(DataSource datasource) {
    JdbcTemplate jdbcTemplate = new JdbcTemplate(datasource);
    return jdbcTemplate;
}
}
