import 'dart:convert';

import 'package:http/http.dart' as http;

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

const coinAPIURL =
    'https://rest.coinapi.io/v1/exchangerate/BTC/USD?apikey=BDE969B4-E525-4DD0-9C31-0775A1A40FCE';

class CoinData {
  void getCoinData() async {
    http.Response response = await http.get(Uri.parse(coinAPIURL));

    if (response.statusCode == 200) {
      String coinAPIData = response.body;
      var coinRate = jsonDecode(coinAPIData)['rate'];
      print(coinRate);
    } else {
      print(response.statusCode);
    }
  }
}
