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
<%@include file="../component/header.jsp"%>
<%@include file="../component/nav.jsp"%>
<div class="container">
    <div class="row">
        <div class="col pt-5">
            <table class="table">
                <thead>
                <tr>
                    <th scope="col" class="text-center">글 번호</th>
                    <th scope="col" class="text-center">제목</th>
                    <th scope="col">작성자</th>
                    <th scope="col" class="text-center">조회수</th>
                </tr>
                </thead>
                <tbody class="table-group-divider">
                <c:forEach items="${boardList}" var="boardDTO">
                    <tr>
                        <td class="text-center">${boardDTO.id}</td>
                        <td><a href="/board/findByTitle?id=${boardDTO.id}" methods="get">${boardDTO.boardTitle}</a></td>
                        <td>${boardDTO.boardWriter}</td>
                        <td class="text-center">${boardDTO.boardHits}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
    <div class="container">
        <div class="col">

        </div>
    </div>
</div>

</body>
</html>
