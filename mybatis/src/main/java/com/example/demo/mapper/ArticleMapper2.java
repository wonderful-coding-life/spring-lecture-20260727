package com.example.demo.mapper;

import com.example.demo.model.Article;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

@Mapper
public interface ArticleMapper2 {

    @Insert("""
            INSERT INTO article (title, description, created, updated, member_id)
            VALUES (
                #{article.title},
                #{article.description},
                CURRENT_TIMESTAMP,
                CURRENT_TIMESTAMP,
                #{article.memberId}
            )
            """)
    @Options(
            useGeneratedKeys = true,
            keyProperty = "article.id",
            keyColumn = "id"
    )
    int insert(@Param("article") Article article);

    @Results(id = "articleResultMap", value = {
            @Result(column = "id", property = "id", id = true),
            @Result(column = "title", property = "title"),
            @Result(column = "description", property = "description"),
            @Result(column = "created", property = "created"),
            @Result(column = "updated", property = "updated"),
            @Result(column = "member_id", property = "memberId")
    })
    @Select("""
            SELECT id, title, description, created, updated, member_id
            FROM article
            ORDER BY id
            """)
    List<Article> findAll();

    @ResultMap("articleResultMap")
    @Select("""
            SELECT id, title, description, created, updated, member_id
            FROM article
            WHERE id = #{id}
            """)
    Article findById(@Param("id") Long id);

    @ResultMap("articleResultMap")
    @Select("""
            SELECT id, title, description, created, updated, member_id
            FROM article
            WHERE member_id = #{memberId}
            ORDER BY id
            """)
    List<Article> findByMemberId(@Param("memberId") Long memberId);

    @Update("""
            UPDATE article
            SET title = #{title},
                description = #{description},
                updated = CURRENT_TIMESTAMP
            WHERE id = #{id}
            """)
    int update(
            @Param("id") Long id,
            @Param("title") String title,
            @Param("description") String description
    );

    @Delete("DELETE FROM article WHERE id = #{id}")
    int deleteById(@Param("id") Long id);
}
