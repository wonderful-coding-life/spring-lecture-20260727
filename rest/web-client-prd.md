Spring Boot REST API를 사용하는 게시판 목록 웹 클라이언트를 만들어 줘.

## 기술

* HTML, JavaScript
* Tailwind CSS CDN 사용
* 파일은 `index.html` 하나로 작성

## API

* ArticleController의 @GetMapping("/articles")

게시글 항목:

* id
* title
* name
* email
* created

## 화면

* 상단에 `스프링 게시판` 제목 표시
* 게시글을 표 형태로 출력
* 번호, 제목, 작성자, 작성자 이메일, 작성일 표시
* 제목 아래에 description을 간단히 표시
* 하단에 이전, 페이지 번호, 다음 버튼으로 페이지네이션 구현
* 현재 페이지 버튼은 강조
* 첫 페이지에서는 이전 버튼 비활성화
* 마지막 페이지에서는 다음 버튼 비활성화
* 페이지 버튼을 클릭하면 해당 페이지의 데이터를 다시 조회
* 날짜는 한국어 형식으로 표시
* 로딩 중 표시와 API 요청 실패 메시지 처리
* 깔끔하고 반응형인 화면으로 작성

JavaScript 코드는 초보자가 이해할 수 있도록 단순하게 작성하고 주요 부분에 주석을 추가해 줘.