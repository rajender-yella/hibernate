package net.raj.springmvc.dao;

import java.util.List;

import net.raj.springmvc.model.Project;

public interface ProjectDAO
{
	 public void addProject(Project proj);
	 
	    public List<Project> getAllProjects();
	 
	    public void deleteProject(Integer projectId);
	 
	    public Project updateProject(Project proj);
	 
	    public Project getProject(int ProjectId);
}
