package net.raj.springmvc.service;

import java.util.List;

import net.raj.springmvc.model.Project;

public interface ProjectService
{
	 public void addProject(Project proj);
	 
	    public List<Project> getAllProjects();
	 
	    public void deleteProject(Integer projectId);
	 
	    public Project getProject(int projectid);
	 
	    public Project updateProject(Project proj);

}
