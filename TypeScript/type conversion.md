# 객체의 타입 변환

<p>타입이 있는 언어들은 특정 타입의 변숫값을 다른 타입의 값으로 변환할 수 있는 기능을 제공하는데, 이를 타입 변환이라고 한다.</p>

```TS
    let person: object = {name: 'Ubin', age: 17};
    person.name| // object 형식에 name 속성이 없으므로 오류 발생

    let person1: object = {name: 'Ubin', age: 17};
    (<{name:string}>person).name|
``` 
- person1 변수를 일시적으로 {name:string} 타입으로 변환해 person.name 속성값을 얻게 하는 코드이다.

## 타입 단언
- 자바스크립트의 타입 변환 구문과 구분하기 위해 타입 단언이라는 용어를 사용한다.
- 타입 단언의 두 가지 구문은 서로 형태만 다를 뿐, 기능은 같다.
```TS
    /*--- 타입 단언 선언문 ---*/
    (<타입>객체)
    (객체 as 타입)
```
```TS
    /*--- 타입 활용 선언문 ---*/
    interface INameable {
        name: string
    };
    let obj: object = { name: 'Ubin'}
    let name1 = (<INameable>obj).name
    let name2 = (obj as INameable).name
    console.log(name1, name2) // Ubin Ubin
```
