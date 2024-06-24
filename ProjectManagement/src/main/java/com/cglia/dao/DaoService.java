package com.cglia.dao;

import java.util.List;

import org.springframework.scheduling.config.Task;

import com.cglia.model.ProjectModel;

public interface DaoService {
	  
	  public Integer saveProject(ProjectModel project);
	  
	  public List<ProjectModel> getAllProjects();
	  
	  public ProjectModel getProjectById(Integer projectId);
	  
	  public int updateProject(ProjectModel project);
	  
	  public int deleteProject(Integer id);

}
