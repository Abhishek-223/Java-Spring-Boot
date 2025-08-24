package Alex.quick1;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.jspecify.annotations.Nullable;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

/**
 * Hello world!
 */
public class App {
    public static void main(String[] args) {
        System.out.println("Hello World!");
        ApplicationContext cont=new AnnotationConfigApplicationContext(config.class);
        JdbcTemplate jdbct=cont.getBean(JdbcTemplate.class);
        String sql="insert into finalcse values(?,?,?)";
        int pin=106;
        String name="Kush muthmare";
        String branch="iot";
        int count=jdbct.update(sql,pin,name,branch);
        if(count>0)   System.out.println("Execute success");
        else System.out.println("fail");
        
//        String sql="update finalcse set name=? ,branch=? where pin=?";
//        int pin=104;
//        String name="Jitu";
//        String branch="aiml";
//        int count =jdbct.update(sql,name,branch,pin);
//        if(count>0)   System.out.println("Execute success");
//        else   System.out.println("fail");
        
//        String sql="select * from finalcse";
//        RowMapper<data > rm=new RowMapper<data>() {
//			@Override
//			public @Nullable data mapRow(ResultSet rs, int rowNum) throws SQLException {
//				// TODO Auto-generated method stub
//				Integer pin=rs.getInt("pin");
//				String name =rs.getString("name");
//				String branch=rs.getString("branch");
//				
//				return new data(pin,name,branch);
//			}
//        	
//        };
//        List<data> det=jdbct.query(sql,rm);
//        for(data d:det) {
//        	System.out.println("pin=" + d.getPin() + ", name=" + d.getName() + ", branch=" + d.getBranch());
//        }
    }
}
