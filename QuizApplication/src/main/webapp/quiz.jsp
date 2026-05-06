<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Question ${qNumber} - Quiz App</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card shadow">
                    <div class="card-body">
                        <h3 class="card-title">Question ${qNumber}</h3>
                        <p class="lead">${question}</p>
                        <hr>
                        <form action="QuizServlet" method="post">
                            <% 
                                String[] options = (String[]) request.getAttribute("options");
                                for (String option : options) {
                            %>
                            <div class="form-check mb-2">
                                <input class="form-check-input" type="radio" name="answer" value="<%= option %>" required>
                                <label class="form-check-label"><%= option %></label>
                            </div>
                            <% } %>
                            <button type="submit" class="btn btn-primary mt-3 w-100">Next Question</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
