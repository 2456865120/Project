package nuc.ss.service;

import nuc.ss.bean.Notice;
import nuc.ss.mapper.NoticeMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class NoticeServiceImpl implements INoticeService{
    @Autowired
    private NoticeMapper noticeMapper;
    @Override
    public List<Notice> getAll() {
        return noticeMapper.getAll();
    }

    @Override
    public void insert(Notice notice) {
        noticeMapper.insert(notice);
    }

    @Override
    public void delete(Integer id) {
        noticeMapper.delete(id);
    }

    @Override
    public void update(Notice notice) {
        noticeMapper.update(notice);
    }

    @Override
    public Notice getById(Integer id) {
        return noticeMapper.getById(id);
    }

    @Override
    public List<Notice> getByName(String name) {
        String name1 = "%" + name + "%";
        return noticeMapper.getByName(name1);
    }
}
