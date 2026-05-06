<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Quiz Result</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card shadow">
                    <div class="card-body">
                        <h2 class="text-center mb-4">Quiz Results</h2>
                        <%
                            String[][] correctAnswers = {
                                {"What is the capital of France?", "Paris"},
                                {"Which language is used for web styling?", "CSS"},
                                {"What is 5 + 3?", "8"}
                            };
                            int score = 0;
                            for (int i = 0; i < correctAnswers.length; i++) {
                                String userAns = (String) session.getAttribute("ans" + (i + 1));
                                String correctAns = correctAnswers[i][1];
                                boolean isCorrect = correctAns.equals(userAns);
                                if (isCorrect) score++;
                        %>
                        <div class="mb-3 p-3 border rounded <%= isCorrect ? "bg-success-subtle" : "bg-danger-subtle" %>">
                            <p class="fw-bold mb-1">Question <%= i+1 %>: <%= correctAnswers[i][0] %></p>
                            <p class="mb-0">Your Answer: <span class="fw-bold"><%= userAns %></span></p>
                            <p class="mb-0">Correct Answer: <span class="fw-bold text-success"><%= correctAns %></span></p>
                            <p class="mb-0">Status: <span class="badge <%= isCorrect ? "bg-success" : "bg-danger" %>"><%= isCorrect ? "Right" : "Wrong" %></span></p>
                        </div>
                        <% } %>
                        <h3 class="text-center mt-4">Final Score: <%= score %> out of <%= correctAnswers.length %></h3>
                        <div class="text-center mt-4">
                            <% session.invalidate(); %>
                            <a href="index.jsp" class="btn btn-primary">Try Again</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
