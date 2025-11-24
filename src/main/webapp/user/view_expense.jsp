<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@page import="com.db.Hibernate"%>
<%@page import="com.dao.ExpenseDao"%>
<%@page import="com.entity.Expense"%>
<%@page import="java.util.List"%>
<%@page import="com.entity.User"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="../component/viewExpense_css.jsp" %>
</head>
<body>
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
                <button class="btn btn-secondary" onclick="showSettings()">
                    ⚙️ Settings
                </button>
                <button class="btn btn-logout" onclick="logout()">
                    🚪 Logout
                </button>
            </div>
        </div>
    </nav>

    <main class="main-content">
        <div class="expenses-container">
            <div class="expenses-display">
                <h2 class="display-heading">All Expenses</h2>
                
                <div class="expenses-list" id="expensesList">
                   
					
					<%
					User user = (User) session.getAttribute("loginUser");
						
					ExpenseDao dao = new ExpenseDao(Hibernate.getSessionFactory());
					List<Expense> list = dao.getAllExpenseByUser(user);
					for(Expense ex : list){
					
					%>
                    <div class="expense-item">
                        <div class="expense-header">
                            <h3 class="expense-title"><%=ex.getTitle() %></h3>
                            <span class="expense-price"><%=ex.getPrice() %></span>
                        </div>
                        <div class="expense-meta">
                            <span class="expense-date"><%=ex.getDate() %></span>
                        </div>
                        <div class="expense-description">
                            <%=ex.getDescription() %>
                        </div>
                         <div class="expense-actions">
                            <a href="edit_expense.jsp?id=<%=ex.getId() %>" class="action-btn edit-btn" > Edit</a>
                            <a href="../deleteExpense?id=<%=ex.getId() %>" class="action-btn delete-btn" > Delete</a>
                        </div>
                    </div>
                    <%
					}
                    %>
                    

                   

                   

                    
                </div>

                <div class="total-section">
                    <div class="total-amount">
                        <span class="total-label">Total Expenses:</span>
                        <span class="total-value">$184.49</span>
                    </div>
                </div>
            </div>
        </div>
    </main>
</body>
</html>