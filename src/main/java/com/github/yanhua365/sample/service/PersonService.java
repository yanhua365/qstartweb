package com.github.yanhua365.sample.service;

import com.github.yanhua365.sample.domain.Person;
import org.springframework.stereotype.Service;

@Service
public interface PersonService {

    void add(Person person);

    Iterable list();
}
