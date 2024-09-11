<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<div class="row">
		<div class="row">
    <table class="table">
      <tr>
        <td class="text-center" colspan="3">
          <img src="${vo.poster }" style="width: 800px;height: 200px">
        </td>
      </tr>
      <tr>
        <td class="text-center" colspan="3"><h3>${vo.name }</h3></td>
      </tr>
      <tr>
        <td class="text-center" colspan="3">${vo.content }</td>
      </tr>
      <tr>
        <td class="text-center"><img src="#"></td>
        <td class="text-center"><img src="#"></td>
        <td class="text-center"><img src="#"></td>
      </tr>
      <tr>
        <td class="text-center">${vo.info1 }</td>
        <td class="text-center">${vo.info2 }</td>
        <td class="text-center">${vo.info3 }</td>
      </tr>
    </table>
    <h3>[]</h3>
    <table class="table">
     <tr>
       <td>
        <ul>
         <c:forTokens items="${vo.data }" delims="," var="s">
          <li>${s }</li>
         </c:forTokens>
        </ul>
       </td>
     </tr>
    </table>
    <h3>[]</h3>
    <table class="table">
     <c:forEach var="m" items="${mList }" varStatus="s">
       <tr>
         <td class="text-left"><b>${m }</b></td>
         <td class="text-right">
          <img src="${iList[s.index] }" style="width: 180px;height: 80px"
           class="img-rounded"
          >
         </td>
       </tr>
     </c:forEach>
    </table>
    <h3>[]</h3>
    <table class="table">
      <tr>
       <td class="text-center" rowspan="2" width="15%">
        <img src="${vo.chef_poster }" style="width:100px;height: 100px" class="img-circle">
       </td>
       <td width=85%><h4>${vo.chef }</h4></td>
      </tr>
      <tr>
        <td width=85%>${vo.chef_profile }</td>
      </tr>
    </table>
    <table class="table">
      <tr>
       <td class="text-right">
         <input type=button class="btn-sm btn-warning" value="좋아요">
         <input type=button class="btn-sm btn-success" value="찜하기">
         <a href="../main/main.do" class="btn-sm btn-info">목록</a>
       </td>
      </tr>
    </table>
  </div>
	</div>
</body>
</html>