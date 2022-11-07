# 제네릭 타입

- 인터페이스나 클래스, 함수, 타입 별칭 등에 사용할 수 있는 기능이다.
- 해당 심벌의 타입을 지정하지 않고 다양한 타입에 대응할 때 사용한다.

어떤 속성을 가질 때, 타입을 T로 지정해 제네릭 타입으로 만들 수 있는데, 인터페이스 이름 뒤에 \<T\>처럼 표기한다.

```ts
    interface IValuable<T>{
        value: T
    }

    function identity<T>(arg: T): T {return arg}

    type IValuable<T> = {
        value: T
    }
    
    class Valuable<T> {
        constructor(public value: T) {}
    }
```