# setState

<p>리액트는 리렌더링할 경우 전체를 전부 재생성하지 않고 바뀐 부분만 새로 생성한다.</p>

## 함수를 사용하지 않고 자동 리렌더링하기

- seState는 undefined와 함수 하나를 얻게 한다.
- undefined에는 데이터 값이 들어간다.
- 함수는 data를 바꿀 때에 사용하는 함수이다.

```JSX
    function App(){
        let [counter, setCounter] = React.useState(0);
        
        const onClick = () => {
            setCounter(counter + 1);
        };
        return (
            <div>
                <h3>Total clicks: 0</h3>
                <button onClick={onClick}>Click me</button>
            </div>
        );
    }
    ReactDOM.render(<App/>, root)
```

## 배열 요소의 아이템을 쉬운 코드로 가져오는 법

```JSX
    const food = ["tomato", "potato"];
    const [myFavFood, SecondFood] = food;

    console.log(myFavFood, SecondFood) // tomato, potato
```