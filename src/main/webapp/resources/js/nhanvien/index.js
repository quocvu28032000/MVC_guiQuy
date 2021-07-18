$(document).ready(function (){

    loadData();
});

function loadData(){
    $.ajax({
        type: 'GET',
        datatype: 'JSON',
        url: '/nhanvien/getAll',
        success:function (result){
            console.log(result);

            var html = '';
            $.each(result, function (i,e){
                html += '<tr>' +
                    '<td>' + e.maNv + '</td>' +
                    '<td>' + e.tenNv + '</td>' +
                    '<td>' + e.ngaySinh + '</td>' +
                    '<td>' + e.gioiTinh + '</td>' +
                    '<td>' + e.diaChi + '</td>' +
                    '<td>' + e.email + '</td>' +
                    '<td>' + e.sdt + '</td>' +
                    '</tr>'
            });
            $('#tb-view tbody').empty().append(html);
        }
    });
}