<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">
<title>상품 등록</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

</head>

<body>

<jsp:include page="menu.jsp" />

<div class="p-5 bg-secondary text-white text-white">
    <div class ="container">
        <h1 class="display-3">상품 등록</h1>
    </div>
</div>

<div class="container">

    <form name="newProduct" action="./processAddProduct.jsp" class="form-horizontal" method="post">
        <div class="form-group row mt-3">
            <label class="col-sm-1 text-center">제&nbsp;&nbsp;품&nbsp;&nbsp;코&nbsp;&nbsp;드</label>
            <div class="col-sm-3">
                <input type="text" name="productId" class="form-control" placeholder="상품 코드를 입력하세요.">
            </div>
        </div>

        <div class="form-group row mt-3">
            <label class="col-sm-1 text-center">상&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;품&nbsp;&nbsp;&nbsp;&nbsp;명</label>
            <div class="col-sm-3">
                <input type="text" name="name" class="form-control" placeholder="상품명을 입력하세요.">
            </div>
        </div>

        <div class="form-group row mt-3">
            <label class="col-sm-1 text-center">상&nbsp;&nbsp;품&nbsp;&nbsp;설&nbsp;&nbsp;명</label>
            <div class="col-sm-3">
                <input type="text" name="description" class="form-control" placeholder="상품 설명을 입력하세요.">
            </div>
        </div>

        <div class="form-group row mt-3">
            <label class="col-sm-1 text-center">가&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;격</label>
            <div class="col-sm-3">
                <input type="text" name="unitPrice" class="form-control" placeholder="가격을 입력하세요.">
            </div>
        </div>

         <div class="form-group row mt-3 mb-3">
		    <div class="col-sm-offset-2 col-sm-10">
        		<input type="submit" class="btn btn-primary" value="등록">
				<a class="btn btn-secondary" role="button" href="./products.jsp">취소</a>
    	</div>

</div>

    </form>

</div>

<jsp:include page="footer.jsp" />

</body>

</html>