# **Element 검색하기**

- HTML에서 정의된 id가 JavaScript에서 같으면 무조건 상호작용한다.
- null의 innertext에 접근하려하면 에러 발생.
    - getElementByClassName : 많은 element를 한번에 가지고 와야 할 때
    - getElementByTagName : HTML 태그의 element를 가지고 올 때
    - querySelector : element를 CSS 방식으로 검색할 수 있게 함.
```html
    <div class="hello">
        <h1>Hello?</h1> <!--이 값을 가져오길 원함 -->
    </div>
    <div class="hello">
        <h1>Hello1?</h1>
    </div>
    <h2 id="yes">JavaScript is Fun!</h2>
```
```JS
    const title1 = document.getElementByTagName("h1");     //h1의 element를 가져옴.
    const title2 = document.getElementByClassName("hello");//hello의 element를 Array를 주며 가져옴.
    const title3 = document.querySelector(".hello h1")//hello class안의 첫 번째 h1 element를 가져옴.
    
    const Hi = document.getElementById("yes"); // 같은 일을
    const Hi = document.querySelector("#yes"); // 하는 코드
```
- querySelector를 사용하면 배열 구조이기 때문에 첫 번째 element만 가져온다.
- querySelectorAll을 사용하면 해당하는 모든 element를 가져온다.