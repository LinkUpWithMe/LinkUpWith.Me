<?php
    // mostly original code 
    // configuration
    require("../startbootstrap-business-casual-1.0.4/config.php"); 
    
    // if user reached page via GET (as by clicking a link or via redirect)
    if ($_SERVER["REQUEST_METHOD"] == "GET")
    {
        // else render form
        render("recruiters.html", ["title" => "buy"]);
    }

    // else if user reached page via POST (as by submitting a form via POST)
    else if ($_SERVER["REQUEST_METHOD"] == "POST")
    {
        // Record Input
        CS50::query("INSERT INTO recruiter_update(FirstName, LastName, Email, Company) VALUES (?, ?, ?,?)",$_POST["FirstName"], $_POST["LastName"], $_POST["Email"], $_POST["Company"]);
    }  
    redirect("/")
?>