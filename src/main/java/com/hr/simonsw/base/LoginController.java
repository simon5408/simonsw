package com.hr.simonsw.base;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/api/login")
public class LoginController {
	private Log log = LogFactory.getLog(LoginController.class);
    @Autowired
    @Qualifier("springLoginService")
    SpringSecurityLoginService loginService;
    
    @Autowired
    HttpServletRequest request;

    static HttpHeaders headers = new HttpHeaders();
    static{
        headers.add("Content-Type", "application/text; charset=utf-8"); 	
    }
    
    @RequestMapping(method = RequestMethod.GET)
    @ResponseBody
    public ResponseEntity<String> getStatus() {
    	log.info("getStatus===============");
    	LoginStatus s = loginService.getStatus();
        return new ResponseEntity<String>(s.toJson(), headers, HttpStatus.OK);        
    }

    @RequestMapping(method = RequestMethod.POST)
    @ResponseBody
    public ResponseEntity<String> login(@RequestParam("j_username") String username,
                             @RequestParam("j_password") String password) {
    	log.info("username [{}]"+username);
    	log.info("password [{}]"+password);
    	LoginStatus s =  loginService.login(username, password);
        return new ResponseEntity<String>(s.toJson(), headers, HttpStatus.OK);
    }

    @RequestMapping(value="/out", method = RequestMethod.GET)
    public void logout(HttpServletResponse response) throws ServletException, IOException {
        request.getSession().invalidate();
        response.sendRedirect(request.getContextPath());
    }
}
