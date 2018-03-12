package com.lightning.library.service.impl;

import com.lightning.library.mapper.BookMapper;
import com.lightning.library.pojo.Book;
import com.lightning.library.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by lightning on 3/10/2018.
 */
@Service
public class BookServiceImpl implements BookService {

    @Autowired
    private BookMapper bookMapper;

    @Override
    public void add(Book b) {
        bookMapper.add(b);
    }

    @Override
    public void delete(int id) {
        bookMapper.delete(id);
    }

    @Override
    public void update(Book b) {
        bookMapper.update(b);
    }

    @Override
    public Book get(int id) {
        return bookMapper.get(id);
    }

    @Override
    public List<Book> list(Book bookCondtion) {
        return bookMapper.list(bookCondtion);
    }
}
