<?php

    require(__DIR__ . "/config.1.php");
    // <!-- Partially original--> 
    // TODO: search database for places matching $_GET["geo"], store in $places
    $answers = CS50:: query("SELECT answer FROM faq3 WHERE MATCH (keyword0, keyword1, keyword2, keyword3, keyword4, keyword5, keyword6, keyword7, keyword8) AGAINST (?)", $_POST["question"]);
    if($answers==false)
    {
        $answer="There is currently no content on your question";
        render("answer.php", ["answers" => $answer]);
    }
    
    $answer=$answers[0]["answer"]; 
    // output places as JSON (pretty-printed for debugging convenience)
    render("answer.php", ["answers" => $answer]);

?>