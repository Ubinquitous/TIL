# 배열

## 배열 타입 선언 

<p>배열의 타입은 아래와 같이 [] 단축 구문을 사용해 나타낼 수 있다.</p>

```TS
    let numArray: number[] = [1, 2, 3]
    let strArray: string[] = ['banana', 'strawberry', 'tomato']

    type Iperson = {name: string, age?: number}
    let personArray: Iperson[] = [{name: 'Ubin', age: 17}, {name: 'Shamir', age: 17}]
```

## 문자열과 배열 간 변환
- 타입스크립트에서는 문자 타입이 없고 문자열의 내용도 변경할 수 없다.
- 따라서 문자열을 가공할 때 먼저 문자열을 배열로 전환시켜야한다.
- split 키워드를 사용하여 문자열을 배열로 전환시킬 수 있다.
- join 키워드를 사용하여 배열을 문자열로 전환시킬 수 있다.

```TS
    /*--- 문자열 - 배열 전환 ---*/
    console.log(
        split('hello'),          // [ 'h', 'e', 'l', 'l', 'o' ]
        split('h_e_l_l_o', '_')  // [ 'h', 'e', 'l', 'l', 'o' ]
    )
```
```TS
    /*--- 배열 - 문자열 전환 ---*/
    console.log(
        join([ 'h', 'e', 'l', 'l', 'o' ]),     // hello
        join([ 'h', 'e', 'l', 'l', 'o' ], '_') // h_e_l_l_o
    )
```

## 배열의 비구조화 할당

```TS
    let array: number[] = [1, 2, 3, 4, 5]
    let [first, second, third, ...rest] = array
    console.log(first, second, third, rest) // 1 2 3 [ 4, 5 ]
```

## for...in 문
<p>for...in문은 객체를 대상으로 사용되며, 값을 순회하는데에 사용된다.</p>

```TS
    /*--- for...in문 선언문 ---*/
    for(변수 in 객체){
        ...
    }
```
```TS
    /*--- for...in문 활용문 ---*/
    let names = ['Ubin', 'Shamir', 'Hohyun']

    for(let index in names){ // index를 names의 아이템 개수만큼 반복한다. 
        const name = names[index]
        console.log(`[${index}]: ${name}`) // [0]: Ubin [1]: Shamir [2]: Hohyun
    }
```

## for...of 문
<p>for...of문은 아이템값을 대상으로 순회한다.</p>

```TS
    for(let name of ['Ubin', 'Shamir', 'Hohyun']) // name에 아이템값이 할당됨.
        console.log(name) // Ubin Shamir Hohyun
```