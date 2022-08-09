# Hooks - useState

<p>useState는 항상 두 개의 값을 반환한다. 첫 번째 값은 변수, 두 번째 값은 첫 번째 값을 변경시킬 함수로 구성된다. React Hook은 코드를 간결하게 해주는 역할을 하며, 적응하고 이해하기가 쉽다.</p>

```JSX
    /*--- React Hook을 사용하지 않는 코드 ---*/
    class originalApp extends React.Component{
        state = {
            item: 0
        }
        render(){
            const { item } = this.state;   
        }
        return (
            <h1>{item}</h1>
            <button onClick={this.incrementItem}></button>
            <button onClick={this.decrementItem}></button>
        );
    }
    incrementItem = (
        this.setState(state => {
            return {
                item: state.item + 1
            }
        });
    );

    decrementItem = (
        this.setState(state => {
            return {
                item: state.item + -
            }
        });
    )
```
```JSX
    /*--- React Hook을 사용한 코드 ---*/
    const App = () => {
        const [item, setItem] = useState(0);
        const incrementItem = () => setItem(item + 1);
        const decrementItem = () => setItem(item - 1);

        return (
            <h1>{item}</h1>
            <button onClick={incrementItem}></button>
            <button onClick={decrementItem}></button>
        );
    };
```

