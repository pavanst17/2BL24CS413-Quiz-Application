package com.quizapp.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/QuizServlet")
public class QuizServlet extends HttpServlet {
    
    // Hardcoded questions
    private static final String[][] QUESTIONS = {
        {"What is the capital of France?", "Paris", "London", "Berlin", "Madrid", "Paris"},
        {"Which language is used for web styling?", "HTML", "Python", "CSS", "Java", "CSS"},
        {"What is 5 + 3?", "5", "8", "10", "15", "8"}
    };

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        
        // Initialize quiz if not started
        if (session.getAttribute("qIndex") == null) {
            session.setAttribute("qIndex", 0);
        }
        
        int qIndex = (int) session.getAttribute("qIndex");
        
        if (qIndex < QUESTIONS.length) {
            request.setAttribute("question", QUESTIONS[qIndex][0]);
            request.setAttribute("options", new String[]{QUESTIONS[qIndex][1], QUESTIONS[qIndex][2], QUESTIONS[qIndex][3], QUESTIONS[qIndex][4]});
            request.setAttribute("qNumber", qIndex + 1);
            request.getRequestDispatcher("quiz.jsp").forward(request, response);
        } else {
            response.sendRedirect("result.jsp");
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String selectedOption = request.getParameter("answer");
        Integer qIndex = (Integer) session.getAttribute("qIndex");

        if (qIndex != null && selectedOption != null) {
            // Store answer in session as per coding hint: ans1, ans2, etc.
            session.setAttribute("ans" + (qIndex + 1), selectedOption);
            
            // Increment question index
            session.setAttribute("qIndex", qIndex + 1);
        }

        // Redirect to doGet to show next question or results
        response.sendRedirect("QuizServlet");
    }
}
