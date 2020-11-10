package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.regex.Pattern;

@WebServlet(name = "controllers.RegisterServlet", urlPatterns = "/register")
public class RegisterServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/register.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        User user = new User(
                request.getParameter("email"),
                request.getParameter("username"),
                request.getParameter("password")
        );

//        isValidEmail(user.getEmail());
//        isValidUsername(user.getUsername());
//        isValidPassword(user.getPassword());

        if (isValid(user)) {
            DaoFactory.getUsersDao().insert(user);
            request.getSession().setAttribute("user", request.getParameter("username"));
            response.sendRedirect("/profile");
        } else {
            request.setAttribute("fail", "Create account failed");
            request.getRequestDispatcher("/WEB-INF/register.jsp").forward(request, response);
        }

    }

    private boolean isValid(User user) {
        return isValidEmail(user.getEmail()) &&
            isValidUsername(user.getUsername()) &&
            isValidPassword(user.getPassword());
    }

    public boolean isValidEmail(String email) {
        //Googled a solution to validate email strings
//        String emailRegex = "^[a-zA-Z0-9_+&*-]+(?:\\."+
//                "[a-zA-Z0-9_+&*-]+)*@" +
//                "(?:[a-zA-Z0-9-]+\\.)+[a-z" +
//                "A-Z]{2,7}$";
//
//        Pattern pat = Pattern.compile(emailRegex);

        if (email == null)
            return false;
//        return pat.matcher(email).matches();
        return !email.equals("");
    }

    public boolean isValidUsername(String username) {
        if (username == null) {
            return false;
        }
        return !username.equals("");
    }

    public boolean isValidPassword(String password) {
        if (password == null) {
            return false;
        }
        return !password.equals("");
    }
}
