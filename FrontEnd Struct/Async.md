## Async 

## 동기와 비동기
- 동기는 결과를 받기 전까지 작업을 수행하지 않는다.
- 동기식은 업무가 단순하나, 자원을 비효율적으로 사용한다.
- 비동기는 결과와 상관없이 기다리지 않고 계속 작업을 수행함.
- 상황에 따라 동기식을 사용할지, 비동기식을 사용할지 여부가 바뀐다.

## 비동기식
- 비동기식의 특성으로 인해 자원을 효율적으로 사용할 수 있으나, 결과 확인이 불가능함.
- 따라서 업무가 복잡해질 수 있다. 답변이 올 때까지 기다리는 것을 Blocking이라 함.
- 은행 계좌 인출 등의 업무는 코드를 동기식으로 구축해야 한다.