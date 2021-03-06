// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.hr.simonsw.base;

import com.hr.simonsw.base.LoginStatus;
import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

privileged aspect LoginStatus_Roo_Json {
    
    public static LoginStatus LoginStatus.fromJsonToLoginStatus(String json) {
        return new JSONDeserializer<LoginStatus>()
        .use(null, LoginStatus.class).deserialize(json);
    }
    
    public static String LoginStatus.toJsonArray(Collection<LoginStatus> collection) {
        return new JSONSerializer()
        .exclude("*.class").serialize(collection);
    }
    
    public static String LoginStatus.toJsonArray(Collection<LoginStatus> collection, String[] fields) {
        return new JSONSerializer()
        .include(fields).exclude("*.class").serialize(collection);
    }
    
    public static Collection<LoginStatus> LoginStatus.fromJsonArrayToLoginStatuses(String json) {
        return new JSONDeserializer<List<LoginStatus>>()
        .use("values", LoginStatus.class).deserialize(json);
    }
    
}
