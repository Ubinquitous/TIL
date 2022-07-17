# **Events**

- h1의 style을 JavaScript에서 변경할 수 있음.
```HTML
    <body>
        <h1 class="title">Hello, world!</h1>
    </body>
```
```JS
    const title = document.querySelector(".title h1")
    console.dir(title); // 세부 요소를 볼 수 있게 해줌.

    title.style.color = "blue"; // Hello, World!의 텍스트 색이 파란색으로 바뀜.
```
- event : 마우스가 움직이거나 클릭하는 것, 입력을 끝내거나, enter를 누르는 것 등등.
- 많은 사용자의 행동들(event)을 자바스크립트가 listen 할 수 있음.

```JS
    // Click 감지하기
    function titleClick(){
        title.style.color = "red";
    }
    title.addEventListener("click", titleClick); // title click listen, titleClick 함수 동작
```

- TIP : Searching for elements from google
    - mdn에 찾고싶은 element의 이름을 검색시 HTML에 대한 설명을 해줌.
    - JS의 element에 대해 알아볼 때, "Web APIs" 문장이 포함된 페이지 찾기

- onclick : click event, change event, copy event 모두 부여할 수 있음.
- onmouseenter : click은 하지 않고 요소 위에 위치할 때의 event.
- onmouseleave : 요소 위에 위치하지 않을 때의 event.
```JS
    function MouseLeave(){
        title.innerText = "Mouse is gone!";
    }

    function MouseEnter(){
        title.innerText = "Mouse is here!";
    }
    title.addEventListener("mouseenter", MouseEnter);
    title.addEventListener("mouseleave", MouseLeave);
```