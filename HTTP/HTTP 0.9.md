## HTTP/0.9
- 매우 단순한 프로토콜이다.
- 텍스트 정보가 적힌 페이지 경로를 서버에 지정해 해당 페이지를 가져온다.

curl 커맨드로 이 동작을 시뮬레이션해본 결과는 다음과 같다.

```
# curl 실행 예시
curl --http1.0 http://localhost:18888/greeting
<html><body>hello</body></html>

# 서버 측 로그
GET /greetring HTTP/1.0
Host: localhost:18888
Connection: close
Accept: */*
User-Agent: curl/7.52.1
```

## Form과 검색 기능
- HTML 문장 내에서 \<isindex> 태그를 사용하면 텍스트 입력란이 생겨 검색할 수 있었다. 
- 현재에는 없으나, URL에 검색 키워드를 부여해 요청하는 방식은 현재도 동일하다.