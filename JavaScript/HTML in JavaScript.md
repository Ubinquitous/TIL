# **상호작용**

```html
    <head>
        ...
    </head>
    <body>
        <h1 autofocus id="hello">Hello, World!</h1> <!-- false였던 autofocus가 true값으로 반환 -->
    </body>
```
```js
    document.getElementById("hello"); // id가 hello인 element를 가져옴 
    console.dir(title); // . . . textContent: "Hello, World!"
```
- textContent, innerHTML, innertext 등등의 값에 text가 반환되어있음.
- id로 element를 가져와서 JS에서 HTML 문서의 여러 Document를 바꿀 수 있음.