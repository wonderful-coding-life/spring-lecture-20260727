# 게시글 데이터베이스 연동 규격 생성

MyBatis를 사용하여 ARTICLE 테이블과 Article.java를 매핑하는 ArticleMapper2 인터페이스를 MyBatis를 사용하여 작성해 주세요.
별도의 XML 파일을 사용하지 말고 인터페이스에 애노테이션으로 SQL 매핑해 주세요.

* 데이터베이스 스키마 및 샘플 데이터: schema.sql, data.sql
* 테이블과 매핑할 자바 객체: Article.java, Member.java

ArticleMapper2에 필요한 메서드는 다음과 같아요.

* 게시글 생성, 생성날짜와 수정날짜는 데이터베이스 시간 사용
* 전체 게시글 목록 조회
* 게시글 아이디로 게시글 조회
* 작성자 아이디로 게시글 목록 조회
* 게시글 아이디로 게시글 제목, 본문 수정
* 게시글 아이디로 게시글 삭제