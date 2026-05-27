import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import javasrc.io.IOException;
import java.util.Date;

@WebServlet("/bai1.1")
public class SharerServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        // 1. Đặt dữ liệu vào Request Attribute để truyền sang JSP
        req.setAttribute("message", "Welcome to FPT Polytechnic!");
        req.setAttribute("now", new Date());

        // 2. Chuyển tiếp (Forward) yêu cầu sang trang page.jsp để hiển thị giao diện
        req.getRequestDispatcher("/page.jsp").forward(req, resp);
    }
}