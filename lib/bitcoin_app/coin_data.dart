import 'package:http/http.dart' as http;
import 'dart:convert';

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

class CoinData {
  Future getCoinData(String selectedCurrency) async {
    Map<String,String> coinData = {}; 
    for (String coin in cryptoList) {
      var url =
          'https://rest.coinapi.io/v1/exchangerate/$coin/$selectedCurrency?apikey=AA87A903-5B05-4979-A105-014F83DB351A';
      http.Response response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        String data = response.body;
        var obj = jsonDecode(data);
        String rate = (obj['rate']).toStringAsFixed(2);
        coinData[coin] = rate;
      } else {
        print(response.statusCode);
      }
    }
    return coinData;
  }
}
