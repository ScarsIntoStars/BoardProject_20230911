
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
        <div class="col">
            <h3 class="pt-5">게시글 작성</h3>
            <form name="frm" class="pt-3" action="/board/save" method="post">
                <div class="form-floating mb-3">
                    <input type="text" class="form-control" id="boardWriter" placeholder="nick_name" name="boardWriter">
                    <label for="boardWriter">작성자</label>
                </div>
                <div class="form-floating mb-3">
                    <input type="password" class="form-control" id="boardPass" placeholder="password" name="boardPass">
                    <label for="boardPass">비밀번호</label>
                </div>
                <div class="form-floating mb-3">
                    <input type="text" class="form-control" id="boardTitle" placeholder="boardTitle" name="boardTitle">
                    <label for="boardTitle">제목</label>
                </div>
                <div class="form-floating mb-3">
                    <input type="text" class="form-control" id="boardContents" placeholder="boardContents" name="boardContents" style="height:150px">
                    <label for="boardContents">내용</label>
                </div>
                <input type="submit" value="작성완료">
                <input type="reset" value="작성취소">
            </form>
        </div>
    </div>
</div>

</body>
</html>
