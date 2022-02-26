package com.example.homeworkwithservlet;

import com.manager.UserManager;
import com.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/removeUser")
public class RemoveUserServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("id");
        int userId = Integer.parseInt(id);
        UserManager userManager = new UserManager();
        userManager.removeUserById(userId);
        List<User> allUsers = userManager.getUsers();
        req.setAttribute("allUsers", allUsers);
        req.getRequestDispatcher("home.jsp").forward(req,resp);
    }
}
