# 객체의 비구조화 할당문

## 구조화
```TS 
    let personName = 'Ubin'
    let personAge = 17

    let companyName = 'Apple Company, Inc'
    let companyAge = 43
``` 
- 다음과 코드는 name과 age가 각기 다른 의미로 사용되므로 둘을 구분하고 있다.
- 이런 방식으로 코드를 구현하면 작성하기가 번거롭고 기능을 확장하기도 어렵다.
- 인터페이스나 클래스를 사용해 관련된 정보를 묶어 새로운 타입으로 표현하는 것을 구조화라고 한다.
```TS
    export interface IPerson {
        name: string
        age: number
    }
    export interface ICompany {
        name: string
        age: number
    }

    let jack: IPerson = {name: 'jack', age: 32},
        ubin: IPerson = {name: 'ubin', age: 17}

    let apple: ICompany = {name: 'Apple Computer, Inc', age: 43},
        ms : ICompany = {name:'Microsoft', age: 44}
```

## 비구조화 할당
- 구조화의 반대 개념으로, 구조화된 데이터를 분해하는 것을 비구조화라고 한다.
- 비구조화 할당은 얻고 싶은 속성을 중괄호로 묶어 할당할 수 있다.
```TS
    let Ubin: IPerson = {name: 'Ubin', age: 17}
    let {name, age} = Ubin
    console.log(name, age) // Ubin 17
```

## 잔여 연산자
- 점을 연이어 3개 사용하여 표기한다.
- 사용되는 위치에 따라 잔여 연산자 혹은 전개 연산자라고 불린다.
- 지정된 변수를 제외한 나머지 속성을 별도의 변수에 모두 저장하게한다.
```TS
    let adress: any = {
        country: 'Korea',
        city: 'Gimhae',
        address1: 'Gimhae-si',
        address2: 'Naeoe-dong',
        address3: '777 street, 12 Floor ABC building'
    }
    const {country, city, ...detail} = address
    console.log(detail)
    /* 실행 결과
    { address1: 'Gimhae-si',
      address2: 'Naeoe-dong',
      address3: '777 street, 12 Floor ABC building' } */
```

## 전개 연산자
- 점 3개가 비구조화 할당문이 아닌 곳에서 사용될 때를 전개 연산자라고 부른다.
- 객체의 속성을 모두 전개해 새로운 객체로 만든다.
- 각 객체들을 모두 통합한 새로운 객체를 만들고 싶을 때 사용한다.
```TS
    let part1 = {name: 'Ubin'}, part2 = {age: 17}, part3 = {city: 'Gimhae'};
    let merged = {...part1, ...part2, ...part3}
    console.log(merged)
    /* 실행 결과
    { name: 'Ubin', age: 17, city: 'Gimhae' } */
```