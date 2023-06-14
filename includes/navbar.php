<nav class="navbar navbar-expand-lg navbar-dark custom-bg sticky-top">
    <div class="container">

        <a class="navbar-brand" href="admin/books.php"><img src="./assets/icons/bok.JPG" height="50"> eLibrary Catalog</a>

        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse d-lg-flex justify-content-lg-between" id="navbarText">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item">
                    <a class="nav-link" href="index.php">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="about.php">About</a>
                </li>
            </ul>

            <form class="d-none d-lg-inline" action="index.php" method="get" style="width:700px;">
                <div class="input-group">
                    <input type="search" name="search" placeholder="Search books here..." class="form-control" <?php if (isset($_GET['search'])) {
                                                                                                                    echo "value='" . $_GET['search'] . "'";
                                                                                                                } ?>>
                    <button class="btn btn-light border">
                        <img src="assets/icons/search.svg">
                    </button>
                </div>
            </form>

            <ul class="nav">

                <?php
                if (isset($_SESSION['id'])) {
                ?>

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" style="cursor:pointer;">Account</a>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="dashboard.php">Dashboard</a>
                            <a class="dropdown-item" href="profile.php">My Profile</a>
                            <a class="dropdown-item" href="change_password.php">Change Password</a>
                        </div>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="logout.php">Logout</a>
                    </li>

                <?php
                } else {
                ?>

                    <li class="nav-item">
                        <a class="nav-link" href="login.php">Login</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="signup.php">Register</a>
                    </li>

                <?php
                }
                ?>

            </ul>

        </div>

    </div>
</nav>