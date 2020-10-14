<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1'>
<title>나의 홈페이지</title>
<style>
	body{
		display:flex;
		flex-flow:column wrap;
	}
	
	nav#search-nav{
		width:100%;
		background-color:green;
		color:white;
	}
	nav#search-nav form{
		display:flex;
		align-items:center; /* 세로 중앙정렬 */
	}
	nav#search-nav form select,
	nav#search-nav form input{
		margin:8px 5px;
		padding:5px;
		border-radius:5px;
		border:1px solid #ddd;
		outline:none;
	}
	nav#search-nav form select{
		flex:1;
		height:30px;
	}
	nav#search-nav form input{
		flex:3;
		height:20px;
	}
	section#search-list{
		display:flex;
		flex-flow:row wrap;
		height:100%;
		justify-content:center;
	}
	section#search-list div{
		width:95%;
	
		border:1px solid #777;
		background-color:#ccc;
		border-radius:5px;
		
		margin:5px;
		padding:5px;
	}
	section#search-list div p b{
		color:blue;
	}
	img {
		float:left;
		margin:10px;
	}
</style>
</head>
<body>
<nav id="search-nav">
	<form method="POST">
	<select name="category">
		<option value="BOOK">도서정보</option>
		<option value="NEWS">뉴스</option>
		<option value="MOVIE">영화정보</option>
	</select>
		<input name="search_text" placeholder="검색어를 입력 한 후 Enter...">
	</form>
</nav>
<section id="search-list">
	<c:forEach items="${NAVERS}" var = "naver">
		<div>
			<h3>${naver.title}</h3>
			<a href ="${naver.link}" target=_new>
			<c:if test="${naver.image == 'noImage'}">
			<img src="${rootPath}/resources/images/noImage.png" width="50px">
			</c:if>
			<c:if test="${naver.image != 'noImage'}"></c:if>
			<img src="${naver.image}" alt="네이버 이미지">
			</a>
			<p>${naver.description}</p>
			<p>ISBN : ${naver.isbn}</p>
		</div>
	</c:forEach>
	
</section>
</body>
</html>