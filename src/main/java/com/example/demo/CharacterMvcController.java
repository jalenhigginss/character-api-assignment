package com.example.demo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/mvc/characters")
public class CharacterMvcController {

    @Autowired
    private CharacterService service;

    @GetMapping("/all")
    public String getAllCharacters(Model model) {
        model.addAttribute("characterList", service.getAll());
        return "character-list"; 
    }

    @GetMapping("/{id}")
    public String getCharacter(Model model, @PathVariable Long id) {
        model.addAttribute("character", service.getById(id).orElse(null));
        return "character-details"; 
    }

    @GetMapping("/new")
    public String showCreateForm() {
        return "character-create"; 
    }

@PostMapping("/create")
public String createCharacter(@ModelAttribute Character character) {
    service.save(character);
    return "redirect:/mvc/characters/all";
}

    @GetMapping("/about")
    public String showAbout() {
        return "about"; 
    }

@GetMapping("/delete/{id}")
public String deleteCharacter(@PathVariable Long id) {
    service.delete(id);
    
    return "redirect:/mvc/characters/all";
}

@GetMapping("/edit/{id}")
public String showUpdateForm(@PathVariable Long id, Model model) {
    Character character = service.getById(id).orElse(null);
    model.addAttribute("character", character);
    return "character-update"; 
}

@PostMapping("/update")
public String updateCharacter(@ModelAttribute Character character) {
    service.save(character);
    return "redirect:/mvc/characters/all";
}
}