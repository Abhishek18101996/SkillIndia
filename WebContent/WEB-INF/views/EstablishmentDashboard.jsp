<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>dscf</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" media="screen" href="main.css" />
    <script src="main.js"></script>

    <link rel="stylesheet" href="C:\Users\vshadmin\Desktop\FINAL_HTML\Courses.css">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
        crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
    <!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut"
        crossorigin="anonymous"></script> -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k"
        crossorigin="anonymous"></script>
</head>

<body>


    <div style="background-image: url(C:/Users/vshadmin/Desktop/FINAL_HTML/book.jpg)" class=" jumbotron">
        <h1>Skill India Online Portal</h1>
        <h4>Welcome ! Manipal University</h4>
    </div>
    <br>


    



    <!-- Trigger the modal with a button -->
    <button type="button" class="btn btn-info " data-toggle="modal" data-target="#addModal">Add Course</button>
    &nbsp; &nbsp;
    <button type="button" class="btn btn-info " data-toggle="modal" data-target="#deleteModal">Delete Course</button>
    &nbsp; &nbsp;
    <button type="button" class="btn btn-info " data-toggle="modal" data-target="#listModal">List All Courses</button>

    <br>

    <!-- AddModal -->
    <div class="modal fade" id="addModal" role="dialog">
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">

                    <h4 class="modal-title">Add Course Details: </h4>
                </div>
                <div class="modal-body">

                    <form action="">

                        <div class="form-group">
                            <label for="name">Course Name:</label>
                            <input type="text" placeholder="Enter Course Name" class="form-control" id="name">
                        </div>

                        <div class="form-group">
                            <label for="name">Enter Duration:</label>
                            <input type="number" placeholder="Enter Days" class="form-control" id="duration">
                        </div>

                        <div class="form-group">
                            <label for="name">Course Description:</label>
                            <textarea type="number" placeholder=" Enter Course Summary " class="form-control" id="duration"></textarea>
                        </div>


                        <button type="button" class="btn btn-warning"> Add Course</button>


                    </form>



                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
                </div>
            </div>

        </div>
    </div>


    <!-- DeleteModal -->
    <div class="modal fade" id="deleteModal" role="dialog">
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">

                    <h4 class="modal-title">Delete Course : </h4>
                </div>
                <div class="modal-body">

                    <form action="">
                        <div class="form-group">
                            <label for="name">Course Name :</label>
                            <input type="text" placeholder="Enter Course Name" class="form-control" id="name">
                        </div>

                        <button type="button" class="btn btn-warning"> Delete Course</button>


                    </form>



                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
                </div>
            </div>

        </div>
    </div>



    </div>

    <br>
    <div class="container text-center">
        <h3>Application Status</h3> <br>
    </div>



    <table class="table table-striped">
        <thead>
            <tr>
                <th>Course Name</th>
                <th>Candidate Name</th>
                <th>Candidate Address</th>
                <th>Candidate Contact</th>
                <th>Remark</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>JAVA</td>
                <td>Keval Gada</td>
                <td>Mumbai</td>
                <td>7045811774</td>
                <td>
                    <button type="button" class="btn btn-success">Accept</button> &nbsp; &nbsp; <button type="button"
                        class="btn btn-danger">Reject</button>


                </td>
            </tr>

            <tr>
                <td>SQL, AngularJs</td>
                <td>ABC DEF</td>
                <td>Maharashtra</td>
                <td>55789585558</td>
                <td>
                    <button type="button" class="btn btn-success">Accept</button> &nbsp; &nbsp; <button type="button"
                        class="btn btn-danger">Reject</button>


                </td>
            </tr>

        </tbody>
    </table>



</body>

</html>