+++
title = "4Clojure 문제 모음"
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


### 5.[Lists: conj](https://www.4clojure.com/problem/5)

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

### 6.[Intro to Vectors](https://www.4clojure.com/problem/6)

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

### 9 Sets: conj.[Sets: conj](https://www.4clojure.com/problem/9)

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

*keyword 참고*
user=> (keyword 'foo) 
:foo

    Maps store key-value pairs. Both maps and keywords can be used as lookup functions. Commas can be used to make maps more readable, but they are not required. 

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


.[](https://www.4clojure.com/problem/)

난이도: 초급

`문제`
set을 조작할 때, conj 함수는 한개 이상의 키가 "추가된" 새로운 set을 반환한다.

    When operating on a set, the conj function returns a new set with one or more keys "added". 

`문제 코드`
```clojure
```

`통과한 코드`
```clojure

```

----




