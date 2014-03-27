package com.hr.simonsw.web;
import com.hr.simonsw.domain.SimonswUserRole;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/simonswuserroles")
@Controller
@RooWebScaffold(path = "simonswuserroles", formBackingObject = SimonswUserRole.class)
public class SimonswUserRoleController {
}
