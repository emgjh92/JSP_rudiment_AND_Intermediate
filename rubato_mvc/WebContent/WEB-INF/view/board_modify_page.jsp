<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head> 
<meta charset="utf-8">
<title>클래식기타 커뮤니티</title>
<link rel="stylesheet" type="text/css" href="css/common.css">
<link rel="stylesheet" type="text/css" href="css/header.css">
<link rel="stylesheet" type="text/css" href="css/footer.css">
<link rel="stylesheet" type="text/css" href="css/board_left.css">
<link rel="stylesheet" type="text/css" href="css/board_write_main.css">
</head>
<body>
<div id="wrap">
<header>
  <a href="index.do"><img id="logo" src="img/logo.png"></a>
<nav id="top_menu">
  HOME | LOGIN | JOIN | NOTICE
</nav>
<nav id="main_menu">
  <ul>
    <li><a href="board_list.do">자유 게시판</a></li>
    <li><a href="#">기타 연주</a></li>
    <li><a href="#">공동 구매</a></li>
    <li><a href="#">연주회 안내</a></li>
    <li><a href="#">회원 게시판</a></li>
  </ul>
</nav>
</header> <!-- header -->
<aside>

<c:choose>
	<c:when test="${!empty sessionUserInfo }"> <!-- 로그인 했는지 안했는지 세션을 통해 확인 -->
	${sessionUserInfo.m_nick}님 환영합니다 <a href="./logout_process.do">로그아웃</a><br>
	</c:when>
<c:otherwise>
<form action="./login_process.do" method="post">
	<article id="login_box">
    <img id="login_title" src="img/ttl_login.png">
    <div id="input_button">
    <ul id="login_input">
      <li><input type="text" id="m_id"></li>
      <li><input type="password" id="m_pw"></li>
    </ul>
    <input type="image" id="login_btn" src="img/btn_login.gif">
    </div> 
    <div class="clear"></div>
    <div id="join_search">
		 <a href='./join_member_page.do'><img src="img/btn_join.gif"></a>
		       <img src="img/btn_search.gif">  
		</div>
	</article>
	 </form>
	</c:otherwise>
</c:choose>

  <nav id="sub_menu">
    <ul>
      <li><a href="board_list.do">+ 자유 게시판</a></li>
      <li><a href="#">+ 방명록</a></li>
      <li><a href="#">+ 공지사항</a></li>
      <li><a href="#">+ 등업요청</a></li>
      <li><a href="#">+ 포토갤러리</a></li>
    </ul>
  </nav>
  <article id="sub_banner">
    <ul>
      <li><img src="img/banner1.png"></li>
      <li><img src="img/banner2.png"></li>		
      <li><img src="img/banner3.png"></li>
    </ul>	
  </article>
</aside> 
<section id="main">
  <img src="img/comm.gif">
  <h2 id="board_title">자유 게시판 </h2>
  <div id="write_title"><h2>글쓰기</h2></div>
  <form action="./board_modify_process.do" method="post">
  <table>
    <tr id="name">
      <td class="col1">이름</td>
      <td class="col2">${sessionUserInfo.m_nick}</td>
    </tr>
    <tr id="subject"> 
      <td class="col1">제목</td>
      <td class="col2">
      <input type="hidden" name="b_no" value="${contentDataVo.boardVo.b_no }">
      <input type="text" name="b_title" value="${contentDataVo.boardVo.b_title }"></td>
    </tr>		
    <tr id="content">
      <td class="col1">내용</td>
      <td class="col2"><textarea name="b_content">${contentDataVo.boardVo.b_content }</textarea></td>
    </tr>	
    <tr id="upload">
      <td class="col1">업로드 파일</td>
      <td class="col2"><input type="text"> <input type="file"></td>
    </tr>	
  </table>

  <div id="buttons">
    <input type="image" src="img/ok.png">
    <a href="./board_list.do"><img src="img/list.png"></a>
  </div>
   </form>
</section> <!-- section main -->
 
<div class="clear"></div>
<footer>
  <img id="footer_logo" src="img/footer_logo.gif">
  <ul id="address">
    <li>서울시 강남구 삼성동 1234 우 : 123-1234</li>  
    <li>TEL : 031-123-1234  Email : email@domain.com</li>
    <li>COPYRIGHT (C) 루바토 ALL RIGHTS RESERVED</li>
  </ul>
  <ul id="footer_sns">
    <li><img src="img/facebook.gif"></li>  
    <li><img src="img/blog.gif"></li>
    <li><img src="img/twitter.gif"></li>
  </ul>
</footer> <!-- footer -->

</div> <!-- wrap -->
</body>
</html>
