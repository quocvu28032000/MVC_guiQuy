<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 16/06/2021
  Time: 19:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="dec" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Dashboard - SB Admin</title>
    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
    <link href="<c:url value="/resources/css/styles.css" />" rel="stylesheet" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body class="sb-nav-fixed">
<jsp:include page="/common/admin/topbar.jsp"/>

<div id="layoutSidenav">
    <div id="layoutSidenav_nav">
        <jsp:include page="/common/admin/sidebar.jsp"/>
    </div>
    <div id="layoutSidenav_content">
        <main>
            <div class="container-fluid px-4">
                <dec:body/>
            </div>

        </main>
        <footer class="py-4 bg-light mt-auto">
            <jsp:include page="/common/admin/footer.jsp"/>
        </footer>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
<script src="<c:url value="/resources/js/scripts.js"/>"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
<script src="<c:url value="/resources/assets/demo/chart-area-demo.js"/> "></script>
<script src="<c:url value="/resources/assets/demo/chart-bar-demo.js"/> "></script>
<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
<script src="<c:url value="/resources/js/datatables-simple-demo.js" />"></script>
</body>
</html>
