package com.hr.simonsw.web;
import com.hr.simonsw.domain.SimonswRoleResource;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/simonswroleresources")
@Controller
@RooWebScaffold(path = "simonswroleresources", formBackingObject = SimonswRoleResource.class)
public class SimonswRoleResourceController {
}
