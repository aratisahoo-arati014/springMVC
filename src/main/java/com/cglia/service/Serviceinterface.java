package com.cglia.service;

import java.util.List;

import org.springframework.scheduling.config.Task;

import com.cglia.model.ProjectModel;

public interface Serviceinterface {
	
	  public List<ProjectModel> getAllProjects();
	  
	  public Integer saveProject(ProjectModel project);
	  
	  public ProjectModel getProjectById(Integer id);
	  
	  public int updateProject(ProjectModel project);
	  
	  public int deleteProject(Integer id);
}
