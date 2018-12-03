package org.DoMyself.util;

import org.springframework.jdbc.core.JdbcTemplate;

public class MyQueryForOne {
	public static int MyQueryForOne(String sql) {
		JdbcTemplate jdbcTemplate = MyJdbcTemplate.getJdbcTemplate();
		int count = jdbcTemplate.queryForObject(sql, Integer.class);
		return count;
	}
}
