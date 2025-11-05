<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="pageTitle" value="상세" />

<%@ include file="/view/usr/common/header.jsp"%>

<h1>== detail page ==</h1>

<table border="1">
	<tr>
		<th>번호</th>
		<td>${article.getId() }</td>
	</tr>
	<tr>
		<th>작성일</th>
		<td>${article.getRegDate() }</td>
	</tr>
	<tr>
		<th>수정일</th>
		<td>${article.getUpdateDate() }</td>
	</tr>
	<tr>
		<th>제목</th>
		<td>${article.getTitle() }</td>
	</tr>
	<tr>
		<th>내용</th>
		<td>${article.getContent() }</td>
	</tr>
</table>

<div>
	<button onclick="history.back();">뒤로가기</button>
	<button onclick="location.href='/usr/article/modify?id=${article.getId() }'">수정</button>
	<button onclick="if(confirm('정말 삭제하시겠습니까?') == false) return false; location.href='/usr/article/delete?id=${article.getId() }'">삭제</button>
</div>

<%@ include file="/view/usr/common/footer.jsp"%>