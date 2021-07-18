<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 18/07/2021
  Time: 19:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<h1>Danh sách nhân viên</h1>
<p>
    <a href="/nhanvien/add" class="btn btn-sm btn-success">Thêm mới</a>
</p>
<div class="table-responsive shadow">
    <table id="tb-view" class="table table-sm table-hover table-striped">
        <thead>
        <tr>
            <th>Mã nhân vien</th>
            <th>Họ tên</th>
            <th>Ngày sinh</th>
            <th>Giới tính</th>
            <th>SDT</th>
            <th>Địa chỉ</th>
            <th>Email</th>
        </tr>
        </thead>
        <tbody></tbody>
    </table>
</div>
<script src="<c:url value="/resources/js/nhanvien/index.js"/>"></script>