# tsconfig.json 파일 살펴보기

```json
//tscconfig.json 파일의 기본 구성
{
    "compilerOptions" { },
    "include":["src/**/*"]
}
```
- compilerOptions 항목은 tsc 명령 형식에서의 옵션을 나타낸다.
- include 항목은 대상 파일 목록을 나타낸다.
    - src/**/*은 src 디렉터리와 하위 디렉터리에 있는 모든 파일을 컴파일 대상으로 한다는 의미.
- 키는 설정 항목을 의미하고, 설정하는 값을 키값이라고 한다. "키:키값" 형태로 나타냄.

```json
{
  "compilerOptions": {
      "module": "commonjs",
      "esModuleInterop": true,
      "target": "es5",
      "moduleResolution": "node",
      "outDir": "dist",
      "baseUrl": ".",
      "sourceMap": true,
      "downlevelIteration": true,
      "noImplicitAny": false,
      "paths": { "*": ["node_modules/*"]}
  },
  "include": ["src/**/*"] 
}
```
## module 키
<p>타입스크립트 소스코드가 컴파일되어 만들어진 자바스크립트 코드는 웹 브라우저, Node JS 양쪽에서 모두 동작해야 한다. 허나 물리적으로 둘은 동작 방식이 달라서 각각 다르게 동작한다.</p>
- 웹 브라우저 : AMD방식으로 동작.
- 그 외 : CommonJS 방식으로 동작.
<p>따라서 module 키는 동작 대상 플랫폼이 웹 브라우저인지 Node JS인지 구분하여 그에 맞는 모듈 방식으로 컴파일하려는 목적으로 설정하는 것이다.</p>

## moduleResolution 키
- module 키의 값이 commonjs : moduleResolution 키값은 항상 node로 설정.
- module 키의 값이 AMD : moduleResolution 키값은 classic으로 설정.

## target 키
- 트랜스파일할 대상 자바스크립트의 버전을 설정함. 대부분 es5를 키값으로 설정.
- 최신 버전의 Node JS를 사용할 경우 es6를 설정할 수 있다.

## baseUrl, outDir 키
- 트랜스파일된 ES5 자바스크립트 파일을 저장하는 디렉터리를 설정한다.
- .tsc는 tsconfig.json 파일이 있는 디렉터리에서 실행됨.
- 현재 디렉터리를 의미하는 "."로 baseUrl 키값을 설정하는 것이 보통.
- outDir 키는 baseDir 설정값을 기준으로 했을 때 하위 디렉터리의 이름.

## paths 키
- 소스 파일의 import문에서 from 부분을 해석할 때 찾아야 하는 디렉터리 설정.

## esModuleInterop 키
<p>오픈소스 자바스크립트 라이브러리 중 웹 브라우저에서 동작한다는 가정으로 만들어 진 것들은 CommonJS 방식으로 동작하는 타입스크립트 코드에 혼란을 줄 수 있다.</p>
- ex) chance 패키지가 바로 AMD 방식을 전제로 하여 구현된 라이브러리.
- 따라서 chance 패키지가 동작하려면 esModuleInterop 키값을 true로 설정해야함.

## sourceMap 키
- sourceMap 키값이 true면 트랜스파일 디렉터리에 .js.map 파일이 만들어짐.
- 변환된 JS 코드가 TS 코드의 어디에 해당하는지를 알려줌.
- 주로 디버깅할 때 사용됨.

## downlevellteration 키
- 생성기 구문을 정상적으로 동작시키기 위해 필요한 키값.

## nolmplicitAny 키
- 타입을 명시하지 않았을 경우 any 타입을 설정한 것으로 간주하는데, 이를 경고하는 키.
- false로 설정할 경우 타입을 지정하지 않더라도 오류를 일으키지 않음.