package com.example.demo;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CharacterRepository extends JpaRepository<Character, Long> {

    List<Character> findByUniverse(String universe);

    List<Character> findByNameContainingIgnoreCase(String name);
}