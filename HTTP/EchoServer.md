## Go 언어를 사용한 에코 서버

```go
package main

import (
	"fmt" 
	"log"
	"net/http"
	"net/http/httputil"
)

func handler(w http.ResponseWriter, r *http.Request) { // 브라우저나 curl 커맨드 등 클라이언트가 접속했을 때 호출
	dump, err := httputil.DumpRequest(r, true)
	if err != nil {
	http.Error(w, fmt.Sprint(err), http.StatusInternalServerError)
	return
	}
	fmt.Println(string(dump)) // 인술 클라이언트의 요청 정보를 받아 서버에서 처리한 결과 출력
	fmt.Fprintf(w, "<html><body>Hello</body></html>\n")
}

func main() { // HTTP 서버를 초기화할 때 실행됨.
	var httpServer http.Server
	http.HandleFunc("/", handler) // "/"에 접속이 있을 때 handler 함수 실행
	log.Println("start http listening :18888")
	httpServer.Addr = ":18888" // 포트 설정
	log.Println(httpServer.ListenAndServe())
}
```