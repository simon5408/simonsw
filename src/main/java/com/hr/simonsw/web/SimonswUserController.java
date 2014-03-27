package com.hr.simonsw.web;
import com.hr.simonsw.domain.SimonswUser;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/simonswusers")
@Controller
@RooWebScaffold(path = "simonswusers", formBackingObject = SimonswUser.class)
public class SimonswUserController {
}
