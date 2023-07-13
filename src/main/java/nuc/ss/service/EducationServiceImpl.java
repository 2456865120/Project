package nuc.ss.service;

import nuc.ss.bean.Education;
import nuc.ss.mapper.EducationMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EducationServiceImpl implements IEducationService{
    @Autowired
    private EducationMapper educationMapper;
    @Override
    public List<Education> getAll() {
        return educationMapper.getAll();
    }
}
