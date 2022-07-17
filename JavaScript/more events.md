# **events 부가정리**

```JS
    function handleWindowResize(){
        document.body.style.backgroundColor = "tomato";
    }
    function handleWindowCopy(){
        alert("copier!");
    }
    function handleWindowOffline(){
        alert("SOS!! No wifi.");
    }
    function handleWindowOffline(){
        alert("ALL Goood");
    }
    title.addEventListener("click", titleClick);
    title.onclick = titleClick; //위 코드와 같은 역할을 함.
    title.onmouseenter = MouseEnter; //에러 없이 동작

    window.addEventListener("resizse", handleWindowResize); //창 크기가 바뀌면 색이 바뀜.
    window.addEventListener("copy", handleWindowCopy);      //복사 감지
    window.addEventListener("offline", handleWindowOffline);//오프라인 감지
    window.addEventListener("online", handleWindowOnline);  //온라인 감지
``` 