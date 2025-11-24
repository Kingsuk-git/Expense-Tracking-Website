<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Expense Tracker - Create Account</title>
    <%@include file="component/register_css.jsp" %>
</head>
<body>

<div class="container">
        <div class="left-section">
            <div class="logo">
                Expense Tracker
            </div>
            
            <div class="form-container">
                <h1>Create your account</h1>
               <!--   <p class="subtitle">Join thousands of users today</p>-->
                
                <form id="registrationForm" action ="userRegister" method = "POST">
                    <div class="form-row">
                        <div class="form-group">
                            <label for="fullName">Full Name</label>
                            <input type="text" id="fullName" name="fullName" required>
                        </div>
                        
                    </div>
                    
                    <div class="form-group full-width">
                        <label for="email">Email address</label>
                        <input type="email" id="email" name="email" required>
                    </div>
                    
                    <div class="form-group full-width">
                        <label for="phone">Phone number</label>
                        <input type="tel" id="phone" name="phone">
                    </div>
                    
                    <div class="form-group full-width">
                        <label for="password">Password</label>
                        <input type="password" id="password" name="password" required>
                        
                    </div>
                    
                    <!--  <div class="form-group full-width">
                        <label for="confirmPassword">Confirm password</label>
                        <input type="password" id="confirmPassword" name="confirmPassword" required>
                    </div>-->
                    
                    <div class="checkbox-container">
                        <div class="checkbox-group">
                            <input type="checkbox" id="terms" name="terms" required>
                            <label for="terms" class="checkbox-label">I agree to the <a href="#">Terms of Service</a> and <a href="#">Privacy Policy</a></label>
                        </div>
                        <div class="checkbox-group">
                            <input type="checkbox" id="newsletter" name="newsletter">
                            <label for="newsletter" class="checkbox-label">Send me marketing emails and product updates</label>
                        </div>
                    </div>
                    
                    <button type="submit" class="create-account-btn">Create account</button>
                    
                    
                    
                    <div class="signin-link">
                        Already have an account? <a href="index.jsp">Sign in</a>
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

 	<!--  <script src = "component/register_js.jsp"></script>-->
</body>
</html>