


<?php

//original code
// configuration
     require("../startbootstrap-business-casual-1.0.4/config.php");

    // if user reached page via GET (as by clicking a link or via redirect)
    if ($_SERVER["REQUEST_METHOD"] == "GET")
    {
        // 
         render("registration_form_student.php");
    }
    // else if user reached page via POST 
    if ($_SERVER["REQUEST_METHOD"] == "POST")
    {
        $company_code=$_POST["company_code"];
       // validate submission
        if (empty($_POST["username"]) or empty($_POST["password"]) or empty($_POST["confirm"]) 
        or empty($_POST["school"]) or empty($_POST["email"]))
        {
             apologize("Please fill out all the fields. Thank You!");  
        }
         else if(($_POST["password"]!=$_POST["confirm"]))
        {
            apologize("make sure you password and you confirmation match");
        }
    
        //add the user to the the database
        $new_insertion= 
            CS50::query(
                "INSERT INTO users_students (school, username, hash, email, gpa, major, interest) 
                    VALUES (?, ?, ?, ?, ?, ?, ?)", $_POST["school"], $_POST["username"], crypt($_POST["password"]), $_POST["email"], $_POST["gpa"], $_POST["major"], $_POST["interest"]);
    
       // insert new user into database
        
        if($new_insertion===false)
        {
        
        apologize("Sucks to be you kid");
        }
        else
        {
            $rows= CS50::query("SELECT LAST_INSERT_ID() AS id");
            
            if ($rows !== false)
            {
                $_SESSION["id"] = $rows[0]["id"];
                redirect("students.php");
            }
            else
            {
                apologize("Can't log in");
            }
        }
    }
?>