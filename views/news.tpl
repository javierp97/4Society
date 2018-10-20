<!DOCTYPE html>
<html lang="es">

<head>
  <title>Projects</title>
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
		height: 175px;
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
  .searchButton {
    position: absolute;  
    left: -5px;
    top: 18px;
    width: 40px;
    height: 36px;
    border: none;
    background: none;
    text-align: center;
    color: gray;
    font-size: 20px;
  }
</style>
<body>
  {{ template "resources/navbar.tpl" }}
  <div class="container" style="background-color:white; box-shadow: 5px 20px 30px rgba(0,0,0,0.2); height: 100%;">
    <div class="col-sm-12" style="border-bottom:1px solid #ededed; color:gray;">
      <span class="glyphicon glyphicon-search searchButton"></span> 
      <input type="text" placeholder="BUSCAR..." name="search" style="border:none">
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

      <div style="padding: 10px;" class="col-sm-6 col-xs-12">
        <div class="card">
            <div class="imgtop" style="background-image:url('https://es.greenpeace.org/es/wp-content/uploads/sites/3/2018/08/montaje_no_plastic-1200x675.jpg')"></div>
            <div class="imgbottom" ><center>
              <h3><button type="submit" name="p" value='4'>Plastic straws: thirteen million every day</button></h3>
              <small><p style="text-transform: uppercase; color: gray">A daily object, with a few minutes of use and that can take up to 500 years to decompose in our environment, causing very serious damage to marine ecosystems. Between 40-60% of the turtles ingest plastics and that in some species of birds this percentage even rises up to 93%. More than a million birds and more than 100,000 marine mammals die every year as a result of all the plastics that reach the sea.</p></small>
              <b>98 <span class="glyphicon glyphicon-heart" style="color:red"></span></b>
            </center></div>
        </div>
      </div>

      <div style="padding: 10px;" class="col-sm-6 col-xs-12">
        <div class="card">
            <div class="imgtop" style="background-image:url('https://cdn.discover-the-world.com/app/uploads/2018/05/antarctica-wildlife-adelie-penguins-icehopping-istock-800x600-c-default.jpg')"></div>
            <div class="imgbottom" ><center>
              <h3><button type="submit" name="p" value='4'>UK government backs creation of Antarctic wildlife reserve</button></h3>
              <small><p style="text-transform: uppercase; color: gray">The massive 1.8m sq km reserve – five times the size of Germany – would ban all fishing in a vast area of the Weddell Sea and parts of the Antarctic peninsula, safeguarding species including penguins, killer whales, leopard seals and blue whales.</p></small>
              <b>104 <span class="glyphicon glyphicon-heart" style="color:red"></span></b>
            </center></div>
        </div>
      </div>

      <div style="padding: 10px;" class="col-sm-6 col-xs-12">
        <div class="card">
            <div class="imgtop" style="background-image:url('https://assets.change.org/photos/4/ma/fp/YiMafPLNeQmRjJA-800x450-noPad.jpg')"></div>
            <div class="imgbottom" ><center>
              <h3><button type="submit" name="p" value='4'>Plastic recycling industry's problems costing councils up to £500,000 a year </button></h3>
              <small><p style="text-transform: uppercase; color: gray">

Major problems in the plastic recycling industry are costing local councils in England up to £500,000 extra a year, as they struggle to deal with the continuing fallout from import bans imposed by countries who are no longer able to take the UK’s waste. </p></small>
              <b>144 <span class="glyphicon glyphicon-heart" style="color:red"></span></b>
            </center></div>
        </div>
      </div>

      <div style="padding: 10px;" class="col-sm-6 col-xs-12">
        <div class="card">
            <div class="imgtop" style="background-image:url('https://cdn.road.cc/sites/default/files/styles/main_width/public/images/News/Bike%20and%20bus%20in%20Oxford%20(CC%20licensed%20image%20by%20tejvanphotos%3AFlickr).jpg')"></div>
            <div class="imgbottom" ><center>
              <h3><button type="submit" name="p" value='4'>UK is endangering people's health by denying their right to clean air, says UN </button></h3>
              <small><p style="text-transform: uppercase; color: gray">The UK government is putting the health of millions of its citizens at risk by failing to tackle the country’s air pollution crisis, according the UN’s special rapporteur on human rights and the environment.</p></small>
              <b>129 <span class="glyphicon glyphicon-heart" style="color:red"></span></b>
            </center></div>
        </div>
      </div>
  </div>
</body>
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