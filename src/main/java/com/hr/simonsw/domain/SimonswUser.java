package com.hr.simonsw.domain;
import org.springframework.roo.addon.dbre.RooDbManaged;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooJpaActiveRecord(versionField = "", table = "simonsw_user")
@RooDbManaged(automaticallyDelete = true)
@RooToString(excludeFields = { "simonswUserRoles" })
public class SimonswUser {
}
