<?php
   //  Everything is original 

    // configuration
    require("../startbootstrap-business-casual-1.0.4/config.php"); 
    
    //query username from users and stock from recruiter_userss
    $user = CS50::query("SELECT username FROM recruiter_userss WHERE id = ?", $_SESSION["id"]);
    $rows = CS50::query("SELECT school, location, event_date, event_time FROM events WHERE user_id = ?", $_SESSION["id"]);
    
    $events=[];
    
    //store username and cash in separate variables
    $users_name=$user[0]["username"];

    
    foreach($rows as $row)
    {
          
          $events[]=[
            "school"=>$row["school"],
            "location"=>$row["location"],
            "time" => $row["event_time"],
            "date"=>$row["event_date"],
        ];

    }
    // render
    render("recruiting.php",["username"=>$users_name, "events"=>$events]);

?>
