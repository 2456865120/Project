package nuc.ss.service;

import nuc.ss.bean.Status_inf;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface IStatusService {
    List<Status_inf> getAll();

}
