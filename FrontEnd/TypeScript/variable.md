# 타입스크립트 변수 선언문

## let과 const 키워드
- ESNext는 var 키워드를 사용하지 말라고 권고한다. 따라서 다음과 같은 두 변수를 사용함.
- let으로 선언한 변수는 코드에서 그 값이 수시로 변경될 수 있음.
- const로 변수를 선언할 때는 반드시 초깃값을 명시해야하며, 변숫값이 절대 변하지 않음.

## 타입 주석
- 자바스크립트 변수 선언문을 확장해 타입을 명시하는 것을 타입 주석이라고 한다.
- let으로 선언한 변숫값은 타입 주석으로 명시한 타입에 해당하는 값으로만 바꿀 수 있다.
 
```TS
    let 변수이름: 타입 = 초깃값
    const 변수이름: 타입 = 초깃값
```
```TS
    let n: number = 1;
    let b: boolean = true;
    let s: string = 'hello';
    let o: object = {}
```

## 타입 추론
- 자바스크립트와의 호환성을 위해 타입 주석 부분을 생략할 수 있다.
- 타입스크립트 컴파일러가 대입 연산자의 오른쪽 값에 따라 변수의 타입을 지정하는 것이 타입 추론이다.
```TS
    let n = 1;      // n의 타입을 number로 판단
    let b = true;   // b의 타입을 boolean으로 판단
    let s = 'hello' // s의 타입을 string으로 판단
    let o = {}      // o의 타입을 object로 판단
```

## any 타입
- 자바스크립트와의 호환을 위해 any라는 이름의 타입을 제공한다.
- any 타입은 값의 타입과 무관하게 어떤 종류의 값도 저장할 수 있다.
```TS
    let a: any = 0;
    a = 'hello';
    a = true;
    a = {};
```

## undefined 타입
- 자바스크립트에서의 undefined는 값이다.
- undefined 타입은 오직 undefined 값만 가질 수 있다.
```TS
    let u: undefined = undefined
    u = 1 // Type '1' is not assignable to type 'undefined' 오류 발생
```