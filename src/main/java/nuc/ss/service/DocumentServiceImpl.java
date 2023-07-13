package nuc.ss.service;

import nuc.ss.bean.Document;
import nuc.ss.mapper.DocumentMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class DocumentServiceImpl implements IDocumentService{
    @Autowired
    private DocumentMapper documentMapper;

    @Override
    public List<Document> getAll() {
        return documentMapper.getAll();
    }

    @Override
    public void insert(Document document) {
        documentMapper.insert(document);
    }

    @Override
    public void delete(Integer id) {
        documentMapper.delete(id);
    }

    @Override
    public void update(Document document) {
        documentMapper.update(document);
    }

    @Override
    public Document getById(Integer id) {
        return documentMapper.getById(id);
    }

    @Override
    public List<Document> getByName(String name) {
        String name1 = "%" + name + "%";
        return documentMapper.getByName(name1);
    }
}
