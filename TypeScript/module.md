# 모듈 이해하기

- 타입스크립트에서는 index.ts와 같은 소스 파일을 모듈이라고 한다.
- 보통 코드 관리, 유지보수를 위해 모듈마다 고유한 기능을 구현하는 방식으로 소스코드를 분할함.
- 어떤 모듈에 어떤 내용이 있는지를 서로 알게 해주기 위해 키워드를 사용한다.

## export와 import
- export : 기능을 제공하는 쪽에서 사용함.
    - class, type, let, const, interface 등의 키워드 앞에 붙일 수 있음.
    - 다른 파일에 심벌의 의미를 전달하기 위해 선언부 앞에 붙이기.
```TS
    let MAX_AGE = 100;

    export interface IPerson {
    name: string
    age: number
    }

    export class Person implements IPerson {
    constructor(public name: string, public age: number){}
    }
```
- import : 기능을 이용하는 쪽에서 사용함.
    - 어떤 파일이 export 키워드로 내보낸 심벌을 받아서 사용하려 할 때의 키워드.
    - import as문은 어떤 파일에 import 되어있는 함수인지 분리할 수 있게 해줌.
```TS
    import {IPerson, makePerson} from '[파일의 상대경로]'
    import * as '[심벌]' from '[파일의 상대경로]'
    // 사용 : SQL과 같음. 심벌이 hi라면 hi.[함수명]()
```

## export default 키워드
- 한 모듈이 내보내는 기능 중 오직 한 개에만 붙일 수 있음.
- export default가 붙은 기능은 import문으로 불러올 때에 중괄호 없이 사용할 수 있음.
- export 등이 있는 파일에서도 사용할 수 있음.

## 외부 패키지를 사용할 때 import문
```
> npm i -S chance ramda
> npm i -D @types/chance @types/ramda
```
- chance 패키지는 그럴듯한 가짜 데이터를 만들어 주는데 사용한다.
- ramda는 함수형 유틸리지 패키지이며, 두 패지키의 사용 예이다.
```TS
    import IPerson from './person/person'
    import Person, {makePerson} from './person/person'
    import Chance from 'chance'
    import * as R from 'ramda'

    const chance = new Chance()
    let persons: IPerson[] = R.range(0, 2)
        .map((n: number) => new Person(chance.name(), chance.age()))
    console.log(persons);
```
- 모듈화 과정을 통해 코드가 여러 퍄일로 나누어졌으나 정상적으로 동작한다.