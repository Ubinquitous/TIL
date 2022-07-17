## **event 전송 2**

```html
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="style.css">
    <title>Clone-Momentum</title>
</head>
<body>
    <a href="https://nomadcoders.co">Go to courses</a> <!--기본 동작 : 브라우저가 사용자를 페이지 이동시킴-->
    <script src="script.js"></script>
</body>
</html>
```
```JS
const link = document.querySelector("a");

function handleLinkClick(event){
    event.preventDefault();// a tag 특징인 페이지 이동 방지
    console.log(event);    // MouseEvent : 사용자가 클릭한 곳의 위치를 보여줌.
    alert("clicked!");     // alert는 JS의 모든 동작을 중지시키는 특서잉 있음.
}

link.addEventListener("click", handleLinkClick);
```