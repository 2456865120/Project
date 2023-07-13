package nuc.ss.mapper;

import nuc.ss.bean.Contract;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ContractMapper {
    List<Contract> getAll();
    void add(Contract contract);
    Contract getById(@Param("id") Integer id);
    Contract getPById(@Param("id") Integer id);
    void update(Contract contract);
    void delete(@Param("id") Integer id);

}
