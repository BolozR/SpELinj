package ai.hacktory.spel.service.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import ai.hacktory.spel.service.forms.UserForm;
import ai.hacktory.spel.service.services.SignUpService;

@Controller
public class SignUpController {
    @Autowired
    private SignUpService service;

    @GetMapping("/signUp")
    public String getSignUpPage(){
        return "signUp";
    }
    @PostMapping("/signUp")
    public String signUp(UserForm userForm){
        service.singUp(userForm);
        return "redirect:login";
    }
}
