package com.kh.config;

import java.sql.Connection;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

//dbcp

public class Db {
	
	public static Connection getCon() throws Exception {
		Context ctx = new InitialContext();
		DataSource ds = (DataSource)ctx.lookup("java:comp/env/jdbc/pool");
		return ds.getConnection();
	}
}
