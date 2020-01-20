import 'location.dart';
import 'networking.dart';

const apiKey = 'a5b81c659d67c8dd1389c24f502c8d30';
const openWeatherMapUrl = 'https://api.openweathermap.org/data/2.5/weather';

class WeatherModel {
  WeatherModel({this.temp, this.condition, this.name});
  int temp;
  int condition;
  String name;

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

  Future<dynamic> getLocationWeather() async {
    Location location = Location();
    await location.getCurrentLocation();

    NetworkHelper networkHelper = NetworkHelper(
        url:
            '$openWeatherMapUrl?units=metric&lat=${location.latitude}&lon=${location.longitude}&APPID=$apiKey');
    var weatherData = await networkHelper.getData();
    return weatherData;
  }

  Future<dynamic> getCityWeather(String cityName) async {
    NetworkHelper networkHelper = NetworkHelper(
        url: '$openWeatherMapUrl?units=metric&q=$cityName&APPID=$apiKey');
    var weatherData = await networkHelper.getData();
    return weatherData;
  }
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
