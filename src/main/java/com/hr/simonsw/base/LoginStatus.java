package com.hr.simonsw.base;

import org.springframework.roo.addon.json.RooJson;

import flexjson.JSONSerializer;

@RooJson
public class LoginStatus {

    private final boolean loggedIn;

    private final String username;

    public LoginStatus(boolean loggedIn, String username) {
        this.loggedIn = loggedIn;
        this.username = username;
    }

    public boolean isLoggedIn() {
        return loggedIn;
    }

    public String getUsername() {
        return username;
    }
    
    public String toJson() {
        return new JSONSerializer()
        .exclude("*.class").serialize(this);
    }
}
