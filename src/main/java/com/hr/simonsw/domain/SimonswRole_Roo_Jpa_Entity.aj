// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.hr.simonsw.domain;

import com.hr.simonsw.domain.SimonswRole;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

privileged aspect SimonswRole_Roo_Jpa_Entity {
    
    declare @type: SimonswRole: @Entity;
    
    declare @type: SimonswRole: @Table(name = "simonsw_role");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "role_id")
    private Long SimonswRole.roleId;
    
    public Long SimonswRole.getRoleId() {
        return this.roleId;
    }
    
    public void SimonswRole.setRoleId(Long id) {
        this.roleId = id;
    }
    
}