package Demo.Controller;

import Demo.Model.NhanVien;
import Demo.Service.INhanVien;
import Demo.Service.NhanVienService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/nhanvien")
public class NhanVienController {
    private INhanVien iNhanVien;

    public NhanVienController() {
        iNhanVien = new NhanVienService ( );
    }

    @RequestMapping(value = "index")
    public ModelAndView index() {
        ModelAndView modelAndView = new ModelAndView ( "NhanVien/index" );
        return modelAndView;
    }

    @RequestMapping(value = "/getAll", method = RequestMethod.GET)
    @ResponseBody
    public List<NhanVien> getAll() {
        return iNhanVien.getAll ( );
    }
}
