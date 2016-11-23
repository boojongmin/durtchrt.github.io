+++
title = "4Clojure 문제 모음 1 ~ 25"
description = "4Clojure 문제 모음"
author = "durtchrt"
tags = [ "clojure", "4clojure", "question"  ]
date = "2016-11-20T04:22:01+09:00"

+++

### 1.진실만있다. [Nothing but the Truth](https://www.4clojure.com/problem/1)

난이도: 초급

`문제`

이것은 클로저 폼이다. 폼 평가를 true가 되도록 값을 넣으세요. 생각이 깊게 하지 마세요! 만약 헤갈린다면, 클로저 초급 문서를 보세요. Hint: true는 true와 같다

    This is a clojure form. Enter a value which will make the form evaluate to true. Don't over think it! If you are confused, see the getting started page. Hint: true is equal to true.

`문제 코드`
```clojure
(= __ true)
```

`통과한 코드`
```clojure
true
```

----

### 2. 간단한 수학[Simple Math](https://www.4clojure.com/problem/2)

난이도: 초급

`문제`
polish notation(전위연산)이 익숙하지 않다면 간단한 계산 혼란을 느낄것이다.
중요: 빈칸을 채우세요(숫자 하나입니다.) - 문제 전체를 타이핑하지 마세요.

    If you are not familiar with polish notation, simple arithmetic might seem confusing.
    Note: Enter only enough to fill in the blank (in this case, a single number) - do not retype the whole problem. 

`문제 코드`
```clojure
(= (- 10 (* 2 3)) __)
```

`통과한 코드`
```clojure
4
```

----


### 3.문자열 소개[Intro to Strings](https://www.4clojure.com/problem/3)

난이도: 초급

`문제`
클로저 String은 자바 String이다. 즉, 클로저 String은 자바 String 메서드를 사용할 수 있다.

    Clojure strings are Java strings. This means that you can use any of the Java string methods on Clojure strings.

`문제 코드`
```clojure
(= __ (.toUpperCase "hello world"))
```

`통과한 코드`
```clojure
"HELLO WORLD"
```

----


### 4.리스트 소개[Intro to Lists](https://www.4clojure.com/problem/4)

난이도:초급

`문제`
Lists는 함수 또는 quoted form으로 만들수 있다.

    Lists can be constructed with either a function or a quoted form. 

`문제 코드`
```clojure
(= (list __) '(:a :b :c))
```

`통과한 코드`
```clojure
:a :b :c
```

----


### 5.리스트: conj [Lists: conj](https://www.4clojure.com/problem/5)

난이도: 초급

`문제`
리스트를 조작할때 conj함수는 하나 이상의 아이템이 앞에 "추가된" 새로운 리스트를 반환한다.
중요: 두 테스트 케이스는 답이 하나다.

    When operating on a list, the conj function will return a new list with one or more items "added" to the front.

    Note that there are two test cases, but you are expected to supply only one answer, which will cause all the tests to pass. 

`문제 코드`
```clojure
(= __ (conj '(2 3 4) 1))
(= __ (conj '(3 4) 2 1))
```

`통과한 코드`
```clojure
'(1 2 3 4)
```

----

### 6.벡터소개 [Intro to Vectors](https://www.4clojure.com/problem/6)

난이도: 초급

`문제`
Vector는 다양한 방법으로 생성할 수 있다. 벡터는 리스트와 비교할 수 있다.

브라켓([])으로 둘러싸여진 __ 부분을 채워라.

    Vectors can be constructed several ways. You can compare them with lists.

    Note: the brackets [] surrounding the blanks __ are part of the test case.


`문제 코드`
```clojure
(= [__] (list :a :b :c) (vec '(:a :b :c)) (vector :a :b :c))
```

`통과한 코드`
```clojure
:a :b :c
```

----



### 7. 벡터: conj[Vectors: conj](https://www.4clojure.com/problem/7)

난이도: 초급

`문제`
Vector를 조작할 때, conj 함수는 마지막에 하나 이상의 아이템이 "추가된" 새로운 vector를 반환한다.

    When operating on a Vector, the conj function will return a new vector with one or more items "added" to the end.

`문제 코드`
```clojure
(= __ (conj [1 2 3] 4))
(= __ (conj [1 2] 3 4))
```

`통과한 코드`
```clojure
[1 2 3 4]
```

----

### 8. Set 소개[Intro to Sets](https://www.4clojure.com/problem/8)

난이도: 초급

`문제`
Set은 유일한 값의 집합(collection)이다.

    Sets are collections of unique values.

`문제 코드`
```clojure
(= __ (set '(:a :a :b :c :c :c :c :d :d)))
(= __ (clojure.set/union #{:a :b :c} #{:b :c :d}))
```

`통과한 코드`
```clojure
#{:a :b :c :d}
```
----

### 9 Sets: conj [Sets: conj](https://www.4clojure.com/problem/9)

난이도: 초급

`문제`
set을 조작할 때, conj 함수는 한개 이상의 키가 "추가된" 새로운 set을 반환한다.

    When operating on a set, the conj function returns a new set with one or more keys "added".

```clojure
(= #{1 2 3 4} (conj #{1 4 3} __))
```

`통과한 코드`
```clojure
2
```

----

### 10. Map 소개[Intro to Maps](https://www.4clojure.com/problem/10)

난이도: 초급

`문제`
Map은 키-값(key-value)쌍을 저장한다. maps와 keywords는 둘다 검색(lookup) 함수를 사용할 수 있다. 쉼표(,)는 맵을 더 읽기 쉽게하지만 필수는 아니다.

    Maps store key-value pairs. Both maps and keywords can be used as lookup functions. Commas can be used to make maps more readable, but they are not required. 
    
*keyword 참고*
user=> (keyword 'foo) 
:foo


`문제 코드`
```clojure
(= __ ((hash-map :a 10, :b 20, :c 30) :b))
(= __ (:b {:a 10, :b 20, :c 30}))
```

`통과한 코드`
```clojure
20
```

----


### 11. Mpas: conj [Maps: conj](https://www.4clojure.com/problem/11)

난이도: 초급

`문제`
맵을 조작할때, conj 함수는 하나 이상의 키와 값의 쌍이 "추가된" 새로운 맵을 반환한다.

    When operating on a map, the conj function returns a new map with one or more key-value pairs "added". 

`문제 코드`
```clojure
(= {:a 1, :b 2, :c 3} (conj {:a 1} __ [:c 3]))
```

`통과한 코드`
```clojure
{:b 2}
```

----

### 12.시퀀스 소개[Intro to Sequences](https://www.4clojure.com/problem/12)

난이도: 초급

`문제`
모든 클로저의 컬렉션들은 시퀀싱(순서)을 지원한다. first, second, last 함수와 함께 시퀀스를 조작할 수 있다.

    All Clojure collections support sequencing. You can operate on sequences with functions like first, second, and last.


`문제 코드`
```clojure
(= __ (first '(3 2 1)))

(= __ (second [2 3 4]))

(= __ (last (list 1 2 3)))
```

`통과한 코드`
```clojure
3
```

----

### 13.시퀀스: rest[Sequences: rest](https://www.4clojure.com/problem/13)

난이도: 초급

`문제`
rest 함수는 첫번째를 제외한 모든 아이템들의 시퀀스를 반환한다.

   The rest function will return all the items of a sequence except the first.
 

`문제 코드`
```clojure
(= __ (rest [10 20 30 40]))
```

`통과한 코드`
```clojure
[20 30 40]
```
----

### 14.함수 소개[Intro to Functions](https://www.4clojure.com/problem/14)

난이도: 초급

`문제`
클로저는 함수를 생성하는 다양한 방법이 있다.

    Clojure has many different ways to create functions.
 

`문제 코드`
```clojure
(= __ ((fn add-five [x] (+ x 5)) 3))

(= __ ((fn [x] (+ x 5)) 3))

(= __ (#(+ % 5) 3))

(= __ ((partial + 5) 3))
```

`통과한 코드`
```clojure
8
```

----

### 15.[Double Down](https://www.4clojure.com/problem/)

난이도: 초급

`문제`
숫자를 2배 만드는 함수를 작성하시오.

    Write a function which doubles a number.

`문제 코드`
```clojure
(= (__ 2) 4)

(= (__ 3) 6)

(= (__ 11) 22)

(= (__ 7) 14)
```

`통과한 코드`
```clojure
* 2
```

----

### 16.Hello World[Hello World](https://www.4clojure.com/problem/16)

난이도: 초급

`문제`
개인화된 인사말을 반환하는 함수를 작성하시오.

    Write a function which returns a personalized greeting.

 

`문제 코드`
```clojure
(= (__ "Dave") "Hello, Dave!")

(= (__ "Jenn") "Hello, Jenn!")

(= (__ "Rhea") "Hello, Rhea!")

```

`통과한 코드`
```clojure
#(str "Hello, " % "!")
```
```clojure
(fn [name] (str "Hello, " name "!"))
```
```clojure
(fn helloGreeting [name] (str "Hello, " name "!"))
```
----

### 17.시퀀스: map[Sequences: map](https://www.4clojure.com/problem/17)

난이도: 초급

`문제`
map 함수는 두개의 인자를 취합니다(함수(f), 시퀀스(s)). map은 시퀀스(s)의 개별 아이템에 함수(f)를 적용한 결과의 새로운 시퀀스 consisting(구조물?)을 반환한다. 자료구조 map과 map 함수와 헤갈리지 말자.

    The map function takes two arguments: a function (f) and a sequence (s). Map returns a new sequence consisting of the result of applying f to each item of s. Do not confuse the map function with the map data structure.

 

`문제 코드`
```clojure
(= __ (map #(+ % 5) '(1 2 3)))
```

`통과한 코드`
```clojure
'(6 7 8)
```

----

### 18.시퀀스: filter[Sequences: filter](https://www.4clojure.com/problem/18)

난이도: 초급

`문제`
filter 함수는 두개의 인자를 취합니다(predicate 함수(f), 시퀀스(s)). filter는 (f item)의 결과가 true인 모든 아이템의 시퀀스 consisting을 반환합니다.

    The filter function takes two arguments: a predicate function (f) and a sequence (s). Filter returns a new sequence consisting of all the items of s for which (f item) returns true.
 

`문제 코드`
```clojure
(= __ (filter #(> % 5) '(3 4 5 6 7)))
```

`통과한 코드`
```clojure
'(6 7)
```

----

### 19.마지막 요소[Last Element](https://www.4clojure.com/problem/19)

난이도: 쉬움
주제: seqs 코어 함수 `seqs core-functions`

`문제`
시퀀스의 마지막 요소를 반환하는 함수를 작성하시오.

    Write a function which returns the last element in a sequence.
 
**last 함수는 사용하지 마세요**

    Special Restrictions
    last 

`문제 코드`
```clojure
(= (__ [1 2 3 4 5]) 5)

(= (__ '(5 4 3)) 3)

(= (__ ["b" "c" "d"]) "d")
```

`통과한 코드`
```clojure
(comp first reverse) ; <- last가 안되서 찾다가 참조한 답. 아래는 다른 답으로 제출
```

```clojure
#(nth % (- (count %) 1))
```

----

### 20.두번째 요소[Penultimate Element](https://www.4clojure.com/problem/20)

난이도: 쉬움
주제: seqs

`문제`
시퀀스에서 마지막에서 두번째 요소를 반환하는 함수를 작성하세요

    Write a function which returns the second to last element from a sequence.
 

`문제 코드`
```clojure
(= (__ (list 1 2 3 4 5)) 4)

(= (__ ["a" "b" "c"]) "b")

(= (__ [[1 2] [3 4]]) [1 2])



```

`통과한 코드`
```clojure
(comp first rest reverse)
```

----

### 21.N번째 요소[Nth Element](https://www.4clojure.com/problem/21)

난이도: 쉬움
주제: seqs core-functions


`문제`
시퀀스로부터 N번째 요소를 반환하는 함수를 작성하세요.

   Write a function which returns the Nth element from a sequence.


`문제 코드`

**nth 함수는 사용하지 마세요.**

    Special Restrictions
    nth
```clojure
(= (__ '(4 5 6 7) 2) 6)
(= (__ [:a :b :c] 0) :a)
(= (__ [1 2 3 4] 1) 2)
(= (__ '([1 2] [3 4] [5 6]) 2) [5 6])
```

`통과한 코드`
```clojure
(fn [x y] (get (into [] x) y))
```

----

### 22.시퀀스 갯수 세기[Count a Sequence](https://www.4clojure.com/problem/22)

난이도: 쉬움

`문제`
시퀀스의 요소의 전체 갯수를 반환하는 함수를 작성하세요

    Write a function which returns the total number of elements in a sequence.

**count함수는 사용하지 마세요**

    Special Restrictions
    count

`문제 코드`
```clojure
(= (__ '(1 2 3 3 1)) 5)
(= (__ "Hello World") 11)
(= (__ [[1 2] [3 4] [5 6]]) 3)
(= (__ '(13)) 1)
(= (__ '(:a :b :c)) 3)
```

`통과한 코드`
```clojure
#(reduce + (map (fn [_] 1) %))
```

----

### 23.시퀀스 뒤집기[Reverse a Sequence](https://www.4clojure.com/problem/23)

난이도: 초급
주제: seqs core-functions


`문제`
시퀀스 reverses 함수를 작성하시오

    Write a function which reverses a sequence.

**reverse, rseq 함수를 사용하지 마세요** 
    Special Restrictions
    reverse
    rseq

`문제 코드`
```clojure
(= (__ [1 2 3 4 5]) [5 4 3 2 1])
(= (__ (sorted-set 5 7 2 7)) '(7 5 2))
(= (__ [[1 2][3 4][5 6]]) [[5 6][3 4][1 2]])
```

`통과한 코드`
```clojure
#(reduce conj '() %)
```

----

### 24.모두 더해라[Sum It All Up](https://www.4clojure.com/problem/24)

난이도: 쉬움
주제: seqs

`문제`
숫자로된 시퀀스의 합을 반환하는 함수를 작성하시오.

    Write a function which returns the sum of a sequence of numbers.

 
`문제 코드`
```clojure
(= (__ [1 2 3]) 6)
(= (__ (list 0 -2 5 5)) 8)
(= (__ #{4 2 1}) 7)
(= (__ '(0 0 -1)) -1)
(= (__ '(1 10 3)) 14)
```

`통과한 코드`
```clojure
#(reduce + %)
```

----

### 25.홀수를 찾아라[Find the odd numbers](https://www.4clojure.com/problem/25)

난이도: 쉬움
주제: seqs

`문제`
시퀀스로부터 홀수만 반환하는 함수를 작성하세요

    Write a function which returns only the odd numbers from a sequence.

 

`문제 코드`
```clojure
(= (__ #{1 2 3 4 5}) '(1 3 5))
(= (__ [4 2 1 6]) '(1))
(= (__ [2 2 4 6]) '())
(= (__ [1 1 1 3]) '(1 1 1 3))
```

`통과한 코드`
```clojure
#(filter odd? %)
```



