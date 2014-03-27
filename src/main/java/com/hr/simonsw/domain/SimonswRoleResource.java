package com.hr.simonsw.domain;
import org.springframework.roo.addon.dbre.RooDbManaged;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooJpaActiveRecord(versionField = "", table = "simonsw_role_resource")
@RooDbManaged(automaticallyDelete = true)
@RooToString(excludeFields = { "resourceId", "roleId" })
public class SimonswRoleResource {
}
