<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="template/header.jsp"></jsp:include>

<jsp:include page="template/navbar.jsp"></jsp:include>

<div class="container">

    <div class="row search_bar">
        <form class="navbar-form navbar-left" action="front_book_search" method="get">
            <div class="form-group">
                <input type="text" class="form-control" id="field" name="field" placeholder="Search book by name">
            </div>
            <button type="submit" class="btn btn-default">Search</button>
        </form>
    </div>

    <div class="row">
        <c:forEach items="${bookList}" var="b">
            <div class="col-md-4 ">
                <div class="row thumbnail book_item">
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="caption">
                                <p><strong>${b.book_title}</strong></p>
                                <p>${b.book_author}</p>
                                <p>${b.book_publisher}</p>
                                <p><label>Location:</label>${b.book_location}</p>
                                <p><label>Stock:</label>${b.book_stock}</p>
                                <p><a href="front_book_detail?book_id=${b.book_id}" class="btn btn-primary"
                                      role="button">Detail</a>
                                </p>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <img class="book_image" src="img/book/${b.book_id}.jpg" alt="image">
                        </div>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>

    <div class="row">

        <jsp:include page="../template/pagination.jsp"></jsp:include>
    </div>

</div>

<jsp:include page="../template/footer.jsp"/>