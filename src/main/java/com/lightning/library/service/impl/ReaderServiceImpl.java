package com.lightning.library.service.impl;

import com.lightning.library.mapper.ReaderMapper;
import com.lightning.library.pojo.Reader;
import com.lightning.library.service.ReaderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by lightning on 3/10/2018.
 */
@Service
public class ReaderServiceImpl implements ReaderService {

    @Autowired
    private ReaderMapper readerMapper;

    @Override
    public boolean isExist(String username) {
        Reader readerCondition=new Reader();
        readerCondition.setUsername(username);
        List<Reader> readers=readerMapper.list(readerCondition);
        return readers.size()>0;
    }

    @Override
    public Reader login(String username, String password) {
        Reader readerCondition=new Reader();
        readerCondition.setUsername(username);
        readerCondition.setPassword(password);
        List<Reader> readers=readerMapper.list(readerCondition);
        if(readers!=null&&readers.size()>0)
            return readers.get(0);
        else return null;
    }

    @Override
    public void register(Reader reader) {
        readerMapper.add(reader);
    }
}
