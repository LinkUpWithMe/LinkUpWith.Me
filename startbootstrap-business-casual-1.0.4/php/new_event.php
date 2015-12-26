<?php
// Mostly all original code 
//include config.php
require("../startbootstrap-business-casual-1.0.4/config.php");


//if form was submitted
if($_SERVER["REQUEST_METHOD"]=="POST")
{
    //If no stock was submitted
    if(empty($_POST["company"] or $_POST["company_code"]))
    {
    apologize("You must specify what company you work for");
    }
    else
    {
    $query=CS50::query("INSERT INTO events(company, company_code, user_id, event_date, event_time, school, location) VALUES(?,?,?,?,?,?,?)", $_POST["company"], $_POST["company_code"], $_SESSION["id"], $_POST["date"], $_POST["time"],$_POST["school"],$_POST["location"] );
    
    if($query!==false)
    {
        redirect("events_for_recruiters.php");
    }
    }
}
else
{
    render("event_submission_form");
}
?>