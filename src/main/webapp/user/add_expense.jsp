<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="../component/addExpense_css.jsp" %>
</head>
<body>
	 <nav class="navbar">
        <div class="nav-container">
            <a href="#" class="nav-brand">ExpenseTracker Pro</a>
            
            <div class="nav-features">
                <a href="#" class="nav-link">Dashboard</a>
                <a href="add_expense.jsp" class="nav-link">Add Expense</a>
                <a href="#" class="nav-link">Categories</a>
                <a href="#" class="nav-link">Reports</a>
                <a href="#" class="nav-link">Budget</a>
            </div>
            
            <div class="nav-buttons">
                <button class="btn btn-secondary">
                    ⚙️ Settings
                </button>
                <button class="btn btn-logout">
                    🚪 Logout
                </button>
            </div>
        </div>
    </nav>

    <main class="main-content">
        <div class="form-container">
            <div class="expense-form">
                <h2 class="form-heading">Add Expense</h2>
                <form id="expenseForm" action ="../saveExpense" method ="post">
                    <div class="form-group">
                        <label for="title">Title</label>
                        <input type="text" id="title" name="title" required placeholder="Enter expense title">
                    </div>
                    
                    <div class="form-group">
                        <label for="date">Date</label>
                        <input type="date" id="date" name="date" required>
                    </div>
                    
                    <div class="form-group">
                        <label for="description">Description</label>
                        <textarea id="description" name="description" rows="4" placeholder="Enter expense description (optional)"></textarea>
                    </div>
                    
                    <div class="form-group">
                        <label for="price">Price</label>
                        <div class="price-input">
                            <span class="currency-symbol">$</span>
                            <input type="number" id="price" name="price" step="0.01" min="0" required placeholder="0.00">
                        </div>
                    </div>
                    
                    <div class="form-actions">
                        <button type="submit" class="btn-submit">Add Expense</button>
                        <button type="button" class="btn-cancel" onclick="clearForm()">Clear</button>
                    </div>
                </form>
            </div>
        </div>
    </main>
</body>
</html>
