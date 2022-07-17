## **이름 입력받고 출력하기**

- 사용자명을 받고 form 박스를 없앤 후, 디스플레이에 h1으로 출력하기
- CSS를 이용하여 form 박스를 제거하고 보여주기를 반복해보자.
```html
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="style.css">
    <title>Clone-Momentum</title>
</head>
<body>
    <form id="loginForm" class="">
        <input type="text" value="">
        <button type="submit">Login</button>
    </form>
    <h1 id="greeting" class="hidden"></h1> <!--보여따안보여따하는h1만들깅-->
    <script src="script.js"></script>
</body>
</html>
```
```CSS
.hidden {
    display:none;
} 
```
```JS
const loginForm = document.querySelector("#loginForm");
const loginInput = document.querySelector("#loginForm input");
const greeting = document.querySelector("#greeting");


function onLoginSubmit(event){
    event.preventDefault();             // 기본 동작 : 새로고침 막기
    loginForm.classList.add("hidden");  // loginForm의 class에 hidden을 추가
    const username = loginInput.value;  // 변수로 username 받기
    greeting.classList.remove("hidden");// greeting(h1)의 class(hidden) 제거 (h1은 보이지 않는 상태이다가 보일 수 있게)
    greeting.innerText = `Welcome, ${username}.`;
}

loginForm.addEventListener("submit", onLoginSubmit); 
```

