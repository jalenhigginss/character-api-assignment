package com.example.demo;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CharacterService {
    @Autowired
    private CharacterRepository repository;

    public List<Character> getAll() { return repository.findAll(); }
    public Optional<Character> getById(Long id) { return repository.findById(id); }
    public Character save(Character c) { return repository.save(c); }
    public void delete(Long id) { repository.deleteById(id); }
    public List<Character> getByUniverse(String universe) { return repository.findByUniverse(universe); }
    public List<Character> searchByName(String name) { return repository.findByNameContainingIgnoreCase(name); }
}