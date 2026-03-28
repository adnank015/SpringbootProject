<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Adnan Job Portal</title>
    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
            crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="style.css">
    <link rel="stylesheet" type="text/css" href="style1.css">
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light">
    <div class="container">
        <a class="navbar-brand fs-4 fw-semibold" href="#">Adnan Job Portal Web App</a>
        <button class="navbar-toggler" type="button"
                data-bs-toggle="collapse" data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon" style="filter: invert(1);"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item"><a class="nav-link" href="home">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="viewalljobs">All Jobs</a></li>
                <li class="nav-item"><a class="nav-link" href="https://www.linkedin.com/in/adnan-khan-b556b62a1">Contact</a></li>
            </ul>
        </div>
    </div>
</nav>

<div class="container page-section">
    <div class="glass-card p-4 p-md-5 mb-4 text-center">
        <h2 class="section-title">Welcome to Adnan Job Portal</h2>
        <p class="text-muted-soft mb-0">Find jobs, post roles, and manage hiring in one place.</p>
    </div>

    <div class="row g-4">
        <div class="col-md-6">
            <div class="card glass-card h-100">
                <div class="card-body text-center d-flex flex-column justify-content-center">
                    <h5 class="card-title mb-3">View All Jobs</h5>
                    <form action="/viewalljobs" method="get">
                        <button type="submit" class="btn btn-primary">View</button>
                    </form>
                </div>
            </div>
        </div>

        <div class="col-md-6">
            <div class="card glass-card h-100">
                <div class="card-body text-center d-flex flex-column justify-content-center">
                    <h5 class="card-title mb-3">Add Job</h5>
                    <form action="/addjob" method="get">
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>
</body>
</html>