<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script>
    $(function(){
        $("#view_reservation").click(function(){
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
    })
</script>

<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">Library</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li class="active"><a href="front_book_list">Home</a></li>
                <c:if test="${!empty reader}">
                    <li><a href="tologin">${reader.username}</a></li>
                    <li><a href="front_logout">Logout</a></li>
                </c:if>
                <c:if test="${empty reader}">
                    <li><a href="tologin">Login</a></li>
                    <li><a href="toregister">Register</a></li>
                </c:if>
            </ul>
            <form class="navbar-form navbar-right">
                <button class="btn btn-success" id="view_reservation">View Reservation</button>
            </form>
        </div><!--/.nav-collapse -->
    </div>
</nav>