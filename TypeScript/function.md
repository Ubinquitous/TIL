# 함수 선언문
<p>타입스크립트 함수 선언문은 매개변수와 함수 반환값에 타입 주석을 붙이는 다음의 형태로 구성된다.</p>
<p>변수와 달리, 함수의 타입이 생략되어 있으면 함수의 구현 의도를 알기 어렵고 잘못 사용할 수 있으므로 좋지 않다.</p>

```TS
    /*--- 함수 선언문 ---*/
    function 함수 이름(매개변수1: 타입1, 매개변수2: 타입2) : 반환값 타입 {
        함수
    }
```
```TS
    /*--- 함수 활용문 ---*/
    function add(a: number, b: number): number {
        return a + b
    }
```

## void 타입
<p>값을 반환하지 않는 함수의 반환 타입은 void이다. 함수 반환 타입으로만 사용할 수 있다.</p>

```TS
    function printMe(name: string, age: number): void {
        console.log(`name: ${name}, age: ${age}`);
    }
```

## 함수 시그니처
<p>함수의 타입을 함수 시그니처라고 한다.</p>

```TS
    let printMe: (string, number) => void
```

## type 키워드를 이용한 타입 별칭
- type이라는 키워드를 통해 기존에 존재하는 타입의 이름을 바꿔 사용할 수 있다.
- 인터페이스와 개념이 유사하다.
- 매개변수의 개수나 타입, 반환 타입이 다른 함수를 선언하는 잘못을 미연에 방지할 수 있다.

```TS
    type stringNumber = (string, number) => void
    let f: stringNumber = function(a: string, b:number): void {}
    let g: stringNumber = function(c: string, d:number): void {}
```

## 선택적 매개변수
<p>함수의 매개변수에도 이름 뒤에 물음표연산자를 붙일 수 있으며, 이를 선택적 매개변수라고 한다.</p>

```TS
    function fn(arg1 : string, arg?: number): void {} // 선택적 매개변수를 사용한 함수의 예시
    
    type OptionalArgFunc = (string, number?) => void  // 선택적 매개변수를 사용한 함수 시그니처
```