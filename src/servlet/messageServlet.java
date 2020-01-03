package servlet;

import java.io.IOException;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Random;

/**
 * 应用模块名称<p>
 * 代码描述<p>
 *
 * @author a2008q
 * @since 2019/12/31 15:59
 */
@WebServlet(name = "messageServlet", urlPatterns = "/messageServlet")
public class messageServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String phone = request.getParameter("phone");
        String code  = getCode(request);
        sms.sendmsg.sendreg(phone,code);
        response.getWriter().write("true");
        response.flushBuffer();
    }




    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
    private String getCode(HttpServletRequest request) {
        Random rand =new Random();
        String code = "";
        for(int i=0;i<4;i++) {
            code += rand.nextInt(10);
        }
        request.getSession().setAttribute("code",code);
        return code;
    }
}
