## DOM
- 브라우저 안에는 웹 문서를 해석할 수 있는 렌더링 엔진이 있다.
- 브라우저로 실행하면 렌더링 엔진이 HTML 문서를 한줄 한줄 해석함.
- 해석이 끝나면 문서를 객체화시키는데, 그것을 DOM(Document Object Model) 이라 한다.

## Tree 구조
- 태그 내에 태그가 있고, 그 태그 내에 태그가 있는 트리 구조를 가짐.
- 하나의 부모 태그와, n개의 자식 태그를 가질 수 있음.
- 이를 DOM Tree라 하며, 각각의 요소를 Node라고 함.

## 브라우저 객체 모델
- 브라우저 전체를 제어할 수 있도록 모델링한 것을 BOM(Browser Object Model) 이라 한다.

## CSSOM
- CSS를 자바스크립트로 조작할 수 있도록 모델링한 것을 CSSOM(Cascade StyleSheet Object Model) 이라 한다.

## Document
- 웹페이지 자체를 의미하며, DOM Tree 최상위 Node임.
- 본 노드에 접근하기 위한 진입점.