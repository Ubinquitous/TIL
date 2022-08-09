# Hooks - useInput

<p>기본적으로 Input을 업데이트해주는 역할을 한다. 다른 함수에서 이벤트를 처리할 수 있기 때문에 분리된 파일과 다른 entity에 연결해서 처리할 수 있다.</p>

```JSX
    const useInput = (initialValue) => {
        const [value, setValue] = useState(initialValue);
        const onChange = event => {
            console.log(event.target);
        };

        return { value };
    };

    const App = () = {
        const name = useInput("Mr.");

        return (
            <div>
            <input placeholder="name" {...name}/>
            </div>
        );
    };
```