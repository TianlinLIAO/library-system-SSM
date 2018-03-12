package com.lightning.library.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lightning.library.pojo.Book;
import com.lightning.library.pojo.Category;
import com.lightning.library.pojo.Reader;
import com.lightning.library.service.BookService;
import com.lightning.library.service.CategoryService;
import com.lightning.library.service.ReaderService;
import com.lightning.library.util.Page;
import com.sun.org.apache.xpath.internal.operations.Mod;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.jws.WebParam;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by lightning on 3/10/2018.
 */
@Controller
@RequestMapping("")
public class FrontController {

    @Autowired
    CategoryService categoryService;

    @Autowired
    BookService bookService;

    @Autowired
    ReaderService readerService;

    @RequestMapping("front_book_list")
    public String list(Model model, Page page){
        PageHelper.offsetPage(page.getStart(),page.getCount());

        Book bookCondition=new Book();
        List<Book> bookList=bookService.list(bookCondition);

        int total=(int) new PageInfo<>(bookList).getTotal();
        page.setTotal(total);

        model.addAttribute("bookList",bookList);
        model.addAttribute("page",page);
        return "frontend/home";
    }

    @RequestMapping("front_book_search")
    public String search(Model model,@RequestParam("field") String field,Page page){
        PageHelper.offsetPage(page.getStart(),page.getCount());

        Book bookCondition=new Book();
        bookCondition.setBook_title(field);
        List<Book> bookList=bookService.list(bookCondition);

        int total=(int) new PageInfo<>(bookList).getTotal();
        page.setTotal(total);
        page.setParam("&field="+field);

        model.addAttribute("bookList",bookList);
        model.addAttribute("page",page);
        return "frontend/home";
    }

    @RequestMapping("front_book_detail")
    public String detail(Model model,@RequestParam("book_id") String book_id){
        Book book=bookService.get(Integer.parseInt(book_id));
        model.addAttribute("book",book);
        return "frontend/detail";
    }

    @RequestMapping("front_login")
    public String login(@RequestParam("username") String username, @RequestParam("password") String password,
                        Model model, HttpSession session) {

        Reader reader=readerService.login(username,password);

        if(null==reader){
            model.addAttribute("msg", "账号密码错误");
            return "frontend/login";
        }
        session.setAttribute("reader", reader);
        return "redirect:front_book_list";
    }

    @RequestMapping("tologin")
    public String tologin(){
        return "frontend/login";
    }

    @RequestMapping("front_logout")
    public String logout(HttpSession session){
        session.removeAttribute("reader");
        return "redirect:front_book_list";
    }

    @RequestMapping("toregister")
    public String toregister(){
        return "frontend/register";
    }

    @RequestMapping("registerSuccessPage")
    public String registerSuccessPage() {
        return "frontend/registerSuccess";
    }

    @RequestMapping("front_register")
    public String register(Model model,Reader reader) {
        String name =  reader.getReader_name();

        boolean exist = readerService.isExist(name);

        if(exist){
            String m ="用户名已经被使用,不能使用";
            model.addAttribute("msg", m);
            model.addAttribute("user", null);
            return "frontend/register";
        }
        readerService.register(reader);
        return "redirect:registerSuccessPage";
    }

    @RequestMapping("front_checklogin")
    @ResponseBody
    public String checkLogin(HttpSession session){
        Reader reader=(Reader) session.getAttribute("reader");
        if(reader!=null)
            return "success";
        else return "fail";
    }

    @RequestMapping("front_loginAjax")
    @ResponseBody
    public String loginAjax(@RequestParam("username") String username,@RequestParam("password") String password, HttpSession session){
        Reader reader=readerService.login(username,password);
        if(null==reader){
            return "fail";
        }
        session.setAttribute("reader",reader);
        return "success";
    }

}


