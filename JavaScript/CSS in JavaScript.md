# **CSS와 상호작용**

- CSS와 상호작용하여 클릭할 경우 색이 바뀌게 만들기.
```JS
    function handleTitleClick(){
        if(h1.style.color === "blue"){
            h1.style.color = "tomato";
        } else {
            h1.style.color = "blue";
        }
    }

    h1.addEventListener("on", handleTitleClick);
```
- 변수에 저장하여 표현하기
```JS
    function handleTitleCLick(){
        const currentColor = h1.style.color;
        let newColor;
        if(currentColor === "blue"){
            newColor = "tomato";
        } else {
            newColor = "blue";
        }
        h1.style.color = newColor;
    }
    h1.addEventListener("click", handleTitleClick);
```
- JS는 애니메이션, CSS는 style 작업에 적합한 도구로 각각 사용하는 것이 좋음.
- className 생성/제거로 글자 색 바꾸기
```JS
    function handleTitleClick(){
        if(h1.className === "active";){ //getter면서 setter : 얻어올 수 있으나, 변경 또한 가능.
            h1.className = "";
        } else {
            h1.className = "active";    //위험한 코드 : raw value가 정확하게 일치해야함.
        }
    }
    h1.addEventListener("click", handleTitleClick)
```
- raw value 실수를 위한 개선 방법.
```JS
    function handleTitleClick(){
        const activedClass = "actived";
        if(h1.className === "activedClass";){
            h1.className = "";
        } else {
            h1.className = clickedClass;    //raw value 한 개 사용, 안전한 코드.
        }
    }
    h1.addEventListener("click", handleTitleClick)
```
```CSS
    h1 {
        color:cornflowerblue;
        transition:color .5s ease-in-out;
    }
    .active {
        color:tomato;
    }
    /* JavaScript가 HTML을 변경하고, HTML을 CSS가 참조하는 형태. */
```
- 원래에 있던 기존 className을 유지하며 clickedClass를 변경하기.
- classList : class들의 목록으로 작업할 수 있게 도와줌.
```JS
    function handleTitleClick(){
        const clickedClass = "clicked";
        if(h1.classList.contains(clickedClass)){ //만약 clickedClass가 h1의 classList에 포함되어 있다면
            h1.classList.remove(clickedClass) = "";
        } else {
            h1.classList.add(clickedClass);
        }
    }
    h1.addEventListener("click", handleTitleClick);
```
```JS
    function handleTitleClick(){
        h1.classList.toggle("clicked");
    } // 토큰 toggle : 토큰이 존재하면 토큰을 제거하고, 존재하지 않으면 추가
    h1.addEventListener("click", handleTitleClick);
```