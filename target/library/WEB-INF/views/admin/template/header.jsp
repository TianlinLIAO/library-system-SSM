<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>Library Admin</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/admin.css" rel="stylesheet">
    <link href="css/footer.css" rel="stylesheet">

    <script src="http://libs.baidu.com/jquery/1.11.3/jquery.min.js"></script>

    <script>
        $(function(){
            $("ul.pagination li.disabled a").click(function(){
                return false;
            });
        });

        function checkEmpty(id, name){
            var value = $("#"+id).val();
            if(value.length==0){
                alert(name+ "不能为空");
                $("#"+id)[0].focus();
                return false;
            }
            return true;
        }

        $("#addForm").submit(function(){
            if(!checkEmpty("name","分类名称"))
                return false;
            return true;
        });

        $(function(){
            $("a").click(function(){
                var deleteLink = $(this).attr("deleteLink");
                console.log(deleteLink);
                if("true"==deleteLink){
                    var confirmDelete = confirm("Are you sure to delete?");
                    if(confirmDelete)
                        return true;
                    return false;

                }
            });
        });

    </script>

</head>

<body>
