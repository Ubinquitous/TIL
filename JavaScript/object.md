# **객체**

* 구조
    - 객체는 키(key)와 값(value)으로 구성되어있고 쉼표로 구분함.
    - 객체의 키에 값을 삽입할 때에는 콜론을 사용함.
    - 객체의 속성과 유사한 개념을 프로퍼티라고 칭함.

```JS
    // 접근하기
    freshman.name   // 'clark'
    freshman['age'] // 33

    // 추가하기
    freshman.gender = 'male';
    freshman['hairColor']='brown';

    // 삭제하기
    delete freshman.hairColor;

    // in 연산자를 사용하여 프로퍼티가 있는지 확인
    'birthDay' in freshman; // false
    'gender' in freshman; // true
```

* for ... in 반복문
    - 객체를 순회하며 값을 얻을 수 있음.
```JS
    const Mike = {
        name : "Mike",
        age : 30
    };

    for(x in Mike){
        console.log(Mike[x]) // Mike['age'], Mike['name'] 한 번씩 순회.
    }
```