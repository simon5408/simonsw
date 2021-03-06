// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.hr.simonsw.domain;

import com.hr.simonsw.domain.SimonswDemo;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect SimonswDemo_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager SimonswDemo.entityManager;
    
    public static final List<String> SimonswDemo.fieldNames4OrderClauseFilter = java.util.Arrays.asList("");
    
    public static final EntityManager SimonswDemo.entityManager() {
        EntityManager em = new SimonswDemo().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long SimonswDemo.countSimonswDemoes() {
        return entityManager().createQuery("SELECT COUNT(o) FROM SimonswDemo o", Long.class).getSingleResult();
    }
    
    public static List<SimonswDemo> SimonswDemo.findAllSimonswDemoes() {
        return entityManager().createQuery("SELECT o FROM SimonswDemo o", SimonswDemo.class).getResultList();
    }
    
    public static List<SimonswDemo> SimonswDemo.findAllSimonswDemoes(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM SimonswDemo o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, SimonswDemo.class).getResultList();
    }
    
    public static SimonswDemo SimonswDemo.findSimonswDemo(Long id) {
        if (id == null) return null;
        return entityManager().find(SimonswDemo.class, id);
    }
    
    public static List<SimonswDemo> SimonswDemo.findSimonswDemoEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM SimonswDemo o", SimonswDemo.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<SimonswDemo> SimonswDemo.findSimonswDemoEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM SimonswDemo o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, SimonswDemo.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void SimonswDemo.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void SimonswDemo.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            SimonswDemo attached = SimonswDemo.findSimonswDemo(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void SimonswDemo.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void SimonswDemo.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public SimonswDemo SimonswDemo.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        SimonswDemo merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
