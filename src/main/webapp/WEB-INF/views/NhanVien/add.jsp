<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 21/07/2021
  Time: 20:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="card shadow col-md-6 col-12 mt-3 container">
    <div class="" card-body>
        <h1>Thêm</h1>
        <h2>Khách hàng</h2>
        <hr>
        <form method="post" action="/nhanvien/addconfirmed">
            <div class="form-group">
                <label class="form-label font-weight-bold">Họ tên</label>
                <input id="tenNv" name="tenNv" class="form-control"/>
            </div>
            <div class="form-group">
                <label class="form-label font-weight-bold">Ngày sinh</label>
                <input id="ngaySinh" name="ngaySinh" type="date" class="form-control"/>
            </div>
            <div class="form-group">
                <label class="form-label font-weight-bold">Giới tính</label>
                <select id="gioiTinh" name="gioiTinh" class="form-control">
                    <option value="true" selected>Nam</option>
                    <option value="false">Nữ</option>
                </select>
            </div>
            <div class="form-group">
                <label class="form-label font-weight-bold">Số điện thoại</label>
                <input id="sdt" name="sdt" class="form-control"/>
            </div>
            <div class="form-group">
                <label class="form-label font-weight-bold">Email</label>
                <input id="email" name="email" class="form-control"/>
            </div>
            <div class="form-group">
                <label class="form-label font-weight-bold">Địa chỉ</label>
                <input id="diaChi" name="diaChi" class="form-control"/>
            </div>
            <hr>
            <div class="form-group">
                <button class="btn btn-sm btn-success">Thêm</button>
                <a class="btn btn-sm btn-light" href="/nhanvien/index">Hủy</a>
            </div>
        </form>
    </div>

</div>
