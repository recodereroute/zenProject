<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ include file="../include/includeTags.jsp"%>

<c:if test="${page <= 1 }">
	[Prev]
</c:if>
<c:if test="${page > 1 }">
	<a href="${pageUrl }?page=${page -1 }">[Prev]</a>
</c:if>

<c:forEach begin="${startPage }" end="${endPage }" var="i" step="1">
	<c:if test="${page == i }">
		[${i }]&nbsp;
	</c:if>
	<c:if test="${page != i }">
		<a href="${pageUrl }?page=${i }">[${i }]</a> &nbsp;
	</c:if>
</c:forEach>

<c:if test="${page >= maxPage }">
	[Next]
</c:if>
<c:if test="${page < maxPage }">
	<a href="${pageUrl }?page=${page + 1 }">[Next]</a>
</c:if>