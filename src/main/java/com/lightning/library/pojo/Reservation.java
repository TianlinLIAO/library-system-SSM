package com.lightning.library.pojo;

/**
 * Created by lightning on 3/11/2018.
 */
public class Reservation {
    private Integer reserv_id;
    private Book book;
    private Reader reader;

    public Integer getReserv_id() {
        return reserv_id;
    }

    public void setReserv_id(Integer reserv_id) {
        this.reserv_id = reserv_id;
    }

    public Book getBook() {
        return book;
    }

    public void setBook(Book book) {
        this.book = book;
    }

    public Reader getReader() {
        return reader;
    }

    public void setReader(Reader reader) {
        this.reader = reader;
    }
}
