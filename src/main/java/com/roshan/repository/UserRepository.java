package com.roshan.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.roshan.model.User;
@Repository
@EnableJpaRepositories
public interface UserRepository extends JpaRepository<User, Integer> {
	@Query("SELECT u FROM User u WHERE u.Email = :email AND u.password = :password")
	public User findByEmailAndPassword(@Param("email") String email, @Param("password") String password);

	/* boolean existsByEmail(String email); */

	
}
