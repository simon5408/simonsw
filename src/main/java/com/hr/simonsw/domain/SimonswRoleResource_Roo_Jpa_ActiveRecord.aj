// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.hr.simonsw.domain;

import com.hr.simonsw.domain.SimonswRoleResource;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect SimonswRoleResource_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager SimonswRoleResource.entityManager;
    
    public static final List<String> SimonswRoleResource.fieldNames4OrderClauseFilter = java.util.Arrays.asList("");
    
    public static final EntityManager SimonswRoleResource.entityManager() {
        EntityManager em = new SimonswRoleResource().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long SimonswRoleResource.countSimonswRoleResources() {
        return entityManager().createQuery("SELECT COUNT(o) FROM SimonswRoleResource o", Long.class).getSingleResult();
    }
    
    public static List<SimonswRoleResource> SimonswRoleResource.findAllSimonswRoleResources() {
        return entityManager().createQuery("SELECT o FROM SimonswRoleResource o", SimonswRoleResource.class).getResultList();
    }
    
    public static List<SimonswRoleResource> SimonswRoleResource.findAllSimonswRoleResources(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM SimonswRoleResource o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, SimonswRoleResource.class).getResultList();
    }
    
    public static SimonswRoleResource SimonswRoleResource.findSimonswRoleResource(Long roleRsId) {
        if (roleRsId == null) return null;
        return entityManager().find(SimonswRoleResource.class, roleRsId);
    }
    
    public static List<SimonswRoleResource> SimonswRoleResource.findSimonswRoleResourceEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM SimonswRoleResource o", SimonswRoleResource.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<SimonswRoleResource> SimonswRoleResource.findSimonswRoleResourceEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM SimonswRoleResource o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, SimonswRoleResource.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void SimonswRoleResource.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void SimonswRoleResource.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            SimonswRoleResource attached = SimonswRoleResource.findSimonswRoleResource(this.roleRsId);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void SimonswRoleResource.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void SimonswRoleResource.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public SimonswRoleResource SimonswRoleResource.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        SimonswRoleResource merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
