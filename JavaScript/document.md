# **10.Document**

- console에 document를 입력하면 작성한 Html을 가져올 수 있음.
- Document는 일종의 object로, JS의 관점으로 Html을 읽게 해줌.  

```HTML
    <!DOCTYPE html>
    <head>
        .
        .
        <title>My TIL1234</title>
    </head>
    <body>
        <h1>Hello, world!</h1>
    </body>
```
```JS
    > document.title // 브라우저 콘솔 창에 입력
    < "My TIL1234"
    
    > document.title = "Hello54321" // 새로운 값 지정
    < "Hello54321"   // 웹의 타이틀이 Hello54321로 변경됨.

    > document.body
    < <body>
        <h1>Hello, world!</h1>
      </body>
```
- Html을 읽어올 뿐만 아니라, Html을 변경하는 것도 가능함.
- JS는 이미 따로 연결하지 않아도 Html에 접근하고 읽을 수 있음.