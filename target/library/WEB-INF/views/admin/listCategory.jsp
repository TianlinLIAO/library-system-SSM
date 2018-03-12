<%--
  Created by IntelliJ IDEA.
  User: lightning
  Date: 3/10/2018
  Time: 10:43 AM
  To change this template use File | Settings | File Templates.
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="template/header.jsp"></jsp:include>

<jsp:include page="template/navbar.jsp"></jsp:include>

<div class="container" style="margin-top: 20px">
    <table class="table table-striped table-hover">
        <thead>
        <tr class="bg-success">
            <th>ID</th>
            <th>Category</th>
            <th>Book Management</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${cs}" var="c">
            <tr>
               <td>${c.category_id}</td>
                <td>${c.category_name}</td>
                <td><a href="admin_book_list?cid=${c.category_id}"><span class="glyphicon glyphicon-book"></span></a></td>
                <td><a href="admin_category_edit?id=${c.category_id}"><span class="glyphicon glyphicon-edit"></span></a></td>
                <td><a deleteLink="true" href="admin_category_delete?id=${c.category_id}"><span class="glyphicon glyphicon-trash"></span></a></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

    <jsp:include page="../template/pagination.jsp"></jsp:include>
</div>

<div class="container">
<div class="panel panel-info">
    <div class="panel-heading">Add Category</div>
    <div class="panel-body">
        <form class="col-md-6" method="post" id="addForm" action="admin_category_add" >
            <div class="input-group">
                <span class="input-group-addon" id="basic-addon1">Category Name</span>
                <input id="category_name" name="category_name" type="text" class="form-control"
                       placeholder="Add a new book category">
            </div>
            <div class="input-group submit_button">
                <button type="submit" class="btn btn-success">Submit</button>
            </div>
        </form>
    </div>
</div>
</div>

<jsp:include page="../template/footer.jsp"></jsp:include>