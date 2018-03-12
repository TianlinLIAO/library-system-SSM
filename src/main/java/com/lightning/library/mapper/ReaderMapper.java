package com.lightning.library.mapper;

import com.lightning.library.pojo.Reader;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by lightning on 3/10/2018.
 */
public interface ReaderMapper {
    void add(Reader r);
    void delete(int reader_id);
    void update(Reader r);
    Reader get(int reader_id);
    List<Reader> list(@Param("readerCondition") Reader readerCondition);
}
