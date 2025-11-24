<style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
            min-height: 100vh;
        }

        /* Navbar Styles */
        .navbar {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            padding: 1rem 2rem;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
            position: sticky;
            top: 0;
            z-index: 1000;
        }

        .nav-container {
            display: flex;
            justify-content: space-between;
            align-items: center;
            max-width: 1200px;
            margin: 0 auto;
        }

        .nav-brand {
            color: white;
            font-size: 1.8rem;
            font-weight: bold;
            text-decoration: none;
            display: flex;
            align-items: center;
            gap: 0.5rem;
        }

        .nav-brand::before {
            content: "💰";
            font-size: 1.5rem;
        }

        .nav-features {
            display: flex;
            gap: 2rem;
            align-items: center;
        }

        .nav-link {
            color: white;
            text-decoration: none;
            padding: 0.5rem 1rem;
            border-radius: 8px;
            transition: all 0.3s ease;
            position: relative;
            overflow: hidden;
        }

        .nav-link:hover {
            background: rgba(255, 255, 255, 0.2);
            transform: translateY(-2px);
        }

        .nav-link::before {
            content: '';
            position: absolute;
            top: 0;
            left: -100%;
            width: 100%;
            height: 100%;
            background: linear-gradient(90deg, transparent, rgba(255, 255, 255, 0.3), transparent);
            transition: left 0.5s;
        }

        .nav-link:hover::before {
            left: 100%;
        }

        .nav-buttons {
            display: flex;
            gap: 1rem;
            align-items: center;
        }

        .btn {
            padding: 0.6rem 1.2rem;
            border: none;
            border-radius: 8px;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.3s ease;
            text-decoration: none;
            display: inline-flex;
            align-items: center;
            gap: 0.5rem;
        }

        .btn-secondary {
            background: rgba(255, 255, 255, 0.2);
            color: white;
            border: 2px solid rgba(255, 255, 255, 0.3);
        }

        .btn-secondary:hover {
            background: rgba(255, 255, 255, 0.3);
            transform: translateY(-2px);
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
        }

        .btn-logout {
            background: #ff4757;
            color: white;
        }

        .btn-logout:hover {
            background: #ff3742;
            transform: translateY(-2px);
            box-shadow: 0 4px 15px rgba(255, 71, 87, 0.4);
        }

        /* Main Content */
        .main-content {
            max-width: 1200px;
            margin: 0 auto;
            padding: 2rem;
            display: flex;
            justify-content: center;
            align-items: flex-start;
            min-height: calc(100vh - 80px);
        }

        /* Expenses Display Styles */
        .expenses-container {
            width: 100%;
            max-width: 800px;
        }

        .expenses-display {
            background: white;
            padding: 2.5rem;
            border-radius: 20px;
            box-shadow: 0 15px 35px rgba(0, 0, 0, 0.1);
            backdrop-filter: blur(10px);
            border: 1px solid rgba(255, 255, 255, 0.2);
            animation: slideUp 0.6s ease-out;
        }

        .display-heading {
            font-size: 2rem;
            color: #2c3e50;
            text-align: center;
            margin-bottom: 2rem;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            font-weight: bold;
        }

        .expenses-list {
            display: flex;
            flex-direction: column;
            gap: 1.5rem;
            margin-bottom: 2rem;
        }

        .expense-item {
            background: linear-gradient(135deg, #f8f9fa 0%, #e9ecef 100%);
            border: 2px solid #e0e6ed;
            border-radius: 15px;
            padding: 1.5rem;
            transition: all 0.3s ease;
            position: relative;
            overflow: hidden;
        }

        .expense-item:hover {
            transform: translateY(-3px);
            box-shadow: 0 8px 25px rgba(102, 126, 234, 0.15);
            border-color: #667eea;
        }

        .expense-item::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 4px;
            height: 100%;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
        }

        .expense-header {
            display: flex;
            justify-content: space-between;
            align-items: flex-start;
            margin-bottom: 0.5rem;
        }

        .expense-title {
            font-size: 1.2rem;
            color: #2c3e50;
            font-weight: 600;
            margin: 0;
            flex: 1;
        }

        .expense-price {
            font-size: 1.3rem;
            font-weight: bold;
            color: #667eea;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
        }

        .expense-meta {
            margin-bottom: 0.8rem;
        }

        .expense-date {
            color: #6c757d;
            font-size: 0.9rem;
            font-weight: 500;
        }

        .expense-description {
            color: #495057;
            line-height: 1.6;
            font-size: 0.95rem;
            margin-top: 0.5rem;
        }

        .total-section {
            border-top: 2px solid #e9ecef;
            padding-top: 1.5rem;
            margin-top: 2rem;
        }

        .total-amount {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
            padding: 1rem 1.5rem;
            border-radius: 10px;
            font-size: 1.1rem;
            font-weight: bold;
        }

        .total-label {
            font-size: 1.1rem;
        }

        .total-value {
            font-size: 1.3rem;
        }
        .expense-actions {
            display: flex;
            gap: 0.8rem;
            margin-top: 1rem;
            padding-top: 1rem;
            border-top: 1px solid #dee2e6;
        }

        .action-btn {
            display: inline-flex;
            align-items: center;
            gap: 0.3rem;
            padding: 0.5rem 1rem;
            text-decoration: none;
            font-size: 0.85rem;
            font-weight: 600;
            border-radius: 8px;
            transition: all 0.3s ease;
            cursor: pointer;
        }
        .edit-btn {
            background: linear-gradient(135deg, #28a745 0%, #20c997 100%);
            color: white;
        }

        .edit-btn:hover {
            transform: translateY(-2px);
            box-shadow: 0 4px 15px rgba(40, 167, 69, 0.3);
            text-decoration: none;
            color: white;
        }

        .delete-btn {
            background: linear-gradient(135deg, #dc3545 0%, #e74c3c 100%);
            color: white;
        }

        .delete-btn:hover {
            transform: translateY(-2px);
            box-shadow: 0 4px 15px rgba(220, 53, 69, 0.3);
            text-decoration: none;
            color: white;
        }

        /* Animation */
        @keyframes slideUp {
            from {
                opacity: 0;
                transform: translateY(30px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .expenses-display {
                padding: 1.5rem;
            }

            .expense-header {
                flex-direction: column;
                gap: 0.5rem;
            }

            .expense-price {
                align-self: flex-end;
            }

            .display-heading {
                font-size: 1.5rem;
            }
        }

        /* Mobile Responsiveness */
        @media (max-width: 768px) {
            .navbar {
                padding: 1rem;
            }

            .nav-container {
                flex-direction: column;
                gap: 1rem;
            }

            .nav-features {
                gap: 1rem;
            }

            .nav-buttons {
                flex-direction: column;
                width: 100%;
                gap: 0.5rem;
            }

            .btn {
                width: 100%;
                justify-content: center;
            }

            .hero-title {
                font-size: 2rem;
            }

            .main-content {
                padding: 1rem;
            }
        }
    </style>