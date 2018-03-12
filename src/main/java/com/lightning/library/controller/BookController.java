package com.lightning.library.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lightning.library.pojo.Book;
import com.lightning.library.pojo.Category;
import com.lightning.library.service.BookService;
import com.lightning.library.service.CategoryService;
import com.lightning.library.util.Page;
import com.lightning.library.util.UploadedImageFile;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpSession;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.util.List;

/**
 * Created by lightning on 3/10/2018.
 */
@Controller
@RequestMapping("")
public class BookController {
    @Autowired
    CategoryService categoryService;

    @Autowired
    BookService bookService;

    @RequestMapping("admin_book_list")
    public String list(Model model, @RequestParam("cid") String cid, Page page){
        Category category=categoryService.get(Integer.parseInt(cid));

        PageHelper.offsetPage(page.getStart(),page.getCount());

        Category c=new Category();
        c.setCategory_id(Integer.parseInt(cid));
        Book bookCondition=new Book();
        bookCondition.setCategory(c);
        List<Book> bookList=bookService.list(bookCondition);

        int total=(int) new PageInfo<>(bookList).getTotal();
        page.setTotal(total);
        page.setParam("&cid="+cid);

        model.addAttribute("bookList",bookList);
        model.addAttribute("page",page);
        model.addAttribute("category",category);
        return "admin/listBook";
    }

    @RequestMapping("admin_book_toadd")
    public String toadd(Model model,Category category){
        model.addAttribute("category",category);
        return "admin/addBook";
    }

    @RequestMapping("admin_book_add")
    public String add(Book b, HttpSession session, UploadedImageFile uploadedImageFile) throws IOException {
        bookService.add(b);
        System.out.println("bood add:"+b);
        File imageFolder = new File(session.getServletContext().getRealPath("img/book"));
        System.out.println(session.getServletContext().getRealPath("img/book"));
        File file=new File(imageFolder,b.getBook_id()+".jpg");
        if(!file.getParentFile().exists())
            file.getParentFile().mkdir();
        uploadedImageFile.getImage().transferTo(file);
        return "redirect:admin_book_list?cid="+b.getBook_cid();
    }

    @RequestMapping("admin_book_delete")
    public String delete(int book_id,HttpSession session){
        Book b=bookService.get(book_id);
        bookService.delete(book_id);

        File  imageFolder= new File(session.getServletContext().getRealPath("img/book"));
        File file = new File(imageFolder,book_id+".jpg");
        file.delete();
        return "redirect:admin_book_list?cid="+b.getBook_cid();
    }

    @RequestMapping("admin_book_edit")
    public String edit(Model model, int book_id){
        Book b=bookService.get(book_id);
        model.addAttribute("b",b);
        System.out.println("book to edit:"+b);
        return "admin/editBook";
    }

    @RequestMapping("admin_book_update")
    public String update(Book b, HttpSession session, UploadedImageFile uploadedImageFile) throws IOException {
        bookService.update(b);
        System.out.println("update:"+b);
        MultipartFile image = uploadedImageFile.getImage();
        if(null!=image &&!image.isEmpty()){
            File  imageFolder= new File(session.getServletContext().getRealPath("img/book"));
            File file = new File(imageFolder,b.getBook_id()+".jpg");
            if(!file.getParentFile().exists())
                file.getParentFile().mkdir();
            image.transferTo(file);
        }
        return "redirect:admin_book_list?cid="+b.getBook_cid();
    }
}
