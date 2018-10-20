
    <meta name='viewport' content='initial-scale=1,maximum-scale=1,user-scalable=no' />
    <script src='https://api.tiles.mapbox.com/mapbox-gl-js/v0.44.2/mapbox-gl.js'></script>
    <link href='https://api.tiles.mapbox.com/mapbox-gl-js/v0.44.2/mapbox-gl.css' rel='stylesheet' />

    <script src='https://api.mapbox.com/mapbox-gl-js/plugins/mapbox-gl-geocoder/v2.3.0/mapbox-gl-geocoder.min.js'></script>
    <link rel='stylesheet' href='https://api.mapbox.com/mapbox-gl-js/plugins/mapbox-gl-geocoder/v2.3.0/mapbox-gl-geocoder.css' type='text/css' />
    <script src='https://api.mapbox.com/mapbox-gl-js/plugins/mapbox-gl-draw/v1.0.0/mapbox-gl-draw.js'></script>
    <link rel='stylesheet' href='https://api.mapbox.com/mapbox-gl-js/plugins/mapbox-gl-draw/v1.0.0/mapbox-gl-draw.css' type='text/css'/>
    <style>
        body { margin:0; padding:0; }
        #map { position:absolute; top:0; bottom:0; width:100%; height: 100%}
        .marker {
            background-image: url('mapbox-icon.png');
            background-size: cover;
            width: 50px;
            height: 50px;
            border-radius: 50%;
            cursor: pointer;
        }
 


    .geocoder {
        height: 100px;
        width: 150px;
        position: absolute;
        top: 20px;
        left: 10px;
        background-color: rgba(255, 255, 255, .9);
        padding: 15px;
        text-align: left;
        font-family: 'Arial';
        margin: 0;
        font-size: 13px;
    }
    #instructions {
        position:absolute;
        height: 70%;
        margin:20px;
        width: 25%;
        top:0;
        bottom:0;
        padding: 20px;
        background-color: rgba(255,255,255,0.9);
        overflow-y: scroll;
        font-family: sans-serif;
    }

</style>

<!--  the map -->
<div id='map'></div>
<!-- geocoder search input -->


<script>
    mapboxgl.accessToken = 'pk.eyJ1IjoiZmFraHIiLCJhIjoiY2pseXc0djE0MHBibzN2b2h4MzVoZjk4aSJ9.ImbyLtfsfSsR_yyBluR8yQ';
    var instructions = document.getElementById('instructions');
    var map = new mapboxgl.Map({
        container: 'map', // container id
        style: 'mapbox://styles/mapbox/streets-v9', //hosted style id
        center: [ 2.1648800,41.3922500], // starting position
        zoom: 13, // starting zoom
        minZoom: 11 // keep it local
    });
    //  geocoder here
    var geocoder = new MapboxGeocoder({
        accessToken: mapboxgl.accessToken,
        // limit results to Australia
        //country: 'IN',
    });

    // After the map style has loaded on the page, add a source layer and default
    // styling for a single point.
    map.on('load', function() {
        // Listen for the `result` event from the MapboxGeocoder that is triggered when a user
        // makes a selection and add a symbol that matches the result.
        geocoder.on('result', function(ev) {
            console.log(ev.result.center);

        });
    });
    
    
//var el = document.createElement('div');
    //el.className = 'marker';
    

  // make a marker for each feature and add to the map
    //new mapboxgl.Marker(el).setLngLat([ 2.1125383,41.3927689]).addTo(map);
    
    
  

   
</script>