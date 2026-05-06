# Quiz Application
 
## Student Details 
 
| Field         | Details                          | 
|---------------|----------------------------------| 
| Name          | Pavan S T               | 
| USN           | 2BL24CS413     | 
| Branch        | Computer Science & Engineering   | 
| Semester      | VI Semester                      | 
| Subject       | Advanced Java Programming        | 
| Problem No.   | 26               | 
 
## Problem Statement 
 
Build a simple 3-question Quiz using sessions. Each question is shown on a separate page. After the user 
answers each question, the Servlet stores the answer in the session and moves to the next question. After all 3 
questions, display the final score.
 
## Technologies Used 
 - Java (Servlets) - HTML, CSS (inline) - Apache Tomcat 10 - Eclipse IDE 
 
## How to Run This Project 
 
1. Clone this repository or download the ZIP. 
2. Import the project into Eclipse as a Dynamic Web Project. 
3. Add Apache Tomcat as the server in Eclipse. 
4. Right-click project → Run As → Run on Server. 
5. Open browser and go to: http://localhost:8080/YourProjectName/index.html 
 
## Screenshots 
 
### Input Form 
<img width="1920" height="1080" alt="Screenshot 1" src="https://github.com/user-attachments/assets/e9f2038f-7475-4f27-b4e3-67c0c271e721" />

### Output / Result Page 
<img width="1920" height="1080" alt="Screenshot 2" src="https://github.com/user-attachments/assets/9235c41b-e576-44e1-9d0d-ce27eee52400" />

## Servlet Concept Practiced 
.HttpSession: Used to maintain the shopping cart state across multiple requests by storing an ArrayList<String> in the session.
.doPost: Implemented to securely handle the submission of product data from the HTML forms.
.Jakarta EE Imports: Utilized the jakarta.servlet namespace for compatibility with modern Tomcat environments.
.JSP (JavaServer Pages): Used for dynamic rendering of the cart contents and total count.
