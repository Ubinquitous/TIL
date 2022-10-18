## 컴포넌트 등록하기

```html
<div id="app">
        {{ message }}
        <component></component>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/vue@2.5.2/dist/vue.js"></script>
    <script>
        Vue.component('component', {
            template: '<div><h1>Hello</h1></div>'
        });

        new Vue({
            el: '#app',
            data: {
                message: 'test!'
            }
        })
    </script>
```