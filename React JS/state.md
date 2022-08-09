# state
<p>state는 기본적으로 데이터가 저장되는 곳으로 바뀌는 데이터들을 state에 저장할 수 있다.</p>

```JSX
    let counter = 0;

    function countUP(){
        counter += 1; 
        render();
    }
    function render(){
        ReactDOM.render(<Container/>, root); // 리렌더링으로 UI 적용
    }
    const Container = () => (
        <div>
            <h3>Total clicks : {counter}</h3>
            <button onClick={countUP}>Click me!</button>
        </div>
    );
    render();
```
- React JS는 이전에 렌더링된 컴포넌트가 무엇인지 확인할 수 있다.
- 다른 부분을 파악하여 바뀐 부분의 UI만 업데이트한다.