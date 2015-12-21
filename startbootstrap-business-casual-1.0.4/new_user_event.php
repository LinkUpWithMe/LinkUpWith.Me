<?php
    // Mostly original code
    // configuration
    require("../startbootstrap-business-casual-1.0.4/config.php"); 
    
    //query username from users and stock from recruiter_userss
    $rows = CS50::query("SELECT company, event_date, event_time FROM events WHERE school = ? AND company= ?", $_POST["school"], $_POST["company"]);
 if($rows!=false)
 {
   $new_insertion= 
            CS50::query(
                "INSERT INTO user_events (company, event_time, event_date, user_id) 
                    VALUES (?, ?, ?, ?)", $_POST["company"], $rows[0]["event_time"], $rows[0]["event_date"], $_SESSION["id"]
            );
    
    if($new_insertion!==false)
    {
      redirect("students.php");
    }
}
else
{
    apologize("sorry, there is no event for this company");
}

?>
