<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400&display=swap" rel="stylesheet">
<style>
   body{
	font-family: 'Noto Sans KR', sans-serif;
	}
   #section {
     width:1000px;
    /*  height:500px; */
     margin:auto;
   }
   #section td {
		font-size:14px; 
		font-weight:300;
		border-collapse : collapse;
	  	border-top-color: initial;
	    border-top-style: none;
	    border-top-width: 0px;
	    border-right-color: initial;
	    border-right-style: none;
	    border-right-width: 0px;
	    border-bottom-color: rgb(218, 218, 218);
	    border-bottom-style: solid;
	    border-bottom-width: 1px;
	    border-left-color: initial;
	    border-left-style: none;
	    border-left-width: 0px;
	    padding: 10px 10px 10px; 
	    
	    text-align: center;
	}
   #tab {
     margin-top:50px;
   }
   #reply, #c_nmdelete, #c_nldelete, #c_nlupdate, #c_mdelete, #c_mupdate, #clist{
   		display: inline-block;
    	padding: 10px 20px 12px;
	    background: #fff;
	    border: 1px solid #ccc;
	    border-radius: 2px;
	    color: #555;
	    text-align: center;
	    line-height: 11px;
	    transition: background 0.3s;
	    vertical-align: middle;
   }
 </style>
</head>
<body>
  <div id="section">
    <table width="1000" align="center" id="tab">
      <caption> <h3> 내용 보기 </h3></caption>
      <tr>
        <td colspan="3"> 제 목 </td>
        <td> ${cvo.custom_title} </td>
      </tr>
      <tr>
        <td colspan="3"> 작성자 </td>
        <td> ${cvo.custom_userid} </td>
      </tr>
      <tr>
        <td colspan="3"> 조회수 </td>
        <td> ${cvo.custom_readnum} </td>
      </tr>
      <tr>
        <td colspan="3"> 작성일 </td>
        <td> ${cvo.custom_writeday} </td>
      </tr>
            <tr>
        <td colspan="4"> ${cvo.custom_content} </td>
      </tr>
      <tr>  
        <td colspan="4" align="center">
        <a href="custom_list" id="clist"> 목록 </a>
        <!-- 삭제시 회원인 경우와 비회원인 경우를 구분하여야 함 -->
        <c:if test="${cvo.custom_pwd==null && cvo.custom_userid==member_userid}"> <!-- 로그인한 회원이 적은글 -->
        <a href="custom_update?custom_id=${cvo.custom_id}" id="c_mupdate"> 수정</a>
        <a href="custom_delete?custom_id=${cvo.custom_id}&tt=1" id="c_mdelete"> 삭제</a>
        </c:if>
        <c:if test="${member_userid=='admin'}"> <!-- 관리자 -->
        <a href="custom_update?custom_id=${cvo.custom_id}" id="c_mupdate"> 수정</a>
        <a href="custom_delete?custom_id=${cvo.custom_id}&tt=1" id="c_mdelete"> 삭제</a>
        </c:if>
        <c:if test="${cvo.custom_pwd!=null && member_userid==null}"> <!-- 현재 로그인하지 않은 상태로 비회원이 적은글 -->
        <a href="custom_update?custom_id=${cvo.custom_id}" id="c_nlupdate"> 수정</a>
        <a href="javascript:custom_del()" id="c_nldelete"> 삭제</a>
        </c:if>
        <c:if test="${cvo.custom_pwd!=null && member_userid!=null && member_userid!='admin'}"> <!-- 현재 로그인한 상태로 비회원이 적은글 -->
        <a href="javascript:custom_del()" id="c_nmdelete"> 삭제</a>
        </c:if>
        <a href="custom_rewrite?custom_grp=${cvo.custom_grp}&custom_seq=${cvo.custom_seq}&custom_depth=${cvo.custom_depth}" id="reply"> 답글달기</a> <!-- grp,seq,depth -->
        </td>
      </tr>
      <tr id="custom_del" style="display:none;"> <!-- 삭제를 위한 비밀번호 입력폼 -->
        <td colspan="4" align="center">
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