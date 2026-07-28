package com.example.demo.mapper;

import com.example.demo.model.Member;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface MemberMapper {
    List<Member> findAll();
    List<Member> findAllOrderBy(@Param("order") String order, @Param("dir") String dir);
    List<Member> findByNameLike(@Param("name") String name);
    Member findById(@Param("id") Long id);
    int save(@Param("member") Member member);
    int update(@Param("member") Member member);
    int updateEmail(@Param("id") Long id, @Param("email") String email);
    int deleteById(@Param("id") Long id);
}
