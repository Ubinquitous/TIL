# **event 전송**

```JS
const loginForm = document.querySelector("#loginForm");
const loginInput = document.querySelector("#loginForm input");

function onLoginSubmit(){
    const username = loginInput.value;
    console.log(username);
}

loginForm.addEventListener("submit", onLoginSubmit);
```

- 입력받은 값을 브라우저에서 지원하는 submit으로 저장받는다. 
- 브라우저는 엔터를 누를 때 form을 submit하고 새로고침하는 기본 동작으로 설계되어있음.
- preventDefault() : 브라우저

```JS
const loginForm = document.querySelector("#loginForm");
const loginInput = document.querySelector("#loginForm input");

function onLoginSubmit(event){
    event.preventDefault(); // 브라우저의 기본 동작을 막아주는 함수.
    console.log(loginInput.value);
}

loginForm.addEventListener("submit", onLoginSubmit);
```