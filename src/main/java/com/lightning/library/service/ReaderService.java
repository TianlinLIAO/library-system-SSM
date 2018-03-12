package com.lightning.library.service;

import com.lightning.library.pojo.Reader;

/**
 * Created by lightning on 3/10/2018.
 */
public interface ReaderService {
    boolean isExist(String username);
    Reader login(String username,String password);
    void register(Reader reader);
}
