package dao;

import java.sql.Connection;
import java.util.List;

public interface Dao<T> {
	
	Connection conn = ConnectionFactory.getConnection();
	
	List<T> findAll();
	T findById(Integer i);

}
