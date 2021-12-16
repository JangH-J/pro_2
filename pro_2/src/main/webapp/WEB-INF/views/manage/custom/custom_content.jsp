<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
 <style>
   #section {
     width:1000px;
     height:500px;
     margin:auto;
   }
   #tab {
     margin-top:50px;
   }
 </style>
</head>
<body>
  <div id="section">
    <table width="600" align="center" id="tab">
      <caption> <h3> 내용 보기 </h3></caption>
      <tr>
        <td> 제 목 </td>
        <td> ${cvo.custom_title} </td>
      </tr>
      <tr>
        <td> 작성자 </td>
        <td> ${cvo.custom_userid} </td>
      </tr>
      <tr>
        <td> 내 용</td>
        <td> ${cvo.custom_content} </td>
      </tr>
      <tr>
        <td> 조회수 </td>
        <td> ${cvo.custom_readnum} </td>
      </tr>
      <tr>
        <td> 작성일 </td>
        <td> ${cvo.custom_writeday} </td>
      </tr>
      <tr>
        <td colspan="2" align="center">
        <a href="custom_list"> 목록보기 </a>
        <!-- 삭제시 회원인 경우와 비회원인 경우를 구분하여야 함 -->
        <c:if test="${cvo.custom_pwd==null && custom_userid==cvo.custom_userid}"> <!-- 로그인한 회원이 적은글 -->
        <a href="custom_update?id=${cvo.custom_id}"> 수정</a>
        <a href="custom_delete?id=${cvo.custom_id}&tt=1"> 삭제</a>
        </c:if>
        <c:if test="${cvo.custom_pwd!=null}"> <!-- 현재 로그인하지 않은 상태로 비회원이 적은글 -->
        <a href="custom_update?custom_id=${cvo.custom_id}"> 수정</a>
        <a href="javascript:custom_del()"> 삭제</a>
        </c:if>
        <a href="custom_rewrite?custom_grp=${cvo.custom_grp}&custom_seq=${cvo.custom_seq}&custom_depth=${cvo.custom_depth}"> 답글달기</a> <!-- grp,seq,depth -->
        </td>
      </tr>
      <tr id="custom_del" style="display:none;"> <!-- 삭제를 위한 비밀번호 입력폼 -->
        <td colspan="2" align="center">
          <form method="post" action="custom_delete">
            <input type="hidden" name="custom_id" value="${cvo.custom_id}">
            <input type="password" name="custom_pwd" placeholder="비밀번호" size="4">
            <input type="submit" value="삭제">
          </form>
        </td>
      </tr>
    </table>
    <script>
      function custom_del()
      {
    	  document.getElementById("custom_del").style.display="table-row";
      }
    </script>
  </div>
</body>
</html>