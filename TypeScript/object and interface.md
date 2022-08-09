# 객체와 인터페이스
- object 타입은 인터페이스와 클래스의 상위 타입이다.
- object 타입으로 선언된 변수는 속성 이름이 다른 객체를 모두 자유롭게 담을 수 있다.
- 객체를 대상으로 하는 any 타입처럼 동작하는 것이 특징이다.

```TS
    let o: object = {name: 'Ubin', age: 17};
    o = {first: 1, second: 2};
```

## 인터페이스 선언문
- object 타입처럼 동작하지 않게 하려는 목적으로 고안됨.
- 변수 o에는 항상 name과 age 속성으로 구성된 객체만 가질 수 있게 함.
- name과 age라는 속성이 둘 다 있는 객체만 유효하도록 객체의 타입 범위를 좁혀준다.
```TS
    /*--- 인터페이스 선언문 ---*/
    interface 인터페이스 이름 {
        속성이름[?]: 속성타입[,...]
    }
```
```TS
    /*--- 인터페이스 활용문 ---*/
    interface IPerson {
        name: string
        age: number
    }

    let good: IPerson = {name: 'Ubin', age: 17}
    let bad1: Iperson = {name: 'Ubin'} // age 속성이 없으므로 오류
    let bad2: Iperson = {name: 'Ubin', age: 17, cool: true} // cool 속성이 있으므로 오류
```

## 선택 속성 구문
- 어떤 속성은 반드시 있어야하나, 어떤 속성은 있고 없고가 무관할 때 사용.
- 속성 이름 뒤에 물음표 기호를 붙여서 만듦.

```TS
    interface IPerson2 {
        name: string
        age: number
        cool?: boolean
    }
    let good1: Iperson2 = {name:'Ubin', age:17};
    let good2: Iperson2 = {name:'Ubin', age:17, cool: true};
```

## 익명 인터페이스 
- interface 키워드를 사용하지 않고 인터페이스를 만드는 것을 익명 인터페이스라고 한다.
- 익명 인터페이스는 주로 함수를 구현할 때 사용된다.
```TS
    let ai: {
        name: string
        age: number
        cool?: boolean
    } = {name: 'Ubin', age:17}
    /*--- 함수 활용 ---*/
    function printMe(me: {name: string, age: number, cool?: boolean}){ // 익명 인터페이스 선언
        console.log(
            me.cool ?
                `${me.name} ${me.age} ${me.cool}`; // cool 속성이 있을 때에 출력문
                `${me.name} ${me.age}` // cool 속성이 없을 때의 출력문
        )
    }
    printMe(ai) // Ubin 17
```