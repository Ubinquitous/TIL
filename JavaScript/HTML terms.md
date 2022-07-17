# **HTML/CSS 기본 용어 사전**

# **1. HTML**

## **기본 태그**
| 태그 | 이름 | 정의 |
|------|------|------|
| **&lt;h1&gt;~&lt;h6&gt;** | 제목 태그 | 크고 굵게 표시된다. |
| **&lt;p&gt;** | 단락 태그 | 문단을 나누어준다. |
| **&lt;br&gt;** | 줄바꿈 태그 | 줄을 바꿔주고, 종료태그가 없다. |
| **&lt;hr&gt;** | 수평선 태그 | 수평선을 긋고, 종료태그가 없다. |

## **텍스트 서식 태그**
| 태그 | 정의 |
|------|------|
| **&lt;b&gt;, &lt;strong&gt;** | 볼드체로 표시해준다. |
| **&lt;i&gt;, &lt;em&gt;** | 이탤릭체로 표시해준다. |
| **&lt;mark&gt;** | 하이라이트로 표시해준다. |
| **&lt;q&gt;** | 줄바꿈 없이 따옴표를 붙여 표시해준다. |
| **&lt;blockquote&gt;** | 줄을 바꾸고 들여써서 구별한다. |  
| **&lt;sup&gt;** | 윗쪽 정렬로 작은 글씨체로 나타낸다. |

## **특수 문자 사용 기호**

| 특수 문자 | 엔티티 기호 |
|------|------|
| **공백** | **&nbsp** |
| **<** | **&lt** |
| **>** | **&gt** |
| **&** | **&amp** |
| **"** | **&quot** |

## **리스트 태그**

| 태그 | 속성값 | 정의 |
|---------|--------|------|
| **&lt;ul&gt;** | 없음 | 순서가 없는 목록을 표시함. |
| **&lt;ol&gt;** |  **1** | 1,2,3 등의 숫자로 나열. |
| **&lt;ol&gt;** | **a** | a,b,c 등의 소문자로 나열. |
| **&lt;ol&gt;** | **A** | A,B,C 등의 대문자로 나열. |
| **&lt;ol&gt;** |  **i** | i,ii,iii 등의 로마자로 나열. |
| **&lt;ol&gt;** |  **I** | I,II,III 등의 로마자로 나열. |

## **표 태그**

| 태그 | 이름 | 정의 |
|------|-----|------|
|**&lt;table&gt;** | 표 작성 태그 | 표를 시작할 때에 정의. |
|**&lt;caption&gt;** | 표 제목 태그 | 표의 제목을 정할 때 정의.|
|**&lt;tr&gt;** | 행 지정 태그 | 행(세로줄) 한 줄을 지정함. |
|**rowspan=""**| 행을 합치는 태그 | 행(세로줄)을 합쳐줌. |
|**&lt;td&gt;** | 열 지정 태그 | 열(가로줄) 한 줄을 지정함. |
|**&lt;th&gt;** | 열 지정 태그 | 열(가로줄)의 제목을 지정함. |
|**colspan=""** | 열을 합치는 태그 | 열(가로줄)을 합쳐줌. |

## **이미지 태그**
| 속성 | 정의 | 사용 |
|------|-----|------|
| **src** | 이미지 파일의 경로를 지정 | **&lt;img src="이미지주소"&gt;** |
| **alt** | 파일이 깨질 때 대체 문자 지정 | **&lt;img src="이미지주소" alt="로고"&gt;**|
| **width** | 이미지의 너비를 지정 | **&lt;img src="이미지주소" width="200px"&gt;**|
| **height** | 이미지의 높이와 지정 | **&lt;img src="이미지주소" height="200px"&gt;**|


## **오디오, 비디오 입력태그**

| 속성 | 태그 | 정의 |
|------|------|------|
| **autoplay** | 공통 태그 | 오디오를 자동으로 재생함. |
| **controls** | 공통 태그 | 재생 도구를 표시해줌. |
| **loop** | 공통 태그 | 오디오를 반복하여 재생함. |
| **preload** | 공통 태그 | 오디오를 미리 다운로드함. |
| **width, height** | 비디오 태그 | 비디오의 너비와 높이를 지정함. |
| **poster** | 비디오 태그  | 다운로드 하는 동안 이미지를 표시함. |

## **블록 태그와 인라인 태그**
- 인라인 요소는 줄 바꿈 없이 크기만의 공간을 차지한다.
- 블록 요소는 블록으로 묶어 처리하며 너비와 높이를 지정할 수 있다.  

| 태그 | 요소 |
|------|-----|
|**&lt;div&gt;**| 블록 태그 |
|**&lt;blockquote&gt;**| 블록 태그 |
|**&lt;hn&gt;, &lt;p&gt;** | 블록 태그 |
|**&lt;ul&gt;,&lt;ol&gt;,&lt;li&gt;** | 블록 태그 |
|**&lt;table&gt;,&lt;tr&gt;,&lt;th&gt;** | 블록 태그 |
|**&lt;span&gt;** | 인라인 태그 |
|**&lt;q&lt;** | 인라인 태그 |
|**&lt;b&gt;,&lt;i&gt;,&lt;strong&gt;..** | 인라인 태그 |
|**&lt;a&gt;** | 인라인 태그 |

## **분할 태그와 시멘틱 태그**
| 태그 | 정의 |
|------|------|
|**&lt;header&gt;**| 페이지나 섹션의 제목이나 간단한 설명 작성. |
|**&lt;nav&gt;**| 페이지 내 목차를 만드는 용도로 사용. |
|**&lt;section&gt;**| 문서의 장 혹은 절을 구성하는 역할. |
|**&lt;aside&gt;**| 페이지의 오른쪽이나 왼쪽에 배치하여 사용. |
|**&lt;footer&gt;**| 꼬리말 영역으로, 저자나 저작권 정보를 표시. |

## **form 태그**
- form태그는 사용자로부터 데이터를 입력받아 서버로 전달할 때 사용.
- 데이터를 처리하여 실행 결과를 사용자에게 전달함.
- action 속성 : 데이터를 처리할 서버 상의 스크립트 파일 주소.
- method 속성 : 입력받은 데이터를 서버에 전달할 방식 지정.
    - GET - 주소에 데이터를 추가하여 공개적으로 전달하는 방식.
    - POST - 데이터를 비공개적으로 별도로 첨부하여 전달하는 방식.

| 태그 | 정의 |
|------|------|
|**&lt;fieldset&gt;**| 폼 요소를 그룹으로 묶음. |
|**&lt;legend&gt;** | fieldset의 제목을 지정함. |
|**&lt;input&gt;** | 입력받을 필드를 삽입해준다. |
|**&lt;label&gt;** | input에을 서식하는데 사용한다. |
|**&lt;select&gt;**| 드롭다운 목록을 삽입한다. |
|**&lt;textarea&gt;**| 텍스트영역(메모)을 삽입한다. |
|**&lt;button&gt;** | 클릭할 수 있는 버튼을 삽입. |

## **form 태그에서 input 타입**
| 속성 | 정의 |
|------|-----|
| **text** | 텍스트 입력 |
| **password** | 비밀번호 입력. |
| **radio** | 여러 항목 중 하나를 선택. |
| **checkbox** | 복수 선택이 가능함. |
| **file** | 파일을 불러올 수 있음. |
| **email** | 이메일 형식으로 표시. |
| **date** | 달력 형식으로 표시. |
| **button** | 버튼 형식으로 표시. |
| **submit** | 전송 형식으로 표시. |
| **range** | 숫자 막대 형식으로 표시. |
| **search** | 검색창 형식으로 표시. |
| **url** | 링크 주소 형식으로 표시. |
| **reset** | 취소 형식으로 표시. |
| **image** | 버튼 이미지를 삽입. |
| **hidden** | 서버로 넘기는 보이지않는 필드 생성. |


# **2. CSS**

| 태그 | 정의 | 예시 |
|------|------|-----|
| **color** | 글자 색 변경 | color:lightyellow; |
| **background-color** | 배경색 지정 | background-color:red; |
| **font-size** | 글씨 크기 지정 | font-size : 30px; |
| **font-family** | 글씨체 지정 | font-family : cursive; |
| **text-align** | 위치 정렬 | text-align : center; | 
| **text-decoration** | 글씨 줄 서식 | text-decoration:none; |
| **text-shadow** | 글씨 그림자 지정 | text-shadow : gray 2px 2px; |
| **margin** | 위치 조절 | margin:5px(상) 10px(우) 5px(하) 20px(좌); |
| **border** | 테두리 지정 | border : black solid 1px #ccc; |
| **border-spacing** | 셀 사이 여백 지정 | border-spacing : 10px; |
| **border-collapse** | 표와 셀 테두리를 합침 | border-collapse : collapse; |
| **text-transform** | 대문자 지정 | text-transform : captitalize; |
| **letter-spacing** | 글자 사이 간격 지정 | letter-spacing : 0.8em; |
| **word-spacing** | 단어 사이 간격 지정 | word-spacing : 1.2em; |
| **line-height** | 줄 간격 조정 | line-height : 20px;
| **display** | 배치 방법 지정 | display : inline-block; |
| **caption-side** | 표 제목 위치 지정 | caption-side : top; |
| **border-radius** | 모서리 라운딩 | border-top-left-radius : 20px; |
| **background-image** | 배경 이미지 지정 | background-image:url('img.png')
| **background-size** | 배경 이미지 크기 지정 | background-size : auto; |
| **background-repeat** | 배경 이미지 반복 지정 | bacgkround-repeat : no-repeat; |
| **background-position** | 배경 이미지 위치 조절 | background-position : top left; | 
| **linear-gradient**  | 선형 그라데이션 | linear-gradient(to right bottom, white, blue); |
| **radial-gradient** | 원형 그라데이션 | radial-gradient(white, yellow, red); |
| **position** | 배치 방법 지정 | position : relative; |
| **direction** | 방향에서 떨어진 거리 지정 | left : 100px; |
| **float** | 방향에 배치하여 문서에 떠 있게 지정 | float : right; |
| **clear** | float 속성 해제 | clear : right; |
| **read-only** | 읽기 전용 입력 박스 | &lt;input id="level" readonly&gt; | 
| **required** | 필수 입력 필드 | &lt;input id="password" required&gt; |
| **:hover** | 마우스를 올렸을 때 | #signup button:hover {} |
| **:after** | 그 속성의 옆 쪽 | a[href="ps-2.html"]::after{} |