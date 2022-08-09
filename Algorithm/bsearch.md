# besearch 함수

<p>bsearch 함수는 정렬된 배열에서 검색하는 함수로, C언어의 표준 라이브러리에 내장되어 있다. 특징은 다음과 같다.</p>

1. 검색 대상의 배열은 항상 정렬되어 있어야 한다.
2. 검색하는 값과 같은 요소가 여러 개 존재하는 경우, 항상 가장 앞쪽 요소를 찾아내진 않는다.

```c
    /*--- 정수를 비교하는 함수(오름차순) ---*/
    int int_cmp(const int *a, const int *b){
        if(*a < *b)
            return -1;
        else if(*a > *b)
            return 1;
        else 
            return 0;
    }

    p = bsearch(&ky,                                          /* 검색값에 대한 포인터 */
                x,                                            /* 배열 */
                nx,                                           /* 요소의 개수 */
                sizeof(int),                                  /* 요소의 크기 */
                (int(*)(const void *, const void *)) int_cmp  /* 비교 함수 */
                );
```