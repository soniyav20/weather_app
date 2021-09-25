import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Home(),
    ),
  );
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class Weather {
  String? city;
  double? temp;
  String? des;
  double? feels;
  int? humid;
  int? pressure;
  int? wind;
  String? des2;
  Weather(
      {this.city,
      this.temp,
      this.des,
      this.feels,
      this.humid,
      this.pressure,
      this.wind,
      this.des2});
  Weather.fromJson(Map<String, dynamic> json) {
    city = json["name"];
    temp = json["main"]["temp"];
    des = json["weather"]["main"];
    des2 = json["weather"]["description"];
    humid = json["main"]["humidity"];
    pressure = json["main"]["pressure"];
    wind = json["wind"]["speed"];
    feels = json["main"]["feels_like"];
  }
}

//class Api {
//Future<Weather>? getCurrentWeather(String? location) async {
//var endpoint = Uri.parse(
//    "https://api.openweathermap.org/data/2.5/weather?q=$location&appid=eb42031611601a1401c1e7423f7ce112&units=metric");
//  var response = await http.get(endpoint);
// var body = jsonDecode(response.body);
//print(Weather.fromJson(body));
//}
//}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Weather App',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 30.0,
                letterSpacing: 1.0,
                fontFamily: 'BalsamiqSans'),
          ),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: Column(children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.red),
            alignment: Alignment.center,
            padding: EdgeInsets.all(20.0),
            margin: EdgeInsets.fromLTRB(15.0, 20.0, 15.0, 10.0),
            child: Column(
              children: [
                Text(
                  'Chennai',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20.0,
                      letterSpacing: 1.0,
                      fontFamily: 'BalsamiqSans'),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  '78\u00B0',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 40.0,
                      fontFamily: 'PatrickHand'),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Rain',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 18.0,
                      fontFamily: 'BalsamiqSans'),
                ),
              ],
            ),
          ),
          Divider(
            height: 20.0,
            color: Colors.red,
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.thermostat, color: Colors.red),
                    Icon(Icons.whatshot_outlined, color: Colors.red),
                    Icon(Icons.cloud, color: Colors.red),
                    Icon(Icons.wb_sunny, color: Colors.red),
                    Icon(Icons.air, color: Colors.red),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Feels like',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                          fontSize: 20.0,
                          fontFamily: 'BalsamiqSans'),
                    ),
                    Text(
                      'Pressure',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                          fontSize: 20.0,
                          fontFamily: 'BalsamiqSans'),
                    ),
                    Text(
                      'Weathher',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                          fontSize: 20.0,
                          fontFamily: 'BalsamiqSans'),
                    ),
                    Text(
                      'Humidity',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                          fontSize: 20.0,
                          fontFamily: 'BalsamiqSans'),
                    ),
                    Text(
                      'Wind',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                          fontSize: 20.0,
                          fontFamily: 'BalsamiqSans'),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '78\u00B0 C',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                          fontSize: 20.0,
                          fontFamily: 'BalsamiqSans'),
                    ),
                    Text(
                      '78\u00B0 C',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                          fontSize: 20.0,
                          fontFamily: 'BalsamiqSans'),
                    ),
                    Text(
                      'Rainy',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                          fontSize: 20.0,
                          fontFamily: 'BalsamiqSans'),
                    ),
                    Text(
                      '26\u00B0 C',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                          fontSize: 20.0,
                          fontFamily: 'BalsamiqSans'),
                    ),
                    Text(
                      '25 kmph',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                          fontSize: 20.0,
                          fontFamily: 'BalsamiqSans'),
                    ),
                  ],
                )
              ],
            ),
          ),
        ]));
  }
}
