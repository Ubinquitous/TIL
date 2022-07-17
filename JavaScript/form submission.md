# **HTML에서 Form값으로 입력값 Submit하기**
```JS
    const loginInput = document.querySelector("#loginForm input");
    const loginButton = document.querySelector("#loginForm button");

    function onLoginBtnClick(){
        const username = loginInput.value;
        if(username === ""){ // 비어있는 값을 감지하고 값을 반환하지 못하게 함.
            alert("Please write your name.");
        } else if(username.length>15){
            alert("Your name is too long.");
        } else {
            console.log(`${username}`);
        }
    }
loginButton.addEventListener("click", onLoginBtnClick);
```

- HTML에서 검사를 하고있지 않음으로 form태그 이용 필요.

```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="style.css">
    <title>Clone-Momentum</title>
</head>
<body>
    <form id="loginForm"> <!-- form태그를 조율해서 html로 값 검사받기-->
        <input value="" type="text" placeholder="What is your name?" maxlength="15" required>
        <input type="submit" value="login">
        <script src="script.js"></script>
    </form>
</body>
</html>
```
```JS
    const loginInput = document.querySelector("#loginForm input");
    const loginButton = document.querySelector("#loginForm button");

    function onLoginBtnClick(){
        const username = loginInput.value;
        console.log(`${username}`);   
    }
    
    loginButton.addEventListener("click", onLoginBtnClick);
```
- 웹이 새로고침되는 이유 : form태그가 값을 submit하여 웹이 재시작됨.  
- HTML을 이용하면 JS에서 click event에 신경쓰지않고 form, submit 이용 가능.