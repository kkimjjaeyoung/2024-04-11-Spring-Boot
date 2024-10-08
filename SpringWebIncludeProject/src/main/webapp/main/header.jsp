<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">SpringMVC</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">레시피
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="../recipe/chef_list.do">쉐프</a></li>
          <%--
          	순서
          	1. do 링크
          	2. @Controller(.do처리)
          	3. 처리(mapper-dao-service)
          	4. @Controller(dao연동-결과값-jsp전송)
          	5. jsp에서 화면 출력
          	
          	1. 동작방식(실제 동작 확인)
          	2. 코딩순서
          	3. 검색
           --%>
          <li><a href="../recipe/find.do">레시피 찾기</a></li>
        </ul>
      </li>
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">맛집
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="../food/list.do">전체 맛집</a></li>
          <li><a href="../food/find.do">맛집 찾기</a></li>
        </ul>
      </li>
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">스토어
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">전체 상품</a></li>
          <li><a href="#">상품 찾기</a></li>
        </ul>
      </li>
      <li><a href="#">답변형 게시판</a></li>
    </ul>
  </div>
</nav>
</body>
</html>