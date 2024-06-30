package com.cglia.controller;

import java.util.List;
import java.util.Objects;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.cglia.model.ProjectModel;
import com.cglia.service.Serviceinterface;

@Controller(value ="myContoller")
public class MyController {
	
	@Autowired
	private Serviceinterface service;
	
	@RequestMapping("/home")
	public String Home() {
		return"Home";
	}
	
	@RequestMapping("/add")
	public String addtask(HttpServletRequest request) {
		return "AddTask";
	}
	
	@RequestMapping("/all")
	public String allproject(HttpServletRequest request) {
		return "redirect:/getAll";
	}
	 @RequestMapping(path="/save", method=RequestMethod.POST)
	    public String saveTask(@ModelAttribute ProjectModel proje, RedirectAttributes attrs) {
	        System.out.println(proje);
	        Integer id = service.saveProject(proje);
	        attrs.addFlashAttribute("ProjectId", id);
	        if (id > 0) {
	            attrs.addFlashAttribute("successmsg", "Task added successfully with ID:" + id);
	        } else {
	            attrs.addFlashAttribute("failuremsg", "An error occurred. Please try again...");
	        }
	        
	        return "redirect:/getAll";
	    }

	
	@RequestMapping(path="/getAll", method=RequestMethod.GET)
	public String getAllProject(@ModelAttribute ProjectModel proj, HttpServletRequest request) {
		List<ProjectModel> projlist=service.getAllProjects();
		
		request.setAttribute("projlist", projlist);
		System.out.println(projlist);
		return "showAllProject";
	}
	
	@GetMapping("/getproject")
	public String getProjectById(@RequestParam("id") Integer id, HttpServletRequest request) {
		ProjectModel pro = service.getProjectById(id);
		request.setAttribute("Project", allproject(null));
		return "UpdateProject";
	}
	@RequestMapping("/update")
public String update() {
		return "UpdateProject";
	}
	@RequestMapping("/delete")
	public String delete() {
			return "DeleteProject";
		}
		
	@PostMapping("/updatebyid")
	public String updateProjectById(@ModelAttribute ProjectModel project, RedirectAttributes attrs) {
		//BookService service = new BookServiceImpl();
		int count = service.updateProject(project);
		attrs.addFlashAttribute("updatecount", count);
		if (count > 0) {
			attrs.addFlashAttribute("updated", "Project with ID: " +project.getId() + "is updated successfully.");
		} else {
			attrs.addFlashAttribute("notupdated", "an error occurred. Please try again...");
		}
		return "redirect:/getAll";
	}
	@RequestMapping("/deletebyid")
	public String deleteProject(HttpServletRequest request, RedirectAttributes attrs) {
		Integer id = null;
		int count = 0;
		if (Objects.nonNull(request.getParameter("id"))) {
			id = Integer.parseInt(request.getParameter("id"));
		}
		if (Objects.nonNull(id)) {
			count = service.deleteProject(id);
			attrs.addFlashAttribute("deletecount", count);
		}
		if (count > 0) {
			attrs.addFlashAttribute("deleted", "Project with ID: " + id + " is deleted successfully.");
		} else {
			attrs.addFlashAttribute("notdeleted", "An error occurred. Please try again...");
		}
		return "redirect:/getAll";
	}

}
