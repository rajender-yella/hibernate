package net.raj.springmvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import net.raj.springmvc.dao.ProjectDAO;
import net.raj.springmvc.model.Project;

@Service
@Transactional
public class ProjectServiceImpl implements ProjectService 
{
    @Autowired
    private ProjectDAO projectDAO;

    @Override
    @Transactional
    public void addProject(Project proj) {
    projectDAO.addProject(proj);
    }

    @Override
    @Transactional
    public List<Project> getAllProjects()
    {
	return projectDAO.getAllProjects();
    }

    @Override
    @Transactional
    public void deleteProject(Integer projectId) {
    	projectDAO.deleteProject(projectId);
    }

    public Project getProject(int projectId) {
	return projectDAO.getProject(projectId);
    }

    public Project updateProject(Project proj) {
	return projectDAO.updateProject(proj);
    }

    public void setProjectDAO(ProjectDAO projectDAO) {
	this.projectDAO = projectDAO;
    }
}
