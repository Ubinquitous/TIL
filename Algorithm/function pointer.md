# 함수 포인터

<p>함수 포인터는 함수를 가리키는 포인터이다. 함수 포인터의 자료형은 가리키는 함수에 따라 다르다.</p>

```c
    double func(int) // int를 받아들여 double을 반환하는 함수.
```
```c
    double(*fp)(int) // int를 받아들여 double을 반환하는 함수에 대한 포인터 fp의 선언.
```
```c
    double *fn(int)  // int를 받아들여 double에 대한 포인터를 반환하는 함수 선언   
```