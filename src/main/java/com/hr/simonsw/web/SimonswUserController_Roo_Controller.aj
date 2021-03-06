// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.hr.simonsw.web;

import com.hr.simonsw.domain.SimonswUser;
import com.hr.simonsw.domain.SimonswUserRole;
import com.hr.simonsw.web.SimonswUserController;
import java.io.UnsupportedEncodingException;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.joda.time.format.DateTimeFormat;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

privileged aspect SimonswUserController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String SimonswUserController.create(@Valid SimonswUser simonswUser, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, simonswUser);
            return "simonswusers/create";
        }
        uiModel.asMap().clear();
        simonswUser.persist();
        return "redirect:/simonswusers/" + encodeUrlPathSegment(simonswUser.getUserId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String SimonswUserController.createForm(Model uiModel) {
        populateEditForm(uiModel, new SimonswUser());
        return "simonswusers/create";
    }
    
    @RequestMapping(value = "/{userId}", produces = "text/html")
    public String SimonswUserController.show(@PathVariable("userId") Long userId, Model uiModel) {
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("simonswuser", SimonswUser.findSimonswUser(userId));
        uiModel.addAttribute("itemId", userId);
        return "simonswusers/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String SimonswUserController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("simonswusers", SimonswUser.findSimonswUserEntries(firstResult, sizeNo, sortFieldName, sortOrder));
            float nrOfPages = (float) SimonswUser.countSimonswUsers() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("simonswusers", SimonswUser.findAllSimonswUsers(sortFieldName, sortOrder));
        }
        addDateTimeFormatPatterns(uiModel);
        return "simonswusers/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String SimonswUserController.update(@Valid SimonswUser simonswUser, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, simonswUser);
            return "simonswusers/update";
        }
        uiModel.asMap().clear();
        simonswUser.merge();
        return "redirect:/simonswusers/" + encodeUrlPathSegment(simonswUser.getUserId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{userId}", params = "form", produces = "text/html")
    public String SimonswUserController.updateForm(@PathVariable("userId") Long userId, Model uiModel) {
        populateEditForm(uiModel, SimonswUser.findSimonswUser(userId));
        return "simonswusers/update";
    }
    
    @RequestMapping(value = "/{userId}", method = RequestMethod.DELETE, produces = "text/html")
    public String SimonswUserController.delete(@PathVariable("userId") Long userId, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        SimonswUser simonswUser = SimonswUser.findSimonswUser(userId);
        simonswUser.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/simonswusers";
    }
    
    void SimonswUserController.addDateTimeFormatPatterns(Model uiModel) {
        uiModel.addAttribute("simonswUser_createdatetime_date_format", DateTimeFormat.patternForStyle("MM", LocaleContextHolder.getLocale()));
        uiModel.addAttribute("simonswUser_lastmodifydatetime_date_format", DateTimeFormat.patternForStyle("MM", LocaleContextHolder.getLocale()));
    }
    
    void SimonswUserController.populateEditForm(Model uiModel, SimonswUser simonswUser) {
        uiModel.addAttribute("simonswUser", simonswUser);
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("simonswuserroles", SimonswUserRole.findAllSimonswUserRoles());
    }
    
    String SimonswUserController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
        String enc = httpServletRequest.getCharacterEncoding();
        if (enc == null) {
            enc = WebUtils.DEFAULT_CHARACTER_ENCODING;
        }
        try {
            pathSegment = UriUtils.encodePathSegment(pathSegment, enc);
        } catch (UnsupportedEncodingException uee) {}
        return pathSegment;
    }
    
}
