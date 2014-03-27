package com.hr.simonsw.web;
import com.hr.simonsw.domain.SimonswRole;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/simonswroles")
@Controller
@RooWebScaffold(path = "simonswroles", formBackingObject = SimonswRole.class)
public class SimonswRoleController {
}
