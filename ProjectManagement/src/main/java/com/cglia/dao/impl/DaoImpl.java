package com.cglia.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
//import java.util.ArrayList;
import java.util.List;

import org.springframework.scheduling.config.Task;
import org.springframework.stereotype.Repository;

import com.cglia.dao.DaoService;
import com.cglia.db.DbUtil;
import com.cglia.model.ProjectModel;

@Repository
public class DaoImpl implements DaoService {

	public Integer saveProject(ProjectModel project) {
	    final String query = "INSERT INTO PROJECT(NAME, DESCRIPTION, MANAGER,STARTDATE ,ENDDATE ,MEMBER ,TASKS , STATUS) values (?,?,?,?,?,?,?,?)";
	    int id=0;
	    try (
	        Connection con = DbUtil.getConnection();
	        PreparedStatement ps = con.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);  ) {
	    
	    	ps.setString(1, project.getName());
	    	ps.setString(2, project.getDescription());
	    	ps.setString(3, project.getManager());
	    	ps.setString(4, project.getStartdate());
	    	ps.setString(5, project.getEnddate());
	    	ps.setString(6, project.getMember());
	    	ps.setString(7, project.getTasks());
	    	ps.setString(8, project.getStatus());
	    	
	    	int out=ps.executeUpdate();
	    	
	    	if(out!=0) {
	    		try(ResultSet rs = ps.getGeneratedKeys()){
	    			if(rs.next()) {
	    				 id= rs.getInt(1);
	    				System.out.println("Project added succecfully"+id);
	    				return id;
	    			}
	    		}
	    	}else {
	    				System.out.println("Project save failed");
	    			}
	    }catch(SQLException e) {
	    				e.printStackTrace();
	    		}
	    	catch(Exception e) {
				e.printStackTrace();
			}
		return id;
	    }
    
	public List<ProjectModel> getAllProjects() {
	final String query="SELECT * FROM PROJECT" ;
	List<ProjectModel> projlist=new ArrayList<>();
	
	try(Connection con=DbUtil.getConnection();
		Statement stmt=con.createStatement();	){
		boolean areAnyRecords=stmt.execute(query);
		if(areAnyRecords) {
			try(ResultSet rs=stmt.getResultSet()){
				if(rs!=null) {
					while(rs.next()) {
						ProjectModel pro=new ProjectModel();
						pro.setId(rs.getInt("ID"));
						pro.setName(rs.getString(2));
						pro.setDescription(rs.getString(3));
						pro.setManager(rs.getString(4));
						pro.setStartdate(rs.getString(5));
						pro.setEnddate(rs.getString(6));
						pro.setMember(rs.getString(7));
						pro.setTasks(rs.getString(8));
						pro.setStatus(rs.getString(9));
						projlist.add(pro);
					}
				}
			}
		}
		
	}catch(SQLException e) {
		e.printStackTrace();
	}catch(Exception e) {
		e.printStackTrace();
	}
	return projlist;
}
	
	@Override
	public ProjectModel getProjectById(Integer id) {
		final String query="SELECT * FROM PROJECT WHERE ID= ?";
		ProjectModel pro=null;
		try(Connection con=DbUtil.getConnection();
				PreparedStatement stmt=con.prepareStatement(query)){
			stmt.setInt(1, id);
			try(ResultSet rs=stmt.executeQuery()){
				if(rs.next()) {
					pro=new ProjectModel();
					pro.setId(rs.getInt("ID"));
					pro.setName(rs.getString("Name"));
					pro.setDescription(rs.getString("Description"));
					pro.setManager(rs.getString("Manager"));
					pro.setStartdate(rs.getString("Startdate"));
					pro.setEnddate(rs.getString("Enddate"));
					pro.setMember(rs.getString("Member"));
					pro.setTasks(rs.getString("Tasks"));
					pro.setStatus(rs.getString("Status"));
			}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return pro;
	}
	@Override
	public int updateProject(ProjectModel project) {
		final String query="UPDATE PROJECT SET NAME = ?,  DESCRIPTION = ?, MANAGER = ?, STARTDATE = ? , ENDDATE= ? , MEMBER= ? , TASKS= ? , STATUS=? WHERE ID = ? " ;
		int count=0;
		try(Connection con=DbUtil.getConnection();
				PreparedStatement stmt=con.prepareStatement(query)){
			stmt.setString(1, project.getName());
			stmt.setString(2, project.getDescription());
			stmt.setString(3, project.getManager());
			stmt.setString(4, project.getStartdate());
			stmt.setString(5, project.getEnddate());
			stmt.setString(6, project.getMember());
			stmt.setString(7, project.getTasks());
			stmt.setString(8, project.getStatus());
            stmt.setInt(9, project.getId());
			count=stmt.executeUpdate();
			if(count!=0) {
				System.out.println("Project with ID:"+project.getId()+" is updated");
			}else {
				System.out.println("update failed.");
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return count;
	}

	@Override
	public int deleteProject(Integer projectId) {
		final String query="DELETE FROM PROJECT WHERE id=?";
		int count=0;
		try(Connection con=DbUtil.getConnection();
				PreparedStatement stmt=con.prepareStatement(query);	){
			int id =0;
			stmt.setInt(1,projectId);
			count=stmt.executeUpdate();
			
			if(count!=0) {
				System.out.println("Project with ID:"+id+" is deleted");
			}else {
				System.out.println("Deletion failed.");
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return count;

	}
}