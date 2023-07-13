package nuc.ss.service;

import com.google.inject.internal.asm.$Type;
import nuc.ss.bean.Sex;
import nuc.ss.mapper.SexMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class SexServiceImpl implements ISexService{
    @Autowired
    private SexMapper sexMapper;
    @Override
    public List<Sex> getAll() {
        return sexMapper.getAll();
    }
}
