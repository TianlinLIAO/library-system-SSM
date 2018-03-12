package com.lightning.library.mapper;

import com.lightning.library.pojo.Category;

import java.util.List;

/**
 * Created by lightning on 3/10/2018.
 */
public interface CategoryMapper {
    List<Category> list();
    void add(Category category);
    void delete(int category_id);
    Category get(int category_id);
    void update(Category category);
}
