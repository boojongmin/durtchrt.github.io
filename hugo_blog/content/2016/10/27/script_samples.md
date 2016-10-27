+++
date = "2016-10-27T13:18:55+09:00"
title = "즐겨찾기 등록용 스크립트 샘플들"
description = ""
author = ""
tags = [ "javascript", "favorites", "chrome" ]

+++

#### 다음 시작화면에서 쓸만한 기능들

### 루빅스보기
```javascript
javascript:$('*').each((a, b) => { if(b.className.indexOf('rubics') > 0) { b.style.backgroundColor = 'red'; } })
```

### 루빅스 다시그리기
```javascript
javascript:window.daumGlueDynamicContentRefresh({isHistoryBack:true})
```

### 티아라태그보기 
```javascript
javascript:$('#daumContent a').each((a, b) => { if(b.className.indexOf('#') > 0) { var reg = /([\s]*[#][\w]+[\s]*){3}/; if(reg.test(b.className)) { $(b).text(b.className.match(reg)) } } })
```


