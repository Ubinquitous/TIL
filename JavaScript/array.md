# **배열**

* 배열
    - 대괄호로 묶어주고 쉼표로 구분함.
    - index라고 불리는 고유번호를 사용함.
```JS
    let students = ['웅빈', '세원', '서빈' ... '우빈']; // 선언과 값 삽입
    students[2]='호현'; // 수정
    
    console.log(students[0]);  // 웅빈
    console.log(students[2]);  // 호현
    console.log(students[29]); // 우빈

```
```JS
    let arr = [
        '민수', // arr[0]에 문자형 삽입
        3, // arr[1]에 숫자형 삽입
        false, // arr[2]에 불린형 삽입
        {
            name : 'Mike',
            age : 30,
        }, // arr[3]에 객체 삽입
        function(){
            console.log('HI?');
        }  // arr[4]에 함수 삽입
    ]
```
    - 문자 뿐만이 아닌 숫자, 객체, 함수 등 다양한 값 삽입 가능.
    - length    : 배열이 가지고 있는 요소의 개수를 반환함.
    - push()    : 배열 마지막에 요소를 추가해주는 method
    - unshift() : 배열의 앞쪽에 요소를 추가해주는 method
    - pop()     : 배열 마지막에 요소를 제거해주는 method
    - shift()   : 배열의 앞쪽에 요소를 제거해주는 method

```JS
    let days = ['월','화','수'];
    days.push('목')
    days.shift()
    console.log(days) // ['화','수','목']
    days.pop()
    days.unshift('일')
    console.log(days, days.length) // ['일','화','수'], 3 출력
```