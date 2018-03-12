package com.lightning.library.service;

import com.lightning.library.pojo.Category;

import java.util.List;
import java.util.Map;

/**
 * Created by lightning on 3/10/2018.
 */
public interface CategoryService {
    List<Category> list();

    void add(Category category);

    void delete(int id);

    Category get(int id);

    void update(Category category);
}
