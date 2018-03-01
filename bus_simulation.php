<!DOCTYPE html>
<html>
    
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>GETTING STARTED WITH BRACKETS</title>
        <meta name="description" content="An interactive getting started guide for Brackets.">
        <link rel="stylesheet" href="main.css">
        
        <?php 
            include "table_connect_2.php";
            include "table_connect_1.php";
        ?> 
    </head>
<body>
<button onclick="store(9,2,1000)">Try it</button>
<script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?key=AIzaSyDY4ysgx5x7V4nx6x05uJeMB65E_07TCr4"></script>
<script type="text/javascript">
     function store(m,k,mas)
            {
                if(k==0)
                {
                    time = mas;
                }
                if(k==1)
                {
                    temp = m;
                    
                }
                if(k==2)
                {
                    alert('You have ' + temp + ' bus stop left before arriving to ispace estimation time: ' + time+ ' seconds');
                }
            }
</script>
<script type="text/javascript">
var temp;
var time;
var markersbs = [
        <?php for($i=0;$i<sizeof($a);$i++){ $j=$i+1;?>
        [
            'Busstand',
           '<p><a href=""><?php echo $a[$i][1]; ?></a></p>',
            <?php echo $a[$i][2];?>,
            <?php echo $a[$i][3];?>,
        ]<?php if($j!=sizeof($a))echo ","; }?>
    ];    

//for busroute
var markers = [
        <?php for($i=0;$i<sizeof($z);$i++){ $j=$i+1;?>
        [
            'Busroute',
            '<p><a href=""><?php echo $z[$i][1]; ?></a></p>',
            <?php echo $z[$i][2];?>,
            <?php echo $z[$i][3];?>,
            
        ]<?php if($j!=sizeof($z))echo ","; }?>
    ];





//general setting up the maps and define all the image used
window.onload = function () {

        //delay if the data in the busroute and busstand is the same
        var p;
        tim = 450;
        store(3,1,30);
        store(3,0,tim);
        var mapOptions = {
            center: new google.maps.LatLng(markersbs[2][2], markersbs[2][3]),
            zoom: 18,
            mapTypeId: google.maps.MapTypeId.ROADMAP
        };
        var infoWindow = new google.maps.InfoWindow();
        var map = new google.maps.Map(document.getElementById("dvMap"), mapOptions);
        var i = 0;
        var j =0;
        var image = 'icon_2.png';
        var image2 = 'icon_4_4_1.png';
        var marker;
//markers for the busstand
        for (j = 0; j < markersbs.length; j++) { 
        var databs = markersbs[j]
        var myLatlng = new google.maps.LatLng(databs[2], databs[3]);
        var markerbs = new google.maps.Marker(
            {
                position: myLatlng,
                map: map,
                icon: image,
                //title: markersbs[j][1],
            });
        (function (markerbs, data) 
            {
                google.maps.event.addListener(markerbs, "click", function (e) {
                    //infoWindow.setContent(markersbs[j][1]);
                    //infoWindow.open(map, markerbs);
                });
            })(markerbs, databs);
            }

//markers for the bussroute
    var interval = setInterval(function () {
            var data = markers[i];
            //alert(markersbs[2][1]); ni nama
            var myLatlng = new google.maps.LatLng(data[2], data[3]);
            if (marker && marker.setMap) {
                marker.setMap(null);
            }
            //var temp;
            for(var x=0;x<markersbs.length;x++)
                {
                    if(markers[i][2]===markersbs[x][2] && markers[i][3]===markersbs[x][3])
                    {

                        sleep(1000);
                        m = x + 2;
                        y = markersbs.length-m;
                        if (y===0)
                            {   //tim = m * 100;
                                tim = 680; // ispace to obyu
                                store(m,1,tim);
                                store(m,0,tim);
                                //alert('You have ' + m + ' bus stop left before arriving to ispace ');

                                //alert('You have ' + z + ' bus stop left before arriving to ispace k' +m +y);
                                break;
                            }
                        else if(y<0)
                            {
                                m=m-2;
                                tim = 600; // obyu to kondo
                                store(m,1,tim);
                                store(m,0,tim);
                                //alert('You have ' + m + ' bus stop left before arriving to ispace ');
                                break;
                            }
                        else
                            {
                                tim = y*150; // kondo to empire & empire to ispace
                                store(y,1,tim);
                                store(m,0,tim);
                            }
                        //alert('You have ' + y + ' bus stop left before arriving to ispace ');
                    }
                    tim--;
                    store(0,0,tim);
                       
                }
           
            function sleep(milliseconds) {
                            var start = new Date().getTime();
                            for (var i = 0; i < 1e7; i++) {
                                if ((new Date().getTime() - start) > milliseconds){
                                    break;
                                }
                            }
                        }
            marker = new google.maps.Marker({

                position: myLatlng,
                map: map,
                icon: image2,
                title: data[0],
                animation: google.maps.Animation.CUSTOM_FADE

            });            
            (function (marker, data) {
                        google.maps.event.addListener(marker, "click", function (e) {
                            infoWindow.setContent(data[0]);
                            infoWindow.open(map,marker);
                        });
                
            })(marker, data);
            i++;


            if (i == markers.length) {
                //clearInterval(interval);
                i = 0;
            }
        },1000);
}

</script>
<div id="dvMap" style="width: 100%; height: 500px">
</div>
</body>