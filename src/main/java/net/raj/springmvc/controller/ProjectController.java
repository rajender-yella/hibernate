package net.raj.springmvc.controller;

import java.io.IOException;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import net.raj.springmvc.controller.ProjectController;
import net.raj.springmvc.model.Project;
import net.raj.springmvc.service.ProjectService;
@Controller
public class ProjectController 
{

		    @Autowired
		    private ProjectService projectService;
		    
		    @RequestMapping(value = {"", "/", "home"})
		    public ModelAndView listProject(ModelAndView model) throws IOException {
		    	List<Project> listProject = projectService.getAllProjects();
		    	model.addObject("listProject", listProject);
		    	model.setViewName("home");
		    	return model;
		    }

		    @RequestMapping(value = "/newProject", method = RequestMethod.GET)
		    public ModelAndView newContact(ModelAndView model) {
		    	Project proj = new Project();
		    	model.addObject("project", proj);
		    	model.setViewName("project-form");
		    	return model;
		    }

		    @RequestMapping(value = "/saveProject", method = RequestMethod.POST)
		    public ModelAndView saveProject(@ModelAttribute("project") Project proj) {
		        if (proj.getId() == 0) { 
		        	projectService.addProject(proj);
		    	} else {
		    		projectService.updateProject(proj);
		    	}
		    	return new ModelAndView("redirect:/");
		    }

		    @RequestMapping(value = "/deleteProject", method = RequestMethod.GET)
		    public ModelAndView deleteProject(HttpServletRequest request) {
		        int projectId = Integer.parseInt(request.getParameter("id"));
		        projectService.deleteProject(projectId);
		        return new ModelAndView("redirect:/");
		    }

		    @RequestMapping(value = "/editProject", method = RequestMethod.GET)
		    public ModelAndView editContact(HttpServletRequest request) {
		        int projectId = Integer.parseInt(request.getParameter("id"));
		        Project proj = projectService.getProject(projectId);
		        ModelAndView model = new ModelAndView("project-form");
		        model.addObject("project", proj);

		    	return model;
		    }
}
