package net.raj.springmvc.dao;
import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
 
import net.raj.springmvc.model.Project;
@Repository
public class ProjectDAOImpl implements ProjectDAO 
{
    @Autowired
    private SessionFactory sessionFactory;
    @Override
    public void addProject(Project proj)
    {
        sessionFactory.getCurrentSession().saveOrUpdate(proj);
    }
    @SuppressWarnings("unchecked")
    public List<Project> getAllProjects()
    {
        return sessionFactory.getCurrentSession().createQuery("from Project")
                .list();
    }
    public void deleteProject(Integer projectId) {
        Project proj = (Project) sessionFactory.getCurrentSession().load(
                Project.class, projectId);
        if (null != proj) {
            this.sessionFactory.getCurrentSession().delete(proj);
        }
    }
 
    public Project getProject(int projectId) {
        return (Project) sessionFactory.getCurrentSession().get(Project.class, projectId);     
    }

    public Project updateProject(Project proj) {
        sessionFactory.getCurrentSession().update(proj);
        return proj;
    }
	
}
 



