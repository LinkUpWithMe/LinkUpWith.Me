<?php
    //Half from Pset7, half original code 
    
    // configuration
    require("../startbootstrap-business-casual-1.0.4/config.php");


    // if user reached page via GET (as by clicking a link or via redirect)
    if ($_SERVER["REQUEST_METHOD"] == "GET")
    {
        // else render form
        render("login_form.php", ["title" => "Log In"]);
    }

    // else if user reached page via POST (as by submitting a form via POST)
    else if ($_SERVER["REQUEST_METHOD"] == "POST")
    {
        // validate submission
        if (empty($_POST["username"]))
        {
            apologize("You must provide your username.");
        }
        else if (empty($_POST["password"]))
        {
            apologize("You must provide your password.");
        }

        $username=$_POST["username"];
        
        // query database for user
        $rows = CS50::query("SELECT * FROM users_students WHERE username = ?", $_POST["username"]);
         $rows2 = CS50::query("SELECT * FROM recruiter_userss WHERE username = ?", $_POST["username"]);
         
        if($rows==false AND $rows2==false)
        {
            apologize("We Cannot Log You In at This Time");
        }

        // if we found user, check password
        if(count($rows) == 1)
        {
            if (password_verify($_POST["password"], $rows[0]["hash"]))
            {
                // remember that user's now logged in by storing user's ID in session
                $_SESSION["id"] = $rows[0]["id"];

                // redirect to students
                redirect("students.php");
            }
            apologize("sorry buddy");
        }
        else if(count($rows2) == 1)
        {
            if (password_verify($_POST["password"], $rows2[0]["hash"]))
            {
                // remember that user's now logged in by storing user's ID in session
                $_SESSION["id"] = $rows2[0]["id"];

                // redirect to events
                redirect("events_for_recruiters.php");
            }
            apologize("sorry buddy");
        }
        
    }

?>
