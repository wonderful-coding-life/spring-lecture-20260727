@echo off

curl -X POST "http://localhost:8080/members" ^
  -H "Content-Type: application/json" ^
  -d "{\"name\":\"윤서준\",\"email\":\"SeojunYoon@hanbit.co.kr\",\"age\":10}"

echo.
echo ----------------------------------------

curl -X POST "http://localhost:8080/members" ^
  -H "Content-Type: application/json" ^
  -d "{\"name\":\"윤광철\",\"email\":\"Kwangcheol@hanbit.co.kr\",\"age\":43}"

echo.
echo ----------------------------------------

curl -X POST "http://localhost:8080/members" ^
  -H "Content-Type: application/json" ^
  -d "{\"name\":\"공미영\",\"email\":\"MiyoungKong@hanbit.co.kr\",\"age\":21}"

echo.
echo ----------------------------------------

curl -X POST "http://localhost:8080/members" ^
  -H "Content-Type: application/json" ^
  -d "{\"name\":\"김도윤\",\"email\":\"DoyunKim@hanbit.co.kr\",\"age\":10}"

echo.
echo ----------------------------------------
echo 회원 등록이 완료되었습니다.

pause