package com.lightning.library.pojo;

public class Book {
    private Integer book_id;

    private String book_title;

    private String book_author;

    private String book_publisher;

    private String book_description;

    private Integer book_stock;

    private String book_location;

    private Integer book_cid;

    private Category category;

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public Integer getBook_id() {
        return book_id;
    }

    public void setBook_id(Integer book_id) {
        this.book_id = book_id;
    }

    public String getBook_title() {
        return book_title;
    }

    public void setBook_title(String book_title) {
        this.book_title = book_title == null ? null : book_title.trim();
    }

    public String getBook_author() {
        return book_author;
    }

    public void setBook_author(String book_author) {
        this.book_author = book_author == null ? null : book_author.trim();
    }

    public String getBook_publisher() {
        return book_publisher;
    }

    public void setBook_publisher(String book_publisher) {
        this.book_publisher = book_publisher == null ? null : book_publisher.trim();
    }

    public String getBook_description() {
        return book_description;
    }

    public void setBook_description(String book_description) {
        this.book_description = book_description == null ? null : book_description.trim();
    }

    public Integer getBook_stock() {
        return book_stock;
    }

    public void setBook_stock(Integer book_stock) {
        this.book_stock = book_stock;
    }

    public String getBook_location() {
        return book_location;
    }

    public void setBook_location(String book_location) {
        this.book_location = book_location == null ? null : book_location.trim();
    }

    public Integer getBook_cid() {
        return book_cid;
    }

    public void setBook_cid(Integer book_cid) {
        this.book_cid = book_cid;
    }

    @Override
    public String toString() {
        return "Book{" +
                "book_id=" + book_id +
                ", book_title='" + book_title + '\'' +
                ", book_author='" + book_author + '\'' +
                ", book_publisher='" + book_publisher + '\'' +
                ", book_description='" + book_description + '\'' +
                ", book_stock=" + book_stock +
                ", book_location='" + book_location + '\'' +
                ", book_cid=" + book_cid +
                ", category=" + category +
                '}';
    }
}