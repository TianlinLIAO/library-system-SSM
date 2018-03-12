<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="template/header.jsp"></jsp:include>

<jsp:include page="template/navbar.jsp"></jsp:include>

<script>
    $(function () {
        $("#reservation").click(function(){
            var page="front_checklogin";
            $.get(
                page,
                function(result){
                    if("success"==result){

                    }else{
                        $("#loginModal").modal('show');
                    }
                }
            );
            return false;
        });

        $("#loginSubmitButton").click(function(){
           var username=$("#username").val();
           var password=$("#password").val();
           if(0==username.length||0==password.length){
                $("span.errorMessage").html("Incomplete username and password.");
                $("div.loginErrorMessageDiv").show();
                return false;
           }
           var page="front_loginAjax";
           $.get(
               page,
               {"username":username,"password":password},
               function(result){
                   if("success"==result){
                       location.reload();
                   }else {
                       $("span.errorMessage").html("Wrong username or password.");
                       $("div.loginErrorMessageDiv").show();
                   }
               }
           );
           return true;
        });
    });

</script>

<div class="container">
    <div class="page-header">
        <h1>Book Detail</h1>

        <p class="lead">Here is the detail information of the book!</p>
    </div>

    <div class="jumbotron">
        <div class="row">
            <div class="col-md-5">
                <img class="book_image_detail" src="img/book/${book.book_id}.jpg" alt="image"/>
            </div>

            <div class="col-md-7">
                <div class="jumbotron">
                <p class="book_title"><strong>${book.book_title}</strong></p>
                <p><label>Author:</label>${book.book_author}</p>
                <p><label>Publisher:</label>${book.book_publisher}</p>
                <p><label>Stock:</label>${book.book_stock}</p>
                <p><label>Location:</label>${book.book_location}</p>
                <p><button id="reservation" class="btn btn-primary btn-lg" >Reserve</button></p>
                </div>
            </div>
        </div>
    </div>


    <hr>

    <p><label>Summary</label></p>
    <p class="book_detail_description">${book.book_description}</p>

</div>

<jsp:include page="template/modal.jsp"></jsp:include>
<jsp:include page="../template/footer.jsp"/>