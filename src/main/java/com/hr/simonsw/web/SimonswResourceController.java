package com.hr.simonsw.web;
import com.hr.simonsw.domain.SimonswResource;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/simonswresources")
@Controller
@RooWebScaffold(path = "simonswresources", formBackingObject = SimonswResource.class)
public class SimonswResourceController {
}
