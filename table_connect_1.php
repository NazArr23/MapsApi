<?php 
    $a= array();
    $i=0;

    include "dbconnect.php";

    $sql= mysqli_query($db,"SELECT * FROM busstand");

    while( $row =mysqli_fetch_array($sql)){
      $b=array();

      $b[]=$row["id"];
      $b[]=$row["name"];
      $b[]=$row["lat"];
      $b[]=$row["lng"];
      $b[]=$row["type"];        
         $a[$i]=$b;
         $i++;
     }
    
?>