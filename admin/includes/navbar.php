<nav class="navbar navbar-expand-lg navbar-dark custom-bg mb-3">
    <div class="container">

        <a class="navbar-brand" href="index.php"><img src="../assets/icons/bok.JPG" height="50"> Admin Dashboard</a>

        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarText">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item">
                    <a class="nav-link" href="../index.php">View Site</a>
                </li>
            </ul>
        </div>

        <ul class="nav">

            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" style="cursor:pointer;">Account</a>
                <div class="dropdown-menu">
                    <a class="dropdown-item" href="index.php">Dashboard</a>
                    <a class="dropdown-item" href="profile.php">My Profile</a>
                    <a class="dropdown-item" href="change_password.php">Change Password</a>
                </div>
            </li>

            <li class="nav-item">
                <a class="nav-link" href="../logout.php">Logout</a>
            </li>

        </ul>

    </div>
</nav>