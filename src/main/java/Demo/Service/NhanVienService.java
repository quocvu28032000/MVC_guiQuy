package Demo.Service;

import Demo.Model.NhanVien;
import org.springframework.stereotype.Service;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@Service
public class NhanVienService extends BaseService implements INhanVien{
    @Override
    public List<NhanVien> getAll() {
        List<NhanVien> nhanViens = new ArrayList<> (  );

        query = "execute SP_NhanVien_Select_All";

        try {
            ResultSet resultSet = db.getTable (query, parameters);

            while (resultSet.next ()) {
                NhanVien nhanVien = new NhanVien ();

                nhanVien.setMaNv (resultSet.getInt ("MaNV"));
                nhanVien.setTenNv (resultSet.getString ("TenNV"));
                nhanVien.setNgaySinh (resultSet.getDate ("NgaySinh"));
                nhanVien.setGioiTinh (resultSet.getBoolean ("GioiTinh"));
                nhanVien.setSdt (resultSet.getString ("SDT"));
                nhanVien.setDiaChi (resultSet.getString ("DiaChi"));
                nhanVien.setEmail (resultSet.getString ("EMail"));

                nhanViens.add (nhanVien);
            }
        } catch (SQLException ex) {
            ex.printStackTrace ( );
        }

        return nhanViens;
    }

    @Override
    public NhanVien getByID(String id) {
        return null;
    }

    @Override
    public List<NhanVien> getByKeyWord(String keyword) {
        return null;
    }

    @Override
    public boolean add(NhanVien info) {
        return false;
    }

    @Override
    public boolean update(NhanVien info) {
        return false;
    }

    @Override
    public boolean delete(NhanVien info) {
        return false;
    }
}
