# JSX

```JSX
    const Container = <div>Title Button</div>; // 아무 역할도 하지 않음.
    ReactDOM.render(Container, root); 
```

- 요소를 Container에 포함시키기 위해서는 함수로 만들어주어야한다.
- 함수를 HTML 태그와 같이 꺽쇠를 활용하여 포함시킨다.
- 컴포넌트의 첫 글자는 반드시 대문자여야한다.

```JSX
    const Title = () => (
        <span id="title" 
        onMouseEnter={() => console.log("mouseenter")}>
        I'm span.
        </span>
    );
    const Conainer = () => ( 
    <div>
        <Title/>
    </div>
    );
    ReactDOM.render(<Container/>, root);
```