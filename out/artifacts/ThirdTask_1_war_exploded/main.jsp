<%@ page import="java.util.ArrayList" %>
<%@ page import="kz.bitlab.db.Student" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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

<%@include file="addStudent.jsp"%>

<div class="row mt-3">
    <div class="col-10 mx-auto">
        <table class="table table-striped table-hover">
            <thead>
            <th>ID</th>
            <th>NAME</th>
            <th>SURNAME</th>
            <th>BIRTHDAY</th>
            <th>CITY</th>
            </thead>
            <tbody>
            <%
                ArrayList<Student> students = (ArrayList<Student>) request.getAttribute("any");
                if (students!=null){

                    for (Student std: students){
            %>
            <tr>
                <td><%=std.getId()%></td>
                <td><%=std.getName()%></td>
                <td><%=std.getSurname()%></td>
                <td><%=std.getBirthday()%></td>
                <td><%=std.getCity()%></td>
                <td><a href="/details?id=<%=std.getId()%>" class="btn btn-info btn-sm">DETAILS</a> </td>
            </tr>
            <%

                    }
                }
            %>
            </tbody>
        </table>
    </div>
</div>
</div>
</body>
</html>
