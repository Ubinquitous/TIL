## **이름 입력받고 기억하기**

- local storage : 기억하게 하는 기능을 기본적으로 지원해주는 API
    - 우리가 브라우저에 값을 저장하고 나중에 사용할 수 있게 해줌.
    - localStroage.setItem("A", "B");      // "저장할 값 이름 A", "값" 
    - localStroage.removeItem("username"); // 저장해놓은 값 삭제

```html
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="style.css">
    <title>Clone-Momentum</title>
</head>
<body>
    <form id="loginForm" class="hidden">
        <input type="text" value="">
        <button type="submit">Login</button>
    </form>
    <h1 id="greeting" class="hidden"></h1>
    <script src="script.js"></script>
</body>
</html>
```
```JS
const loginForm = document.querySelector("#loginForm");
const loginInput = document.querySelector("#loginForm input");
const greeting = document.querySelector("#greeting");

function onLoginSubmit(event){
    event.preventDefault(); 
    loginForm.classList.add("hidden"); 
    const username = loginInput.value;
    localStorage.setItem("username", username); // localStorage에 username값 추가하기
    paintGreetings(username);
    console.log(username);
}
function paintGreetings(username){ // h1을 사용자에게 보여주는 함수
    greeting.innerText = `Welcome, ${username}.`;
    greeting.classList.remove("hidden");
}

loginForm.addEventListener("submit", onLoginSubmit);

const savedUsername = localStorage.getItem("username");

if(savedUsername === null){ // 없는 값은 null값을 반환하는 localStorage 특성 이용
    loginForm.classList.remove("hidden");
    loginForm.addEventListener("submit", onLoginSubmit);
} else { 
    paintGreetings(savedUsername);
}
```