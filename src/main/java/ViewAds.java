import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ViewAds", urlPatterns="/ads")
public class ViewAds extends HttpServlet {
//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//
//    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ListAdsDao ads = new ListAdsDao();
        request.setAttribute("ads", ads.all());
        request.getRequestDispatcher("/ads/index.jsp").forward(request, response);
    }
}
