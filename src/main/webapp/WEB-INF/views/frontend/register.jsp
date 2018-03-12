<jsp:include page="template/header.jsp"></jsp:include>

<jsp:include page="template/navbar.jsp"></jsp:include>

<div class="container" style="margin-top: 20px">
    <div class="panel panel-info">
        <div class="panel-heading">Register as a new reader</div>
        <div class="panel-body">
            <form method="post" id="addForm" action="front_register" enctype="multipart/form-data">

                <div class="row" style="margin-top: 20px">
                    <div class="col-md-2">
                        <label>Full Name</label>
                    </div>
                    <div class="col-md-4">
                        <input id="reader_name" name="reader_name" type="text" class="form-control">
                    </div>
                </div>

                <div class="row" style="margin-top: 20px">
                    <div class="col-md-2">
                        <label>Phone</label>
                    </div>
                    <div class="col-md-4">
                        <td><input id="reader_phone" name="reader_phone" type="text" class="form-control"></td>
                    </div>
                </div>

                <div class="row" style="margin-top: 20px">
                    <div class="col-md-2">
                        <label>Email</label>
                    </div>
                    <div class="col-md-4">
                        <td><input id="reader_email" name="reader_email" type="text" class="form-control"></td>
                    </div>
                </div>

                <div class="row" style="margin-top: 20px">
                    <div class="col-md-2">
                        <label>Username</label>
                    </div>
                    <div class="col-md-4">
                        <input id="username" name="username" type="text" class="form-control"></td>
                    </div>
                </div>

                <div class="row" style="margin-top: 20px">
                    <div class="col-md-2">
                        <label>Password</label>
                    </div>
                    <div class="col-md-4">
                        <td><input id="password" name="password" type="text" class="form-control"></td>
                    </div>
                </div>

                <div class="row" style="margin-top: 20px">
                    <div class="col-md-2">
                        <label>Check Password</label>
                    </div>
                    <div class="col-md-4">
                       <input id="check_password" name="check_password" type="text" class="form-control"></td>
                    </div>
                </div>

                <div class="row" style="margin-top: 20px">
                    <div class="col-md-2">
                    </div>
                    <div class="col-md-4">
                        <button type="submit" class="btn btn-success">Submit</button>
                    </div>
                </div>



            </form>
        </div>
    </div>
</div>

<jsp:include page="../template/footer.jsp"/>
