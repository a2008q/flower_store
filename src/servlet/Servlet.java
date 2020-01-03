package servlet;


import entity.Users;
import service.UserService;
import service.impl.UserServiceImpl;

import javax.print.DocFlavor;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

/**
 * 应用模块名称<p>
 * 代码描述<p>
 *
 * @author a2008q
 * @since 2019/12/25 14:49
 */
@WebServlet(name = "Servlet", urlPatterns = "/Servlet")
public class Servlet extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        resp.setCharacterEncoding("utf-8");
//        String phone = req.getParameter("phone");
//        String code = sms.sendmsg.sendreg(phone);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");
        String oper = req.getParameter("oper");
        if ("login".equals(oper)) {
            checkUserLogin(req, resp);
        } else if ("reg".equals(oper)) {
            Reg(req, resp);
        }else if ("out".equals(oper)){
            userOut(req,resp);
        }else if ("adminlogin".equals(oper)){
            checkAdminLogin(req, resp);
        }else if ("show".equals(oper)){
            userShow(req,resp);
        }
    }

    private void userShow(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        UserService userService = new UserServiceImpl();
        List<Users> userList = userService.userShowService();
        if (userList!=null){
            req.setAttribute("userList",userList);
            req.getRequestDispatcher("admin/showUser.jsp").forward(req,resp);
            return;
        }
    }

    private void userOut(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        HttpSession hs = req.getSession();
        hs.invalidate();
        resp.sendRedirect("/login.jsp");
    }

    private void Reg(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        String phone = req.getParameter("phone");
        String password = req.getParameter("password");
        String name = new String(req.getParameter("name").getBytes("UTF-8"),"UTF-8");
        String age = req.getParameter("age");
        UserService userService = new UserServiceImpl();
        Users user = new Users(phone, password,name,age);
        int index = userService.UserRegService(user);
    }

    private void checkAdminLogin(HttpServletRequest req, HttpServletResponse resp)throws IOException, ServletException{
        String phone = req.getParameter("phone");
        String password = req.getParameter("password");
        UserService userService = new UserServiceImpl();
        Users user = userService.CheckLoginService(phone,password);
        if (user!=null){
            HttpSession hs = req.getSession();
            hs.setAttribute("user",user);
            resp.sendRedirect("admin/showUser.jsp");
//            req.getRequestDispatcher()
            return;
        }else {
            req.setAttribute("flag","false");
            req.getRequestDispatcher("admin/login.jsp").forward(req,resp);
            return;
        }
    }


    private void checkUserLogin(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        String phone = req.getParameter("phone");
        String password = req.getParameter("password");
        UserService userService = new UserServiceImpl();
        Users user = userService.CheckLoginService(phone,password);
        if (user!=null){
            HttpSession hs = req.getSession();
            hs.setAttribute("user",user);
            resp.sendRedirect("index.jsp");
            return;
        }else {
            req.setAttribute("flag","false");
            req.getRequestDispatcher("login.jsp").forward(req,resp);
            return;
        }
    }
}
