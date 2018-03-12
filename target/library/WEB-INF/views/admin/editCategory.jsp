<%--
  Created by IntelliJ IDEA.
  User: lightning
  Date: 3/10/2018
  Time: 12:15 PM
  To change this template use File | Settings | File Templates.
--%>

<jsp:include page="template/header.jsp"></jsp:include>

<jsp:include page="template/navbar.jsp"></jsp:include>

<div class="container" style="margin-top: 20px">
    <div class="panel panel-info">
        <div class="panel-heading">Add Category</div>
        <div class="panel-body">
            <form class="col-md-6" method="post" id="addForm" action="admin_category_update" >
                <div class="input-group">
                    <span class="input-group-addon" id="basic-addon1">Category Name</span>
                    <input id="category_id" name="category_id" type="hidden" class="form-control"
                           value="${c.category_id}">
                    <input id="category_name" name="category_name" type="text" class="form-control"
                           value="${c.category_name}">
                </div>
                <div class="input-group submit_button">
                    <button type="submit" class="btn btn-success">Submit</button>
                </div>
            </form>
        </div>
    </div>
</div>


<jsp:include page="../template/footer.jsp"></jsp:include>
