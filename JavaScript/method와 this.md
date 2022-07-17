# **8.1.method와 this**

* method
    - 객체 프로퍼티로 할당 된 함수.
    - 밑의 예시에서 intro 함수가 spiderman 객체의 method이다.

```JS
    const spiderman = {
        name : 'peter',
        age : 21,
        intro : function(){
            console.log("spiderman!");
        }
        // function 키워드를 생략하여 사용 가능.
        intro(){
            console.log("spiederman!");
        } 
    }
```
```JS
    const user = {
        name : 'Ubin',
        Hello(){
            console.log(`Hello,I'm ${this.name}`);
            // user.Hello로 출력 시 user가 Hello의 this가 됨.
        }
    }
    let boy = {
        name : 'Sewon',
        sayHello,
    }
    let girl = {
        name : 'Maria',
        sayHello,
    }
    sayHello(){
        console.log(`Hello, I'm ${this.name}`);
    }
    boy.sayHello();
    girl.sayHello(); 
    // sayHello의 this는 객체(boy, girl)
```
* this
    - method 안에서의 this는 객체를 의미.
    - 화살표 함수는 자기자신만의 this를 가지지 않음.
    - 화살표 함수 내부에서 this를 사용하면, 외부에서 값을 가져옴.
```JS
    let boy = {
        name : 'Mike',
        sayHello:()=>{
            console.log(this); // 전역객체를 가리킴.
        }
    }
    boy.sayHello(); // this != boy
```