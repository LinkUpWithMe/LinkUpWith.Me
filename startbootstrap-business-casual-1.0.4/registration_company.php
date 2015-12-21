<!-- original code --> 

<?php

// configuration
     require("../startbootstrap-business-casual-1.0.4/config.php");

    // if user reached page via GET (as by clicking a link or via redirect)
    if ($_SERVER["REQUEST_METHOD"] == "GET")
    {
        // eer form
         render("register_company_company.php");
    }
    // else if user reached page via POST (as by submitting a form via POST)
    if ($_SERVER["REQUEST_METHOD"] == "POST")
    {
       // validate submission
        if (empty($_POST["company"]) or empty($_POST["company_code"]))
        {
             apologize("Sorry");  
        }
    
        //add the user to the the database
        $new_insertion= 
            CS50::query(
                "INSERT INTO companies (company, company_code) 
                    VALUES (?, ?)", $_POST["company"], $_POST["company_code"]
            );
    
       // insert new user into database
        
        if($new_insertion===false)
        {
        
        apologize("Cannot log you in at this time");
        }
        else
        {
          redirect("register_company.php");
        }
    }
?>