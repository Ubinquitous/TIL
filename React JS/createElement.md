# 리액트로 요소 생성하기

<p>리액트는 자바스크립트 코드로 HTML의 요소를 추가하고 수정하는 형식이다.</p>

- 감싸고 있는 div 한 개가 있어야 정상적으로 요소를 수정하고 삭제하고 추가할 수 있다.
- React.createElement("요소명") : HTML의 요소를 만들어줌.
    - 첫 번째 요소에는 만들 요소를 작성한다.
    - 두 번째 요소에는 property의 타입과 이름을 중괄호 안에 작성한다.
    - 세 번째 요소에는 요소 내의 내용을 작성한다.
- ReactDOM.render(자식요소, 부모요소) : 자식요소를 부모요소 안에 넣어준다. 

```js
    /*--- createElement, render 활용문 ---*/
    const root = document.getElementById("root");
    const span = React.createElement(
        "span", 
        { id:"my-Span", style: { color:'red'; }}, 
        "hello. I am span."
    );
    ReactDOM.render(span, root);
```