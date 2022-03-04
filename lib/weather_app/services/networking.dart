import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  final String url;
  NetworkHelper(this.url);
  Future getData() async {
    http.Response response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      String data = response.body;
      return jsonDecode(data);
       
    } else {
      print(response.statusCode);
    }
  }
}
//'https://api.openweathermap.org/data/2.5/weather?lat=28.6162&lon=77.0759&appid=$apiKey'