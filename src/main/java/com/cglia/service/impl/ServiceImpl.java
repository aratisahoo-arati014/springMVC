package com.cglia.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cglia.dao.DaoService;
import com.cglia.model.ProjectModel;
import com.cglia.service.Serviceinterface;

@Service
public class ServiceImpl implements Serviceinterface{

	@Autowired
	private DaoService dao;

	@Override
	public List<ProjectModel> getAllProjects() {
		
		return dao.getAllProjects();
	}

	@Override
	public Integer saveProject(ProjectModel project) {
        Integer id =dao.saveProject(project);
		return id;
	}

	@Override
	public ProjectModel getProjectById(Integer id) {
		ProjectModel pro=dao.getProjectById(id);
		return pro;
	}

	@Override
	public int updateProject(ProjectModel project) {
		int count=dao.updateProject(project);
		return count;
	}

	@Override
	public int deleteProject(Integer id) {
		int count =dao.deleteProject(id);
		return count;
	}

}