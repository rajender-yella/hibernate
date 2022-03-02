package net.raj.springmvc.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Project")
public class Project implements Serializable
{

    @Id
    // @GeneratedValue(strategy = GenerationType.AUTO)
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    @Column(name="id")
    private int id;

    @Column(name = "projectName")
    private String projectName;

    @Column(name = "plannedStartDate")
    private java.sql.Date plannedStartDate;
    
    @Column(name = "plannedFinishedDate")
    private java.sql.Date plannedFinishedDate;
    
    @Column(name = "description")
    private String description;
    
    @Column(name = "procedure1")
    private String procedure1;
    
    @Column(name = "createdDate")
    private java.sql.Date createdDate;
    
    public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getProjectName() {
		return projectName;
	}

	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}

	public java.sql.Date getPlannedStartDate() {
		return plannedStartDate;
	}

	public void setPlannedStartDate(java.sql.Date plannedStartDate) {
		this.plannedStartDate = plannedStartDate;
	}

	public java.sql.Date getPlannedFinishedDate() {
		return plannedFinishedDate;
	}

	public void setPlannedFinishedDate(java.sql.Date plannedFinishedDate) {
		this.plannedFinishedDate = plannedFinishedDate;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getProcedure1() {
		return procedure1;
	}

	public void setProcedure1(String procedure) {
		this.procedure1 = procedure;
	}

	public java.sql.Date getCreatedDate() {
		return createdDate;
	}

	public void setCreatedDate(java.sql.Date createdDate) {
		this.createdDate = createdDate;
	}

	public java.sql.Date getModifiededDate() {
		return modifiededDate;
	}

	public void setModifiededDate(java.sql.Date modifiededDate) {
		this.modifiededDate = modifiededDate;
	}

	@Column(name = "modifiededDate")
    private java.sql.Date modifiededDate;

   

}
