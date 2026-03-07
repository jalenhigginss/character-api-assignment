package com.example.demo;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/characters")
public class CharacterController {
    @Autowired
    private CharacterService service;

    @GetMapping
    public List<Character> getAll() { return service.getAll(); }

    @GetMapping("/{id}")
    public Character getById(@PathVariable Long id) { return service.getById(id).orElse(null); }

    @PostMapping
    public Character create(@RequestBody Character c) { return service.save(c); }

    @PutMapping("/{id}")
    public Character update(@PathVariable Long id, @RequestBody Character c) {
        c.setCharacterId(id);
        return service.save(c);
    }

    @DeleteMapping("/{id}")
    public void delete(@PathVariable Long id) { service.delete(id); }

    @GetMapping("/category/{universe}")
    public List<Character> getByUniverse(@PathVariable String universe) { return service.getByUniverse(universe); }

    @GetMapping("/search")
    public List<Character> search(@RequestParam String name) { return service.searchByName(name); }
}
