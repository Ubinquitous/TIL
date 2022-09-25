## Vue.js의 라이프 사이클

<img src='https://joshua1988.github.io/vue-camp/assets/img/lifecycle.dcbe29f6.png' />

## beforeCreate
- 인스턴스가 생성되고 나서 가장 처음으로 실행되는 라이프사이클 단계.
- data와 methods 속성이 아직 정의되어있지 않으며, 화면 요소에도 접근 불가능.

## created
- beforeCreate 후 실행되는 단계.
- data와 methods 속성이 정의되었기 때문에 로직을 사용하여 접근할 수 있음.
- 서버에 데이터를 요청하여 받아오는 로직을 수행하기 좋음.

## beforeMount
- el속성에 지정한 돔에 인스턴스를 부착하기 전 호출됨.

## mounted
- 부착 후 호출되는 단계
- 하위 컴포넌트 또는 외부 라이브러리에 의해 추가된 화면 요소들이 코드로 변환되는 시점과 다를 수 있음.

## beforeUpdate
- el 속성에서 지정한 화면 요소에 인스턴스가 부착되고 저의한 속성들이 화면에 치환되는 단계.
- 변경 예정인 새 데이터에 접근할 수 있음.

## updated
- 데이터가 변경된 후 가상 돔으로 다시 화면을 그리고 실행되는 단계.

## beforeDestroy 
- 인스턴스 파괴 직전 호출 단계
- 인스턴스 접근 가능, 데이터를 삭제하기 좋은 단계.

## destoyed
- 파괴되고 나서 호출되는 단계.
- 하위 인스턴스 모두 파괴됨.

```html
 <div id="app">
        {{ message }}
    </div>
    <script src="https://cdn.jsdelivr.net/npm/vue@2.5.2/dist/vue.js"></script>
    <script>
        new Vue({
            el: "#app",
            data: {
                message: 'Hello World!'
            },
            beforeCreate: function () {
                console.log('beforeCreate');
            },
            created: function () {
                console.log('created');
            },
            mounted: function () {
                console.log('mounted');
                this.message = 'Hello, Vue!';
            },
            updated: function () {
                console.log('updated');
            },
        });
    </script>
```