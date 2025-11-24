<%@page import = "com.db.Hibernate" %>
<%@page import = "org.hibernate.SessionFactory" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Expense Tracker - Welcome back</title>
   
    <%@include file="component/login_css.jsp" %>
</head>
<body>
	<%
	SessionFactory factory = Hibernate.getSessionFactory();
	out.print(factory);%>
	
    <div class="container">
        <div class="left-section">
            <div class="logo">
                Expense Tracker
            </div>
            
            <div class="form-container">
                <h1>Welcome back</h1>
                <p class="subtitle">Please enter your details</p>
                
                <form>
                    <div class="form-group">
                        <label for="email">Email address</label>
                        <input type="email" id="email" name="email" required>
                    </div>
                    
                    <div class="form-group">
                        <label for="password">Password</label>
                        <input type="password" id="password" name="password" required>
                    </div>
                    
                    <div class="checkbox-container">
                        <div class="checkbox-group">
                            <input type="checkbox" id="remember" name="remember">
                            <label for="remember" class="checkbox-label">Remember for 30 days</label>
                        </div>
                        <a href="#" class="forgot-password">Forgot password</a>
                    </div>
                    
                    <button type="submit" class="sign-in-btn">Sign in</button>
                    
                    
                    <div class="signup-link">
                        Don't have an account? <a href="register.jsp">Sign up</a>
                    </div>
                </form>
            </div>
        </div>
        
         <div class="right-section">
            <div class="welcome-content">
                <h2>Welcome to Expense Tracker</h2>
                <p>Take control of your finances and track every expense with ease</p>
                <ul class="features">
                    <li>Smart expense categorization</li>
                    <li>Visual spending reports</li>
                    <li>Budget management tools</li>
                    <li>Receipt scanning & storage</li>
                </ul>
            </div>
        </div>
    </div>
</body>
</html>