package com.github.yanhua365.sample.service;

import com.github.yanhua365.sample.domain.Person;
import com.github.yanhua365.sample.repository.PersonRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


@Repository
@Transactional(readOnly = true)
public class PersonServiceImpl implements PersonService {



    private PersonRepository repository;

    @Autowired
    public PersonServiceImpl( PersonRepository repository){
        this.repository = repository;
    }

    @Transactional(readOnly = false)
    @Override
    public void add(Person person) {
       repository.save(person);
    }

    @Override
    public Iterable list() {
        return repository.findAll();
    }
}
