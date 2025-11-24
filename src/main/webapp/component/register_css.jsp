<style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, sans-serif;
            height: 100vh;
            display: flex;
            background: #f8f9fa;
        }

        .container {
            display: flex;
            width: 100%;
            height: 100vh;
        }

        .left-section {
            flex: 1;
            background: white;
            display: flex;
            flex-direction: column;
            justify-content: center;
            padding: 2rem;
            max-width: 500px;
            box-shadow: 2px 0 10px rgba(0,0,0,0.1);
        }

        .right-section {
            flex: 1;
            background: linear-gradient(135deg, #9b59b6, #8e44ad);
            position: relative;
            overflow: hidden;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .logo {
            display: flex;
            align-items: center;
            margin-bottom: 2rem;
            font-size: 1.2rem;
            font-weight: 600;
            color: #333;
        }

        .logo::before {
            content: '';
            width: 24px;
            height: 24px;
            background: linear-gradient(45deg, #9b59b6, #3498db);
            margin-right: 8px;
            border-radius: 4px;
        }

        .form-container {
            max-width: 400px;
            width: 100%;
        }

        h1 {
            font-size: 2rem;
            color: #333;
            margin-bottom: 0.5rem;
            font-weight: 600;
        }

        .subtitle {
            color: #666;
            margin-bottom: 2rem;
            font-size: 0.9rem;
        }

        .form-row {
            display: flex;
            gap: 1rem;
            margin-bottom: 1.5rem;
        }

        .form-group {
            flex: 1;
            margin-bottom: 1.5rem;
        }

        .form-group.full-width {
            flex: none;
            width: 100%;
        }

        label {
            display: block;
            margin-bottom: 0.5rem;
            color: #333;
            font-weight: 500;
            font-size: 0.9rem;
        }

        input[type="text"], input[type="email"], input[type="password"], input[type="tel"] {
            width: 100%;
            padding: 0.75rem;
            border: 2px solid #e1e8ed;
            border-radius: 8px;
            font-size: 1rem;
            transition: border-color 0.3s ease;
            font-family: inherit;
        }

        input[type="text"]:focus, input[type="email"]:focus, input[type="password"]:focus, input[type="tel"]:focus {
            outline: none;
            border-color: #9b59b6;
        }

        .password-strength {
            margin-top: 0.5rem;
            font-size: 0.8rem;
        }

        .strength-bar {
            width: 100%;
            height: 4px;
            background: #e1e8ed;
            border-radius: 2px;
            margin: 0.5rem 0;
            overflow: hidden;
        }

        .strength-fill {
            height: 100%;
            width: 0%;
            background: #e74c3c;
            transition: all 0.3s ease;
            border-radius: 2px;
        }

        .strength-fill.weak { background: #e74c3c; width: 25%; }
        .strength-fill.fair { background: #f39c12; width: 50%; }
        .strength-fill.good { background: #3498db; width: 75%; }
        .strength-fill.strong { background: #27ae60; width: 100%; }

        .checkbox-container {
            margin-bottom: 2rem;
        }

        .checkbox-group {
            display: flex;
            align-items: flex-start;
            margin-bottom: 1rem;
        }

        input[type="checkbox"] {
            margin-right: 0.5rem;
            margin-top: 0.25rem;
        }

        .checkbox-label {
            font-size: 0.9rem;
            color: #666;
            line-height: 1.4;
        }

        .checkbox-label a {
            color: #9b59b6;
            text-decoration: none;
        }

        .checkbox-label a:hover {
            text-decoration: underline;
        }

        .create-account-btn {
            width: 100%;
            background: #9b59b6;
            color: white;
            border: none;
            padding: 0.75rem;
            border-radius: 8px;
            font-size: 1rem;
            font-weight: 500;
            cursor: pointer;
            margin-bottom: 1rem;
            transition: background-color 0.3s ease;
            font-family: inherit;
        }

        .create-account-btn:hover {
            background: #8e44ad;
        }

        .create-account-btn:disabled {
            background: #bdc3c7;
            cursor: not-allowed;
        }

        .google-btn {
            width: 100%;
            background: white;
            border: 2px solid #e1e8ed;
            padding: 0.75rem;
            border-radius: 8px;
            font-size: 1rem;
            cursor: pointer;
            display: flex;
            align-items: center;
            justify-content: center;
            margin-bottom: 1.5rem;
            transition: border-color 0.3s ease;
            font-family: inherit;
        }

        .google-btn:hover {
            border-color: #9b59b6;
        }

        .google-btn::before {
            content: 'G';
            width: 20px;
            height: 20px;
            background: linear-gradient(45deg, #4285f4, #ea4335, #fbbc05, #34a853);
            color: white;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            margin-right: 0.5rem;
            font-weight: bold;
            font-size: 0.8rem;
        }

        .signin-link {
            text-align: center;
            font-size: 0.9rem;
            color: #666;
        }

        .signin-link a {
            color: #9b59b6;
            text-decoration: none;
        }

        .signin-link a:hover {
            text-decoration: underline;
        }

        /* Right section welcome message */
        .welcome-content {
            text-align: center;
            color: white;
            max-width: 400px;
            padding: 2rem;
        }

        .welcome-content h2 {
            font-size: 2.5rem;
            margin-bottom: 1rem;
            font-weight: 600;
        }

        .welcome-content p {
            font-size: 1.1rem;
            line-height: 1.6;
            opacity: 0.9;
            margin-bottom: 2rem;
        }

        .features {
            list-style: none;
            text-align: left;
        }

        .features li {
            margin-bottom: 1rem;
            display: flex;
            align-items: center;
            font-size: 1rem;
        }

        .features li::before {
            content: '✓';
            background: rgba(255,255,255,0.2);
            color: white;
            width: 24px;
            height: 24px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            margin-right: 1rem;
            font-weight: bold;
        }

        @media (max-width: 768px) {
            .container {
                flex-direction: column;
            }
            
            .right-section {
                display: none;
            }
            
            .left-section {
                max-width: none;
            }

            .form-row {
                flex-direction: column;
                gap: 0;
            }
        }
    </style>