# **Value값 입력**

```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="style.css">
    <title>Clone-Momentum</title>
</head>
<body>
    <div id="loginForm">
        <input value="" type="text" placeholder="What is your name?">
        <button>Login</button>
        <script src="script.js"></script>
    </div>
</body>
</html>
```
```JS
const loginInput = document.querySelector("#loginForm input");
const loginButton = document.querySelector("#loginForm button");

function onLoginBtnClick(){
    console.log("hello", loginInput.value); 
}

loginButton.addEventListener("click", onLoginBtnClick);
```
- loginInput : querySelector를 이용한 loginForm 안의 input값
- loginInput.value : loginInput 변수의 value값을 반환함.