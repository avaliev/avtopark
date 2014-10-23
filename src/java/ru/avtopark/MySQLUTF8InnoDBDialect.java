package ru.avtopark;
import org.hibernate.dialect.MySQLInnoDBDialect;
import org.springframework.stereotype.Service;

/**
 * Sets the default charset to UTF-8.
 */
@Service
public class MySQLUTF8InnoDBDialect extends MySQLInnoDBDialect {
	@Override
	public String getTableTypeString() {
		return " ENGINE=InnoDB DEFAULT CHARSET=utf8";
	}
}