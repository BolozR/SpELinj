package ai.hacktory.spel.service.controllers;

import ai.hacktory.spel.service.repositories.CarsRepository;
import ai.hacktory.spel.service.repositories.UsersRepository;
import ai.hacktory.spel.service.security.details.UserDetailsImpl;
import ai.hacktory.spel.service.transfer.UserDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import static ai.hacktory.spel.service.transfer.UserDto.from;

@Controller
public class StoreController {

    @Autowired
    private CarsRepository carsRepository;

    @GetMapping("/store")
    public String getStore(ModelMap model, Authentication authentication){
        if(authentication != null) {
            UserDetailsImpl details = (UserDetailsImpl) authentication.getPrincipal();
            UserDto user = from(details.getUser());
            model.addAttribute("user", user);
        } else  model.addAttribute("user", "");
        model.addAttribute("carsFromServer", carsRepository.findAll());
        return "store";
    }

    @PostMapping("/store")
    public String postStore(String concern, ModelMap model, Authentication authentication){
        if(authentication == null) return "redirect:/login";
        UserDetailsImpl details = (UserDetailsImpl) authentication.getPrincipal();
        UserDto user = from(details.getUser());
        model.addAttribute("user", user);
        if(!concern.equals("")) model.addAttribute("carsFromServer", carsRepository.findAllByConcern(concern));
        else model.addAttribute("carsFromServer", carsRepository.findAll());
        return "store";
    }
}
