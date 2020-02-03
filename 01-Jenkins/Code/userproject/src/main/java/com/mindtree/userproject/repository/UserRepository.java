package com.mindtree.userproject.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.mindtree.userproject.entity.User;

@Repository
public interface UserRepository extends JpaRepository<User, Integer> {

}
