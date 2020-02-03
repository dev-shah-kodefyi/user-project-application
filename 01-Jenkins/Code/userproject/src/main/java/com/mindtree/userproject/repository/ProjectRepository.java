package com.mindtree.userproject.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.mindtree.userproject.entity.Project;
@Repository
public interface ProjectRepository extends JpaRepository<Project, Integer> {

}
