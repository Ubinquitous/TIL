## 자바스크립트 런타임

<p>런타임은 특정 언어로 만든 프로그램들을 실행할 수 있는 환경을 뜻한다. 즉, 노드는 자바스크립트의 런타임으로 자바스크립트 실행기라고 보아도 무방하다.</p>

## Node가 만들어진 계기

1. 자바스크립트를 브라우저 외에서 실행하려는 시도가 있었으나, 속도 때문에 호응을 얻지 못함.
2. 구글이 2008년 V8 엔진을 출시하자 Ryan Dhal이 V8엔진 기반의 노드 프로젝트를 시작함.
3. 노드가 V8과 더불어 libuv라는 라이브러리를 사용함.

<p>libuv 라이브러리는 이벤트 기반, 논 블로킹 I/O 모델을 구현하고 있다.</p>

<div align="center">

#### Node.js Core Library  
#### Node.js Bindings
#### V8&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;libuv
#### ⇩&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;⇩
#### 오픈소스 JS엔진&nbsp;&nbsp;&nbsp;&nbsp;비동기I/O
</div>