var express = require('express')
var app = express();

var GabrielAldana = {
  middle_name: "Emmanuel",
  Born: "Washington Heights, NY",
  played: "first base, shortstop, thirdbase, DH",
  drafted: "1993",
  home_runs_2007: 54,
  mlb_debut: 1994
}

app.get('/', function(req, res){
  res.json({msg: GabrielAldana});
});

console.log('listening on port 3000!');

app.get('/Alex_Rodriguez', function(req, res){
  res.json({correct: "You got it"});
})

app.get('/Alex_Emmanuel_Rodriguez', function(req, res){
  res.json({correct: "You got it"});
})

app.get('/:anything', function(reg, res){
  res.json({incorrect: "Dirt on your face! You're wrong dirt bag"});
})

app.listen(3000);
