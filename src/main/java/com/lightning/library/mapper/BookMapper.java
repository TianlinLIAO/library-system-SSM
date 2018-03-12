package com.lightning.library.mapper;

import com.lightning.library.pojo.Book;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface BookMapper {
    void add(Book b);
    void delete(int book_id);
    void update(Book b);
    Book get(int book_id);
    List<Book> list(@Param("bookCondition") Book bookCondition);
}