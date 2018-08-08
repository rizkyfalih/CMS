<?php

  ob_start();

  // Local Database
  // $db['db_host'] = "localhost";
  // $db['db_user'] = "root";
  // $db['db_pass'] = "";
  // $db['db_name'] = "cms";

  // Heroku Clear DB
  $url = parse_url(getenv("CLEARDB_DATABASE_URL"));
  $db['db_host'] = $url["host"];
  $db['db_user'] = $url["user"];
  $db['db_pass'] = $url["pass"];
  $db['db_name'] = substr($url["path"], 1);


  foreach ($db as $key => $value) {
    define(strtoupper($key), $value);
  }


  $connection = mysqli_connect(DB_HOST,DB_USER,DB_PASS,DB_NAME);


 ?>
