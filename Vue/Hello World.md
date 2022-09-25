## Vue.js로 Hello, World! 출력하기

```html
<html>
<head>
    <title>Vue Sample</title>
</head>
<body>
    <div id="app">
        {{ message }}
    </div>
    <script src="https://cdn.jsdelivr.net/npm/vue@2.5.2/dist/vue.js"></script>
    <script>
        new Vue({       // 인스턴스
            el: "#app", // el 속성
            data: {     // data 속성
                message: 'Hello World!'
            }
        });
    </script>
</body>
</html>
```