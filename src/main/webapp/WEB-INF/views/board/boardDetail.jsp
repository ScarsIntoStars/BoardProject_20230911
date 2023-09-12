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

    <div class="container">
        <div class="col">
            <nav id="navbar-example2" class="navbar bg-body-tertiary px-3 mb-3">
                <a class="navbar-brand" href="#">"작성자 : ${board.boardWriter}"</a>

            </nav>
            <div data-bs-spy="scroll" data-bs-target="#navbar-example2" data-bs-root-margin="0px 0px -40%" data-bs-smooth-scroll="true" class="scrollspy-example bg-body-tertiary p-3 rounded-2" tabindex="0">
                <h4 id="scrollspyHeading1">${board.boardTitle}"</h4>
                <p>"${board.boardContents}"</p>
            </div>
            <c:if test="${board.fileAttached == 1}">
                <tr>
                    <th>image</th>
                    <td>
                        <img src="${pageContext.request.contextPath}/upload/${boardFile.storedFileName}"
                             alt="" width="100" heigth="100">
                    </td>
                </tr>
            </c:if>
            <input class="btn btn-secondary" id="back" onclick="backing()" value="뒤로가기">
            <input class="btn btn-danger" onclick="board_update()" value="수정하기">
            <input class="btn btn-warning" value="삭제하기">
        </div>
    </div>
</div>
<div id="pass-check" style="display: none;">
    <input type="text" id="board-pass" placeholder="비밀번호 입력하세요">
    <input type="button" onclick="pass_check()" value="확인">
</div>
</body>
<script>
    const backing = () => {
        location.href='/board/boardFindAll';
    }

    const board_update = () => {
        const id = '${board.id}';
        location.href = "/board/update?id=" + id;
    }

    const delete_fn = () => {
        const passArea = document.getElementById("pass-check");
        passArea.style.display = "block";
    }
    <%--const pass_check = () => {--%>
    <%--    const inputPass = document.getElementById("board-pass").value;--%>
    <%--    const pass = '${board.boardPass}';--%>
    <%--    if(inputPass = pass) {--%>
    <%--        location.href = "/board/delete?id=?" + id;--%>
    <%--    } else {--%>
    <%--        alert("비밀번호 불일치")--%>
    <%--    }--%>
    <%--}--%>
</script>
</html>
