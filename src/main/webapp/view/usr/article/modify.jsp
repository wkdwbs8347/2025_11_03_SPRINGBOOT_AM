<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="pageTitle" value="수정" />

<%@ include file="/view/usr/common/header.jsp"%>

<h1>== modify page ==</h1>

<form action="/usr/article/doModify" method="post">
	<input name="id" type="hidden" value="${article.getId() }" />
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
			<td><input name="title" type="text"
				value="${article.getTitle() }" /></td>
		</tr>
		<tr>
			<th>내용</th>
			<td><textarea name="content">${article.getContent() }</textarea></td>
		</tr>
		<tr>
			<td colspan="2"><button>수정</button></td>
		</tr>
	</table>
</form>

<div>
	<button onclick="history.back();">뒤로가기</button>
	<button onclick="if(confirm('정말 삭제하시겠습니까?') == false) return false; location.href='/usr/article/delete?id=${article.getId() }'">삭제</button>
</div>

<%@ include file="/view/usr/common/footer.jsp"%>