package com.hr.simonsw.web;
import com.hr.simonsw.domain.SimonswDemo;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/simonswdemoes")
@Controller
@RooWebScaffold(path = "simonswdemoes", formBackingObject = SimonswDemo.class)
public class SimonswDemoController {
}
