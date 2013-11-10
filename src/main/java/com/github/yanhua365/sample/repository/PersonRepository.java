package com.github.yanhua365.sample.repository;

import com.github.yanhua365.sample.domain.Person;
import org.springframework.data.repository.CrudRepository;

public interface PersonRepository  extends CrudRepository<Person,Integer> {
}
