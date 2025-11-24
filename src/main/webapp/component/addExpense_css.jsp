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
            align-items: center;
            min-height: calc(100vh - 80px);
        }

        /* Form Styles */
        .form-container {
            width: 100%;
            max-width: 500px;
        }

        .expense-form {
            background: white;
            padding: 2.5rem;
            border-radius: 20px;
            box-shadow: 0 15px 35px rgba(0, 0, 0, 0.1);
            backdrop-filter: blur(10px);
            border: 1px solid rgba(255, 255, 255, 0.2);
        }

        .form-heading {
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

        .form-group {
            margin-bottom: 1.5rem;
        }

        .form-group label {
            display: block;
            margin-bottom: 0.5rem;
            color: #2c3e50;
            font-weight: 600;
            font-size: 0.95rem;
        }

        .form-group input,
        .form-group textarea {
            width: 100%;
            padding: 0.8rem;
            border: 2px solid #e0e6ed;
            border-radius: 10px;
            font-size: 1rem;
            transition: all 0.3s ease;
            background: #f8f9fa;
        }

        .form-group input:focus,
        .form-group textarea:focus {
            outline: none;
            border-color: #667eea;
            background: white;
            box-shadow: 0 0 0 3px rgba(102, 126, 234, 0.1);
            transform: translateY(-2px);
        }

        .form-group textarea {
            resize: vertical;
            font-family: inherit;
        }

        .price-input {
            position: relative;
            display: flex;
            align-items: center;
        }

        .currency-symbol {
            position: absolute;
            left: 12px;
            color: #667eea;
            font-weight: bold;
            font-size: 1.1rem;
            z-index: 1;
        }

        .price-input input {
            padding-left: 2.2rem;
        }

        .form-actions {
            display: flex;
            gap: 1rem;
            margin-top: 2rem;
        }

        .btn-submit,
        .btn-cancel {
            flex: 1;
            padding: 0.8rem 1.5rem;
            border: none;
            border-radius: 10px;
            font-size: 1rem;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        .btn-submit {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
        }

        .btn-submit:hover {
            transform: translateY(-2px);
            box-shadow: 0 8px 25px rgba(102, 126, 234, 0.4);
        }

        .btn-cancel {
            background: #e9ecef;
            color: #6c757d;
            border: 2px solid #dee2e6;
        }

        .btn-cancel:hover {
            background: #f8f9fa;
            border-color: #adb5bd;
            transform: translateY(-2px);
        }

        /* Form Animation */
        .expense-form {
            animation: slideUp 0.6s ease-out;
        }

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