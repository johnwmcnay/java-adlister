import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "HelloWorldServlet", urlPatterns = "/")
public class HelloWorldServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        HttpSession session = request.getSession();

        if (session.getAttribute("user") != null && session.getAttribute("user").equals(true)) {
            response.sendRedirect("/profile");
            return;
        } else {
            session.setAttribute("user", false);
        }
        request.getRequestDispatcher("/WEB-INF/index.jsp").forward(request, response);
    }
}
