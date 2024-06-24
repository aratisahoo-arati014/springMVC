package com.cglia.model;

public class ProjectModel {
	private Integer id;
	private String name;
	private String description;
	private String manager;
    private String startdate;
    private String enddate;
    private String member;
    private String tasks;
    private String status;
    
    
     
	public ProjectModel(Integer id, String name, String description, String manager, String startdate,
			String enddate, String member, String tasks, String status) {
		super();
		this.id = id;
		this.name = name;
		this.description = description;
		this.manager = manager;
		this.startdate = startdate;
		this.enddate = enddate;
		this.member = member;
		this.tasks = tasks;
		this.status = status;
	}

	public ProjectModel() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getManager() {
		return manager;
	}

	public void setManager(String manager) {
		this.manager = manager;
	}

	public String getStartdate() {
		return startdate;
	}

	public void setStartdate(String startdate) {
		this.startdate = startdate;
	}

	public String getEnddate() {
		return enddate;
	}

	public void setEnddate(String enddate) {
		this.enddate = enddate;
	}

	public String getMember() {
		return member;
	}

	public void setMember(String member) {
		this.member = member;
	}

	public String getTasks() {
		return tasks;
	}

	public void setTasks(String tasks) {
		this.tasks = tasks;
	}
	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "ProjectModel [id=" + id + ", name=" + name + ", description=" + description + ", manager="
				+ manager + ", startdate=" + startdate + ", enddate=" + enddate + ", member=" + member + ", tasks="
				+ tasks + ", Status=" + status + "]";
	}
}
