package servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * 应用模块名称<p>
 * 代码描述<p>
 *
 * @author a2008q
 * @since 2020/1/1 20:51
 */
@WebServlet(name = "codeServlet", urlPatterns = "/codeServlet")
public class codeServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String code = request.getParameter("code").trim();
        String codes=(String) request.getSession().getAttribute("code");
        response.setCharacterEncoding("UTF-8");
        if(codes.trim().equals(code)){
            response.getWriter().write("true");
        }else{
            response.getWriter().write("false");
        }
        response.flushBuffer();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
