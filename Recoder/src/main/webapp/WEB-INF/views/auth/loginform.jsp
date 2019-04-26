<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib uri="http://java.sun.com/jsp/jstl/core"
prefix="c" %>
<!DOCTYPE html>
<html>
  <head>
    <title>로그인</title>
    <meta charset="utf-8" />
    <link
      rel="stylesheet"
      type="text/css"
      href="/Recoder/resources/css/styles.css"
    />
    <link
      href="https://fonts.googleapis.com/css?family=Noto+Sans+KR"
      rel="stylesheet"
    />
    <link
      href="https://fonts.googleapis.com/css?family=Do+Hyeon"
      rel="stylesheet"
    />
    <script src="https://code.jquery.com/jquery-3.4.0.min.js"></script>
    <script>
      $(function() {
        $('#reg-form').submit(function() {
          var email = $('#email').val();
          if (email == '') {
            alert('이메일을 입력해주세요.');
            $('#email').focus();
            return false;
          }

          var password = $('#password').val();
          if (password == '') {
            alert('비밀번호를 입력해주세요.');
            $('#password').focus();
            return false;
          }
        });
      });
    </script>
  </head>

  <body>
    <jsp:include page="../common/header.jsp"></jsp:include>

    <div id="reg-form" class="login-form">
      <form action="login.do" method="post">
        <input
          type="text"
          id="email"
          name="memberEmail"
          class="text-field"
          placeholder="이메일"
        /><br />
        <input
          type="password"
          id="password"
          name="memberPassword"
          class="text-field"
          placeholder="비밀번호"
        /><br />
        <input type="submit" value="로그인" class="submit-btn" />
      </form>

      <div class="links">
        <a href="#">비밀번호를 잊어버리셨나요?</a>
      </div>
    </div>
  </body>
</html>
