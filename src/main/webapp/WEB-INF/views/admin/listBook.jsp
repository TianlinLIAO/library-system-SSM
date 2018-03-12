<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="template/header.jsp"></jsp:include>

<jsp:include page="template/navbar.jsp"></jsp:include>

<div class="container" style="margin-top: 20px">
    <table class="table table-striped table-hover">
        <thead>
        <tr class="bg-success">
            <th class="col-md-1">ID</th>
            <th class="col-md-1">Image</th>
            <th class="col-md-3">Title</th>
            <th class="col-md-2">Author</th>
            <th class="col-md-2">Publisher</th>
            <th class="col-md-1">Stock</th>
            <th class="col-md-1">Edit</th>
            <th class="col-md-1">Delete</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${bookList}" var="b">
            <tr>
                <td>${b.book_id}</td>
                <td><img height="40px" src="img/book/${b.book_id}.jpg"></td>
                <td>${b.book_title}</td>
                <td>${b.book_author}</td>
                <td>${b.book_publisher}</td>
                <td>${b.book_stock}</td>
                <td><a href="admin_book_edit?book_id=${b.book_id}"><span class="glyphicon glyphicon-edit"></span></a></td>
                <td><a deleteLink="true" href="admin_book_delete?book_id=${b.book_id}"><span class=" glyphicon glyphicon-trash"></span></a></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

    <jsp:include page="../template/pagination.jsp"></jsp:include>
</div>

<div class="container">
    <div class="panel panel-info">
        <div class="panel-body">
            <form class="col-md-6" method="post" id="addForm" action="admin_book_toadd" >
                <div class="input-group submit_button">
                    <input id="category_id" name="category_id" type="hidden" value="${category.category_id}">
                    <button type="submit" class="btn btn-success">Add a book</button>
                </div>
            </form>
        </div>
    </div>
</div>

<jsp:include page="../template/footer.jsp"></jsp:include>
