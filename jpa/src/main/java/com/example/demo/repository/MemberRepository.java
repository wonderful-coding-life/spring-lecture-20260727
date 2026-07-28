package com.example.demo.repository;

import com.example.demo.entity.Member;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface MemberRepository extends JpaRepository<Member, Long> {
    List<Member> findByName(String name);
    List<Member> findByNameLike(String name); // %김%, 김%, %선
    List<Member> findByNameContaining(String name); // %김%
    Member findByEmail(String email);
    List<Member> findByAge(Integer age);
    List<Member> findByAgeGreaterThan(Integer age);
    List<Member> findByAgeGreaterThanEqual(Integer age);
    List<Member> findByAgeLessThan(Integer age);
    List<Member> findByAgeLessThanEqualOrderByAge(Integer age);

    List<Member> findAllByOrderByAgeDescNameAsc();

    List<Member> findByNameAndEmail(String name, String email);
    List<Member> findByNameAndEmailOrAge(String name, String email, Integer age);


}
