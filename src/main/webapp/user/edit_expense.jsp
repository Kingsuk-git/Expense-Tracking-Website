<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@page import="com.entity.Expense"%>
<%@page import="com.db.Hibernate"%>
<%@page import="com.dao.ExpenseDao"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Expense</title>
<%@include file="../component/addExpense_css.jsp" %>
</head>
<body>
<%
	int id = Integer.parseInt(request.getParameter("id"));

	ExpenseDao dao = new ExpenseDao(Hibernate.getSessionFactory());
	Expense ex = dao.getExpenseById(id);
	%>
	 <nav class="navbar">
        <div class="nav-container">
            <a href="#" class="nav-brand">ExpenseTracker Pro</a>
            
            <div class="nav-features">
                <a href="#" class="nav-link">Dashboard</a>
                <a href="#" class="nav-link">Add Expense</a>
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
                <h2 class="form-heading">Edit Expense</h2>
                <form id="expenseForm" action ="../updateExpense" method ="post">
                    <div class="form-group">
                        <label for="title">Title</label>
                        <input type="text" id="title" name="title" value = "<%=ex.getTitle()%>">
                    </div>
                    
                    <div class="form-group">
                        <label for="date">Date</label>
                        <input type="date" id="date" name="date" value = "<%=ex.getDate()%>">
                    </div>
                    
                    <div class="form-group">
                        <label for="description">Description</label>
                        <textarea id="description" name="description" rows="4" value = "<%=ex.getDescription()%>"></textarea>
                    </div>
                    
                    <div class="form-group">
                        <label for="price">Price</label>
                        <div class="price-input">
                            <span class="currency-symbol">$</span>
                            <input type="number" id="price" name="price" step="0.01" min="0" value = "<%=ex.getPrice()%>">
                        </div>
                    </div>
                    
                    <div class="form-actions">
                        <button type="submit" class="btn-submit">Update Expense</button>
                        <button type="button" class="btn-cancel" onclick="clearForm()">Clear</button>
                    </div>
                </form>
            </div>
        </div>
    </main>
</body>
</html>