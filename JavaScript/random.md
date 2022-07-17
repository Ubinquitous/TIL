## **난수 생성**

- Math.round() : 반올림
- Math.ceil() : 올림
- Math.floor() : 내림
- Math.random() : 랜덤 소수값
- createElement : html tag생성

```JS
// 랜덤 명언 만들기.
const quote = document.querySelector("#quote span:first-child");
const author = document.querySelector("#quote span:last-child");

todaysQuote = (quotes[Math.floor(Math.random()*quotes.length)]);

quote.innerText = todaysQuote.quote;
author.innerText = todaysQuote.author;
```