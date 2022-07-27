<%@ page import="kz.bitlab.db.Student" %>
<html>
<head>
   <%@include file="link.jsp"%>
    <title>Title</title>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-12">
            <%@include file="navbar.jsp"%>
        </div>
    </div>
</div>
<div class="container">
    <div class="row mt-3">
        <div class="col-6 mx-auto">
            <%
                Student student = (Student) request.getAttribute("student");
                if (student!= null){
            %>
            <form action="/update" method="post">
                <input type="hidden" class="form-control" name="student_id"  value="<%=student.getId()%>">
                <div class="row mt-3">
                    <div class="col-12">
                        <label>NAME:</label>
                    </div>
                </div>
                <div class="row mt-2">
                    <div class="col-12">
                        <input type="text" class="form-control" name="student_name"  value="<%=student.getName()%>">
                    </div>
                </div>
                <div class="row mt-3">
                    <div class="col-12">
                        <label>SURNAME: </label>
                    </div>
                </div>
                <div class="row mt-2">
                    <div class="col-12">
                        <input type="text" class="form-control" name="student_surname"  value="<%=student.getSurname()%>">
                    </div>
                </div>
                <div class="row mt-3">
                    <div class="col-12">
                        <label>BIRTHDAY:</label>
                    </div>
                </div>
                <div class="row mt-2">
                    <div class="col-12">
                        <input type="date" class="form-control" name="student_birthday"  value="<%=student.getBirthday()%>">
                    </div>
                </div>
                <div class="row mt-3">
                    <div class="col-12">
                        <label>CITY:</label>
                    </div>
                </div>
                <div class="row mt-2">
                    <div class="col-12">
                        <input type="text" class="form-control" name="student_city"  value="<%=student.getCity()%>">
                    </div>
                </div>
                <div class="row mt-3">
                    <div class="col-12">
                        <button class="btn btn-success">UPDATE STUDENT</button>
                        <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#deleteStudentModal">DELETE STUDENT</button>
                    </div>
                </div>
            </form>
            <%
                }
            %>



            <div class="modal fade" id="deleteStudentModal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <form action="/delete" method="post">
                            <input type="hidden" class="form-control" name="id"  value="<%=student.getId()%>">
                            <div class="modal-header">
                                <h5 class="modal-title" id="staticBackdropLabel">Confirm delete</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                Are you sure?
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">NO</button>
                                <button class="btn btn-danger">YES</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>


        </div>
    </div>
</div>
</body>
</html>