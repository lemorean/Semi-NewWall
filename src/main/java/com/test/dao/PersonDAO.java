package com.test.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.kh.test.dto.PersonDTO;



public class PersonDAO {
	
	

	private static PersonDAO instance;
	public synchronized static PersonDAO getInstance() {
		if(instance == null) {
			instance = new PersonDAO();
		}
		return instance;
	}
	private PersonDAO() {}
	

	private Connection getConnection() throws Exception{
		Context ctx = new InitialContext();
		DataSource ds = (DataSource)ctx.lookup("java:comp/env/jdbc/oracle");
		return ds.getConnection();
	}

	public int insert(String name, String contact) throws Exception{
		String sql = "insert into person values(person_id_seq.nextval, ?, ?, sysdate)";

		try (		
				Connection con = this.getConnection();
				PreparedStatement pstat = con.prepareStatement(sql);
				){

			pstat.setString(1, name);
			pstat.setString(2, contact);

			int result = pstat.executeUpdate();
			con.commit();

			return result;
		}

	}

	public List<PersonDTO> selectAll() throws Exception {
		String sql = "select * from person order by id";

		try(
				Connection con = this.getConnection();
				PreparedStatement pstat = con.prepareStatement(sql);
				ResultSet rs = pstat.executeQuery();
				){
			List<PersonDTO> dto = new ArrayList<>();

			while(rs.next()) {
				int id = rs.getInt("id");
				String name = rs.getString("name");
				String contact = rs.getString("contact");
				Date date = rs.getDate("reg_date");

				PersonDTO person = new PersonDTO(id, name, contact, date);

				dto.add(person);
			}
			return dto;

		}

	}

	public int delete(int id) throws Exception{
		String sql = "delete from person where id = ?";
		try(
				Connection con = this.getConnection();
				PreparedStatement pstat = con.prepareStatement(sql);

				){
			pstat.setInt(1, id);
			
			int result = pstat.executeUpdate();
			return result;
			
		}
	}
	
	public int update(PersonDTO dto) throws Exception{
		String sql = "update person set name=?, contact = ? where id =?";
		try(
				Connection con = this.getConnection();
				PreparedStatement pstat = con.prepareStatement(sql);
				){
			pstat.setString(1, dto.getName());
			pstat.setString(2, dto.getContact());
			pstat.setInt(3, dto.getId());
			
			int result = pstat.executeUpdate();
			return result;
		}
	}







}
