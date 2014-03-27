// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.hr.simonsw.domain;

import com.hr.simonsw.domain.SimonswDemo;
import java.util.Calendar;
import javax.persistence.Column;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;

privileged aspect SimonswDemo_Roo_DbManaged {
    
    @Column(name = "createDateTime")
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "MM")
    private Calendar SimonswDemo.createDateTime;
    
    @Column(name = "lastModifyDateTime")
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "MM")
    private Calendar SimonswDemo.lastModifyDateTime;
    
    @Column(name = "code", length = 255)
    private String SimonswDemo.code;
    
    @Column(name = "employeeNo", length = 255)
    private String SimonswDemo.employeeNo;
    
    @Column(name = "ext", length = 255)
    private String SimonswDemo.ext;
    
    @Column(name = "name", length = 255)
    private String SimonswDemo.name;
    
    @Column(name = "sex", length = 255)
    private String SimonswDemo.sex;
    
    @Column(name = "status")
    private Boolean SimonswDemo.status;
    
    @Column(name = "type")
    private Boolean SimonswDemo.type;
    
    public Calendar SimonswDemo.getCreateDateTime() {
        return createDateTime;
    }
    
    public void SimonswDemo.setCreateDateTime(Calendar createDateTime) {
        this.createDateTime = createDateTime;
    }
    
    public Calendar SimonswDemo.getLastModifyDateTime() {
        return lastModifyDateTime;
    }
    
    public void SimonswDemo.setLastModifyDateTime(Calendar lastModifyDateTime) {
        this.lastModifyDateTime = lastModifyDateTime;
    }
    
    public String SimonswDemo.getCode() {
        return code;
    }
    
    public void SimonswDemo.setCode(String code) {
        this.code = code;
    }
    
    public String SimonswDemo.getEmployeeNo() {
        return employeeNo;
    }
    
    public void SimonswDemo.setEmployeeNo(String employeeNo) {
        this.employeeNo = employeeNo;
    }
    
    public String SimonswDemo.getExt() {
        return ext;
    }
    
    public void SimonswDemo.setExt(String ext) {
        this.ext = ext;
    }
    
    public String SimonswDemo.getName() {
        return name;
    }
    
    public void SimonswDemo.setName(String name) {
        this.name = name;
    }
    
    public String SimonswDemo.getSex() {
        return sex;
    }
    
    public void SimonswDemo.setSex(String sex) {
        this.sex = sex;
    }
    
    public Boolean SimonswDemo.getStatus() {
        return status;
    }
    
    public void SimonswDemo.setStatus(Boolean status) {
        this.status = status;
    }
    
    public Boolean SimonswDemo.getType() {
        return type;
    }
    
    public void SimonswDemo.setType(Boolean type) {
        this.type = type;
    }
    
}
