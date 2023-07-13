package nuc.ss.mapper;

import nuc.ss.bean.Status_inf;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Controller;

import java.util.List;

@Controller
public interface StatusMapper {
    List<Status_inf> getAll();

}
