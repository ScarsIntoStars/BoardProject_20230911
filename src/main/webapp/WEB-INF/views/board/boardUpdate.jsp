
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
        <div class="col">
            <h3 class="pt-5">게시글 수정</h3>
            <form name="updateForm" class="pt-3" action="/board/update" method="post">
                <div class="form-floating mb-3">
                    <input readonly type="text" class="form-control" id="boardWriter" placeholder="nick_name" name="boardWriter">
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
                <input type="submit" value="수정완료" onclick="board_update()">
                <input type="reset" value="수정취소">
            </form>
        </div>
    </div>
</div>

</body>
<script>
    const board_update = () => {
        const pass = '${board.boardPass}';
        const inputPass = document.getElementById("board-pass").value; // 사용자가 입력한 비밀번호
        if(pass == inputPass) {
            document.updateForm.submit();
        } else {
            alert("비밀번호가 일치하지 않습니다.")
        }
    }
</script>
</html>
