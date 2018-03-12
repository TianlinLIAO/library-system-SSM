<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="template/header.jsp"></jsp:include>

<jsp:include page="template/navbar.jsp"></jsp:include>

<div class="container" style="margin-top: 20px">
    <div class="panel panel-info">
        <div class="panel-heading">Edit Book</div>
        <div class="panel-body">
            <form method="post" id="editForm" action="admin_book_update" enctype="multipart/form-data">

                <div class="row" style="margin-top: 20px">
                    <div class="col-md-2">
                        <label>Book Title</label>
                    </div>
                    <div class="col-md-4">
                        <input style="width: 400px" id="book_title" name="book_title" type="text" value="${b.book_title}" >
                    </div>
                </div>

                <div class="row" style="margin-top: 20px">
                    <div class="col-md-2">
                        <label>Book Author</label>
                    </div>
                    <div class="col-md-4">
                        <input style="width: 400px" id="book_author" name="book_author" type="text" value="${b.book_author}">
                    </div>
                </div>

                <div class="row" style="margin-top: 20px">
                    <div class="col-md-2">
                        <label>Book Publisher</label>
                    </div>
                    <div class="col-md-4">
                        <input style="width: 400px" id="book_publisher" name="book_publisher" type="text" value="${b.book_publisher}">
                    </div>
                </div>

                <div class="row" style="margin-top: 20px">
                    <div class="col-md-2">
                        <label>Book Stock</label>
                    </div>
                    <div class="col-md-4">
                        <input style="width: 400px" id="book_stock" name="book_stock" type="text" value="${b.book_stock}">
                    </div>
                </div>

                <div class="row" style="margin-top: 20px">
                    <div class="col-md-2">
                        <label>Book Location</label>
                    </div>
                    <div class="col-md-4">
                        <input style="width: 400px" id="book_location" name="book_location" type="text" value="${b.book_location}">
                    </div>
                </div>

                <div class="row" style="margin-top: 20px">
                    <div class="col-md-2">
                        <label>Book Image</label>
                    </div>
                    <div class="col-md-4">
                        <input style="width: 400px" id="bookPic" accept="image/*" type="file" name="image"/>
                    </div>
                </div>

                <div class="row" style="margin-top: 20px">
                    <div class="col-md-2">
                        <label>Book Description</label>
                    </div>
                    <div class="col-md-4">
                        <textarea style="width: 400px" id="book_description" name="book_description">${b.book_description}</textarea>
                    </div>
                </div>

                <input style="width: 400px" id="book_cid" name="book_cid" type="hidden" value="${b.book_cid}">
                <input style="width: 400px" id="book_id" name="book_id" type="hidden" value="${b.book_id}">

                <button type="submit" class="btn btn-success">Submit</button>

            </form>
        </div>
    </div>
</div>

</body>
</html>
