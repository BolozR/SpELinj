package ai.hacktory.spel.service.controllers;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
public class LoginController {
    @GetMapping("/login")
    public String getLoginPage(Authentication authentication, ModelMap model, HttpServletRequest request, HttpServletResponse response){
        if(authentication != null){
            response.addCookie(new Cookie("test", "value"));
            return "redirect:/store";
        }
        if(request.getParameterMap().containsKey("error")){
            model.addAttribute("error", true);
        }
        return "login";
    }
}
