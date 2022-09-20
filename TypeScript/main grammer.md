# 타입스크립트 주요 문법

## ESNext의 주요 문법 간단하게 알아보기
- 비구조화 할당 : 객체와 배열에 적용할 수 있는 할당 방법.
```JS
    let person = {name:"Ubin", age:17}
    let {name, age} = person; // name = "Jane", age = 22

    let array = [1, 2, 3, 4];
    let [head, ...rest] = array // head = 1, rest = [2, 3, 4]

    let a = 1, b = 2;
    [a, b] = [b, a] // a = 2, b = 1
``` 
- 화살표 함수 : function 키워드를 대신하여 선언할 수 있는 함수.
```JS
    function add(a,b){ return a + b } // 기본 함수
    const add2 = (a,b) => a + b       // 화살표 함수
```
- 클래스 : 객체지향 프로그래밍(C++, JAVA)과 같은 기능을 지원함.
- 모듈 : export 키워드를 사용해 변수나 함수, 클래스를 모듈로 만들면 다른 파일에서도 사용 가능.
- 생성기 : yiled문을 이용해 반복기를 만들어 내는 반복기 제공자
- Promise와 async/await 구문 : 비동기 콜백 함수를 쉽게 구현하는 목적으로 만들어짐.

## 타입스크립트 고유 문법
- 타입 주석 : 변수 n 뒤에 콜론과 타입 이름이 있는 것.
```TS
    let n: number = 1;
    let m = 2 // 타입 추론
```
- 타입 추론 : 타입 주석이 생략되면 오른쪽 값을 분석해 왼쪽 변수의 타입을 결정하는 것.
- 인터페이스
- 튜플 : 배열에 저장되는 아이템들의 데이터 타입이 다른 것.
```TS
    let numberArray: number[ ] = [1, 2, 3]; // 배열
    let tuple: [boolean, number, string] = [false, 3, 'item']; // 튜플
```
- 제네릭 타입 : 다양한 타입을 한번에 취급할 수 있게 해줌.
- 대수 타입 : 다른 자료형의 값을 가지는 자료형.
