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
   
    function render($view, $values = [])
    {
        // if view exists, render it
        if (file_exists("{$view}"))
        {
            // extract variables into local scope
            extract($values);

            // render view (between header and footer)
            require("{$view}");
            exit;
        }

        // else err
        else
        {
            trigger_error("Invalid view: {$view}", E_USER_ERROR);
        }
    }

    // CS50 Library
    require("../startbootstrap-business-casual-1.0.4/library51-php-5/CS50.php");
    CS50::init(__DIR__ . "/config.json");

    // enable sessions
    session_start();

?>