<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="ab" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<%@ page import="java.util.List" %>
<%@ page import="com.adnan.trialproject.model.JobPost" %>
<%@ page import="com.adnan.trialproject.repo.JobRepo" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Job Post List</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
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

<ab:set var="jobPosts" value="${jobPosts}" />

<div class="container page-section">
    <h2 class="mb-4 text-center section-title">Job Post List</h2>

    <div class="row g-4">
        <ab:forEach var="jobPost" items="${jobPosts}">
            <div class="col-md-6">
                <div class="card glass-card h-100">
                    <div class="card-body">
                        <h5 class="card-title">${jobPost.postProfile}</h5>
                        <p class="card-text"><strong>Job-Id: </strong>${jobPost.postId}</p>
                        <p class="card-text"><strong>Description:</strong> ${jobPost.postDesc}</p>
                        <p class="card-text"><strong>Experience Required:</strong> ${jobPost.reqExperience} years</p>
                        <p class="card-text mb-2"><strong>Tech Stack Required:</strong></p>
                        <div>
                            <ab:forEach var="tech" items="${jobPost.postTechStack}">
                                <span class="tech-chip">${tech}</span>
                            </ab:forEach>
                        </div>
                    </div>
                    <div class="card-footer border-0 bg-transparent"></div>
                </div>
            </div>
        </ab:forEach>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>
</body>
</html>