package ai.hacktory.spel.service.controllers;

import ai.hacktory.spel.service.security.details.UserDetailsImpl;
import ai.hacktory.spel.service.transfer.UserDto;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import static ai.hacktory.spel.service.transfer.UserDto.from;

@Controller
public class AdvertisementController {

    @GetMapping("/add")
    public String addAdvertisement(Authentication authentication, ModelMap model){
        if(authentication == null) return "redirect:/login";
        UserDetailsImpl details = (UserDetailsImpl) authentication.getPrincipal();
        UserDto user = from(details.getUser());
        model.addAttribute("user", user);
        return "add";
    }
}
