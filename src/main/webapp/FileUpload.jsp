<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>File Upload Form</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body>
<div class="container">
    <div class="row justify-content-center mt-5">
        <div class="col-xs-12 col-sm-8 col-md-6 col-lg-5">
            <div class="card">
                <div class="card-header">
                    <h1 class="card-title">Upload File</h1>
                </div>
                <div class="card-body">
                    <form method="post" action="actionto.jsp" enctype="multipart/form-data">
                        <div class="form-group">
                            <label for="imgVidname">Name</label>
                            <input type="text" class="form-control" name="imgVidname" required>
                        </div>
                        <div class="form-group">
                            <label for="imgVid">Image/Video</label>
                            <input type="file" class="form-control" name="imgVid" accept=".jpg,.png,.mp4,.pdf" required>
                        </div>
                        <div>
                            <button class="btn btn-success form-control mt-4" type="submit">Submit</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>