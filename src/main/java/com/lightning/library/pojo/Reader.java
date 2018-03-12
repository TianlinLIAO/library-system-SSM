package com.lightning.library.pojo;

/**
 * Created by lightning on 3/10/2018.
 */
public class Reader {
    private Integer reader_id;
    private String reader_name;
    private String reader_phone;
    private String reader_email;
    private String username;
    private String password;
    private Integer enabled;

    public Integer getReader_id() {
        return reader_id;
    }

    public void setReader_id(Integer reader_id) {
        this.reader_id = reader_id;
    }

    public String getReader_name() {
        return reader_name;
    }

    public void setReader_name(String reader_name) {
        this.reader_name = reader_name;
    }

    public String getReader_phone() {
        return reader_phone;
    }

    public void setReader_phone(String reader_phone) {
        this.reader_phone = reader_phone;
    }

    public String getReader_email() {
        return reader_email;
    }

    public void setReader_email(String reader_email) {
        this.reader_email = reader_email;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Integer getEnabled() {
        return enabled;
    }

    public void setEnabled(Integer enabled) {
        this.enabled = enabled;
    }
}
