<!DOCTYPE html>

<html>
<head>
  <title>4Society</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="/static/css/bootstrap.min.css">
</head>
<style>
  body {
    background-image: url("static/img/background.gif");
  }
  .imgtop {
		position: relative;
		height: 275px;
		overflow: hidden;
		background-repeat: no-repeat;
		background-size: cover;
		background-position: center;
		background-color: rgba(white,.15);
 		background-blend-mode: overlay;
		border-radius:4px 4px 0 0;
	}
  .imgbottom {
		position: relative;
		height: 200px;
		overflow: hidden;
		background-repeat: no-repeat;
		background-size: cover;
		background-position: center;
		background-color: rgba(white,.15);
 		background-blend-mode: overlay;
		border-radius:0 0 4px 4px;
    border-bottom: 1px solid  #ededed;
    border-left: 1px solid  #ededed;
    border-right: 1px solid  #ededed;
	}
  .card:hover{
    box-shadow: 5px 20px 30px rgba(0,0,0,0.2);
  }
</style>
<body>
{{ template "resources/navbar.tpl" }}
  <div class="container">
    <div class= "row">
      <div class="col-md-12">
        <h1 style="font-family: logo; color:#385b8c;text-align:center; font-size-adjust: 1.50;">4Society</h1>
        <h2 style="text-align: center">Make team, change the world</h2>
      </div>
    </div>
  </div>
  <div class="container" style="background-color:white; box-shadow: 5px 20px 30px rgba(0,0,0,0.2);">
    <div style="padding: 10px;" class="col-sm-12 col-xs-12">
        <div class="card">
          <form action="/project" method="get" >
            <div class="imgtop" style="background-image:url('http://lanacion.cl/wp-content/uploads/2018/02/Aton_157510.jpg')"></div>
            <div class="imgbottom" style="height: 150px;"><center>
              <h3><button type="submit" name="p" value='4'>Let's found my daughter</button></h3>
              <small><p style="text-transform: uppercase; color: gray">FOUND DISAPEARED TEENAGER</p></small>
              <b>81 <span class="glyphicon glyphicon-heart" style="color:red"></span></b>
            </center></div>
          </form> 
        </div>
      </div>

      <div style="padding: 10px;" class="col-sm-6 col-xs-12">
        <div class="card">
            <div class="imgtop" style="background-image:url('https://confilegal.com/wp-content/uploads/2016/05/Toro-de-la-Vega.jpg')"></div>
            <div class="imgbottom" ><center>
              <h3><button type="submit" name="p" value='4'>Castilla y León prohibits by Decree the death of the Toro de la Vega</button></h3>
              <small><p style="text-transform: uppercase; color: gray">The Governing Council of the Junta de Castilla y León has approved a Decree Law on Thursday prohibiting the killing of fighting bulls in popular and traditional bullfighting shows, which affects the 'Toro de Vega' held in the town of Tordesillas in Valladolid. September, the only show that kills the animal.</p></small>
              <b>124 <span class="glyphicon glyphicon-heart" style="color:red"></span></b>
            </center></div>
        </div>
      </div>

      <div style="padding: 10px;" class="col-sm-6 col-xs-12">
        <div class="card">
            <div class="imgtop" style="background-image:url('https://album.mediaset.es/eimg/2018/06/20/2cSY3Zlsoe9JU1w66sQvV5.jpg')"></div>
            <div class="imgbottom" ><center>
              <h3><button type="submit" name="p" value='4'>Congress liquidates the sun tax</button></h3>
              <small><p style="text-transform: uppercase; color: gray">The Congress has validated, a few hours ago, the real-decree law of urgent measures for the energy transition and the protection of consumers that proposes to eliminate the famous 'sun tax' of the PP and all the barriers to self-consumption.</p></small>
              <b>112 <span class="glyphicon glyphicon-heart" style="color:red"></span></b>
            </center></div>
        </div>
      </div>

  </div>
<br>
    <footer style="background-color:white; box-shadow: 2px 2px 46px 2px rgba(0,0,0,0.10);border-width:3px;border-color:black; text-align:center">
        <div class="container">
            <div class="col-sm-4">
                <small style="color:light-gray; font-weight: bold;">ABOUT</small>
                <p>Who we are?</p>
                <p>Impact</p>
            </div>
            <div class="col-sm-4">
                <small style="color:light-gray; font-weight: bold;">CONTACT</small>
                <p>contact@4society.org</p>
                <p>+34 666 66 66</p>
            </div>
            <div class="col-sm-4">
                <small style="color:light-gray; font-weight: bold;">SOCIAL</small>
                <p>IG: @4society</p>
                <p>TW: @4society</p>
            </div>
        </div>
    </footer> </body>
<script>
  if ({{.nam}} != null){
    document.getElementById("id02").style.display = "none";
    document.getElementById("id02.1").style.display = "none";
    document.getElementById("id03").style.display = "block";
  } else{
    document.getElementById("id02").style.display = "block";
    document.getElementById("id02.1").style.display = "block";
    document.getElementById("id03").style.display = "none";
  }
</script>
</html>
