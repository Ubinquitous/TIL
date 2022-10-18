# 객체와 클래스

## 클래스 선언문
- 타입스크립트는 C++과 자바와 같은 객체지향 언어에서 볼 수 있는 클래스 키워드를 제공함.
- 문법적인 차이만 약간 있을 뿐 다른 언어와 의미가 같다. 다음과 같이 선언한다.
```TS
    /*--- 클래스 선언문 ---*/
    class 클래스이름 {
        [private | protected | public] 속성이름[?]: 속성타입[...]
    }
``` 
```TS
    /*--- 클래스 활용문 ---*/
    class Person {
        name: string
        age?: number
    }

    let Ubin: Person = new Person() // new 연산자(클래스 사용)를 적용해 타입 변수 만들기.
    Ubin.name = 'Ubin'; Ubin.age = 17
    console.log(Ubin) // Person { name: 'Ubin', age: 17 }
```

## 접근 제한자
- 클래스의 속성은 접근 제한자(public, private, protect)를 이름 앞에 붙일 수 있다.
- 만약 접근 제한자를 생략한다면 모두 public으로 간주한다.

## 생성자
- 생성자는 코드를 간결하게 만들어준다.
```TS
    class Person {
        constructor(public name: string, public age?: number){}
    }
    let Ubin : Person = new Person('Ubin', 17) // Person이 타입이고 new Person을 클래스로 사용
    console.log(Ubin) // Person { name: 'Ubin', age: 17 }
```

## 인터페이스 구현
- 클래스가 인터페이스를 구현할 수 있다.
- 인터페이스는 이러이러한 속성이 있어야 한다는 규약에 불과하고 물리적으로 해당 속성을 만들진 않는다.
- 따라서 클래스 몸통에는 반드시 인터페이스가 정의하고 있는 속성을 멤버 속성으로 포함해야한다.
```TS
    /*--- implements 선언문 ---*/
    class 클래스 이름 implements 인터페이스 이름 {
        ...
    }
```
```TS
    /*--- implements 활용문 ---*/
    interface Person {
        name: string
        age?: number
    }
    class Person implements Person {
        name: string
        age: number
    }
```
```TS
    /*--- constructer, implements 동시 활용문 ---*/
    interface fruit {
        name: string
        price: number
        color?: string
    }
    
    class fruitClass implements fruit {
        constructor(public name: string, public price: number, public color?: string){}
    } 
    let mango: fruit = new fruitClass('mango', 4000, 'yellow') // 타입을 fruit, 클래스를 fruitClass로 지정
    console.log(mango) // fruitClass { name: 'mango', price: 4000, color: 'yellow' }
```

## 추상 클래스
- abstract 키워드를 사용해 추상 클래스를 만들 수 있다.
- 추상 클래스는 나를 상속하는 다른 클래스에서 이 속성이나 메서드를 구현하게 한다.
- abstract가 붙은 메서드는 상속 중인 다른 클래스에서만 메서드 구현이 가능.
```TS
    abstract class AbstractPerson5 {
        abstract name: string
        constructor(public age?: number){}
    }
```

## 클래스의 상속
<p>extends 키워드를 사용해 부모 클래스를 상속받는 상속 클래스를 만들 수 있다.</p>

```TS
    /*--- extends 선언문 ---*/
    class 상속 클래스 extends 부모 클래스 { ... }
```
```TS
    /*--- extends 활용문 ---*/
    class Person extends abstractClass { // 추상 클래스 상속
        constructor(public name: string, age?: number){
            super(age) // super 키워드로 부모 클래스의 생성자 호출
        }
    }
    let Ubin: Person = new Person('Ubin', 17)
    console.log(Ubin) // Person { name: 'Ubin', age: 17 }
```

## static 속성
- 클래스의 정적 속성은 다음과 같은 형태로 선언한다.
```TS
    class A {
        static initValue = 1;
    } // A는 iniValue라는 정적 속성을 가진다.
    
    let initVal = A.initValue // 1
```