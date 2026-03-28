<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.adnan.trialproject.model.JobPost" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Job Post Details</title>
    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
            crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light">
    <div class="container">
        <a class="navbar-brand fs-4 fw-semibold" href="#">Adnan Job Portal Web App</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
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
    <h2 class="mb-4 text-center section-title">Job Post Details</h2>

    <div class="row justify-content-center">
        <div class="col-md-8 col-lg-6">
            <div class="card glass-card">
                <div class="card-body">
                    <h5 class="card-title">${jobPost.postProfile}</h5>
                    <p class="card-text"><strong>Job-Id:</strong> ${jobPost.postId}</p>
                    <p class="card-text"><strong>Description:</strong> ${jobPost.postDesc}</p>
                    <p class="card-text"><strong>Experience Required:</strong> ${jobPost.reqExperience} years</p>
                    <p class="card-text mb-2"><strong>Tech Stack Required:</strong></p>
                    <div>
                        <c:forEach var="tech" items="${jobPost.postTechStack}">
                            <span class="tech-chip">${tech}</span>
                        </c:forEach>
                    </div>
                </div>
                <div class="card-footer border-0 bg-transparent"></div>
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