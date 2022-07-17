## Interval

- setInterval() : 정해진 시간마다 함수를 실행시키는 함수.
- padStart() : 앞에서부터 n글자만큼 정해진 값으로 채움.
- padEnd() : 뒤에서부터 n글자만큼 정해진 값으로 채움.

```JS
function getClock(){
    const date = new Date();
    const hours = String(date.getHours()).padStart(2, "0");
    const minutes = String(date.getMinutes()).padStart(2, "0");
    const seconds = String(date.getSeconds()).padStart(2, "0");
    clock.innerText = `${hours}:${minutes}:${seconds}`;
}

setInterval(getClock, 1000);
```