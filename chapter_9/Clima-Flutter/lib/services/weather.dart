import 'package:http/http.dart';

import 'location.dart';
import 'networking.dart';

class WeatherModel {
  WeatherModel({this.temp, this.condition, this.name});
  int temp;
  int condition;
  String name;

  WeatherModel.fromJson(Map<String, dynamic> json)
      : temp = json['main']['temp'],
        condition = json['weather'][0]['id'],
        name = json['name'];

  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '🌩';
    } else if (condition < 400) {
      return '🌧';
    } else if (condition < 600) {
      return '☔️';
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '🌫';
    } else if (condition == 800) {
      return '☀️';
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s 🍦 time';
    } else if (temp > 20) {
      return 'Time for shorts and 👕';
    } else if (temp < 10) {
      return 'You\'ll need 🧣 and 🧤';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }

  // void getCurrentWeather(Location location) async {
  //   if (location != null) {
  //     String url = 'https://api.openweathermap.org/data/2.5/weather?units=metric&lat=${location.latitude.toString()}&lon=${location.longitude.toString()}&APPID=a5b81c659d67c8dd1389c24f502c8d30';
  //     Future<Response> response = getData(url);
  //     if (response.statusCode == 200) {
  //       Map resp = jsonDecode(response.body);
  //       WeatherModel weatherModel = WeatherModel.fromJson(resp);
  //       String res =
  //           '${weatherModel.temp.toStringAsFixed(0)}° in ${weatherModel.name}';
  //       setState(() {
  //         weatherData = weatherModel;
  //         temperatureInCity = res;
  //         weatherIcon = weatherModel.getWeatherIcon(weatherModel.condition);
  //         weatherMsg = weatherModel.getMessage(weatherModel.temp.toInt());
  //       });
  //     }
  // }
}

// {
//     "coord": {
//         "lon": 9.19,
//         "lat": 48.89
//     },
//     "weather": [
//         {
//             "id": 802,
//             "main": "Clouds",
//             "description": "scattered clouds",
//             "icon": "03n"
//         }
//     ],
//     "base": "stations",
//     "main": {
//         "temp": 11.98,
//         "pressure": 1015,
//         "humidity": 76,
//         "temp_min": 9.44,
//         "temp_max": 15
//     },
//     "visibility": 10000,
//     "wind": {
//         "speed": 3.1,
//         "deg": 200
//     },
//     "rain": {},
//     "clouds": {
//         "all": 29
//     },
//     "dt": 1571252908,
//     "sys": {
//         "type": 1,
//         "id": 1274,
//         "country": "DE",
//         "sunrise": 1571204655,
//         "sunset": 1571243591
//     },
//     "timezone": 7200,
//     "id": 2875392,
//     "name": "Ludwigsburg",
//     "cod": 200
// }
