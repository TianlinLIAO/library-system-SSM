package com.lightning.library.service;

import com.lightning.library.pojo.Book;

import java.util.List;

/**
 * Created by lightning on 3/10/2018.
 */
public interface BookService {
    void add(Book b);
    void delete(int id);
    void update(Book b);
    Book get(int id);
    List<Book> list(Book bookCondition);
}
