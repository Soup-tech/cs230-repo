<?php
require 'includes/header.php';
?>

<main>
    <link rel="stylesheet" href="css/login.css">

    <div class="bg-cover">
        <div class="container">
            <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img class="d-block w-100" src="images/to-moon.jpg" alt="First slide">
                    </div>
                    <div class="carousel-item">
                        <img class="d-block w-100" src="images/much-loaf.jpg" alt="Second slide">
                    </div>
                    <div class="carousel-item">
                        <img class="d-block w-100" src="images/much-ram.jpg" alt="Third slide">
                    </div>
                </div>
                <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>

        <div class="h-40 center-me">
            <div class="my-auto">
                <form class="form-signin" action="includes/login-helper.php" method="post">
                    <h2>Login</h2>

                    <p class="hint-text">Create account!</p>

                    <input type="text" class="form-control" name="uname" placeholder="Username / Email" required
                        autofocus>

                    <label form="inputPassword" class="sr-only">Password</label>
                    <input type="password" id="inputPassword" class="form-control" name="pwd" placeholder="Password"
                        required>

                    <label form="inputPassword" class="sr-only">Confirm Password</label>
                    <input type="password" id="inputPassword" class="form-control" name="con-pwd"
                        placeholder="Confirm Password" required>

                    <button class="btn btn-lg btn-outline-danger btn-block" name="signup-submit" type="submit">Sign
                        in</button>
                    <p class="mt-5 mb-3 text-muted">&copy; 2020-9999</p>

                </form>
            </div>
        </div>

    </div>

</main>