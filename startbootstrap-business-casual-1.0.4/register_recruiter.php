
<!-- mostly original code --> 

<?php

// configuration
     require("../startbootstrap-business-casual-1.0.4/config.php");

    // if user reached page via GET (as by clicking a link or via redirect)
    if ($_SERVER["REQUEST_METHOD"] == "GET")
    {
        // eer form
         render("registration_form.php");
    }
    // else if user reached page via POST (as by submitting a form via POST)
    if ($_SERVER["REQUEST_METHOD"] == "POST")
    {
        $company_code=$_POST["company_code"];
       // validate submission
        if (empty($_POST["username"]) or empty($_POST["password"]) or empty($_POST["confirm"]) 
        or empty($_POST["company"]) or empty($_POST["company_code"]))
        {
             apologize("Please fill out all the fields. Thank You!");  
        }
         else if(empty($_POST["email"]))
        {
            apologize("Please give us your email for updates");
        }
        else if(($company=CS50::query("Select * from companies where company_code=?", $company_code))==false)
        {
            apologize("Sorry, your company is not registered");
        }
    
        //add the user to the the database
        $new_insertion= 
            CS50::query(
                "INSERT INTO recruiter_userss (company, company_code, username, hash, email) 
                    VALUES (?, ?, ?, ?, ?)", $_POST["company"], $_POST["company_code"], $_POST["username"], crypt($_POST["password"]), $_POST["email"]);
    
       // insert new user into database
        
        if($new_insertion===false)
        {
        
        apologize("You're name was not inserted");
        }
        else
        {
            $rows= CS50::query("SELECT LAST_INSERT_ID() AS id");
            
            if ($rows !== false)
            {
                $_SESSION["id"] = $rows[0]["id"];
                redirect("events_for_recruiters.php");
            }
            else
            {
                apologize("Can't log in");
            }
        }
    }
?>