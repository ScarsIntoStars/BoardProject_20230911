
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="/resources/css/main.css">
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>

</head>
<body>
<%--<%@include file="component/header.jsp"%>--%>
<%--<%@include file="component/nav.jsp"%>--%>
<div class="container">
    <div class="row">
        <div class="col pt-5">
            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">글 번호</th>
                        <th scope="col">제목</th>
                        <th scope="col">작성자</th>
                        <th scope="col">조회수</th>
                    </tr>
                </thead>
                <tbody class="table-group-divider">
                <c:forEach items="${boardList}" var="boardDTO">
                    <tr>
                        <td>${boardDTO.id}</td>
                        <td>${boardDTO.boardTitle}</td>
                        <td>${boardDTO.boardWriter}</td>
                        <td>${boardDTO.boardHits}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>

</body>
</html>
