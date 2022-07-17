## **TYPESCRIPT**

- 사용하는 이유
    - JS는 JavaScript Dynamic Typing 기능을 제공함.  
    - 코드를 길게 짤 때에 자유도 & 유연성은 오히려 비효율적이다.  
    - 타입스크립트는 에러메시지로 타입을 엄격히 검사해준다.  
    - 에러메시지를 구체적으로 알려준다.
```JS
    //JavaScript Error Message
    > var preson = { a : 'kim' }
      person.b.sort()
    > Uncaught TypeError: Cannot read property 'sort' of undefined    
         at <anonymous>:2:10
    //TypeScript Error Message
    > var counter = 0;
      counter = '1';

    > Type 'string' is not assignable to type 'number'.  
      var counter: number
```
- 사용 및 연결
    - 브라우저는 .js파일만 읽을 수 있기 때문에 ts파일을 변환해주어야함.
    - 연결법 : powershell > tsc -w
    - tsconfig.json : ts에서 js로 컴파일할 때의 옵션 설정
```json
{   
  "compilerOptions" : {     
    "target": "es5",     
    "module": "commonjs",  
  } 
}
```
- type 지정
    - string, number, boolean, null, undefined, bigint, [], {} 등 여러가지 응용 가능
```TS
    let name :string = 'kim'; // :string :: 문자 type만 들어올 수 있음.
    let test :[] = ['kim', 'park']; // 배열만 들어올 수 있음.
    let nameTest :string[] = ['lee', 'choi']; // 문자 type인 배열만 들어올 수 있음.
    let obj :{ name : string } = { name : 'moon'} // 이름이 문자 type인 오브젝트만 들어올 수 있음.
    let name:{name? : string} = { } // name 속성이 들어오는 것이 불확실할 때 ? 사용
    let go :string | number = 3; // go가 문자 type이거나 number 타입일 때만 들어올 수 있음.
    type TYPE = string | number;
    let name :TYPE = 123; // type 변수에 타입을 담아서 지정할 수 있음.
```
```TS
    function func(x :number) :number{ // number가 들어와야 하고 number를 리턴해야함.
        return x * 2;
    }

    type MEMBER = [number, boolean]; // 첫 째는 number, 둘 째는 boolean값이 들어와야 함.
    let john:MEMBER = [1234, false];
    
    type MEMBER = {
        [key :string] : string // 글자로 된 모든 오브젝트 속성의 타입은 :string
    }
    let john : MEMBER = { name : 'kim' }

    class user {
        name :string;
        constructor(name :string){
            this.name = name;
        }
    } // 클래스 문법 :: 변수를 함수를 사용하기 전에 미리 선언해놓아야함.
```