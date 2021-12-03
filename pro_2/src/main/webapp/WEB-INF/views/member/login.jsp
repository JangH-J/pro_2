<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
  <div id="section">
    <form method="post" action="login_ok">
      <table width="400" align="center">
       <caption> <h3> 로그인</h3></caption>
        <tr>
          <td> <input type="text" name="member_userid"> </td>
        </tr>
        <tr>
          <td> <input type="password" name="member_pwd"> </td>
        </tr>
        <tr>
          <td> <input type="submit" value="로그인"> </td>
        </tr>
      </table>
    </form>
  </div>
</body>
</html>