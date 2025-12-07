<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Green Garden - Login</title>
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@100..900&display=swap" rel="stylesheet">
    
    <style>
        body {
            font-family: 'Inter', sans-serif;
            background-color: #f0fdf4;
        }
        .bg-primary-green { background-color: #dcfce7 !important; }
        .text-primary-green { color: #15803d !important; }
        .text-dark-green { color: #14532d !important; }
        .btn-green {
            background-color: #15803d;
            color: white;
            border: none;
            transition: all 0.2s;
        }
        .btn-green:hover {
            background-color: #14532d;
            color: white;
            transform: translateY(-2px);
        }
        .sticky-top { top: 0; z-index: 1020; }
        .card-login { max-width: 400px; margin: auto; }
    </style>
</head>
<body>

    <header class="bg-white shadow-sm sticky-top">
        <nav class="navbar navbar-expand-lg bg-white container py-3">
            <a class="navbar-brand text-3xl fw-bold text-primary-green d-flex align-items-center" href="index.html">
                🌿 Green Garden
            </a>
            
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            
            <div class="collapse navbar-collapse d-flex justify-content-end" id="navbarNav">
                <ul class="navbar-nav align-items-center">
                    <li class="nav-item">
                        <a class="nav-link text-secondary fw-medium me-3" href="index.html">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-secondary fw-medium me-3" href="index.html#products">Plants</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-secondary fw-medium me-3" href="#">Pots & Accessories</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-secondary fw-medium me-3" href="#">Care Tips</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-secondary fw-medium me-3 active" href="login.html">Login</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-secondary fw-medium me-3" href="register.html">Register</a>
                    </li>
                    <li class="nav-item ms-2">
                        <a class="nav-link btn btn-green rounded-pill py-2 px-4 shadow-sm" href="cart.html">
                            Cart (0)
                        </a>
                    </li>
                </ul>
            </div>
        </nav>
    </header>

    <main class="container py-5">
        <div class="card card-login p-4 shadow-lg border-0">
            <h2 class="text-center fw-bold text-dark-green mb-4">Welcome Back</h2>
            <form>
                <div class="mb-3">
                    <label for="email" class="form-label fw-medium">Email Address</label>
                    <input type="email" class="form-control" id="email" required>
                </div>
                <div class="mb-4">
                    <label for="password" class="form-label fw-medium">Password</label>
                    <input type="password" class="form-control" id="password" required>
                    <a href="#" class="float-end small text-primary-green text-decoration-none mt-1">Forgot Password?</a>
                </div>
                
                <button type="button" class="btn btn-green btn-lg w-100 rounded-pill mt-3" 
                        onclick="login()">
                    Login Now
                </button>

            </form>
            <p class="text-center mt-3 text-muted">
                Don't have an account? <a href="register.html" class="text-primary-green fw-semibold text-decoration-none">Register now</a>
            </p>
        </div>
    </main>

    <footer class="bg-primary-green py-3 mt-5">
        <div class="container text-center text-dark-green">
            <p class="small mb-0">&copy; 2025 Green Garden Store. All rights reserved.</p>
        </div>
    </footer>
    <script>
        function login() {
            //Lấy username và password nhập vào
            let username = document.getElementById('email').value;
            let password = document.getElementById('password').value;
            //Lấy username và password đã lưu
            const savedUsername = localStorage.getItem('email');
            const savedPassword = localStorage.getItem('password');
            if (username === savedUsername && password === savedPassword) {
                alert('Đăng nhập thành công');
            }

        }
    </script>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
