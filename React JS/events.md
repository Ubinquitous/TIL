# 리액트에서의 이벤트

- 요소들을 같이 표현하고 싶다면 div 안에 array로 표현할 수 있다.
- 또한 화살표 함수를 사용하여 event listener를 생성할 수 있다.

```js
    const root = document.getElementById("root");
    const span = React.createElement(
        "span", 
        {
        id:"title",
        onMouseEnter: () => console.log("mouse enter"); // create mouse enter event
        } 
        "I'm span."
    );
    const button = React.createElement(
        "button", 
        {
        onClick: () => console.log("i'm clicked"), // create click event
        style: {
            backgroundColor:"tomato",
            },
        }, 
        "Click me!"
    );
    const container = React.createElement("div", null, [span, button]);

    ReactDOM.render(container, root);
```