<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:import url="../layout/app.jsp">
    <c:param name="content">
        <% request.setCharacterEncoding("UTF-8"); %>

        <h2>id : ${tasks.id} のタスク詳細ページ</h2>

        <tbody>
        <tr>
            <th>タスク</th>
            <td><c:out value="${tasks.content}" /></td>
        </tr>
        <tr>
            <th>作成日時</th>
            <td><fmt:formatDate value="${tasks.created_at}" pattern="yyyy-MM-dd HH:mm:ss" /></td>
        </tr>
        <tr>
            <th>更新日時</th>
            <td><fmt:formatDate value="${tasks.updated_at}" pattern="yyyy-MM-dd HH:mm:ss" /></td>
        </tr>
        </tbody>

        <p><a href="${pageContext.request.contextPath}/index">一覧に戻る</a></p>
        <p><a href="${pageContext.request.contextPath}/edit?id=${tasks.id}">このメッセージを編集する</a></p>

    </c:param>
</c:import>