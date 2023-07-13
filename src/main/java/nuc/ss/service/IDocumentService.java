package nuc.ss.service;

import nuc.ss.bean.Document;
import nuc.ss.bean.Notice;

import java.util.List;

public interface IDocumentService {
    List<Document> getAll();
    void insert(Document document);
    void delete(Integer id);
    void update(Document document);
    Document getById(Integer id);
    List<Document> getByName(String name);
}
