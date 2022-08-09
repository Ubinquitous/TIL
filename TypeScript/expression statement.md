# 화살표 함수와 표현식 문

## 화살표 함수 표현
- 화살표 함수의 몸통은 중괄호를 사용할 수도 있고, 생략하여 표현할 수도 있다.
- 중괄호 사용 여부에 따라 타입스크립트 문법의 동작 방식이 실행문과 표현식문으로 달라진다.

```TS
    const arrow1 = (a: number, b: number): any => { return a + b }
    const arrow1 = (a: number, b: number): any => a + b
```

## 실행문과 표현식 문
- 다중 패러다임 언어 : 실행문과 표현식 문을 동시에 지원하는 언어.
- 실행문은 CPU에서 실행될 뿐 return 키워드를 사용하지 않고 결과를 알 수 없음.
- 표현식 문은 CPU에서 실행된 결과는 굳이 return 키워드를 사용하지 않아도 알려줌.

```TS
    let x = 10
    if(x>0) // CPU가 평가 후 true나 false라는 boolean값으로 결과를 알려줌.
        x=1 // x>0처럼 return 키워드 없이 결괏값을 반환하는 실행문을 표현식 문이라 함.
```
## 복합 실행문
<p>중괄호로 몸통을 감싸 컴파일러에게 여러 실행문을 한 개처럼 인식하게하는 것을 복합 실행문이라 한다.</p>

```TS
    function f(){
        let x=1, y=2        
        let result = x+y+10 
    }
```

## return 키워드
- 실행문은 CPU에서 실행된 결과를 알려주지 않는다.
- 실행문 기반 언어는 이 문제를 해결하기 위해 return이라는 키워드를 도입한다.
- 반드시 함수 몸통에서만 return 키워드를 사용할 수 있다.

```TS
    function isGreater1(a: number, b: number): boolean {
        a > b // 결과를 반환하지 않음
    }
    function isGreater2(c: number, d: number): boolean {
        return a > b // true of false 반환
    }

    const isGreater3 = (e: number, f: number): boolean => {
        return a > b; // 화살표 함수로 구현
    }
```

## 표현식과 표현식 문의 차이
- C언어에서 a>b 등의 코드를 표현식이라 하기에 그 후의 언어들도 표현식이라 생각한다.
- 허나 표현식 지향 언어에서는 a>b 등의 코드는 그 자체가 실행문이다.

## 세미콜론
<p>타입스크립트에서는 관습적으로 표현식 문에는 세미콜론을 붙이지 않는다.</p>