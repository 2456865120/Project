package nuc.ss.mapper;

import nuc.ss.bean.Document;
import nuc.ss.bean.Notice;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface DocumentMapper {
    List<Document> getAll();
    void insert(Document document);
    void delete(@Param("id") Integer id);
    void update(Document document);
    Document getById(@Param("id") Integer id);
    List<Document> getByName(@Param("name") String name);
}
