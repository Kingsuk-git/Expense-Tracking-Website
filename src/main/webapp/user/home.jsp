<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="../component/userHome_css.jsp" %>
</head>
<body>
	 <nav class="navbar">
        <div class="nav-container">
            <a href="#" class="nav-brand">ExpenseTracker Pro</a>
            
            <div class="nav-features">
                <a href="#" class="nav-link">Dashboard</a>
                <a href="add_expense.jsp" class="nav-link">Add Expense</a>
                <a href="view_expense.jsp" class="nav-link">View Expense</a>
                <a href="#" class="nav-link">Reports</a>
                <a href="#" class="nav-link">Budget</a>
            </div>
            
            <div class="nav-buttons">
                <button class="btn btn-secondary" >
                    ⚙️ Settings
                </button>
                <a href = "../logout">
                <button class="btn btn-logout"  >
                    🚪 Logout
                </button>
                </a>
            </div>
        </div>
    </nav>

    <main class="main-content">
        <section class="hero-section">
            <h1 class="hero-title">Welcome to Your Expense Tracker</h1>
            <p class="hero-subtitle">Take control of your finances with our powerful expense tracking tools</p>
        </section>

        <div class="feature-cards">
            <div class="feature-card">
                <div class="feature-icon">📊</div>
                <h3 class="feature-title">Smart Analytics</h3>
                <p class="feature-description">Get detailed insights into your spending patterns with interactive charts and reports.</p>
            </div>
            
            <div class="feature-card">
                <div class="feature-icon">💳</div>
                <h3 class="feature-title">Multiple Categories</h3>
                <p class="feature-description">Organize your expenses with customizable categories for better financial management.</p>
            </div>
            
            <div class="feature-card">
                <div class="feature-icon">🎯</div>
                <h3 class="feature-title">Budget Goals</h3>
                <p class="feature-description">Set and track budget goals to stay on top of your financial objectives.</p>
            </div>
        </div>
    </main>
</body>
</html>