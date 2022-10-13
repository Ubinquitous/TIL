## for in문 정리

파이썬의 반복문은 대표적으로 두 가지의 변수를 필요로 한다.  
첫 번째 변수는 대입되는 변수를, 두 번째는 반복이 가능한 리스트 형태의 요소가 들어간다.

```python
j = 1
for i in ["class", "object", "method"]:
    print(i, j)
    j+=1
    # class 1
    # object 2
    # method 3
```

리스트 형태의 요소가 아니더라도 range를 통해 반복되는 숫자를 지정할 수 있다.

```python
for i in range(10):
    print(i, end='')
    # 1 2 3 4 5 6 7 8 9

for i in range(5, 12):
    print(i, end='')
    # 5 6 7 8 9 10 11
```
