<!-- original code --> 

<?php

    // configuration
    require("../startbootstrap-business-casual-1.0.4/config.php"); 
    
    //query username from company events from recruiter_userss
    $rows = CS50::query("SELECT company, event_date, event_time FROM user_events WHERE user_id = ?", $_SESSION["id"]);
    
    $events=[];
    

    
    foreach($rows as $row)
    {
          
          $events[]=[
            "company"=>$row["company"],
            "time" => $row["event_time"],
            "date"=>$row["event_date"],
        ];

    }
    // render
    render("student_events.php",["events"=>$events]);

?>
