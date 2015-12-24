<!-- original code --> 

<?php
    
    // configuration
    require("../startbootstrap-business-casual-1.0.4/config.php"); 
    
    // if user reached page via GET (as by clicking a link or via redirect)
    if ($_SERVER["REQUEST_METHOD"] == "GET")
    {
        // else render form
        render("students.html", ["title" => "buy"]);
    }

    // else if user reached page via POST (as by submitting a form via POST)
    else if ($_SERVER["REQUEST_METHOD"] == "POST")
    {
        // Record Input
        CS50::query("INSERT INTO student_update (FirstName, LastName, Email, University) VALUES (?, ?, ?,?)",$_POST["FirstName"], $_POST["LastName"], $_POST["Email"], $_POST["University"]);
    }  
    redirect("/")
?>