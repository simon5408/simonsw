// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.hr.simonsw.domain;

import com.hr.simonsw.domain.SimonswRole;
import com.hr.simonsw.domain.SimonswRoleResource;
import com.hr.simonsw.domain.SimonswUserRole;
import java.util.Calendar;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.OneToMany;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;

privileged aspect SimonswRole_Roo_DbManaged {
    
    @OneToMany(mappedBy = "roleId")
    private Set<SimonswRoleResource> SimonswRole.simonswRoleResources;
    
    @OneToMany(mappedBy = "roleId")
    private Set<SimonswUserRole> SimonswRole.simonswUserRoles;
    
    @Column(name = "createDateTime")
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "MM")
    private Calendar SimonswRole.createDateTime;
    
    @Column(name = "lastModifyDateTime")
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "MM")
    private Calendar SimonswRole.lastModifyDateTime;
    
    @Column(name = "description", length = 255)
    private String SimonswRole.description;
    
    @Column(name = "name", length = 255)
    private String SimonswRole.name;
    
    public Set<SimonswRoleResource> SimonswRole.getSimonswRoleResources() {
        return simonswRoleResources;
    }
    
    public void SimonswRole.setSimonswRoleResources(Set<SimonswRoleResource> simonswRoleResources) {
        this.simonswRoleResources = simonswRoleResources;
    }
    
    public Set<SimonswUserRole> SimonswRole.getSimonswUserRoles() {
        return simonswUserRoles;
    }
    
    public void SimonswRole.setSimonswUserRoles(Set<SimonswUserRole> simonswUserRoles) {
        this.simonswUserRoles = simonswUserRoles;
    }
    
    public Calendar SimonswRole.getCreateDateTime() {
        return createDateTime;
    }
    
    public void SimonswRole.setCreateDateTime(Calendar createDateTime) {
        this.createDateTime = createDateTime;
    }
    
    public Calendar SimonswRole.getLastModifyDateTime() {
        return lastModifyDateTime;
    }
    
    public void SimonswRole.setLastModifyDateTime(Calendar lastModifyDateTime) {
        this.lastModifyDateTime = lastModifyDateTime;
    }
    
    public String SimonswRole.getDescription() {
        return description;
    }
    
    public void SimonswRole.setDescription(String description) {
        this.description = description;
    }
    
    public String SimonswRole.getName() {
        return name;
    }
    
    public void SimonswRole.setName(String name) {
        this.name = name;
    }
    
}
