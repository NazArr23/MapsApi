<?php
    $z = array();
    $n=0;
    include "dbconnect.php";
    $sql2= mysqli_query($db,"SELECT * FROM `busroute`");

    while( $row2 =mysqli_fetch_array($sql2)){
      $y=array(); 
      $y[]=$row2["id"];
      $y[]=$row2["name"];
      $y[]=$row2["lat"];
      $y[]=$row2["lng"];
      $y[]=$row2["type"];
          
      $z[$n]=$y;
      $n++;
     }
?>