<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<nav class="navbar navbar-expand-lg navbar-light bg-light" style="position:fixed;z-index:999;width:100%;padding:15px;box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); font-size: 1.5rem;">
    <div class="container-fluid">
        <a class="navbar-brand" href="reader_main.html" style="font-size: 3rem; color:#007bff; font-weight:bold; margin-right: 20px;">My Library</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item">
                    <a class="nav-link" href="reader_books.html">Book Search</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="reader_info.html">Information</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="myborrow.html">My Borrowings</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="myoverdue.html">My Overdues</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="myreserve.html">My Reservation</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="reader_repasswd.html">Change Password</a>
                </li>
            </ul>
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="reader_info.html">${readercard.name}</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="login.html">Logout</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- Adding Bootstrap and jQuery CDN links -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
