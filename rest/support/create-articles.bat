@echo off
chcp 65001 >nul
setlocal

set "BASE_URL=http://localhost:8080"
set "MEMBER_ID=%~1"

if "%MEMBER_ID%"=="" (
    echo 사용법: create-articles.bat MEMBER_ID
    echo 예시: create-articles.bat 1
    exit /b 1
)

echo 회원 ID %MEMBER_ID%의 게시글 100개를 등록합니다.
echo.

echo [1/100] 방학 시작
curl.exe --silent --show-error --fail-with-body -X POST "%BASE_URL%/articles?memberId=%MEMBER_ID%" ^
  -H "Content-Type: application/json; charset=UTF-8" ^
  -d "{\"title\":\"방학 시작\",\"description\":\"기다리던 방학이 시작되어 아침부터 마음이 설렙니다.\"}"
if errorlevel 1 (
    echo [실패] 1번째 게시글: 방학 시작
    exit /b 1
)
echo.
echo [2/100] 늦잠 잔 날
curl.exe --silent --show-error --fail-with-body -X POST "%BASE_URL%/articles?memberId=%MEMBER_ID%" ^
  -H "Content-Type: application/json; charset=UTF-8" ^
  -d "{\"title\":\"늦잠 잔 날\",\"description\":\"알람을 끄고 오랜만에 푹 자며 여유로운 아침을 보냈습니다.\"}"
if errorlevel 1 (
    echo [실패] 2번째 게시글: 늦잠 잔 날
    exit /b 1
)
echo.
echo [3/100] 방학 계획
curl.exe --silent --show-error --fail-with-body -X POST "%BASE_URL%/articles?memberId=%MEMBER_ID%" ^
  -H "Content-Type: application/json; charset=UTF-8" ^
  -d "{\"title\":\"방학 계획\",\"description\":\"공부와 놀이를 적절히 나눈 방학 계획표를 만들었습니다.\"}"
if errorlevel 1 (
    echo [실패] 3번째 게시글: 방학 계획
    exit /b 1
)
echo.
echo [4/100] 도서관 방문
curl.exe --silent --show-error --fail-with-body -X POST "%BASE_URL%/articles?memberId=%MEMBER_ID%" ^
  -H "Content-Type: application/json; charset=UTF-8" ^
  -d "{\"title\":\"도서관 방문\",\"description\":\"시원한 도서관에서 읽고 싶었던 책을 빌렸습니다.\"}"
if errorlevel 1 (
    echo [실패] 4번째 게시글: 도서관 방문
    exit /b 1
)
echo.
echo [5/100] 수영장 나들이
curl.exe --silent --show-error --fail-with-body -X POST "%BASE_URL%/articles?memberId=%MEMBER_ID%" ^
  -H "Content-Type: application/json; charset=UTF-8" ^
  -d "{\"title\":\"수영장 나들이\",\"description\":\"친구들과 수영장에서 물놀이를 하며 더위를 식혔습니다.\"}"
if errorlevel 1 (
    echo [실패] 5번째 게시글: 수영장 나들이
    exit /b 1
)
echo.
echo [6/100] 여름 숙제
curl.exe --silent --show-error --fail-with-body -X POST "%BASE_URL%/articles?memberId=%MEMBER_ID%" ^
  -H "Content-Type: application/json; charset=UTF-8" ^
  -d "{\"title\":\"여름 숙제\",\"description\":\"미루지 않으려고 오늘부터 여름방학 숙제를 시작했습니다.\"}"
if errorlevel 1 (
    echo [실패] 6번째 게시글: 여름 숙제
    exit /b 1
)
echo.
echo [7/100] 가족 여행
curl.exe --silent --show-error --fail-with-body -X POST "%BASE_URL%/articles?memberId=%MEMBER_ID%" ^
  -H "Content-Type: application/json; charset=UTF-8" ^
  -d "{\"title\":\"가족 여행\",\"description\":\"가족과 함께 바다로 떠날 여행 계획을 세웠습니다.\"}"
if errorlevel 1 (
    echo [실패] 7번째 게시글: 가족 여행
    exit /b 1
)
echo.
echo [8/100] 캠핑 준비
curl.exe --silent --show-error --fail-with-body -X POST "%BASE_URL%/articles?memberId=%MEMBER_ID%" ^
  -H "Content-Type: application/json; charset=UTF-8" ^
  -d "{\"title\":\"캠핑 준비\",\"description\":\"주말 캠핑에 필요한 텐트와 간식을 미리 준비했습니다.\"}"
if errorlevel 1 (
    echo [실패] 8번째 게시글: 캠핑 준비
    exit /b 1
)
echo.
echo [9/100] 바다 구경
curl.exe --silent --show-error --fail-with-body -X POST "%BASE_URL%/articles?memberId=%MEMBER_ID%" ^
  -H "Content-Type: application/json; charset=UTF-8" ^
  -d "{\"title\":\"바다 구경\",\"description\":\"푸른 바다와 하얀 파도를 보며 즐거운 하루를 보냈습니다.\"}"
if errorlevel 1 (
    echo [실패] 9번째 게시글: 바다 구경
    exit /b 1
)
echo.
echo [10/100] 계곡 물놀이
curl.exe --silent --show-error --fail-with-body -X POST "%BASE_URL%/articles?memberId=%MEMBER_ID%" ^
  -H "Content-Type: application/json; charset=UTF-8" ^
  -d "{\"title\":\"계곡 물놀이\",\"description\":\"차가운 계곡물에 발을 담그니 더위가 금세 사라졌습니다.\"}"
if errorlevel 1 (
    echo [실패] 10번째 게시글: 계곡 물놀이
    exit /b 1
)
echo.
echo [11/100] 아이스크림
curl.exe --silent --show-error --fail-with-body -X POST "%BASE_URL%/articles?memberId=%MEMBER_ID%" ^
  -H "Content-Type: application/json; charset=UTF-8" ^
  -d "{\"title\":\"아이스크림\",\"description\":\"더운 오후에 시원한 아이스크림을 먹으며 쉬었습니다.\"}"
if errorlevel 1 (
    echo [실패] 11번째 게시글: 아이스크림
    exit /b 1
)
echo.
echo [12/100] 영화 보는 날
curl.exe --silent --show-error --fail-with-body -X POST "%BASE_URL%/articles?memberId=%MEMBER_ID%" ^
  -H "Content-Type: application/json; charset=UTF-8" ^
  -d "{\"title\":\"영화 보는 날\",\"description\":\"보고 싶었던 영화를 집에서 편안하게 감상했습니다.\"}"
if errorlevel 1 (
    echo [실패] 12번째 게시글: 영화 보는 날
    exit /b 1
)
echo.
echo [13/100] 친구와 약속
curl.exe --silent --show-error --fail-with-body -X POST "%BASE_URL%/articles?memberId=%MEMBER_ID%" ^
  -H "Content-Type: application/json; charset=UTF-8" ^
  -d "{\"title\":\"친구와 약속\",\"description\":\"오랜만에 친구를 만나 재미있는 이야기를 나누었습니다.\"}"
if errorlevel 1 (
    echo [실패] 13번째 게시글: 친구와 약속
    exit /b 1
)
echo.
echo [14/100] 자전거 타기
curl.exe --silent --show-error --fail-with-body -X POST "%BASE_URL%/articles?memberId=%MEMBER_ID%" ^
  -H "Content-Type: application/json; charset=UTF-8" ^
  -d "{\"title\":\"자전거 타기\",\"description\":\"저녁 바람을 맞으며 동네 공원을 자전거로 달렸습니다.\"}"
if errorlevel 1 (
    echo [실패] 14번째 게시글: 자전거 타기
    exit /b 1
)
echo.
echo [15/100] 아침 운동
curl.exe --silent --show-error --fail-with-body -X POST "%BASE_URL%/articles?memberId=%MEMBER_ID%" ^
  -H "Content-Type: application/json; charset=UTF-8" ^
  -d "{\"title\":\"아침 운동\",\"description\":\"건강한 방학을 보내려고 매일 아침 가볍게 운동합니다.\"}"
if errorlevel 1 (
    echo [실패] 15번째 게시글: 아침 운동
    exit /b 1
)
echo.
echo [16/100] 독서 목표
curl.exe --silent --show-error --fail-with-body -X POST "%BASE_URL%/articles?memberId=%MEMBER_ID%" ^
  -H "Content-Type: application/json; charset=UTF-8" ^
  -d "{\"title\":\"독서 목표\",\"description\":\"방학 동안 책 열 권을 읽는 것을 목표로 정했습니다.\"}"
if errorlevel 1 (
    echo [실패] 16번째 게시글: 독서 목표
    exit /b 1
)
echo.
echo [17/100] 일기 쓰기
curl.exe --silent --show-error --fail-with-body -X POST "%BASE_URL%/articles?memberId=%MEMBER_ID%" ^
  -H "Content-Type: application/json; charset=UTF-8" ^
  -d "{\"title\":\"일기 쓰기\",\"description\":\"방학의 추억을 남기기 위해 하루 일을 일기에 적었습니다.\"}"
if errorlevel 1 (
    echo [실패] 17번째 게시글: 일기 쓰기
    exit /b 1
)
echo.
echo [18/100] 요리 도전
curl.exe --silent --show-error --fail-with-body -X POST "%BASE_URL%/articles?memberId=%MEMBER_ID%" ^
  -H "Content-Type: application/json; charset=UTF-8" ^
  -d "{\"title\":\"요리 도전\",\"description\":\"가족과 함께 간단한 볶음밥을 만들어 맛있게 먹었습니다.\"}"
if errorlevel 1 (
    echo [실패] 18번째 게시글: 요리 도전
    exit /b 1
)
echo.
echo [19/100] 쿠키 만들기
curl.exe --silent --show-error --fail-with-body -X POST "%BASE_URL%/articles?memberId=%MEMBER_ID%" ^
  -H "Content-Type: application/json; charset=UTF-8" ^
  -d "{\"title\":\"쿠키 만들기\",\"description\":\"처음 만든 쿠키가 바삭하게 구워져 모두에게 나누어 주었습니다.\"}"
if errorlevel 1 (
    echo [실패] 19번째 게시글: 쿠키 만들기
    exit /b 1
)
echo.
echo [20/100] 방 정리
curl.exe --silent --show-error --fail-with-body -X POST "%BASE_URL%/articles?memberId=%MEMBER_ID%" ^
  -H "Content-Type: application/json; charset=UTF-8" ^
  -d "{\"title\":\"방 정리\",\"description\":\"미뤄 두었던 책상과 옷장을 깨끗하게 정리했습니다.\"}"
if errorlevel 1 (
    echo [실패] 20번째 게시글: 방 정리
    exit /b 1
)
echo.
echo [21/100] 게임 시간
curl.exe --silent --show-error --fail-with-body -X POST "%BASE_URL%/articles?memberId=%MEMBER_ID%" ^
  -H "Content-Type: application/json; charset=UTF-8" ^
  -d "{\"title\":\"게임 시간\",\"description\":\"할 일을 끝낸 뒤 정해진 시간 동안 재미있게 게임했습니다.\"}"
if errorlevel 1 (
    echo [실패] 21번째 게시글: 게임 시간
    exit /b 1
)
echo.
echo [22/100] 할머니 댁
curl.exe --silent --show-error --fail-with-body -X POST "%BASE_URL%/articles?memberId=%MEMBER_ID%" ^
  -H "Content-Type: application/json; charset=UTF-8" ^
  -d "{\"title\":\"할머니 댁\",\"description\":\"할머니 댁에 방문해 맛있는 음식과 따뜻한 이야기를 나누었습니다.\"}"
if errorlevel 1 (
    echo [실패] 22번째 게시글: 할머니 댁
    exit /b 1
)
echo.
echo [23/100] 시골 체험
curl.exe --silent --show-error --fail-with-body -X POST "%BASE_URL%/articles?memberId=%MEMBER_ID%" ^
  -H "Content-Type: application/json; charset=UTF-8" ^
  -d "{\"title\":\"시골 체험\",\"description\":\"논과 밭을 구경하며 도시에서 보기 힘든 풍경을 만났습니다.\"}"
if errorlevel 1 (
    echo [실패] 23번째 게시글: 시골 체험
    exit /b 1
)
echo.
echo [24/100] 별 보기
curl.exe --silent --show-error --fail-with-body -X POST "%BASE_URL%/articles?memberId=%MEMBER_ID%" ^
  -H "Content-Type: application/json; charset=UTF-8" ^
  -d "{\"title\":\"별 보기\",\"description\":\"밤하늘에 반짝이는 별을 세며 조용한 시간을 보냈습니다.\"}"
if errorlevel 1 (
    echo [실패] 24번째 게시글: 별 보기
    exit /b 1
)
echo.
echo [25/100] 곤충 관찰
curl.exe --silent --show-error --fail-with-body -X POST "%BASE_URL%/articles?memberId=%MEMBER_ID%" ^
  -H "Content-Type: application/json; charset=UTF-8" ^
  -d "{\"title\":\"곤충 관찰\",\"description\":\"공원에서 매미와 잠자리를 찾아 자세히 관찰했습니다.\"}"
if errorlevel 1 (
    echo [실패] 25번째 게시글: 곤충 관찰
    exit /b 1
)
echo.
echo [26/100] 식물 키우기
curl.exe --silent --show-error --fail-with-body -X POST "%BASE_URL%/articles?memberId=%MEMBER_ID%" ^
  -H "Content-Type: application/json; charset=UTF-8" ^
  -d "{\"title\":\"식물 키우기\",\"description\":\"작은 화분에 씨앗을 심고 매일 물을 주기로 했습니다.\"}"
if errorlevel 1 (
    echo [실패] 26번째 게시글: 식물 키우기
    exit /b 1
)
echo.
echo [27/100] 사진 찍기
curl.exe --silent --show-error --fail-with-body -X POST "%BASE_URL%/articles?memberId=%MEMBER_ID%" ^
  -H "Content-Type: application/json; charset=UTF-8" ^
  -d "{\"title\":\"사진 찍기\",\"description\":\"방학 동안 만난 멋진 풍경을 사진으로 기록했습니다.\"}"
if errorlevel 1 (
    echo [실패] 27번째 게시글: 사진 찍기
    exit /b 1
)
echo.
echo [28/100] 미술 시간
curl.exe --silent --show-error --fail-with-body -X POST "%BASE_URL%/articles?memberId=%MEMBER_ID%" ^
  -H "Content-Type: application/json; charset=UTF-8" ^
  -d "{\"title\":\"미술 시간\",\"description\":\"색연필로 여름 바다와 햇빛을 그림으로 표현했습니다.\"}"
if errorlevel 1 (
    echo [실패] 28번째 게시글: 미술 시간
    exit /b 1
)
echo.
echo [29/100] 악기 연습
curl.exe --silent --show-error --fail-with-body -X POST "%BASE_URL%/articles?memberId=%MEMBER_ID%" ^
  -H "Content-Type: application/json; charset=UTF-8" ^
  -d "{\"title\":\"악기 연습\",\"description\":\"좋아하는 노래를 연주하려고 매일 조금씩 기타를 연습합니다.\"}"
if errorlevel 1 (
    echo [실패] 29번째 게시글: 악기 연습
    exit /b 1
)
echo.
echo [30/100] 노래 부르기
curl.exe --silent --show-error --fail-with-body -X POST "%BASE_URL%/articles?memberId=%MEMBER_ID%" ^
  -H "Content-Type: application/json; charset=UTF-8" ^
  -d "{\"title\":\"노래 부르기\",\"description\":\"친구들과 좋아하는 노래를 부르며 즐거운 시간을 보냈습니다.\"}"
if errorlevel 1 (
    echo [실패] 30번째 게시글: 노래 부르기
    exit /b 1
)
echo.
echo [31/100] 박물관 견학
curl.exe --silent --show-error --fail-with-body -X POST "%BASE_URL%/articles?memberId=%MEMBER_ID%" ^
  -H "Content-Type: application/json; charset=UTF-8" ^
  -d "{\"title\":\"박물관 견학\",\"description\":\"박물관에서 옛날 생활과 다양한 유물을 살펴보았습니다.\"}"
if errorlevel 1 (
    echo [실패] 31번째 게시글: 박물관 견학
    exit /b 1
)
echo.
echo [32/100] 과학관 체험
curl.exe --silent --show-error --fail-with-body -X POST "%BASE_URL%/articles?memberId=%MEMBER_ID%" ^
  -H "Content-Type: application/json; charset=UTF-8" ^
  -d "{\"title\":\"과학관 체험\",\"description\":\"과학관의 체험 장치를 직접 움직이며 원리를 배웠습니다.\"}"
if errorlevel 1 (
    echo [실패] 32번째 게시글: 과학관 체험
    exit /b 1
)
echo.
echo [33/100] 동물원 방문
curl.exe --silent --show-error --fail-with-body -X POST "%BASE_URL%/articles?memberId=%MEMBER_ID%" ^
  -H "Content-Type: application/json; charset=UTF-8" ^
  -d "{\"title\":\"동물원 방문\",\"description\":\"동물원에서 기린과 코끼리를 가까이에서 보았습니다.\"}"
if errorlevel 1 (
    echo [실패] 33번째 게시글: 동물원 방문
    exit /b 1
)
echo.
echo [34/100] 수족관 구경
curl.exe --silent --show-error --fail-with-body -X POST "%BASE_URL%/articles?memberId=%MEMBER_ID%" ^
  -H "Content-Type: application/json; charset=UTF-8" ^
  -d "{\"title\":\"수족관 구경\",\"description\":\"커다란 수조 속을 헤엄치는 상어와 물고기를 구경했습니다.\"}"
if errorlevel 1 (
    echo [실패] 34번째 게시글: 수족관 구경
    exit /b 1
)
echo.
echo [35/100] 놀이공원
curl.exe --silent --show-error --fail-with-body -X POST "%BASE_URL%/articles?memberId=%MEMBER_ID%" ^
  -H "Content-Type: application/json; charset=UTF-8" ^
  -d "{\"title\":\"놀이공원\",\"description\":\"신나는 놀이기구를 타며 방학의 특별한 추억을 만들었습니다.\"}"
if errorlevel 1 (
    echo [실패] 35번째 게시글: 놀이공원
    exit /b 1
)
echo.
echo [36/100] 공원 산책
curl.exe --silent --show-error --fail-with-body -X POST "%BASE_URL%/articles?memberId=%MEMBER_ID%" ^
  -H "Content-Type: application/json; charset=UTF-8" ^
  -d "{\"title\":\"공원 산책\",\"description\":\"해가 진 뒤 가족과 공원을 천천히 걸으며 대화했습니다.\"}"
if errorlevel 1 (
    echo [실패] 36번째 게시글: 공원 산책
    exit /b 1
)
echo.
echo [37/100] 한강 나들이
curl.exe --silent --show-error --fail-with-body -X POST "%BASE_URL%/articles?memberId=%MEMBER_ID%" ^
  -H "Content-Type: application/json; charset=UTF-8" ^
  -d "{\"title\":\"한강 나들이\",\"description\":\"강바람을 맞으며 돗자리에 앉아 간단한 간식을 먹었습니다.\"}"
if errorlevel 1 (
    echo [실패] 37번째 게시글: 한강 나들이
    exit /b 1
)
echo.
echo [38/100] 피크닉 준비
curl.exe --silent --show-error --fail-with-body -X POST "%BASE_URL%/articles?memberId=%MEMBER_ID%" ^
  -H "Content-Type: application/json; charset=UTF-8" ^
  -d "{\"title\":\"피크닉 준비\",\"description\":\"과일과 샌드위치를 챙겨 가까운 공원으로 소풍을 갔습니다.\"}"
if errorlevel 1 (
    echo [실패] 38번째 게시글: 피크닉 준비
    exit /b 1
)
echo.
echo [39/100] 비 오는 날
curl.exe --silent --show-error --fail-with-body -X POST "%BASE_URL%/articles?memberId=%MEMBER_ID%" ^
  -H "Content-Type: application/json; charset=UTF-8" ^
  -d "{\"title\":\"비 오는 날\",\"description\":\"창밖의 빗소리를 들으며 따뜻한 차와 책을 즐겼습니다.\"}"
if errorlevel 1 (
    echo [실패] 39번째 게시글: 비 오는 날
    exit /b 1
)
echo.
echo [40/100] 무지개 발견
curl.exe --silent --show-error --fail-with-body -X POST "%BASE_URL%/articles?memberId=%MEMBER_ID%" ^
  -H "Content-Type: application/json; charset=UTF-8" ^
  -d "{\"title\":\"무지개 발견\",\"description\":\"비가 그친 뒤 하늘에 뜬 커다란 무지개를 보았습니다.\"}"
if errorlevel 1 (
    echo [실패] 40번째 게시글: 무지개 발견
    exit /b 1
)
echo.
echo [41/100] 더위 피하기
curl.exe --silent --show-error --fail-with-body -X POST "%BASE_URL%/articles?memberId=%MEMBER_ID%" ^
  -H "Content-Type: application/json; charset=UTF-8" ^
  -d "{\"title\":\"더위 피하기\",\"description\":\"낮에는 실내에서 쉬고 선선한 저녁에 밖으로 나갔습니다.\"}"
if errorlevel 1 (
    echo [실패] 41번째 게시글: 더위 피하기
    exit /b 1
)
echo.
echo [42/100] 선풍기 청소
curl.exe --silent --show-error --fail-with-body -X POST "%BASE_URL%/articles?memberId=%MEMBER_ID%" ^
  -H "Content-Type: application/json; charset=UTF-8" ^
  -d "{\"title\":\"선풍기 청소\",\"description\":\"더 시원한 바람을 위해 선풍기의 먼지를 깨끗이 닦았습니다.\"}"
if errorlevel 1 (
    echo [실패] 42번째 게시글: 선풍기 청소
    exit /b 1
)
echo.
echo [43/100] 수박 먹기
curl.exe --silent --show-error --fail-with-body -X POST "%BASE_URL%/articles?memberId=%MEMBER_ID%" ^
  -H "Content-Type: application/json; charset=UTF-8" ^
  -d "{\"title\":\"수박 먹기\",\"description\":\"차갑게 식힌 수박을 가족과 나누어 먹었습니다.\"}"
if errorlevel 1 (
    echo [실패] 43번째 게시글: 수박 먹기
    exit /b 1
)
echo.
echo [44/100] 팥빙수 한 그릇
curl.exe --silent --show-error --fail-with-body -X POST "%BASE_URL%/articles?memberId=%MEMBER_ID%" ^
  -H "Content-Type: application/json; charset=UTF-8" ^
  -d "{\"title\":\"팥빙수 한 그릇\",\"description\":\"얼음이 가득한 팥빙수로 무더운 오후를 시원하게 보냈습니다.\"}"
if errorlevel 1 (
    echo [실패] 44번째 게시글: 팥빙수 한 그릇
    exit /b 1
)
echo.
echo [45/100] 복숭아 간식
curl.exe --silent --show-error --fail-with-body -X POST "%BASE_URL%/articles?memberId=%MEMBER_ID%" ^
  -H "Content-Type: application/json; charset=UTF-8" ^
  -d "{\"title\":\"복숭아 간식\",\"description\":\"달콤하고 향긋한 복숭아를 방학 간식으로 먹었습니다.\"}"
if errorlevel 1 (
    echo [실패] 45번째 게시글: 복숭아 간식
    exit /b 1
)
echo.
echo [46/100] 옥수수 삶기
curl.exe --silent --show-error --fail-with-body -X POST "%BASE_URL%/articles?memberId=%MEMBER_ID%" ^
  -H "Content-Type: application/json; charset=UTF-8" ^
  -d "{\"title\":\"옥수수 삶기\",\"description\":\"갓 삶은 옥수수를 간식으로 먹으니 고소하고 맛있었습니다.\"}"
if errorlevel 1 (
    echo [실패] 46번째 게시글: 옥수수 삶기
    exit /b 1
)
echo.
echo [47/100] 여름 축제
curl.exe --silent --show-error --fail-with-body -X POST "%BASE_URL%/articles?memberId=%MEMBER_ID%" ^
  -H "Content-Type: application/json; charset=UTF-8" ^
  -d "{\"title\":\"여름 축제\",\"description\":\"동네 여름 축제에서 공연과 다양한 체험을 즐겼습니다.\"}"
if errorlevel 1 (
    echo [실패] 47번째 게시글: 여름 축제
    exit /b 1
)
echo.
echo [48/100] 불꽃놀이
curl.exe --silent --show-error --fail-with-body -X POST "%BASE_URL%/articles?memberId=%MEMBER_ID%" ^
  -H "Content-Type: application/json; charset=UTF-8" ^
  -d "{\"title\":\"불꽃놀이\",\"description\":\"밤하늘을 화려하게 수놓은 불꽃을 보며 감탄했습니다.\"}"
if errorlevel 1 (
    echo [실패] 48번째 게시글: 불꽃놀이
    exit /b 1
)
echo.
echo [49/100] 물총 놀이
curl.exe --silent --show-error --fail-with-body -X POST "%BASE_URL%/articles?memberId=%MEMBER_ID%" ^
  -H "Content-Type: application/json; charset=UTF-8" ^
  -d "{\"title\":\"물총 놀이\",\"description\":\"친구들과 물총 놀이를 하며 온몸이 젖도록 뛰어놀았습니다.\"}"
if errorlevel 1 (
    echo [실패] 49번째 게시글: 물총 놀이
    exit /b 1
)
echo.
echo [50/100] 모래성 만들기
curl.exe --silent --show-error --fail-with-body -X POST "%BASE_URL%/articles?memberId=%MEMBER_ID%" ^
  -H "Content-Type: application/json; charset=UTF-8" ^
  -d "{\"title\":\"모래성 만들기\",\"description\":\"해변의 젖은 모래로 크고 튼튼한 성을 만들었습니다.\"}"
if errorlevel 1 (
    echo [실패] 50번째 게시글: 모래성 만들기
    exit /b 1
)
echo.
echo [51/100] 조개 줍기
curl.exe --silent --show-error --fail-with-body -X POST "%BASE_URL%/articles?memberId=%MEMBER_ID%" ^
  -H "Content-Type: application/json; charset=UTF-8" ^
  -d "{\"title\":\"조개 줍기\",\"description\":\"바닷가를 걸으며 모양이 예쁜 조개껍데기를 모았습니다.\"}"
if errorlevel 1 (
    echo [실패] 51번째 게시글: 조개 줍기
    exit /b 1
)
echo.
echo [52/100] 일출 보기
curl.exe --silent --show-error --fail-with-body -X POST "%BASE_URL%/articles?memberId=%MEMBER_ID%" ^
  -H "Content-Type: application/json; charset=UTF-8" ^
  -d "{\"title\":\"일출 보기\",\"description\":\"아침 일찍 일어나 바다 위로 떠오르는 해를 보았습니다.\"}"
if errorlevel 1 (
    echo [실패] 52번째 게시글: 일출 보기
    exit /b 1
)
echo.
echo [53/100] 노을 감상
curl.exe --silent --show-error --fail-with-body -X POST "%BASE_URL%/articles?memberId=%MEMBER_ID%" ^
  -H "Content-Type: application/json; charset=UTF-8" ^
  -d "{\"title\":\"노을 감상\",\"description\":\"붉게 물든 저녁 하늘을 바라보며 하루를 마무리했습니다.\"}"
if errorlevel 1 (
    echo [실패] 53번째 게시글: 노을 감상
    exit /b 1
)
echo.
echo [54/100] 산책로 걷기
curl.exe --silent --show-error --fail-with-body -X POST "%BASE_URL%/articles?memberId=%MEMBER_ID%" ^
  -H "Content-Type: application/json; charset=UTF-8" ^
  -d "{\"title\":\"산책로 걷기\",\"description\":\"나무 그늘이 이어진 산책로를 천천히 걸었습니다.\"}"
if errorlevel 1 (
    echo [실패] 54번째 게시글: 산책로 걷기
    exit /b 1
)
echo.
echo [55/100] 숲 체험
curl.exe --silent --show-error --fail-with-body -X POST "%BASE_URL%/articles?memberId=%MEMBER_ID%" ^
  -H "Content-Type: application/json; charset=UTF-8" ^
  -d "{\"title\":\"숲 체험\",\"description\":\"숲 해설을 들으며 나무와 풀의 이름을 배웠습니다.\"}"
if errorlevel 1 (
    echo [실패] 55번째 게시글: 숲 체험
    exit /b 1
)
echo.
echo [56/100] 등산 도전
curl.exe --silent --show-error --fail-with-body -X POST "%BASE_URL%/articles?memberId=%MEMBER_ID%" ^
  -H "Content-Type: application/json; charset=UTF-8" ^
  -d "{\"title\":\"등산 도전\",\"description\":\"가족과 낮은 산에 올라 시원한 정상 바람을 맞았습니다.\"}"
if errorlevel 1 (
    echo [실패] 56번째 게시글: 등산 도전
    exit /b 1
)
echo.
echo [57/100] 건강 간식
curl.exe --silent --show-error --fail-with-body -X POST "%BASE_URL%/articles?memberId=%MEMBER_ID%" ^
  -H "Content-Type: application/json; charset=UTF-8" ^
  -d "{\"title\":\"건강 간식\",\"description\":\"과일과 요구르트로 간단하고 건강한 간식을 만들었습니다.\"}"
if errorlevel 1 (
    echo [실패] 57번째 게시글: 건강 간식
    exit /b 1
)
echo.
echo [58/100] 생활 계획
curl.exe --silent --show-error --fail-with-body -X POST "%BASE_URL%/articles?memberId=%MEMBER_ID%" ^
  -H "Content-Type: application/json; charset=UTF-8" ^
  -d "{\"title\":\"생활 계획\",\"description\":\"규칙적인 방학을 위해 잠자는 시간과 일어나는 시간을 정했습니다.\"}"
if errorlevel 1 (
    echo [실패] 58번째 게시글: 생활 계획
    exit /b 1
)
echo.
echo [59/100] 용돈 기록
curl.exe --silent --show-error --fail-with-body -X POST "%BASE_URL%/articles?memberId=%MEMBER_ID%" ^
  -H "Content-Type: application/json; charset=UTF-8" ^
  -d "{\"title\":\"용돈 기록\",\"description\":\"방학 동안 사용한 용돈을 매일 가계부에 기록했습니다.\"}"
if errorlevel 1 (
    echo [실패] 59번째 게시글: 용돈 기록
    exit /b 1
)
echo.
echo [60/100] 시장 구경
curl.exe --silent --show-error --fail-with-body -X POST "%BASE_URL%/articles?memberId=%MEMBER_ID%" ^
  -H "Content-Type: application/json; charset=UTF-8" ^
  -d "{\"title\":\"시장 구경\",\"description\":\"전통시장을 둘러보며 다양한 음식과 물건을 구경했습니다.\"}"
if errorlevel 1 (
    echo [실패] 60번째 게시글: 시장 구경
    exit /b 1
)
echo.
echo [61/100] 장보기 도움
curl.exe --silent --show-error --fail-with-body -X POST "%BASE_URL%/articles?memberId=%MEMBER_ID%" ^
  -H "Content-Type: application/json; charset=UTF-8" ^
  -d "{\"title\":\"장보기 도움\",\"description\":\"가족과 마트에 가서 필요한 물건을 함께 골랐습니다.\"}"
if errorlevel 1 (
    echo [실패] 61번째 게시글: 장보기 도움
    exit /b 1
)
echo.
echo [62/100] 빨래 돕기
curl.exe --silent --show-error --fail-with-body -X POST "%BASE_URL%/articles?memberId=%MEMBER_ID%" ^
  -H "Content-Type: application/json; charset=UTF-8" ^
  -d "{\"title\":\"빨래 돕기\",\"description\":\"햇볕이 좋은 날 가족의 빨래를 널고 개는 일을 도왔습니다.\"}"
if errorlevel 1 (
    echo [실패] 62번째 게시글: 빨래 돕기
    exit /b 1
)
echo.
echo [63/100] 설거지 담당
curl.exe --silent --show-error --fail-with-body -X POST "%BASE_URL%/articles?memberId=%MEMBER_ID%" ^
  -H "Content-Type: application/json; charset=UTF-8" ^
  -d "{\"title\":\"설거지 담당\",\"description\":\"저녁 식사 후 설거지를 맡아 깨끗하게 정리했습니다.\"}"
if errorlevel 1 (
    echo [실패] 63번째 게시글: 설거지 담당
    exit /b 1
)
echo.
echo [64/100] 동생과 놀기
curl.exe --silent --show-error --fail-with-body -X POST "%BASE_URL%/articles?memberId=%MEMBER_ID%" ^
  -H "Content-Type: application/json; charset=UTF-8" ^
  -d "{\"title\":\"동생과 놀기\",\"description\":\"동생과 보드게임을 하며 즐거운 오후를 보냈습니다.\"}"
if errorlevel 1 (
    echo [실패] 64번째 게시글: 동생과 놀기
    exit /b 1
)
echo.
echo [65/100] 보드게임
curl.exe --silent --show-error --fail-with-body -X POST "%BASE_URL%/articles?memberId=%MEMBER_ID%" ^
  -H "Content-Type: application/json; charset=UTF-8" ^
  -d "{\"title\":\"보드게임\",\"description\":\"가족과 보드게임을 하며 웃음이 가득한 시간을 보냈습니다.\"}"
if errorlevel 1 (
    echo [실패] 65번째 게시글: 보드게임
    exit /b 1
)
echo.
echo [66/100] 퍼즐 완성
curl.exe --silent --show-error --fail-with-body -X POST "%BASE_URL%/articles?memberId=%MEMBER_ID%" ^
  -H "Content-Type: application/json; charset=UTF-8" ^
  -d "{\"title\":\"퍼즐 완성\",\"description\":\"조각이 많은 퍼즐을 끝까지 맞추어 뿌듯했습니다.\"}"
if errorlevel 1 (
    echo [실패] 66번째 게시글: 퍼즐 완성
    exit /b 1
)
echo.
echo [67/100] 종이접기
curl.exe --silent --show-error --fail-with-body -X POST "%BASE_URL%/articles?memberId=%MEMBER_ID%" ^
  -H "Content-Type: application/json; charset=UTF-8" ^
  -d "{\"title\":\"종이접기\",\"description\":\"색종이로 배와 비행기를 접어 방 안을 꾸몄습니다.\"}"
if errorlevel 1 (
    echo [실패] 67번째 게시글: 종이접기
    exit /b 1
)
echo.
echo [68/100] 블록 만들기
curl.exe --silent --show-error --fail-with-body -X POST "%BASE_URL%/articles?memberId=%MEMBER_ID%" ^
  -H "Content-Type: application/json; charset=UTF-8" ^
  -d "{\"title\":\"블록 만들기\",\"description\":\"블록으로 상상 속의 멋진 여름 별장을 만들었습니다.\"}"
if errorlevel 1 (
    echo [실패] 68번째 게시글: 블록 만들기
    exit /b 1
)
echo.
echo [69/100] 만화책 읽기
curl.exe --silent --show-error --fail-with-body -X POST "%BASE_URL%/articles?memberId=%MEMBER_ID%" ^
  -H "Content-Type: application/json; charset=UTF-8" ^
  -d "{\"title\":\"만화책 읽기\",\"description\":\"좋아하는 만화책을 읽으며 편안한 오후를 보냈습니다.\"}"
if errorlevel 1 (
    echo [실패] 69번째 게시글: 만화책 읽기
    exit /b 1
)
echo.
echo [70/100] 편지 쓰기
curl.exe --silent --show-error --fail-with-body -X POST "%BASE_URL%/articles?memberId=%MEMBER_ID%" ^
  -H "Content-Type: application/json; charset=UTF-8" ^
  -d "{\"title\":\"편지 쓰기\",\"description\":\"멀리 사는 친구에게 방학 소식을 담은 편지를 썼습니다.\"}"
if errorlevel 1 (
    echo [실패] 70번째 게시글: 편지 쓰기
    exit /b 1
)
echo.
echo [71/100] 엽서 보내기
curl.exe --silent --show-error --fail-with-body -X POST "%BASE_URL%/articles?memberId=%MEMBER_ID%" ^
  -H "Content-Type: application/json; charset=UTF-8" ^
  -d "{\"title\":\"엽서 보내기\",\"description\":\"여행지 풍경이 담긴 엽서에 짧은 안부를 적어 보냈습니다.\"}"
if errorlevel 1 (
    echo [실패] 71번째 게시글: 엽서 보내기
    exit /b 1
)
echo.
echo [72/100] 새 친구
curl.exe --silent --show-error --fail-with-body -X POST "%BASE_URL%/articles?memberId=%MEMBER_ID%" ^
  -H "Content-Type: application/json; charset=UTF-8" ^
  -d "{\"title\":\"새 친구\",\"description\":\"여름 캠프에서 취미가 비슷한 새로운 친구를 만났습니다.\"}"
if errorlevel 1 (
    echo [실패] 72번째 게시글: 새 친구
    exit /b 1
)
echo.
echo [73/100] 캠프 첫날
curl.exe --silent --show-error --fail-with-body -X POST "%BASE_URL%/articles?memberId=%MEMBER_ID%" ^
  -H "Content-Type: application/json; charset=UTF-8" ^
  -d "{\"title\":\"캠프 첫날\",\"description\":\"처음에는 긴장했지만 다양한 활동을 하며 금세 적응했습니다.\"}"
if errorlevel 1 (
    echo [실패] 73번째 게시글: 캠프 첫날
    exit /b 1
)
echo.
echo [74/100] 캠프파이어
curl.exe --silent --show-error --fail-with-body -X POST "%BASE_URL%/articles?memberId=%MEMBER_ID%" ^
  -H "Content-Type: application/json; charset=UTF-8" ^
  -d "{\"title\":\"캠프파이어\",\"description\":\"모닥불 주변에 앉아 노래를 부르고 이야기를 나누었습니다.\"}"
if errorlevel 1 (
    echo [실패] 74번째 게시글: 캠프파이어
    exit /b 1
)
echo.
echo [75/100] 자연 공부
curl.exe --silent --show-error --fail-with-body -X POST "%BASE_URL%/articles?memberId=%MEMBER_ID%" ^
  -H "Content-Type: application/json; charset=UTF-8" ^
  -d "{\"title\":\"자연 공부\",\"description\":\"밖에서 직접 보고 만지며 교실과 다른 공부를 했습니다.\"}"
if errorlevel 1 (
    echo [실패] 75번째 게시글: 자연 공부
    exit /b 1
)
echo.
echo [76/100] 영어 복습
curl.exe --silent --show-error --fail-with-body -X POST "%BASE_URL%/articles?memberId=%MEMBER_ID%" ^
  -H "Content-Type: application/json; charset=UTF-8" ^
  -d "{\"title\":\"영어 복습\",\"description\":\"매일 짧은 영어 문장을 읽으며 지난 학기를 복습했습니다.\"}"
if errorlevel 1 (
    echo [실패] 76번째 게시글: 영어 복습
    exit /b 1
)
echo.
echo [77/100] 수학 문제
curl.exe --silent --show-error --fail-with-body -X POST "%BASE_URL%/articles?memberId=%MEMBER_ID%" ^
  -H "Content-Type: application/json; charset=UTF-8" ^
  -d "{\"title\":\"수학 문제\",\"description\":\"하루에 정한 분량만큼 수학 문제를 차근차근 풀었습니다.\"}"
if errorlevel 1 (
    echo [실패] 77번째 게시글: 수학 문제
    exit /b 1
)
echo.
echo [78/100] 한자 공부
curl.exe --silent --show-error --fail-with-body -X POST "%BASE_URL%/articles?memberId=%MEMBER_ID%" ^
  -H "Content-Type: application/json; charset=UTF-8" ^
  -d "{\"title\":\"한자 공부\",\"description\":\"자주 사용하는 한자를 하루에 다섯 글자씩 익혔습니다.\"}"
if errorlevel 1 (
    echo [실패] 78번째 게시글: 한자 공부
    exit /b 1
)
echo.
echo [79/100] 온라인 수업
curl.exe --silent --show-error --fail-with-body -X POST "%BASE_URL%/articles?memberId=%MEMBER_ID%" ^
  -H "Content-Type: application/json; charset=UTF-8" ^
  -d "{\"title\":\"온라인 수업\",\"description\":\"집에서 관심 있던 주제의 온라인 강의를 들었습니다.\"}"
if errorlevel 1 (
    echo [실패] 79번째 게시글: 온라인 수업
    exit /b 1
)
echo.
echo [80/100] 코딩 연습
curl.exe --silent --show-error --fail-with-body -X POST "%BASE_URL%/articles?memberId=%MEMBER_ID%" ^
  -H "Content-Type: application/json; charset=UTF-8" ^
  -d "{\"title\":\"코딩 연습\",\"description\":\"간단한 프로그램을 만들며 코딩의 재미를 느꼈습니다.\"}"
if errorlevel 1 (
    echo [실패] 80번째 게시글: 코딩 연습
    exit /b 1
)
echo.
echo [81/100] 타자 연습
curl.exe --silent --show-error --fail-with-body -X POST "%BASE_URL%/articles?memberId=%MEMBER_ID%" ^
  -H "Content-Type: application/json; charset=UTF-8" ^
  -d "{\"title\":\"타자 연습\",\"description\":\"컴퓨터를 더 편하게 사용하려고 매일 타자 연습을 했습니다.\"}"
if errorlevel 1 (
    echo [실패] 81번째 게시글: 타자 연습
    exit /b 1
)
echo.
echo [82/100] 발표 준비
curl.exe --silent --show-error --fail-with-body -X POST "%BASE_URL%/articles?memberId=%MEMBER_ID%" ^
  -H "Content-Type: application/json; charset=UTF-8" ^
  -d "{\"title\":\"발표 준비\",\"description\":\"개학 후 발표할 내용을 미리 조사하고 정리했습니다.\"}"
if errorlevel 1 (
    echo [실패] 82번째 게시글: 발표 준비
    exit /b 1
)
echo.
echo [83/100] 숙제 마무리
curl.exe --silent --show-error --fail-with-body -X POST "%BASE_URL%/articles?memberId=%MEMBER_ID%" ^
  -H "Content-Type: application/json; charset=UTF-8" ^
  -d "{\"title\":\"숙제 마무리\",\"description\":\"남아 있던 방학 숙제를 확인하고 하나씩 끝냈습니다.\"}"
if errorlevel 1 (
    echo [실패] 83번째 게시글: 숙제 마무리
    exit /b 1
)
echo.
echo [84/100] 준비물 점검
curl.exe --silent --show-error --fail-with-body -X POST "%BASE_URL%/articles?memberId=%MEMBER_ID%" ^
  -H "Content-Type: application/json; charset=UTF-8" ^
  -d "{\"title\":\"준비물 점검\",\"description\":\"새 학기에 필요한 공책과 필기구를 미리 준비했습니다.\"}"
if errorlevel 1 (
    echo [실패] 84번째 게시글: 준비물 점검
    exit /b 1
)
echo.
echo [85/100] 새 공책
curl.exe --silent --show-error --fail-with-body -X POST "%BASE_URL%/articles?memberId=%MEMBER_ID%" ^
  -H "Content-Type: application/json; charset=UTF-8" ^
  -d "{\"title\":\"새 공책\",\"description\":\"깨끗한 새 공책에 과목 이름을 쓰며 개학을 준비했습니다.\"}"
if errorlevel 1 (
    echo [실패] 85번째 게시글: 새 공책
    exit /b 1
)
echo.
echo [86/100] 필통 정리
curl.exe --silent --show-error --fail-with-body -X POST "%BASE_URL%/articles?memberId=%MEMBER_ID%" ^
  -H "Content-Type: application/json; charset=UTF-8" ^
  -d "{\"title\":\"필통 정리\",\"description\":\"쓰지 않는 물건을 빼고 필요한 필기구만 필통에 넣었습니다.\"}"
if errorlevel 1 (
    echo [실패] 86번째 게시글: 필통 정리
    exit /b 1
)
echo.
echo [87/100] 교복 준비
curl.exe --silent --show-error --fail-with-body -X POST "%BASE_URL%/articles?memberId=%MEMBER_ID%" ^
  -H "Content-Type: application/json; charset=UTF-8" ^
  -d "{\"title\":\"교복 준비\",\"description\":\"개학 전에 교복을 깨끗이 세탁하고 단정하게 정리했습니다.\"}"
if errorlevel 1 (
    echo [실패] 87번째 게시글: 교복 준비
    exit /b 1
)
echo.
echo [88/100] 책가방 정리
curl.exe --silent --show-error --fail-with-body -X POST "%BASE_URL%/articles?memberId=%MEMBER_ID%" ^
  -H "Content-Type: application/json; charset=UTF-8" ^
  -d "{\"title\":\"책가방 정리\",\"description\":\"방학 동안 비워 두었던 책가방에 새 학기 준비물을 넣었습니다.\"}"
if errorlevel 1 (
    echo [실패] 88번째 게시글: 책가방 정리
    exit /b 1
)
echo.
echo [89/100] 개학 걱정
curl.exe --silent --show-error --fail-with-body -X POST "%BASE_URL%/articles?memberId=%MEMBER_ID%" ^
  -H "Content-Type: application/json; charset=UTF-8" ^
  -d "{\"title\":\"개학 걱정\",\"description\":\"방학이 끝나 가니 즐겁기도 하고 조금 아쉽기도 합니다.\"}"
if errorlevel 1 (
    echo [실패] 89번째 게시글: 개학 걱정
    exit /b 1
)
echo.
echo [90/100] 친구 생각
curl.exe --silent --show-error --fail-with-body -X POST "%BASE_URL%/articles?memberId=%MEMBER_ID%" ^
  -H "Content-Type: application/json; charset=UTF-8" ^
  -d "{\"title\":\"친구 생각\",\"description\":\"개학하면 다시 만날 친구들을 생각하니 기대가 됩니다.\"}"
if errorlevel 1 (
    echo [실패] 90번째 게시글: 친구 생각
    exit /b 1
)
echo.
echo [91/100] 방학 추억
curl.exe --silent --show-error --fail-with-body -X POST "%BASE_URL%/articles?memberId=%MEMBER_ID%" ^
  -H "Content-Type: application/json; charset=UTF-8" ^
  -d "{\"title\":\"방학 추억\",\"description\":\"사진을 보며 이번 방학에 있었던 즐거운 일을 떠올렸습니다.\"}"
if errorlevel 1 (
    echo [실패] 91번째 게시글: 방학 추억
    exit /b 1
)
echo.
echo [92/100] 여행 정리
curl.exe --silent --show-error --fail-with-body -X POST "%BASE_URL%/articles?memberId=%MEMBER_ID%" ^
  -H "Content-Type: application/json; charset=UTF-8" ^
  -d "{\"title\":\"여행 정리\",\"description\":\"여행에서 가져온 표와 사진을 작은 앨범에 정리했습니다.\"}"
if errorlevel 1 (
    echo [실패] 92번째 게시글: 여행 정리
    exit /b 1
)
echo.
echo [93/100] 사진 앨범
curl.exe --silent --show-error --fail-with-body -X POST "%BASE_URL%/articles?memberId=%MEMBER_ID%" ^
  -H "Content-Type: application/json; charset=UTF-8" ^
  -d "{\"title\":\"사진 앨범\",\"description\":\"방학 사진을 골라 날짜와 짧은 설명을 함께 적었습니다.\"}"
if errorlevel 1 (
    echo [실패] 93번째 게시글: 사진 앨범
    exit /b 1
)
echo.
echo [94/100] 감사한 하루
curl.exe --silent --show-error --fail-with-body -X POST "%BASE_URL%/articles?memberId=%MEMBER_ID%" ^
  -H "Content-Type: application/json; charset=UTF-8" ^
  -d "{\"title\":\"감사한 하루\",\"description\":\"가족과 함께 많은 시간을 보낼 수 있어 감사했습니다.\"}"
if errorlevel 1 (
    echo [실패] 94번째 게시글: 감사한 하루
    exit /b 1
)
echo.
echo [95/100] 새로운 도전
curl.exe --silent --show-error --fail-with-body -X POST "%BASE_URL%/articles?memberId=%MEMBER_ID%" ^
  -H "Content-Type: application/json; charset=UTF-8" ^
  -d "{\"title\":\"새로운 도전\",\"description\":\"방학 동안 처음 해 본 활동에서 자신감을 얻었습니다.\"}"
if errorlevel 1 (
    echo [실패] 95번째 게시글: 새로운 도전
    exit /b 1
)
echo.
echo [96/100] 목표 달성
curl.exe --silent --show-error --fail-with-body -X POST "%BASE_URL%/articles?memberId=%MEMBER_ID%" ^
  -H "Content-Type: application/json; charset=UTF-8" ^
  -d "{\"title\":\"목표 달성\",\"description\":\"세워 둔 독서와 운동 목표를 대부분 지켜 뿌듯했습니다.\"}"
if errorlevel 1 (
    echo [실패] 96번째 게시글: 목표 달성
    exit /b 1
)
echo.
echo [97/100] 남은 방학
curl.exe --silent --show-error --fail-with-body -X POST "%BASE_URL%/articles?memberId=%MEMBER_ID%" ^
  -H "Content-Type: application/json; charset=UTF-8" ^
  -d "{\"title\":\"남은 방학\",\"description\":\"남은 며칠 동안 숙제를 마치고 충분히 쉬려고 합니다.\"}"
if errorlevel 1 (
    echo [실패] 97번째 게시글: 남은 방학
    exit /b 1
)
echo.
echo [98/100] 마지막 주말
curl.exe --silent --show-error --fail-with-body -X POST "%BASE_URL%/articles?memberId=%MEMBER_ID%" ^
  -H "Content-Type: application/json; charset=UTF-8" ^
  -d "{\"title\":\"마지막 주말\",\"description\":\"방학의 마지막 주말을 가족과 즐겁게 보냈습니다.\"}"
if errorlevel 1 (
    echo [실패] 98번째 게시글: 마지막 주말
    exit /b 1
)
echo.
echo [99/100] 개학 전날
curl.exe --silent --show-error --fail-with-body -X POST "%BASE_URL%/articles?memberId=%MEMBER_ID%" ^
  -H "Content-Type: application/json; charset=UTF-8" ^
  -d "{\"title\":\"개학 전날\",\"description\":\"일찍 잠자리에 들고 내일 입을 옷과 준비물을 확인했습니다.\"}"
if errorlevel 1 (
    echo [실패] 99번째 게시글: 개학 전날
    exit /b 1
)
echo.
echo [100/100] 방학 끝
curl.exe --silent --show-error --fail-with-body -X POST "%BASE_URL%/articles?memberId=%MEMBER_ID%" ^
  -H "Content-Type: application/json; charset=UTF-8" ^
  -d "{\"title\":\"방학 끝\",\"description\":\"즐거웠던 추억을 간직하며 새로운 학기를 힘차게 시작합니다.\"}"
if errorlevel 1 (
    echo [실패] 100번째 게시글: 방학 끝
    exit /b 1
)
echo.
echo ========================================
echo 게시글 100개 등록이 완료되었습니다.
echo ========================================

endlocal
