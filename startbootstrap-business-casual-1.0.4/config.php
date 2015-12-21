<?php

    /**
     * config.php
     *
     * Computer Science 50
     * Problem Set 7
     *
     * Configures app.
     */

    // display errors, warnings, and notices
    ini_set("display_errors", true);
    error_reporting(E_ALL);

    // requirements
    require("helpers.php");

    // CS50 Library
    require("../startbootstrap-business-casual-1.0.4/library51-php-5/CS50.php");
    CS50::init(__DIR__ . "/config.json");

    // enable sessions
    session_start();

    // require authentication for all pages except /login.php, /logout.php, and /register.php
    if (!in_array($_SERVER["PHP_SELF"], ["/login.php", "/logout.php", "/register_recruiter.php", "/recruitersignup.php","/registration_company.php","/events_for_recruiters.php", "/register_students.php"]))
    {
        if (empty($_SESSION["id"]))
        {
            redirect("Tryit.html");
        }
    }

?>